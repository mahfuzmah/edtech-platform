@extends('layout')

@section('content')
    <div id="auth-status-bar" class="alert alert-warning fw-bold text-center" style="display:none;">
        <i class="fas fa-spinner fa-spin me-2"></i> Verifying Account Permissions...
    </div>

    <script>
        (function() {
            var statusDiv = document.getElementById('auth-status-bar');
            statusDiv.style.display = 'block';
            
            var token = localStorage.getItem('token');
            if(!token) {
                 window.location.href = '/login';
                 return;
            }

            var xhr = new XMLHttpRequest();
            xhr.open('POST', '/api/auth/me', true);
            xhr.setRequestHeader('Authorization', 'Bearer ' + token);
            xhr.setRequestHeader('Accept', 'application/json');
            xhr.onreadystatechange = function() {
                if(xhr.readyState === 4) {
                    if(xhr.status === 200) {
                        try {
                            var res = JSON.parse(xhr.responseText);
                            var user = res.data || res;
                            var role = user.role; 
                            
                            localStorage.setItem('user_role', role);
                            localStorage.setItem('user_id', user.id);
                            
                            statusDiv.innerHTML = '<i class="fas fa-check-circle"></i> Verified: ' + role.toUpperCase();
                            statusDiv.className = 'alert alert-success fw-bold text-center';
                            statusDiv.style.display = 'none';
                            
                            if(window.initDashboard) {
                                window.initDashboard(role);
                            } else {
                                document.addEventListener('DOMContentLoaded', function() {
                                    if(window.initDashboard) window.initDashboard(role);
                                });
                            }
                        } catch(e) {
                            statusDiv.className = 'alert alert-danger';
                            statusDiv.innerHTML = 'Error parsing account data: ' + e.message;
                        }
                    } else {
                        statusDiv.className = 'alert alert-danger';
                        statusDiv.innerHTML = '<b>Access Denied</b><br>Status: ' + xhr.status + '<br>Response: ' + xhr.responseText.substring(0, 100) + '... <br><a href="/login" class="btn btn-sm btn-outline-light mt-2">Login Again</a>';
                    }
                }
            };
            xhr.send();
        })();
    </script>

    <div class="row mb-4 align-items-center">
        <div class="col-md-8">
            <h1 class="display-6 fw-bold text-primary"><i class="fas fa-chalkboard me-2"></i>My Dashboard</h1>
            <p class="text-muted">Manage your learning journey.</p>
        </div>
        <div class="col-md-4 text-end" id="instructor-btn-area">
        </div>
    </div>

    <div class="row mb-4">
        <div class="col-md-6">
             <input type="text" id="dashboard-search" class="form-control" placeholder="Search courses...">
        </div>
    </div>

    <div class="row" id="my-courses-grid">
        <div class="col-12 text-center py-5">
            <div class="spinner-border text-primary" role="status">
                <span class="visually-hidden">Loading...</span>
            </div>
            <p class="mt-2 text-muted">Loading your courses...</p>
        </div>
    </div>

    <div class="row mt-4" id="pagination-controls" style="display:none;">
        <div class="col-12 d-flex justify-content-center gap-2">
            <button class="btn btn-outline-secondary" id="btn-prev-dash" onclick="changeDashPage(-1)" disabled>Previous</button>
            <span class="align-self-center fw-bold" id="page-info-dash">Page 1</span>
            <button class="btn btn-outline-secondary" id="btn-next-dash" onclick="changeDashPage(1)" disabled>Next</button>
        </div>
    </div>

    <div class="modal fade" id="createCourseModal" tabindex="-1">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title" id="modal-title">Create Course</h5>
            <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
          </div>
          <div class="modal-body">
            <form id="create-course-form">
                <input type="hidden" id="c-id">
                <div class="mb-3">
                    <label class="form-label">Title</label>
                    <input type="text" id="c-title" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Description</label>
                    <textarea id="c-desc" class="form-control" rows="3" required></textarea>
                </div>
                <div class="mb-3">
                    <label class="form-label">Price</label>
                    <input type="number" id="c-price" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Level</label>
                    <select id="c-level" class="form-select">
                        <option value="beginner">Beginner</option>
                        <option value="intermediate">Intermediate</option>
                        <option value="advanced">Advanced</option>
                    </select>
                </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" onclick="submitCourse()">Save changes</button>
          </div>
        </div>
      </div>
    </div>

    <div class="modal fade" id="lessonListModal" tabindex="-1">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Manage Lessons</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
          </div>
          <div class="modal-body">
            <div class="d-flex justify-content-between mb-3 align-items-center">
                <h6 class="text-muted mb-0">Course Content</h6>
                <button class="btn btn-success btn-sm" onclick="openLessonForm()">+ Add New Lesson</button>
            </div>
            <div class="list-group list-group-flush" id="modal-lesson-list">
            </div>
            <div class="mt-3 d-flex justify-content-center" id="lesson-pagination-area"></div>
          </div>
        </div>
      </div>
    </div>

    <div class="modal fade" id="lessonFormModal" tabindex="-1">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header bg-info text-white">
            <h5 class="modal-title" id="l-modal-title">Add Lesson</h5>
            <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
          </div>
          <div class="modal-body">
            <form id="lesson-form">
                <input type="hidden" id="l-id">
                <div class="mb-3">
                    <label class="form-label">Title</label>
                    <input type="text" id="l-title" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Content</label>
                    <textarea id="l-content" class="form-control" rows="5" required></textarea>
                </div>
                <div class="mb-3">
                    <label class="form-label">Order</label>
                    <input type="number" id="l-order" class="form-control" value="1" required>
                </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
            <button type="button" class="btn btn-primary" onclick="submitLesson()">Save Lesson</button>
          </div>
        </div>
      </div>
    </div>
@endsection

@push('scripts')
<script>
    var currentDashPage = 1;

    window.initDashboard = function(role) {
        if (role === 'admin') {
            document.getElementById('instructor-btn-area').innerHTML = 
                '<button class="btn btn-success shadow-sm" onclick="openModal()"><i class="fas fa-plus me-2"></i>Create Course</button>';
            loadAllCourses(1);
        } else if (role === 'instructor') {
             document.getElementById('instructor-btn-area').innerHTML = 
                '<button class="btn btn-success shadow-sm" onclick="openModal()"><i class="fas fa-plus me-2"></i>Create Course</button>';
             loadInstructorCourses(1);
        } else {
            loadMyCourses(1);
        }
        
        let debounce;
        document.getElementById('dashboard-search').addEventListener('input', function(e) {
            clearTimeout(debounce);
            debounce = setTimeout(function() {
                currentDashPage = 1;
                const r = localStorage.getItem('user_role');
                if(r === 'admin') loadAllCourses(1);
                else if(r === 'instructor') loadInstructorCourses(1);
                else loadMyCourses(1);
            }, 500);
        });
    };

    function refreshDashboard(page) {
        const role = localStorage.getItem('user_role');
        if(role === 'admin') loadAllCourses(page);
        else if(role === 'instructor') loadInstructorCourses(page);
        else loadMyCourses(page);
    }

    function getErrorMessage(error, defaultMsg = 'Operation failed') {
        if (error.response && error.response.data) {
            return error.response.data.message || error.response.data.error || defaultMsg;
        }
        return error.message || defaultMsg;
    }

    function loadMyCourses(page) {
        currentDashPage = page;
        const search = document.getElementById('dashboard-search').value;
        axios.get('/my-courses', { params: { page: page, search: search } })
        .then(function(res) {
            let courses = res.data.data ? res.data.data : res.data;
            if (!Array.isArray(courses)) {
                courses = [courses];
                if (!courses[0]) courses = []; 
            }
            renderGrid(courses, false);
            setupPagination(res.data.meta, res.data.links, false);
        })
        .catch(function(err) {
            document.getElementById('my-courses-grid').innerHTML = 
                `<div class="col-12"><div class="alert alert-danger">Error: ${getErrorMessage(err)}</div></div>`;
        });
    }

    function loadAllCourses(page) {
        currentDashPage = page;
        const search = document.getElementById('dashboard-search').value;
        axios.get('/courses', { params: { page: page, search: search } })
        .then(function(res) {
            let courses = res.data.data ? res.data.data : res.data;
            if (!Array.isArray(courses)) {
                courses = [courses];
                if (!courses[0]) courses = [];
            }
            renderGrid(courses, true);
            setupPagination(res.data.meta, res.data.links, true);
        })
        .catch(function(err) {
            document.getElementById('my-courses-grid').innerHTML = 
                `<div class="col-12"><div class="alert alert-danger">Error: ${getErrorMessage(err)}</div></div>`;
        });
    }
    
    function loadInstructorCourses(page) {
        currentDashPage = page;
        const search = document.getElementById('dashboard-search').value;
        axios.get('/instructor/courses', { params: { page: page, search: search } })
        .then(function(res) {
            let courses = res.data.data ? res.data.data : res.data;
            if (!Array.isArray(courses)) courses = [];
            renderGrid(courses, true);
            setupPagination(res.data.meta, res.data.links, true);
        })
        .catch(function(err) {
             document.getElementById('my-courses-grid').innerHTML = 
                `<div class="col-12"><div class="alert alert-danger">Error: ${getErrorMessage(err)}</div></div>`;
        });
    }

    function renderGrid(courses, isInstructor) {
        var grid = document.getElementById('my-courses-grid');
        grid.innerHTML = '';
        
        if (!courses || courses.length === 0) {
            grid.innerHTML = '<div class="col-12 text-center py-5"><div class="alert alert-light border shadow-sm">No courses found. ' + (isInstructor ? 'Create one!' : 'Enroll now!') + '</div></div>';
            return;
        }

        courses.forEach(function(course) {
            const imageUrl = course.image || '/image/content-concept-laptop-screen_53876-13531.avif';
            let btns = '';
            
            if (isInstructor) {
                const safeTitle = course.title.replace(/'/g, "\\'");
                btns = `
                    <div class="d-flex justify-content-between mt-3 pt-2 border-top">
                        <button class="btn btn-sm btn-outline-info" onclick="editCourse(${course.id})"><i class="fas fa-edit"></i></button>
                        <button class="btn btn-sm btn-outline-primary" onclick="openLessonManager(${course.id})"><i class="fas fa-list"></i> Lessons</button>
                        <button class="btn btn-sm btn-outline-danger" onclick="deleteCourse(${course.id})"><i class="fas fa-trash"></i></button>
                    </div>
                `;
            } else {
                btns = `<a href="/courses/${course.id}" class="btn btn-sm btn-primary w-100 mt-2">Continue Learning</a>`;
            }

            var html = `
                <div class="col-md-6 col-lg-4 col-xl-3 mb-4">
                    <div class="card h-100 shadow-sm border-0 hover-shadow transition-all">
                        <div class="position-relative" style="height: 160px; overflow: hidden;">
                            <img src="${imageUrl}" alt="${course.title}" class="card-img-top w-100 h-100 object-fit-cover">
                            <span class="position-absolute top-0 end-0 badge bg-primary m-2">${course.level}</span>
                        </div>
                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title text-truncate" title="${course.title}">${course.title}</h5>
                            <p class="card-text small text-muted text-truncate">${course.description || 'No description'}</p>
                            <p class="fw-bold text-primary mb-0">Tk. ${course.price}</p>
                            <div class="mt-auto">
                                ${btns}
                            </div>
                        </div>
                    </div>
                </div>
            `;
            grid.innerHTML += html;
        });
    }

    function setupPagination(meta, links, isInstructor) {
        if (!meta || meta.last_page <= 1) {
            document.getElementById('pagination-controls').style.display = 'none';
            return;
        }
        document.getElementById('pagination-controls').style.display = 'flex';
        document.getElementById('page-info-dash').innerText = `Page ${meta.current_page} of ${meta.last_page}`;
        document.getElementById('btn-prev-dash').disabled = meta.current_page === 1;
        document.getElementById('btn-next-dash').disabled = meta.current_page === meta.last_page;
    }

    function changeDashPage(direction) {
        const newPage = currentDashPage + direction;
        refreshDashboard(newPage);
    }
    
    var createModal = new bootstrap.Modal(document.getElementById('createCourseModal'));
    function openModal() {
        document.getElementById('c-id').value = '';
        document.getElementById('create-course-form').reset();
        document.getElementById('modal-title').innerText = 'Create Course';
        createModal.show();
    }
    function closeModal() { createModal.hide(); }

    function editCourse(id) {
        axios.get('/courses/' + id).then(res => {
            const c = res.data.data;
            document.getElementById('c-id').value = c.id;
            document.getElementById('c-title').value = c.title;
            document.getElementById('c-desc').value = c.description;
            document.getElementById('c-price').value = c.price;
            document.getElementById('c-level').value = c.level;
            document.getElementById('modal-title').innerText = 'Edit Course';
            createModal.show();
        });
    }

    function submitCourse() {
        const id = document.getElementById('c-id').value;
        const data = {
            title: document.getElementById('c-title').value,
            description: document.getElementById('c-desc').value,
            price: document.getElementById('c-price').value,
            level: document.getElementById('c-level').value
        };
        const method = id ? 'put' : 'post';
        const url = id ? '/courses/' + id : '/courses';

        axios[method](url, data).then(res => {
            alert(res.data.message || 'Saved successfully');
            closeModal();
            refreshDashboard(currentDashPage);
        }).catch(err => alert(getErrorMessage(err)));
    }

    function deleteCourse(id) {
        if(confirm('Delete this course?')) {
            axios.delete('/courses/' + id).then(() => {
                refreshDashboard(currentDashPage);
            }).catch(err => alert(getErrorMessage(err)));
        }
    }

    var lessonListModal = new bootstrap.Modal(document.getElementById('lessonListModal'));
    var lessonFormModal = new bootstrap.Modal(document.getElementById('lessonFormModal'));
    var activeCourseId = null;

    function openLessonManager(courseId) {
        activeCourseId = courseId;
        loadLessons(courseId);
        lessonListModal.show();
    }

    function loadLessons(courseId) {
        const list = document.getElementById('modal-lesson-list');
        list.innerHTML = '<div class="text-center py-3"><div class="spinner-border spinner-border-sm"></div> Loading...</div>';
        
        axios.get(`/courses/${courseId}/lessons`).then(res => {
            const lessons = res.data.data;
            list.innerHTML = '';
            if (lessons.length === 0) list.innerHTML = '<p class="text-center text-muted p-3">No lessons found.</p>';
            
            lessons.forEach(l => {
                list.innerHTML += `
                    <div class="list-group-item d-flex justify-content-between align-items-center">
                        <div>
                            <span class="badge bg-secondary me-2">#${l.order}</span>
                            <strong>${l.title}</strong>
                        </div>
                        <div>
                            <button class="btn btn-sm btn-outline-info" onclick="openLessonForm(${l.id})"><i class="fas fa-edit"></i></button>
                            <button class="btn btn-sm btn-outline-danger ms-1" onclick="deleteLesson(${l.id})"><i class="fas fa-trash"></i></button>
                        </div>
                    </div>
                `;
            });
        });
    }

    function openLessonForm(id = null) {
        document.getElementById('l-id').value = id || '';
        document.getElementById('lesson-form').reset();
        document.getElementById('l-modal-title').innerText = id ? 'Edit Lesson' : 'Add Lesson';
        
        if (id) {
             axios.get(`/courses/${activeCourseId}/lessons`).then(res => {
                  const l = res.data.data.find(x => x.id == id);
                  if(l) {
                      document.getElementById('l-title').value = l.title;
                      document.getElementById('l-content').value = l.content;
                      document.getElementById('l-order').value = l.order;
                  }
             });
        }
        lessonFormModal.show();
    }

    function submitLesson() {
        const id = document.getElementById('l-id').value;
        const data = {
            title: document.getElementById('l-title').value,
            content: document.getElementById('l-content').value,
            order: document.getElementById('l-order').value
        };
        const method = id ? 'put' : 'post';
        const url = id ? '/lessons/' + id : `/courses/${activeCourseId}/lessons`;
        
        axios[method](url, data).then(() => {
            lessonFormModal.hide();
            loadLessons(activeCourseId);
        }).catch(err => alert(getErrorMessage(err)));
    }

    function deleteLesson(id) {
        if(confirm('Delete lesson?')) {
            axios.delete('/lessons/' + id).then(() => {
                loadLessons(activeCourseId);
            }).catch(err => alert(getErrorMessage(err)));
        }
    }
</script>
@endpush
