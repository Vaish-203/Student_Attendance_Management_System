<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Student Attendance Management System</title>

  <link rel="icon" type="text/css" href="https://image.shutterstock.com/image-vector/effective-teamwork-icon-black-thin-260nw-2227180861.jpg">
   
<style type="text/css">

   *{
    padding:0;
    margin: 0;
    box-sizing: ;
    border-box: ;
   }
   
   header{
     width: 100%;
     height: 100vh;
     background: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.6)),url("home1.jpg");
     background-size: cover;
     font-family: sans-serif;
   }
  
  .menu a{
     text-decoration: none;
     color: white;
     padding: 10px 20px;
     font-size: 20px;
  }
  .menu a:before{
     content: "";
     position: absolute;
     top: 0;
     left: 0;
     width: 0%;
     height: 100%;
     border-bottom: 2px solid indianred;
     transition: 0.4s linear;
  }
  .menu a:hover:before{
     width: 90%;
  }
  .login a{
    text-decoration: none;
    color: white;
    padding: 10px 20px;
    font-size: 20px;
    background: indianred;
    border-radius: 8px;
    transition: 0.4s;
  }
  .login a:hover{
    background: transparent;
    border: 1px solid indianred;
  }
  .h-txt {
      max-width: 650px;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%,-50%);
      text-align: center;
      color: white;
       transition: 0.4s;
  }
  .h-txt span{
    letter-spacing: 5px;
  }
  .h-txt h1{
    font-size: 3.5em;
  }
  .h-txt a:hover{
    background: transparent;
    border: 1px solid indianred;
  }
  footer{
    background-color: transparent;
    text-decoration: none;
    text-align: center;
  }
  

</style>
</head>

<body>
 
  <header>
   
    <section class="h-txt">

      <span>Welcome to Our</span>
      <h1>Student Attendance Management System</h1>

       <br>

       <div class="login">

          <a href="index.php">Login</a>

        </div>
    
    </section>

  </header>

  <footer>
     Developed by C Batch
              STUDENT ATTENDANCE MANAGEMENT SYSTEM.
  </footer>

</body>
</html>
