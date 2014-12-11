<html>
<link rel="stylesheet" type="text/css" href="style.css">
<style type="text/css">
    #errorContainer {
        display: none;
        overflow: auto;
        background-color: #FFFFCC;
        border: 1px solid #FF2323;
        padding-top: 0;
    }
    #errorContainer label {
        float: none;
        width: auto;
    }
    input.error {
        border: 1px solid #FF2323;
    }
</style>
<title></title>
</head>
  <h3 align="left">
      <b>REGISTRATION FORM</b>
  </h3>
  <div id="errorContainer">
      <p>Please correct the following errors and try again:</p>
      <ul />
  </div>
<div>
  <form method="post" action="regstore.jsp" id="RegForm">
      <div class="control-group">
          <label class="control-label">User Name</label>
          <div class="controls">
              <input type="text" name="username" value="" maxlength="50" />
          </div>
      </div>
      <div class="control-group">
          <label class="control-label">First Name</label>
          <div class="controls">
              <input type="text" name="firstname" value=""  maxlength="20" />
          </div>
      </div>
      <div class="control-group">
          <label class="control-label">Last Name</label>
          <div class="controls">
              <input type="text" name="lastname" value="" maxlength="20" />
          </div>
      </div>
      <div class="control-group">
          <label class="control-label">Email</label>
          <div class="controls">
              <input type="text" name="email" value="" maxlength="100" />
          </div>
      </div>
      &nbsp;&nbsp;
      <div class="control-group">
          <div class="controls">
              <input type="submit" value="Submit" class="btn" />
              &nbsp;&nbsp;
              <input type="reset" value="Reset" class="btn" />
          </div>
      </div>
  </form>
</div>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<script type="text/javascript">
    $(function(){

        $('#RegForm').validate({
            rules: {
                username: "required",
                email: {
                    required: true,
                            email: true
                }
            },
            messages: {
                username: "Please enter your Username.",
                email:"Please enter a valid email address"
            },
            errorContainer: $('#errorContainer'),
            errorLabelContainer: $('#errorContainer ul'),
            wrapper: 'li'
        });

    });
</script>
  </body>
</html>
