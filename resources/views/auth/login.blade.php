@extends('layout')

@section('content')

<div class="row mt-5">
    <div class="col-12">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-7 col-sm-9">
                <div class="card shadow-custom">
                    <div class="card-header text-center py-4">
                        <h3 class="mb-0">Welcome Back</h3>
                        <p class="mb-0 mt-2 opacity-75">Sign in to your account</p>
                    </div>
                    <div class="card-body p-4">
                        <form id="login-form">
                            <div class="row">
                                <div class="col-12 mb-3">
                                    <label for="email" class="form-label">Email Address</label>
                                    <input type="email" class="form-control" id="email" placeholder="Enter your email" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 mb-4">
                                    <label for="password" class="form-label">Password</label>
                                    <input type="password" class="form-control" id="password" placeholder="Enter your password" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 mb-3">
                                    <button type="submit" class="btn btn-primary w-100 py-3">Sign In</button>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 text-center">
                                    <p class="mb-0 text-muted">Don't have an account? <a href="/register" class="text-decoration-none fw-bold">Register here</a></p>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

@push('scripts')
<script>
    document.getElementById('login-form').addEventListener('submit', function(e) {
        e.preventDefault();
        var email = document.getElementById('email').value;
        var password = document.getElementById('password').value;
        loginUser(email, password);
    });
</script>
@endpush
