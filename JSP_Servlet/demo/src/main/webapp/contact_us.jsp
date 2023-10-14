<%--
  Created by IntelliJ IDEA.
  User: Nguyen Nhu Toan
  Date: 2023-10-14
  Time: 10:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <title>Form Contact</title>
    <link rel="stylesheet" href="<c:url value="/css/contact_us_style.css"/>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer">
</head>

<body>

<div id="form">
    <div class="wrapper">
        <div class="form_content">
            <h2 style="display: flex;justify-content: center;margin-bottom: 5px;">Contact Us</h2>
            <form action="" method="post">
                <div class="form-group">
                    <label for="username">FULL NAME*</label>
                    <input type="text" id="username" name="username" placeholder="Enter Your Name"
                           onfocusout="checkUserName(8,20)">
                </div>
                <span id="error_username" style="font-size: 8px;color: red">ER</span>
                <div class="form-group">
                    <div class="row">
                        <div class="col1" style="margin-right: 50px;">
                            <label for="email">EMAIL*</label>
                            <input type="email" id="email" name="email" placeholder="Enter Your Email"
                                   onfocusout="checkEmail()">
                            <span id="error_email" style="font-size: 8px;color: red"></span>
                        </div>
                        <div class="col2">
                            <label for="phone">PHONE*</label>
                            <input type="text" id="phone" name="phone" placeholder="Enter Number Phone"
                                   onfocusout="checkPhoneNumber()">
                            <span id="erPhone" style="font-size: 8px;color: red"></span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="username">NEEDED SERVICES*</label>
                    <input type="number" id="service" name="service" placeholder="Please chooses">
                </div>
                <div class="form-group">
                    <div class="label_area">MESSAGE</div>
                    <div class="text-area-wrapper">
                        <textarea id="message" name="message" rows="10"
                                  style="width: 104%;"></textarea>
                        <div class="placeholder">Your message here</div>
                    </div>
                </div>
                <button type="submit">Submit <i class="fa-solid fa-arrow-right"
                                                style="color: #ffffff;margin-left: 4px;"></i>
                </button>
            </form>
        </div>
    </div>
</div>

<%--<script>--%>
<%--    function onInput() {--%>
<%--        const textarea = document.getElementById('message');--%>
<%--        const placeholder = document.querySelector('.placeholder');--%>

<%--    }--%>
<%--</script>--%>
<script src="/js/app.js"></script>
</body>

</html>
