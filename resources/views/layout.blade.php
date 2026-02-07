<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EdTech Platform</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
        <div class="container">
            <div class="row w-100">
                <div class="col-12">
                    <div class="row align-items-center">
                        <div class="col-md-3 col-6">
                            <a class="navbar-brand" href="/">EdTech</a>
                        </div>
                        <div class="col-md-6 d-none d-md-block">
                            <div class="d-flex align-items-center justify-content-center">
                                <a class="nav-link text-white me-4" href="/">Home</a>
                                <form action="/" method="GET" class="d-flex flex-grow-1" style="max-width: 400px;">
                                    <div class="input-group">
                                        <span class="input-group-text bg-white border-0"><i class="fas fa-search text-muted"></i></span>
                                        <input class="form-control border-0" type="search" name="search" placeholder="Search courses..." aria-label="Search" value="{{ request('search') }}">
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-3 col-6 text-end">
                            <div class="row">
                                <div class="col-12">
                                    <div id="nav-guest" class="d-none">
                                        <a href="/login" class="btn btn-primary btn-sm px-4">Login</a>
                                    </div>
                                    <div id="nav-auth" class="d-none align-items-center justify-content-end">
                                        <a href="/admin/users" id="admin-panel-link" class="btn btn-outline-warning btn-sm me-3 d-none">Admin Panel</a>
                                        <a href="/dashboard" class="text-white text-decoration-none me-3 fw-bold" id="user-name-display">User</a>
                                        <button onclick="logoutUser()" class="btn btn-danger btn-sm">Logout</button>
                                    </div>
                                    <script>
                                        (function(){
                                            if(localStorage.getItem('user_role') === 'admin') {
                                                const btn = document.getElementById('admin-panel-link');
                                                if(btn) btn.classList.remove('d-none');
                                            }
                                        })();
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <div class="container">
        @yield('content')
    </div>

    <footer class="mt-5 py-4 bg-dark text-white">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb-3 mb-md-0">
                    <h5 class="text-gradient-light">EdTech Platform</h5>
                    <p class="mb-0 text-white-50">Learn. Grow. Succeed.</p>
                </div>
                <div class="col-md-4 mb-3 mb-md-0">
                    <h6 class="text-white">Quick Links</h6>
                    <div class="row">
                        <div class="col-12">
                            <a href="/" class="text-white-50 text-decoration-none d-block mb-2">Home</a>
                            <a href="/dashboard" class="text-white-50 text-decoration-none d-block mb-2">Dashboard</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <h6 class="text-white">Contact</h6>
                    <p class="text-white-50 mb-0">Email: info@edtech.com</p>
                </div>
            </div>
            <hr class="my-3 bg-white opacity-25">
            <div class="row">
                <div class="col-12 text-center">
                    <p class="mb-0 text-white-50">&copy; 2026 EdTech Platform. All rights reserved.</p>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{ asset('js/app.js') }}"></script>
    @stack('scripts')
</body>
</html>
