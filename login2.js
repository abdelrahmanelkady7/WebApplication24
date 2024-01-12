var drArray = [
    { email: 'dr1@gmail.com', password: 'doctor1' },
    { email: 'dr2@gmail.com', password: 'doctor2' },
    { email: 'dr3@gmail.com', password: 'doctor3' },
    { email: 'dr4@gmail.com', password: 'doctor4' },
    { email: 'dr5@gmail.com', password: 'doctor5' },
    { email: 'dr6@gmail.com', password: 'doctor6' }
];

var nurseArray = [
    { email: 'nurse1@gmail.com', password: 'nurse123' },
    { email: 'nurse2@gmail.com', password: 'nurse456' },
    { email: 'nurse3@gmail.com', password: 'nurse123' },
    { email: 'nurse4@gmail.com', password: 'nurse456' },
    { email: 'nurse5@gmail.com', password: 'nurse123' },
    { email: 'nurse6@gmail.com', password: 'nurse456' },
];

var patientArray = [
    { email: 'patient1@gmail.com', password: 'patient1' },
    { email: 'patient2@gmail.com', password: 'patient2' },
    { email: 'patient3@gmail.com', password: 'patient3' },
    { email: 'patient4@gmail.com', password: 'patient4' },
    { email: 'patient5@gmail.com', password: 'patient5' },
    { email: 'patient6@gmail.com', password: 'patient6' },
    { email: 'patient7@gmail.com', password: 'patient7' },
    { email: 'patient8@gmail.com', password: 'patient8' },
    { email: 'patient9@gmail.com', password: 'patient9' },
    { email: 'patient10@gmail.com', password: 'patient10' }
];

// Function to handle the login process
function login() {
    // Get email and password from the login form by their IDs
    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;

    // Check if the credentials match any user in the arrays
    if (checkCredentials(drArray, email, password)) {
        window.location.href = 'doctor.aspx'  ;
    } else if (checkCredentials(nurseArray, email, password)) {
        window.location.href = 'nurse.aspx'; 
    } else if (checkCredentials(patientArray, email, password)) {
        window.location.href = 'patient.aspx';
    } else {
        alert('Invalid email or password');
    }
}

// Function to check if the given credentials match any user in the array
function checkCredentials(array, email, password) {
    return array.some(function (user) {
        return user.email === email && user.password === password;
    });
}
