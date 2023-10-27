<%--
  Created by IntelliJ IDEA.
  User: Nguyen Nhu Toan
  Date: 2023-10-27
  Time: 4:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="<c:url value="css/style.css"/>">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
</head>
<body>
<div class="container">
    <form action="" onsubmit="return false">
        <div class="from-register">
            <div class="form_group">
                <div class="title">
                    Account
                </div>
            </div>
            <div class="form_group">
                <div class="input_container">
                    <i class="fa fa-user"></i>
                    <input type="text" id="username" placeholder="Full Name">
                </div>
            </div>
            <span id="error_username"></span>
            <div class="form_group">
                <div class="input_container">
                    <i class="fa fa-envelope"></i>
                    <input type="email" id="email" placeholder="Email Address">
                </div>
            </div>
            <span id="error_email"></span>
            <div class="form_group">
                <div class="input_container">
                    <i class="fa fa-key"></i>
                    <input type="password" id="password" placeholder="Password">
                </div>
            </div>
            <span id="error_password"></span>
            <div class="form_group">
                <div class="title" style="width: 50%">
                    Date of birth
                </div>
                <div class="title" style="width: 50%">
                    Gender
                </div>
            </div>
            <div class="form_group">
                <div class="dmy">
                    <input type="text" id="date" placeholder="DD">
                    <input type="text" id="month" placeholder="MM">
                    <input type="text" id="year" placeholder="YY">
                </div>
                <div class="gender">
                    <button id="male" style="height: 57.6px;">Male</button>
                    <button id="female" style="height: 57.6px;">Female</button>
                </div>
            </div>
            <div class="title">
                Payment Details
            </div>
            <div class="form_group">
                <button id="credit_card"><i class="fa-brands fa-cc-visa" style="padding-right: 5px"></i>Credit Card
                </button>
                <button id="paypal"><i class="fa-brands fa-cc-paypal" style="padding-right: 5px"></i>Paypal</button>
            </div>
            <div class="form_group" style="height: 49px;">
                <div class="input_container">
                    <i class="fa fa-credit-card"></i>
                    <input type="number" id="card_number" placeholder="Card Number">
                </div>
            </div>
            <div class="form_group" style="height: 49px;">
                <div class="input_container" style="width: 50%">
                    <i class="fa fa-person"></i>
                    <input type="number" id="card" placeholder="Card CVC" style="padding-right: 0px">
                </div>
                <div class="gender" style="width: 50%">
                    <div class="date_picker">
                        <input type="text" id="date_picker" placeholder="1 Jane" style="width: 45%">
                        <i class="fa-solid fa-caret-up fa-rotate-180" id="icon_date_picker"></i>
                    </div>
                    <div class="date_picker">
                        <input type="text" class="year_picker" placeholder="2015" style="width: 45%"/><i
                            class="fa-solid fa-caret-up fa-rotate-180"></i>
                    </div>
                </div>
            </div>
            <div class="title" style="padding-bottom: 5px">Term and Conditions</div>
            <div class="form_group">
                <input type="checkbox" id="terms" name="terms" value="terms">
                <label for="terms" style="color: #c2bdbd;"> I accept the terms and conditionals for signing up to this
                    service, and hereby confirm I have read the privacy policy</label><br>
            </div>
            <div class="submit-btn">
                <button type="submit" id="submitForm" onclick="validate()">Sign in</button>
            </div>
        </div>

    </form>
</div>
<script src="/js/app.js"></script>
<%--<script src="https://code.jquery.com/jquery-3.6.0.js"></script>--%>
<%--<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>--%>
</body>
</html>
