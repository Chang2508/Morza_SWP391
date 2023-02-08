<%-- 
    Document   : createNewAccount
    Created on : Feb 4, 2023, 3:53:49 PM
    Author     : DELL
--%>

<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html lang="en">
<head>
    <title>Register</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

<!--<div class="container">
  <div class="row mt-5">
    <div class="col-md-5 m-auto mt-5">
      <h3 class="text-center">SIGN UP</h3>
      <div class="p-4 border mt-4">-->

       <section class="vh-100" style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

<!--                <form action="CreateNewAccountController" method="post" class="mx-1 mx-md-2">
  <c:set var="errors" value="${requestScope.CREATE_ERROR}"/>
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        <label class="form-label" for="form3Example1c">Username (6-20 chars)</label>
                      <input type="text" id="form3Example1c" class="form-control" name="txtUsername"/>
                      
                    </div>
                  </div>
 <c:if test="${not empty errors.usernameLengthErr}">
                <font color='red'>
                    ${errors.usernameLengthErr}
                </font><br/>
            </c:if>
                  
                <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        <label class="form-label" for="form3Example4c">Password* (6-20 chars)</label>
                      <input type="password" id="form3Example4c" class="form-control" name="txtPassword"/>
                    </div>
                  </div>
 <c:if test="${not empty errors.passwordLengthErr}">
                <font color='red'>
                    ${errors.passwordLengthErr}
                </font><br/>
            </c:if>
                
                <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        <label class="form-label" for="form3Example4c">Confirm password*</label>
                      <input type="password" id="form3Example4c" class="form-control" name="txtConfirm">/>
                    </div>
                  </div>
<c:if test="${not empty errors.confirmNotMatchErr}">
                <font color='red'>
                    ${errors.confirmNotMatchErr}
                </font><br/>
            </c:if>
                
                <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        <label class="form-label" for="form3Example4c">Fullname (2-50 chars)</label>
                      <input type="text" id="form3Example4c" class="form-control" name="txtFullname"/>
                    </div>
                  </div>
 <c:if test="${not empty errors.fullnameLengthErr}">
                <font color='red'>
                    ${errors.fullnameLengthErr}
                </font><br/>
            </c:if>
                
                 <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        <label class="form-label" for="form3Example4c">Address</label>
                      <input type="text" id="form3Example4c" class="form-control" name="txtAddress">/>
                    </div>
                  </div>
                <c:if test="${not empty errors.addressLengthErr}">
                <font color='red'>
                    ${errors.addressLengthErr}
                </font><br/>
            </c:if>
                
                 <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        <label class="form-label" for="form3Example4c">Phone number</label>
                      <input type="text" id="form3Example4c" class="form-control" name="txtPhoneNum"/>
                    </div>
                  </div>
                  <c:if test="${not empty errors.phoneNumLengthErr}">
                <font color='red'>
                    ${errors.phoneNumLengthErr}
                </font><br/>
            </c:if>
                
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        <label class="form-label" for="form3Example3c">Email</label>
                      <input type="email" id="form3Example3c" class="form-control" name="txtEmail/>
                    </div>
                  </div>
  <c:if test="${not empty errors.emailSyntaxErr}">
                <font color='red'>
                    ${errors.emailSyntaxErr}
                </font><br/>
            </c:if>
                  <c:if test="${not empty errors.usernameExisted}">
                <font color='red'>
                    ${errors.usernameExisted}
                </font><br/>
            </c:if>
            <c:if test="${not empty errors.errorMsg}">
                <font color='red'>
                    ${errors.errorMsg}
                </font><br/>
            </c:if>
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="password" id="form3Example4cd" class="form-control" />
                      <label class="form-label" for="form3Example4cd">Remember your password</label>
                    </div>
                  </div>

                  <div class="form-check">
                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />
                    <label class="form-check-label" for="form2Example3">
                      I agree all statements in <a href="#!">Terms of service</a>
                    </label>
                  </div> </br>


                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                    <button type="button" class="btn btn-primary btn-lg" name="btAction">Register</button>
                  </div>

                </form>-->
  
   <form action="CreateNewAccountController" method="post">
            <div class="form-group">
                <c:set var="errors" value="${requestScope.CREATE_ERROR}"/>
              <label>Username (6-30 chars)</label>
              <input type="text" class="form-control" name="txtUsername">
            </div>
              <c:if test="${not empty errors.usernameLengthErr}">
                <font color='red'>
                    ${errors.usernameLengthErr}
                </font><br/>
            </c:if>
            <div class="form-group">
              <label>Password* (6-20 chars)</label>
              <input type="password" class="form-control" name="txtPassword">
            </div>
                <c:if test="${not empty errors.passwordLengthErr}">
                <font color='red'>
                    ${errors.passwordLengthErr}
                </font><br/>
            </c:if>
            <div class="form-group">
              <label>Confirm password*</label>
              <input type="password" class="form-control" name="txtConfirm">
            </div>
                <c:if test="${not empty errors.confirmNotMatchErr}">
                <font color='red'>
                    ${errors.confirmNotMatchErr}
                </font><br/>
            </c:if>
            <div class="form-group">
              <label>Fullname (2-50 chars)</label>
              <input type="text" class="form-control" name="txtFullname">
            </div>
                <c:if test="${not empty errors.fullnameLengthErr}">
                <font color='red'>
                    ${errors.fullnameLengthErr}
                </font><br/>
            </c:if>
            <div class="form-group">
              <label>Address</label>
              <input type="text" class="form-control" name="txtAddress">
            </div>
                <c:if test="${not empty errors.addressLengthErr}">
                <font color='red'>
                    ${errors.addressLengthErr}
                </font><br/>
            </c:if>
            <div class="form-group">
              <label>Phone number</label>
              <input type="text" class="form-control" name="txtPhoneNum">
            </div>
                <c:if test="${not empty errors.phoneNumLengthErr}">
                <font color='red'>
                    ${errors.phoneNumLengthErr}
                </font><br/>
            </c:if>
            <div class="form-group">
              <label>Email</label>
              <input type="text" class="form-control" name="txtEmail">
            </div>
                <c:if test="${not empty errors.emailSyntaxErr}">
                <font color='red'>
                    ${errors.emailSyntaxErr}
                </font><br/>
            </c:if>
                
                <div class="form-check">
                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />
                    <label class="form-check-label" for="form2Example3">
                      I agree all statements in <a href="#!">Terms of service</a>
                    </label>
                  </div> </br>
                  
            <button type="submit" class="btn btn-primary" name="btAction">Sign up</button>
             <input type="reset" value="Reset" />
              
             
             <c:if test="${not empty errors.usernameExisted}">
                <font color='red'>
                    ${errors.usernameExisted}
                </font><br/>
            </c:if>
            <c:if test="${not empty errors.errorMsg}">
                <font color='red'>
                    ${errors.errorMsg}
                </font><br/>
            </c:if>
          </form>
          <br/>
        Already have an account? <a href="login.jsp">Click here to Login</a>

              </div>
               
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                  class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
      </div>
      </div>
  </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>