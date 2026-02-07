@extends('layout')

@section('content')

<div class="hero-section text-center mb-4 py-4" style="background: linear-gradient(135deg, var(--primary-color), var(--secondary-color)); border-radius: 0 0 20px 20px; margin-top: -1.5rem;">
    <div class="container">
        <h1 class="display-6 fw-bold text-white mb-2">Find Your Next Course</h1>
        <div class="mt-3">
             <span class="text-white-50 me-2 small">Popular:</span>
            <button class="btn btn-sm btn-outline-light rounded-pill mx-1 mb-1 py-0 px-2 small" onclick="quickFilter('beginner')">Beginner</button>
            <button class="btn btn-sm btn-outline-light rounded-pill mx-1 mb-1 py-0 px-2 small" onclick="quickFilter('intermediate')">Intermediate</button>
            <button class="btn btn-sm btn-outline-light rounded-pill mx-1 mb-1 py-0 px-2 small" onclick="quickFilter('advanced')">Advanced</button>
            <button class="btn btn-sm btn-outline-light rounded-pill mx-1 mb-1 py-0 px-2 small" onclick="resetFilters()">All</button>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-3 mb-4">
        <div class="card border-0 shadow-sm sticky-top" style="top: 20px;">
            <div class="card-header bg-gradient text-white">
                <h5 class="mb-0"><i class="fas fa-filter me-2"></i>Refine Your Search</h5>
            </div>
            <div class="card-body">
                <div class="mb-4">
                    <label class="form-label text-muted small text-uppercase fw-bold">
                        <i class="fas fa-layer-group me-1"></i>Level
                    </label>
                    <select class="form-select" id="f-level">
                        <option value="">All Levels</option>
                        <option value="beginner">Beginner</option>
                        <option value="intermediate">Intermediate</option>
                        <option value="advanced">Advanced</option>
                    </select>
                </div>
                
                <div class="mb-4">
                    <label class="form-label text-muted small text-uppercase fw-bold">
                        <i class="fas fa-dollar-sign me-1"></i>Price Range
                    </label>
                    <div class="row g-2">
                        <div class="col-6">
                            <input type="number" class="form-control" id="f-min-price" placeholder="Min">
                        </div>
                        <div class="col-6">
                            <input type="number" class="form-control" id="f-max-price" placeholder="Max">
                        </div>
                    </div>
                </div>
                
                <button class="btn btn-primary w-100 mb-2" onclick="loadCourses(1)">
                    <i class="fas fa-check me-2"></i>Apply Filters
                </button>
                <button class="btn btn-outline-secondary w-100" onclick="resetFilters()">
                    <i class="fas fa-times me-2"></i>Clear All
                </button>
            </div>
        </div>
    </div>

    <div class="col-lg-9">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h4 class="mb-0"><i class="fas fa-book-open me-2 text-primary"></i>Available Courses</h4>
            <span class="text-muted" id="course-count">Loading...</span>
        </div>
        
        <div class="row" id="course-grid">
            <div class="col-12 text-center py-5">
                <div class="spinner-border text-primary" role="status">
                    <span class="visually-hidden">Loading...</span>
                </div>
                <p class="mt-3 text-muted">Loading courses...</p>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-12 d-flex justify-content-center align-items-center gap-3">
                <button class="btn btn-outline-primary" id="btn-prev" onclick="changePage(-1)" disabled>
                    <i class="fas fa-chevron-left me-2"></i>Previous
                </button>
                <span class="fw-bold text-primary" id="page-info">Page 1</span>
                <button class="btn btn-outline-primary" id="btn-next" onclick="changePage(1)" disabled>
                    Next<i class="fas fa-chevron-right ms-2"></i>
                </button>
            </div>
        </div>
    </div>
</div>

@endsection

@push('scripts')
<script>
    let currentPage = 1;
    let lastMeta = {};

    loadCourses(1);

    function loadCourses(page) {
        currentPage = page;
        const params = { page: page };
        const urlParams = new URLSearchParams(window.location.search);
        const search = urlParams.get('search');
        const levelInput = document.getElementById('f-level');
        const minPriceInput = document.getElementById('f-min-price');
        const maxPriceInput = document.getElementById('f-max-price');

        if (search) params.search = search;
        if (levelInput && levelInput.value) params.level = levelInput.value;
        if (minPriceInput && minPriceInput.value) params.min_price = minPriceInput.value;
        if (maxPriceInput && maxPriceInput.value) params.max_price = maxPriceInput.value;

        axios.get('/courses', { params: params })
        .then(function (response) {
            renderCourses(response.data.data);
            setupPagination(response.data.meta, response.data.links);
            
            const total = response.data.meta.total;
            const countEl = document.getElementById('course-count');
            if (countEl) {
                countEl.innerText = `${total} course${total !== 1 ? 's' : ''} found${search ? ' for "' + search + '"' : ''}`;
            }
        })
        .catch(console.error);
    }

    function resetFilters() {
        const levelInput = document.getElementById('f-level');
        const minPriceInput = document.getElementById('f-min-price');
        const maxPriceInput = document.getElementById('f-max-price');
        
        if(levelInput) levelInput.value = '';
        if(minPriceInput) minPriceInput.value = '';
        if(maxPriceInput) maxPriceInput.value = '';
        
        const url = new URL(window.location);
        url.searchParams.delete('search');
        window.history.pushState({}, '', url);
        
        const navSearch = document.querySelector('input[name="search"]');
        if (navSearch) navSearch.value = '';

        loadCourses(1);
    }
    
    function quickFilter(level) {
        const levelInput = document.getElementById('f-level');
        if(levelInput) {
            levelInput.value = level;
            loadCourses(1);
        }
    }

    function renderCourses(courses) {
        const grid = document.getElementById('course-grid');
        grid.innerHTML = '';

        if (courses.length === 0) {
            grid.innerHTML = '<div class="col-12"><div class="alert alert-warning">No courses found matching criteria.</div></div>';
            return;
        }

        courses.forEach(function(course) {
            const imageUrl = course.image || '/image/content-concept-laptop-screen_53876-13531.avif';
            const detailsUrl = `/courses/${course.id}`;
            const html = `
                <div class="col-6 col-md-4 col-xl-3 mb-4">
                    <div class="card bg-secondary-light card-hover h-100 d-flex flex-column shadow-primary position-relative rounded-3 border-0">
                        <div class="course-img">
                            <a href="${detailsUrl}">
                                <img src="${imageUrl}" alt="${course.title}" class="rounded-top w-100 card-img"/>
                            </a>
                        </div>
                        <div class="card-body d-flex flex-column card-body-height">
                            <h6 class="mb-2">
                                <a class="stretched-link card-title text-decoration-none text-dark" href="${detailsUrl}">
                                    ${course.title}
                                </a>
                            </h6>
                            <div class="mt-auto">
                                <p class="mb-1 fw-bold small"><i class="fa fa-layer-group text-primary"></i> Level: ${course.level.toUpperCase()}</p>
                                <p class="mb-0 fw-bold small"><i class="fa fa-user text-muted"></i> By: ${course.instructor.name}</p>
                            </div>
                        </div>
                        <div class="card-footer mt-auto border-0" style="background-color: #DCDADA">
                            <div class="row align-items-center">
                                <div class="col-12 col-sm-6 mb-2 mb-sm-0 course-price">
                                    <h6 class="text-primary mb-0">TK. ${new Number(course.price).toLocaleString()}</h6>
                                </div>
                                <div class="col-12 col-sm-6 text-sm-end">
                                    <a href="${detailsUrl}" class="th-btn btn btn-outline-danger py-1 px-2 small w-100 w-sm-auto">Enroll Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            `;
            grid.innerHTML += html;
        });
    }

    function setupPagination(meta, links) {
        lastMeta = meta;
        document.getElementById('page-info').innerText = `Page ${meta.current_page} of ${meta.last_page}`;
        document.getElementById('btn-prev').disabled = !links.prev;
        document.getElementById('btn-next').disabled = !links.next;
    }

    function changePage(direction) {
        loadCourses(currentPage + direction);
    }
</script>
@endpush
