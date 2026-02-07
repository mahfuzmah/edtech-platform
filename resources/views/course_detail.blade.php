@extends('layout')

@section('content')

<div class="row mt-4 mb-4">
    <div class="col-md-12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page" id="bc-title">Course</li>
            </ol>
        </nav>
    </div>
</div>

<div class="p-5 mb-4 bg-light rounded-3">
    <div class="container-fluid py-2">
      <h1 class="display-5 fw-bold" id="course-title">Loading...</h1>
      <p class="col-md-8 fs-4" id="course-desc"></p>

      <div class="d-flex align-items-center gap-3">
          <span class="badge bg-primary fs-6" id="course-price"></span>
          <span class="badge bg-secondary fs-6" id="course-level"></span>
          <span class="text-muted" id="course-instructor"></span>
      </div>

      <button id="enroll-btn" class="btn btn-primary btn-lg mt-3" onclick="enroll()">Enroll Now</button>
    </div>
</div>

<div class="row" id="lessons-section" style="display:none">
    <div class="col-md-12">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h3>Lessons</h3>
            <input type="text" id="lesson-search" class="form-control w-25" placeholder="Search lessons...">
        </div>

        <div class="list-group" id="lesson-list">
        </div>

        <div class="mt-3 d-flex justify-content-center gap-2" id="lesson-pagination">
            <button class="btn btn-outline-secondary btn-sm" id="prev-lesson" onclick="changeLessonPage(-1)">Previous</button>
            <button class="btn btn-outline-secondary btn-sm" id="next-lesson" onclick="changeLessonPage(1)">Next</button>
        </div>
    </div>
</div>

<div class="row mt-5">
    <div class="col-md-12">
        <h3>Reviews</h3>
        
        <div id="review-form-section" style="display:none" class="card mb-4">
            <div class="card-body">
                <h5>Write a Review</h5>
                <form id="review-form">
                    <div class="mb-3">
                        <label>Rating</label>
                        <select id="review-rating" class="form-select" required>
                            <option value="">Select rating</option>
                            <option value="5">⭐⭐⭐⭐⭐ (5 - Excellent)</option>
                            <option value="4">⭐⭐⭐⭐ (4 - Good)</option>
                            <option value="3">⭐⭐⭐ (3 - Average)</option>
                            <option value="2">⭐⭐ (2 - Poor)</option>
                            <option value="1">⭐ (1 - Very Poor)</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label>Comment</label>
                        <textarea id="review-comment" class="form-control" rows="3" required placeholder="Share your experience with this course..."></textarea>
                    </div>
                    <button type="button" class="btn btn-primary" onclick="submitReview()">Submit Review</button>
                </form>
            </div>
        </div>

        <div id="reviews-list">
            <p>Loading reviews...</p>
        </div>
    </div>
</div>

@endsection

@push('scripts')
<script>
    const pathParts = window.location.pathname.split('/');
    const courseId = pathParts[pathParts.length - 1];
    let currentLessonPage = 1;

    axios.get('/courses/' + courseId)
        .then(res => {
            const course = res.data.data;
            document.getElementById('bc-title').innerText = course.title;
            document.getElementById('course-title').innerText = course.title;
            document.getElementById('course-desc').innerText = course.description;
            document.getElementById('course-price').innerText = 'Tk. ' + course.price;
            document.getElementById('course-level').innerText = course.level;
            document.getElementById('course-instructor').innerText = 'Instructor: ' + course.instructor.name;

            checkEnrollmentStatus();
            loadLessons();
        })
        .catch(err => console.error(err));
    
    function checkEnrollmentStatus() {
        const token = localStorage.getItem('token');
        if (!token) {
            document.getElementById('enroll-btn').style.display = 'block';
            return;
        }
        
        axios.get('/my-courses')
            .then(res => {
                const enrolledCourses = res.data.data || res.data;
                const isEnrolled = enrolledCourses.some(c => c.id == courseId);
                
                if (isEnrolled) {
                    document.getElementById('enroll-btn').style.display = 'none';
                } else {
                    document.getElementById('enroll-btn').style.display = 'block';
                }
            })
            .catch(err => {
                document.getElementById('enroll-btn').style.display = 'block';
            });
    }

    function loadLessons(page = 1) {
        const search = document.getElementById('lesson-search').value;
        axios.get(`/courses/${courseId}/lessons?page=${page}&search=${search}`)
            .then(res => {
                document.getElementById('lessons-section').style.display = 'block';
                renderLessons(res.data.data);
                setupPagination(res.data.meta, res.data.links);
            })
            .catch(err => {});
    }

    function renderLessons(lessons) {
        const list = document.getElementById('lesson-list');
        list.innerHTML = '';
        if(lessons.length === 0) {
            list.innerHTML = '<div class="list-group-item">No lessons found.</div>';
            return;
        }
        lessons.forEach(l => {
            list.innerHTML += `
                <div class="list-group-item">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">${l.title}</h5>
                        <small>Order: ${l.order}</small>
                    </div>
                    <p class="mb-1">${l.content.substring(0, 100)}...</p>
                </div>
            `;
        });
    }

    let lastMeta = {};
    function setupPagination(meta, links) {
        lastMeta = meta;
        document.getElementById('prev-lesson').disabled = !links.prev;
        document.getElementById('next-lesson').disabled = !links.next;
    }

    function changeLessonPage(direction) {
        const newPage = lastMeta.current_page + direction;
        loadLessons(newPage);
    }

    let debounce;
    document.getElementById('lesson-search').addEventListener('input', (e) => {
        clearTimeout(debounce);
        debounce = setTimeout(() => loadLessons(1), 500);
    });

    function enroll() {
        if(!localStorage.getItem('token')) {
            window.location.href = '/login';
            return;
        }
        if(confirm('Enroll now?')) {
            axios.post('/courses/' + courseId + '/enroll')
            .then(() => {
                alert('Enrolled successfully!');
                document.getElementById('enroll-btn').style.display = 'none';
                checkEnrollmentForReview();
            })
            .catch(err => {
                alert(getErrorMessage(err, 'Enrollment failed'));
            });
        }
    }
    
    function loadReviews() {
        axios.get(`/courses/${courseId}/reviews`)
            .then(res => {
                const reviews = res.data.data;
                renderReviews(reviews);
                
                const token = localStorage.getItem('token');
                if (token) {
                    checkEnrollmentForReview();
                }
            })
            .catch(err => {
                document.getElementById('reviews-list').innerHTML = '<p class="text-muted">No reviews yet.</p>';
            });
    }
    
    function renderReviews(reviews) {
        const list = document.getElementById('reviews-list');
        list.innerHTML = '';
        
        if (reviews.length === 0) {
            list.innerHTML = '<p class="text-muted">No reviews yet. Be the first to review this course!</p>';
            return;
        }
        
        reviews.forEach(review => {
            const stars = '⭐'.repeat(review.rating);
            const currentUserId = localStorage.getItem('user_id');
            const userRole = localStorage.getItem('user_role');
            
            let deleteBtn = '';
            if (currentUserId == review.user.id || userRole === 'admin') {
                deleteBtn = `<button class="btn btn-sm btn-danger" onclick="deleteReview(${review.id})">Delete</button>`;
            }
            
            list.innerHTML += `
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-start">
                            <div>
                                <h6 class="mb-1">${review.user.name}</h6>
                                <div class="text-warning mb-2">${stars} (${review.rating}/5)</div>
                                <p class="mb-0">${review.comment}</p>
                                <small class="text-muted">Posted on ${new Date(review.created_at).toLocaleDateString()}</small>
                            </div>
                            <div>
                                ${deleteBtn}
                            </div>
                        </div>
                    </div>
                </div>
            `;
        });
    }
    
    function checkEnrollmentForReview() {
        axios.get('/my-courses')
            .then(res => {
                const enrolledCourses = res.data.data || res.data;
                const isEnrolled = enrolledCourses.some(c => c.id == courseId);
                
                if (isEnrolled) {
                    axios.get(`/courses/${courseId}/reviews`)
                        .then(res => {
                            const reviews = res.data.data;
                            const userId = localStorage.getItem('user_id');
                            const hasReviewed = reviews.some(r => r.user.id == userId);
                            
                            if (!hasReviewed) {
                                document.getElementById('review-form-section').style.display = 'block';
                            }
                        });
                }
            })
            .catch(err => {});
    }
    
    function submitReview() {
        const rating = document.getElementById('review-rating').value;
        const comment = document.getElementById('review-comment').value;
        
        if (!rating || !comment) {
            alert('Please fill in all fields');
            return;
        }
        
        axios.post(`/courses/${courseId}/reviews`, {
            rating: parseInt(rating),
            comment: comment
        })
        .then(res => {
            alert('Review submitted successfully!');
            document.getElementById('review-form-section').style.display = 'none';
            document.getElementById('review-rating').value = '';
            document.getElementById('review-comment').value = '';
            loadReviews();
        })
        .catch(err => {
            alert(getErrorMessage(err, 'Failed to submit review'));
        });
    }
    
    function deleteReview(id) {
        if (confirm('Delete this review?')) {
            axios.delete(`/reviews/${id}`)
            .then(res => {
                alert(res.data.message || 'Review deleted');
                loadReviews();
            })
            .catch(err => {
                alert(getErrorMessage(err, 'Failed to delete review'));
            });
        }
    }
    
    loadReviews();
</script>
@endpush
