<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>

            <div class="col-sm-4 col-sm-offset-4">
            
            <div id="alert">
            <% if(request.getAttribute("error")!=null) out.println(request.getAttribute("error")); %>
			      </div>
			  <form action="http://localhost:8080/QLNV/login" method="POST">
			    <div class="form-group">
			      <label for="username">Username:</label>
			      <input type="text" class="form-control" name="username" id="username"/>
			      <div id="alert_username">
			      </div>
			    </div>
			    <div class="form-group">
			      <label for="pwd">Password:</label>
			      <input type="password" class="form-control" name="password" id="password">
			      <div id="alert_password">
			      </div>
			    </div>
			    <div class="checkbox">
			      <label><input type="checkbox" name="remember"> Remember me</label>
			      <button type="submit" class="btn btn-primary pull-right" name="submit">Login</button>
			    </div>
			  </form>
			</div>
<script>
  $(document).ready(function(){
    $('#username').keyup(function(){
      let username = $(this).val();
      $.post('validateLogin',{username:username},function(data){
        $('#alert_username').html(data);
      });
    });
    $('password').change(function(){
      let password = $(this).val();
      $.post('http://localhost/Intern/MiniProject/Login/validateLogin',{password:password},function(data){
        $('#alert_password').html(data);
      });
    });
  });
</script>