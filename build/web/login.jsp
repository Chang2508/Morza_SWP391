<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<html lang="en">
<head>
  <title>LOGIN</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

<!--<div class="container">
  <div class="row mt-5">
    <div class="col-md-5 m-auto mt-5">
      <h3 class="text-center">LOGIN PAGE</h3>
      <div class="p-4 border mt-4">

        <form action="LoginController" method="post">
            <div class="form-group">
              <label>Username</label>
              <input type="text" class="form-control" name="txtUsername">
            </div>
            <div class="form-group">
              <label>Password</label>
              <input type="password" class="form-control" name="txtPassword">
            </div>
            <button type="submit" class="btn btn-primary" name="btAction">Login</button>
             <input type="reset" value="Reset" />
          </form>
          <br/>
        
        <a href="createNewAccount.jsp">Create an account</a>-->




<section class="vh-100" style="background-color: #6096B4;">
    <style>
        img{
            padding-top: 100px;
        }
    </style>
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="images/logo1.jpg.png"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

                <form action="LoginController" method="post">

<!--                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                    <span class="h1 fw-bold mb-0">Morza</span>
                  </div>-->

                  <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign in</h3>

                  <div class="form-outline mb-4">
                      <label class="form-label" for="form2Example17">Username</label>
                    <input type="text" id="form2Example17" class="form-control form-control-lg" name="txtUsername"/>
                    
                  </div>

                  <div class="form-outline mb-4">
                      <label class="form-label" for="form2Example27" name="txtPassword">Password</label>
                    <input type="password" id="form2Example27" class="form-control form-control-lg" />
                    
                  </div>

                  <div class="pt-1 mb-4">
                    <button class="btn btn-dark btn-lg btn-block" type="submit" name="btAction">Login</button>
                  </div>

                 
                  
                  <a class="small text-muted" href="#!">Forgot password?</a>
                  <br></br> <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="createNewAccount.jsp"
                      style="color: #393f81;">Register here</a></p>
                  <a href="#!" class="small text-muted">Terms of use.</a>
                  <a href="#!" class="small text-muted">Privacy policy</a>
                </form>

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
