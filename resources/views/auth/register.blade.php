@extends('layout')

@section('content')

<div class="row mt-5">
    <div class="col-12">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-8 col-sm-10">
                <div class="card shadow-custom">
                    <div class="card-header text-center py-4">
                        <h3 class="mb-0">Create Account</h3>
                        <p class="mb-0 mt-2 opacity-75">Join our learning community</p>
                    </div>
                    <div class="card-body p-4">
                        <form id="register-form">
                            <div class="row">
                                <div class="col-12 mb-3">
                                    <label for="name" class="form-label">Full Name</label>
                                    <input type="text" class="form-control" id="name" placeholder="Enter your full name" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 mb-3">
                                    <label for="email" class="form-label">Email Address</label>
                                    <input type="email" class="form-control" id="email" placeholder="Enter your email" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="password" class="form-label">Password</label>
                                    <input type="password" class="form-control" id="password" placeholder="Create password" required>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="password_confirmation" class="form-label">Confirm Password</label>
                                    <input type="password" class="form-control" id="password_confirmation" placeholder="Confirm password" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 mb-4">
                                    <label for="role" class="form-label">I am a...</label>
                                    <select class="form-select" id="role" required>
                                        <option value="">Select your role</option>
                                        <option value="student">Student</option>
                                        <option value="instructor">Instructor</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 mb-3">
                                    <button type="submit" class="btn btn-primary w-100 py-3">Create Account</button>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 text-center">
                                    <p class="mb-0 text-muted">Already have an account? <a href="/login" class="text-decoration-none fw-bold">Sign in here</a></p>
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
    document.getElementById('register-form').addEventListener('submit', function(e) {
        e.preventDefault();
        var name = document.getElementById('name').value;
        var email = document.getElementById('email').value;
        var password = document.getElementById('password').value;
        var passwordConfirmation = document.getElementById('password_confirmation').value;
        var role = document.getElementById('role').value;

        if (password !== passwordConfirmation) {
            alert('Passwords do not match!');
            return;
        }

        registerUser(name, email, password, role);
    });
</script>
@endpush
