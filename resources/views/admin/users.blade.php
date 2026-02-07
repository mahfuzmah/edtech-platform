@extends('admin.layout')

@section('content')
<h2>User Management</h2>
<div class="card mt-4 shadow-sm">
    <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
        <h5 class="mb-0">All Users</h5>
        <button class="btn btn-sm btn-light" onclick="loadUsers()">Refresh</button>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-hover align-middle">
                <thead class="table-light">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody id="user-list-body">
                    <tr><td colspan="5" class="text-center">Loading...</td></tr>
                </tbody>
            </table>
        </div>
        <div id="pagination-links" class="mt-3 d-flex justify-content-center"></div>
    </div>
</div>
@endsection

@push('scripts')
<script>
    document.addEventListener('DOMContentLoaded', function() {
        loadUsers();
    });

    function loadUsers(page = 1) {
        document.getElementById('user-list-body').innerHTML = '<tr><td colspan="5" class="text-center">Loading...</td></tr>';
        
        axios.get('/admin/users?page=' + page)
            .then(res => {
                const users = res.data.data;
                const tbody = document.getElementById('user-list-body');
                tbody.innerHTML = '';
                
                if (users.length === 0) {
                    tbody.innerHTML = '<tr><td colspan="5" class="text-center">No users found</td></tr>';
                    return;
                }

                users.forEach(user => {
                    let badgeClass = 'bg-secondary';
                    if (user.role === 'admin') badgeClass = 'bg-danger';
                    if (user.role === 'instructor') badgeClass = 'bg-primary';
                    if (user.role === 'student') badgeClass = 'bg-success';
                    
                    const isSelf = user.id == localStorage.getItem('user_id');
                    const deleteBtn = isSelf ? 
                        `<span class="text-muted">Current User</span>` : 
                        `<button class="btn btn-sm btn-outline-danger" onclick="deleteUser(${user.id})"><i class="fas fa-trash"></i> Delete</button>`;
                    
                    tbody.innerHTML += `
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.name}</td>
                            <td>${user.email}</td>
                            <td><span class="badge ${badgeClass}">${user.role.toUpperCase()}</span></td>
                            <td>${deleteBtn}</td>
                        </tr>
                    `;
                });

                renderPagination(res.data.meta, res.data.links);
            })
            .catch(err => {
                document.getElementById('user-list-body').innerHTML = `<tr><td colspan="5" class="text-danger">Error: ${err.message}</td></tr>`;
            });
    }

    function deleteUser(id) {
        if(confirm('Are you sure you want to delete this user?')) {
            axios.delete('/admin/users/' + id)
                .then(() => {
                    alert('User deleted successfully');
                    loadUsers();
                })
                .catch(err => {
                    alert('Failed to delete user: ' + (err.response?.data?.message || err.message));
                });
        }
    }

    function renderPagination(meta, links) {
        const container = document.getElementById('pagination-links');
        container.innerHTML = '';
        
        if (meta.last_page > 1) {
             container.innerHTML += `<button class="btn btn-sm btn-outline-secondary me-1" onclick="loadUsers(${meta.current_page - 1})" ${meta.current_page === 1 ? 'disabled' : ''}>Prev</button>`;
             for(let i=1; i<=meta.last_page; i++) {
                 container.innerHTML += `<button class="btn btn-sm ${i===meta.current_page ? 'btn-primary' : 'btn-outline-primary'} me-1" onclick="loadUsers(${i})">${i}</button>`;
             }
             container.innerHTML += `<button class="btn btn-sm btn-outline-secondary ms-1" onclick="loadUsers(${meta.current_page + 1})" ${meta.current_page === meta.last_page ? 'disabled' : ''}>Next</button>`;
        }
    }
</script>
@endpush
