@extends('admin.layout')

@section('content')
<h2>Course Management</h2>
<div class="card mt-4 shadow-sm">
    <div class="card-header bg-success text-white d-flex justify-content-between align-items-center">
        <h5 class="mb-0">All Courses</h5>
        <button class="btn btn-sm btn-light" onclick="loadCourses()">Refresh</button>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-hover align-middle">
                <thead class="table-light">
                    <tr>
                        <th>ID</th>
                        <th>Thumbnail</th>
                        <th>Title</th>
                        <th>Instructor</th>
                        <th>Price</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody id="course-list-body">
                    <tr><td colspan="6" class="text-center">Loading...</td></tr>
                </tbody>
            </table>
        </div>
        <div id="course-pagination-links" class="mt-3 d-flex justify-content-center"></div>
    </div>
</div>
@endsection

@push('scripts')
<script>
    document.addEventListener('DOMContentLoaded', function() {
        loadCourses();
    });

    function loadCourses(page = 1) {
        document.getElementById('course-list-body').innerHTML = '<tr><td colspan="6" class="text-center">Loading...</td></tr>';
        
        axios.get('/courses?page=' + page)
            .then(res => {
                const courses = res.data.data;
                const tbody = document.getElementById('course-list-body');
                tbody.innerHTML = '';
                
                if (courses.length === 0) {
                    tbody.innerHTML = '<tr><td colspan="6" class="text-center">No courses found</td></tr>';
                    return;
                }

                courses.forEach(course => {
                    const img = course.image || '/image/content-concept-laptop-screen_53876-13531.avif';
                    tbody.innerHTML += `
                        <tr>
                            <td>${course.id}</td>
                            <td><img src="${img}" alt="Thumb" style="width: 50px; height: 30px; object-fit: cover; border-radius: 4px;"></td>
                            <td>${course.title}</td>
                            <td>${course.instructor ? course.instructor.name : 'Unknown'}</td>
                            <td>Tk. ${course.price}</td>
                            <td>
                                <a href="/courses/${course.id}" class="btn btn-sm btn-outline-info" target="_blank"><i class="fas fa-eye"></i> View</a>
                                <button class="btn btn-sm btn-outline-danger" onclick="deleteCourse(${course.id})"><i class="fas fa-trash"></i> Delete</button>
                            </td>
                        </tr>
                    `;
                });

                renderPagination(res.data.meta);
            })
            .catch(err => {
                document.getElementById('course-list-body').innerHTML = `<tr><td colspan="6" class="text-danger">Error: ${err.message}</td></tr>`;
            });
    }

    function deleteCourse(id) {
        if(confirm('Are you sure you want to delete this course?')) {
            axios.delete('/courses/' + id)
                .then(() => {
                    alert('Course deleted successfully');
                    loadCourses();
                })
                .catch(err => {
                    alert('Failed to delete course: ' + (err.response?.data?.message || err.message));
                });
        }
    }
    
    function renderPagination(meta) {
        const container = document.getElementById('course-pagination-links');
        container.innerHTML = '';
        
        if (meta && meta.last_page > 1) {
             container.innerHTML += `<button class="btn btn-sm btn-outline-secondary me-1" onclick="loadCourses(${meta.current_page - 1})" ${meta.current_page === 1 ? 'disabled' : ''}>Prev</button>`;
             for(let i=1; i<=meta.last_page; i++) {
                 container.innerHTML += `<button class="btn btn-sm ${i===meta.current_page ? 'btn-success' : 'btn-outline-success'} me-1" onclick="loadCourses(${i})">${i}</button>`;
             }
             container.innerHTML += `<button class="btn btn-sm btn-outline-secondary ms-1" onclick="loadCourses(${meta.current_page + 1})" ${meta.current_page === meta.last_page ? 'disabled' : ''}>Next</button>`;
        }
    }
</script>
@endpush
