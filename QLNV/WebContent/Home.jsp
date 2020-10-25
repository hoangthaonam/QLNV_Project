<%@page import="java.sql.ResultSet"%>
            <div class="col-sm-10 col-sm-offset-1">
<button type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#addModal"><i class="fas fa-plus"></i>  Add A New Employee</button>
<div class="modal" id="addModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <form method="POST" action="Home/addNews">
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Add A New Employee</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

        <!-- Modal body -->
        <div class="modal-body">
          <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" name="name">
          </div>
          <div class="form-group">
            <label for="age">Age:</label>
            <input type="text" class="form-control" name="age">
          </div>
          <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" class="form-control" name="address">
          </div>
          <div class="form-group">
            <label for="phone">Phone:</label>
            <input type="text" class="form-control" name="phone">
          </div>
        </div>

        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="submit" class="btn btn-primary" name="create">Create</button>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </form>
    </div>
  </div>
</div>


<table class="table table-borderless table-hover table-sm">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Age</th>
      <th scope="col">Address</th>
      <th scope="col">Phone</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  	<% ResultSet employees = (ResultSet)request.getAttribute("emloyees");
    int i = 0;
    while(employees.next()){ i++;%>
        <tr>
		      <th scope="col"><%= i %></th>
		      <th scope="col"><%= employees.getString("name") %></th>
		      <th scope="col"><%= employees.getString("age")%></th>
		      <th scope="col"><%= employees.getString("address")%></th>
		      <th scope="col"><%= employees.getString("phone")%></th>
		      <th scope="col">
		      	<a href="#details<%=employees.getInt("id") %>"  data-toggle="modal"><button type="button" class="btn btn-primary"><i class="fas fa-cog"></i></button></a>
            	<a href=""><button type="button" class="btn btn-danger"><i class="fas fa-trash"></i></button></a>
		      </th>

        </tr>
      
   
    <div class="modal" id="details<%=employees.getInt("id") %>">
        <div class="modal-dialog">
          <div class="modal-content">
            <form method = "POST" action="">
              <!-- Modal Header -->
              <div class="modal-header">
                <h4 class="modal-title">Detail</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
              </div>

              <!-- Modal body -->
              <div class="modal-body">
                
                <div class="form-group">
                  <label for="name">Name:</label>
                  <input type="text" class="form-control" name="name" value="<%= employees.getString("name") %>">
                </div>
                <div class="form-group">
                  <label for="age">Age:</label>
                  <input type="text" class="form-control" name="age" value="<%= employees.getString("age") %>">
                </div>
                <div class="form-group">
                  <label for="address">Address:</label>
                  <input type="text" class="form-control" name="address" value="<%= employees.getString("address") %>">
                </div>
                <div class="form-group">
                  <label for="phone">Phone:</label>
                  <input type="text" class="form-control" name="phone" value="<%= employees.getString("phone") %>">
                </div>
                <div class="form-group">
                  <label for="edit_user">Edit_user:</label>
                  <input type="text" class="form-control" value="Thao" readonly \">
                </div>
                <div class="form-group">
                  <label for="edit_time">Edit_time:</label>
                  <input type="text" class="form-control" value="today" readonly \">
                </div>
              </div>

              <!-- Modal footer -->
              <div class="modal-footer">
                <button type="submit" class="btn btn-primary" name="update">Update</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <%}%>
  </tbody>
</table>
</div>
