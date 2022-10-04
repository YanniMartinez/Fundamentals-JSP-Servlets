<%@include file="include/header.jsp" %>

<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
			<form action="${pageContext.request.contextPath }/appController">
				  <div class="form-group">
				    <label for="exampleInputEmail1">Email address</label>
				    <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
				    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
				  </div>
				  <div class="form-group">
			    		<label for="exampleInputUsername">Username</label>
			    		<input type="text" class="form-control" id="exampleInputUsername" placeholder="Username">
			  		</div>
				<button type="submit" class="btn btn-primary">Add User</button>
			</form>					
		</div>	
	</div>
</div>
<%@include file="include/footer.jsp" %>
		