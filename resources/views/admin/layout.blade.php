<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - EdTech Platform</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <style>
        body {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            overflow-x: hidden;
            background: #f8f9fa;
        }
        #wrapper {
            display: flex;
            width: 100%;
            align-items: stretch;
        }
        #sidebar {
            min-width: 250px;
            max-width: 250px;
            background: #212529;
            color: #fff;
            transition: all 0.3s;
            min-height: 100vh;
        }
        #sidebar.active {
            margin-left: -250px;
        }
        #sidebar .sidebar-header {
            padding: 20px;
            background: #1a1e21;
            border-bottom: 1px solid #4a5568;
        }
        #sidebar ul.components {
            padding: 20px 0;
        }
        #sidebar ul li a {
            padding: 12px 20px;
            font-size: 1rem;
            display: block;
            color: #adb5bd;
            text-decoration: none;
            transition: 0.2s;
            border-left: 4px solid transparent;
        }
        #sidebar ul li a:hover {
            color: #fff;
            background: #2c3034;
            border-left-color: #0d6efd;
        }
        #sidebar ul li.active > a {
            color: #fff;
            background: #0d6efd;
            border-left-color: #fff;
        }
        #content {
            width: 100%;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        .admin-navbar {
            box-shadow: 0 2px 4px rgba(0,0,0,.08);
        }
        @media (max-width: 768px) {
            #sidebar {
                margin-left: -250px;
            }
            #sidebar.active {
                margin-left: 0;
            }
        }
    </style>
    <script>
        (function() {
            var token = localStorage.getItem('token');
            var role = localStorage.getItem('user_role');
            if (!token) {
                window.location.href = '/login';
            } else if (role !== 'admin') {
                window.location.href = '/dashboard';
            }
        })();
    </script>
</head>
<body>
<div id="wrapper">
    <nav id="sidebar">
        <div class="sidebar-header d-flex align-items-center justify-content-between">
            <h3 class="mb-0 fs-5 fw-bold text-white"><i class="fas fa-graduation-cap me-2 text-primary"></i> EdTech</h3>
            <button type="button" id="sidebarClose" class="btn btn-sm btn-outline-secondary d-md-none">
                <i class="fas fa-times"></i>
            </button>
        </div>
        <div class="p-4 text-center border-bottom border-dark mb-2" style="background: rgba(255,255,255,0.05);">
             <div class="bg-secondary rounded-circle d-inline-flex align-items-center justify-content-center text-white mb-2 shadow" style="width: 50px; height: 50px; font-size: 1.2rem;">
                 <i class="fas fa-user"></i>
             </div>
             <p class="mb-0 text-white fw-bold">Admin</p>
             <small class="text-white-50">Administrator</small>
        </div>
        <ul class="list-unstyled components">
            <li class="{{ Request::is('admin/users') ? 'active' : '' }}">
                <a href="/admin/users"><i class="fas fa-users me-3 text-center" style="width: 20px;"></i> User Management</a>
            </li>
            <li class="{{ Request::is('admin/courses') ? 'active' : '' }}">
                <a href="/admin/courses"><i class="fas fa-book me-3 text-center" style="width: 20px;"></i> Course Management</a>
            </li>
            <li class="mt-4 border-top border-dark pt-2">
                <a href="/dashboard"><i class="fas fa-arrow-left me-3 text-center" style="width: 20px;"></i> Back to Site</a>
            </li>
        </ul>
    </nav>
    <div id="content">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark admin-navbar mb-4 px-3">
            <div class="container-fluid">
                <button type="button" id="sidebarCollapse" class="btn btn-outline-light me-3">
                    <i class="fas fa-bars"></i>
                </button>
                <span class="navbar-brand mb-0 h1 fs-6">Dashboard</span>
                <div class="ms-auto d-flex align-items-center">
                    <div id="nav-auth" class="d-flex align-items-center">
                         <span class="text-white me-3 fw-bold small" id="user-name-display">Loading...</span>
                         <button onclick="logoutUser()" class="btn btn-danger btn-sm"><i class="fas fa-sign-out-alt"></i> Logout</button>
                    </div>
                </div>
            </div>
        </nav>
        <div class="px-4">
            @yield('content')
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="{{ asset('js/app.js') }}"></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const sidebar = document.getElementById('sidebar');
        const toggleBtn = document.getElementById('sidebarCollapse');
        const closeBtn = document.getElementById('sidebarClose');
        function toggleSidebar() {
            sidebar.classList.toggle('active');
        }
        if(toggleBtn) toggleBtn.addEventListener('click', toggleSidebar);
        if(closeBtn) closeBtn.addEventListener('click', toggleSidebar);
        const nameDisplay = document.getElementById('user-name-display');
        const storedName = localStorage.getItem('user_name');
        if (storedName) nameDisplay.innerText = storedName;
        axios.post('/auth/me')
            .then(res => {
                const user = res.data.data;
                localStorage.setItem('user_name', user.name);
                localStorage.setItem('user_role', user.role);
                localStorage.setItem('user_id', user.id);
                nameDisplay.innerText = user.name;
            })
            .catch(err => {
                if (err.response && err.response.status === 401) {
                    localStorage.removeItem('token');
                    window.location.href = '/login';
                }
            });
    });
</script>
@stack('scripts')
</body>
</html>
