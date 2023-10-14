var username = document.getElementById('username')
var email = document.getElementById('email')
var password = document.getElementById('password')
var erUsername = document.getElementById('error_username')
var erEmail = document.getElementById('error_email')
var erPassword = document.getElementById('error_password')
// var submit = document.getElementById('submitForm')
// const elements = [username, email, password]


function checkUserName(min, max) {
    let input = username.value.trim();
    const regular = /^(?=.{8,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$/
    if (input.length < min) {
        erUsername.innerHTML = "Tên đăng nhập chứa ít nhất 8 ký tự!";
        return false;
    } else if (input.length > max) {
        erUsername.innerHTML = "Tên đăng nhập chứa nhiều nhất 20 ký tự!";
        return false;
    } else if (input.value === '') {
        erUsername.innerHTML = "Vui lòng không để trống!";
        return false;
    } else if (regular.test(input)) {
        erUsername.style.display = 'none';
        return true;
    } else {
        erUsername.innerHTML = "Tên đăng nhập không bao gồm các ký tự _ .";
        return false;
    }
}

function checkEmail() {
    const reg = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g;
    let input = email.value.trim();
    if(input.value === ''){
        erEmail.innerHTML = "Email không được để trống!";
        return false;
    }else if(reg.test(input)){
        erEmail.style.display = 'none';
        return true;
    }else {
        erEmail.innerHTML = "Email không đúng định dạng!";
        return false;
    }
}

function checkPassword(min,max) {
    let input = password.value.trim();
    const reg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
    if (input.length < min) {
        erPassword.innerHTML = "Mật khẩu chứa ít nhất 8 ký tự!";
        return false;
    } else if (input.length > max) {
        erPassword.innerHTML = "Mật khẩu chứa nhiều nhất 20 ký tự!";
        return false;
    } else if (input.value === '') {
        erPassword.innerHTML = "Vui lòng không để trống!";
        return false;
    } else if (reg.test(input)) {
        erPassword.style.display = 'none';
        return true;
    } else {
        erPassword.innerHTML = "Password must have included at least 1 letter Uppercase or lowercase,1 digit,1 special character and At least 8 characters long ";
        return false;
    }
}

function checkPhoneNumber() {
    var phone = document.getElementById('phone');
    var erPhone = document.getElementById('erPhone');
    let input = phone.value.trim();
    const reg = /^[0-9\-\+]{9,15}$/;
    if(input.value === ''){
        erPhone.innerHTML = "Vui lòng nhập số điện thoại";
    }else if(reg.test(input)){
        erPhone.style.display = 'none';
    }else {
        erPhone.innerHTML = "Số điện thoại không đúng định dạng!"
    }
}

function validate() {
    if (checkUserName(8, 20) && checkEmail() && checkPassword(8,20)) {
        alert('Đăng ký thành công');
    } else {
        console.log(false);
    }
}

function validateContactUs() {
    if (checkUserName(8, 20) && checkEmail() && checkPhoneNumber()) {
        alert('Đăng ký thành công');
    } else {
        console.log(false);
    }
}

