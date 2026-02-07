axios.defaults.baseURL = '/api';
axios.defaults.headers.common['Content-Type'] = 'application/json';
axios.defaults.headers.common['Accept'] = 'application/json';

const token = localStorage.getItem('token');
if (token) {
    axios.defaults.headers.common['Authorization'] = 'Bearer ' + token;
    updateNav(true);
} else {
    updateNav(false);
}

function getErrorMessage(error, defaultMsg = 'Operation failed') {
    if (error.response && error.response.data) {
        return error.response.data.message || error.response.data.error || defaultMsg;
    }
    return error.message || defaultMsg;
}

function updateNav(isLoggedIn) {
    if (isLoggedIn) {
        document.getElementById('nav-guest').classList.add('d-none');
        document.getElementById('nav-auth').classList.remove('d-none');
        document.getElementById('nav-auth').classList.add('d-flex');

        const name = localStorage.getItem('user_name');
        if (document.getElementById('user-name-display')) {
            document.getElementById('user-name-display').innerText = name;
        }
    } else {
        document.getElementById('nav-guest').classList.remove('d-none');
        document.getElementById('nav-guest').classList.add('d-block');
        document.getElementById('nav-auth').classList.add('d-none');
        document.getElementById('nav-auth').classList.remove('d-flex');
    }
}

function loginUser(email, password) {
    axios.post('/auth/login', {
        email: email,
        password: password
    })
        .then(function (response) {
            const token = response.data.authorization.token;
            const user = response.data.user;

            localStorage.setItem('token', token);
            localStorage.setItem('user_id', user.id);
            localStorage.setItem('user_role', user.role);
            localStorage.setItem('user_name', user.name);

            window.location.href = '/dashboard';
        })
        .catch(function (error) {
            alert(getErrorMessage(error, 'Login failed!'));
        });
}

function registerUser(name, email, password, role) {
    axios.post('/auth/register', {
        name: name,
        email: email,
        password: password,
        role: role
    })
        .then(function (response) {
            return axios.post('/auth/login', { email: email, password: password });
        })
        .then(function (response) {
            const token = response.data.authorization.token;
            const user = response.data.user;
            localStorage.setItem('token', token);
            localStorage.setItem('user_id', user.id);
            localStorage.setItem('user_role', user.role);
            localStorage.setItem('user_name', user.name);
            window.location.href = '/dashboard';
        })
        .catch(function (error) {
            alert(getErrorMessage(error, 'Registration failed'));
        });
}

function logoutUser() {
    axios.post('/auth/logout')
        .then(function () {
        })
        .catch(function (error) {
        })
        .finally(function () {
            localStorage.clear();
            window.location.href = '/login';
        });
}
