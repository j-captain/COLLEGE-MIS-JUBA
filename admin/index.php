<?php include('header.php'); ?>
  <body id="login">
    <div class="container">
      <form id="login_form" class="form-signin" method="post">
        <h3 class="form-signin-heading"><i class="icon-lock"></i> Please Login / Admin Panel</h3>
        <input type="text" class="input-block-level" id="username" name="username" placeholder="Username" required>
        <input type="password" class="input-block-level" id="password" name="password" placeholder="Password" required>
        <button name="login" class="btn-info" type="submit"><i class="icon-signin icon-"></i> Sign in</button>
        <!-- Back to Dashboard Button -->
        <a href="http://localhost/JubalmsIlham/index.php" class="btn-info-back">Back to Dashboard</a>
      </form>

      <script>
      jQuery(document).ready(function(){
          jQuery("#login_form").submit(function(e){
              e.preventDefault();
              var formData = jQuery(this).serialize();
              $.ajax({
                  type: "POST",
                  url: "login.php",
                  data: formData,
                  success: function(html){
                      if(html=='true'){
                          $.jGrowl("Welcome to Juba Management System", { header: 'Access Granted' });
                          var delay = 2000;
                          setTimeout(function(){ window.location = 'dashboard.php'  }, delay);  
                      } else {
                          $.jGrowl("Please Check your username and Password", { header: 'Login Failed' });
                      }
                  }
              });
              return false;
          });
      });
      </script>

    </div> <!-- /container -->

<?php include('script.php'); ?>
  </body>
</html>

<style>
  /* Background color for the body */
  body {
    background-color: #f4f4f9; /* Light gray background */
    font-family: Arial, sans-serif;
    width: 100%;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  /* Styling for the form */
  .form-signin {
    max-width: 400px;
    margin: 0 auto;
    background-color: #fff; /* White background for the form */
    padding: 30px;
    border-radius: 8px; /* Rounded corners */
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
  }

  .form-signin-heading {
    text-align: center;
    font-size: 24px;
    margin-bottom: 20px;
    color: #333; /* Dark text for heading */
  }

  /* Input fields */
  .input-block-level {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    font-size: 16px;
    border-radius: 4px;
    border: 1px solid #ddd;
  }

  /* Styling for the Sign In button */
  .btn-info {
    width: 98%;
    height: 40px;
    padding: 12px;
    font-size: 18px;
    background-color: #4CAF50; /* Green background */
    color: white;
    border-radius: 7px;
    border: none;
    cursor: pointer;
    text-align: center;
    transition: background-color 0.3s, transform 0.3s;
  }

  .btn-info:hover {
    background-color: #45a049; /* Darker green */
    transform: translateY(-3px); /* Slightly raise button */
  }

  /* Styling for the Back to Dashboard button */
  .btn-info-back {
    display: inline-block;
    width: 90%;
    height: 20px;
    padding: 12px;
    margin-top: 10px;
    text-align: center;
    background-color: #2196F3; /* Blue background */
    color: white;
    border-radius: 7px;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s, transform 0.3s;
    text-decoration: none; /* Remove underline */
  }

  .btn-info-back:hover {
    background-color: #1976D2; /* Darker blue */
    transform: translateY(-3px); /* Slightly raise button */
  }

  /* Styling for the success logout message */
  p {
    text-align: center;
    font-size: 18px;
    color: green;
  }
</style>
