<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <div class="col-xl-8 order-xl-1">
          <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
              <div class="row align-items-center">
                <div class="col-8">
                  <h3 class="mb-0">My account</h3>
                </div>
                <div class="col-4 text-right">
                  <!-- <a href="#!" class="btn btn-sm btn-primary">Save</a> -->
                  <a href="#!" class="btn btn-info">Edit profile</a>
                </div>
              </div>
            </div>
            <div class="card-body">
              <form>
                <h6 class="heading-small text-muted mb-4">User information</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-username">Username</label>
                        <input type="text" id="input-username" name="puname" class="form-control form-control-alternative" placeholder="Username" value="<%=session.getAttribute("name") %>" >
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-email">Email address</label>
                        <input type="email" id="input-email" name="uemail" class="form-control form-control-alternative" placeholder="jesse@example.com" value="<%=session.getAttribute("email") %>" >
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-first-name">First name</label>
                        <input type="text" id="input-first-name" name="pfname" class="form-control form-control-alternative" placeholder="First name" >
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Last name</label>
                        <input type="text" id="input-last-name" name="plname" class="form-control form-control-alternative" placeholder="Last name">
                      </div>
                    </div>
                  </div>
                </div>
                <hr class="my-4">
                <!-- Address -->
                <h6 class="heading-small text-muted mb-4">Contact information</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-address">Address</label>
                        <input id="input-address" name="padd" class="form-control form-control-alternative" placeholder="Home Address" type="text">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-city">City</label>
                        <input type="text" id="input-city" name="pcity" class="form-control form-control-alternative" placeholder="City" >
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-country">Country</label>
                        <input type="text" id="input-country" name="pconutry" class="form-control form-control-alternative" placeholder="Country">
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group">
                        <label class="form-control-label" for="input-country">Postal code</label>
                        <input type="number" id="input-postal-code" name="pcode" class="form-control form-control-alternative" placeholder="Postal code">
                      </div>
                    </div>
                  </div>
                </div>
                <hr class="my-4">
                <!-- Description -->
                <h6 class="heading-small text-muted mb-4">About me</h6>
                <div class="pl-lg-4">
                  <div class="form-group focused">
                    <label>About Me</label>
                    <textarea rows="4" class="form-control form-control-alternative" name="pabout" placeholder="A few words about you ...">Software engineer.</textarea>
                  </div>
                </div>
              <!--   <a href="#!" class="btn btn-sm btn-primary" style="margin-left: 45%">Save</a> -->
                
              </form>
              <button type="button" onclick="up()" class="btn btn-sm btn-primary">Saved</button>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <footer class="footer">
    <div class="row align-items-center justify-content-xl-between">
      <div class="col-xl-6 m-auto text-center">
        <div class="copyright">
          <p><a href="https://www.creative-tim.com/product/argon-dashboard" target="_blank"></a></p>
        </div>
      </div>
    </div>
  </footer>
                <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
              
              <script>
              
              function upw() {
          	    var uname = document.querySelector('input[name="puname"]').value;
          	    var uemail = document.querySelector('input[name="uemail"]').value;
          	    var fname = document.querySelector('input[name="pfname"]').value;
          	    var lname = document.querySelector('input[name="plname"]').value;
          	    var add = document.querySelector('input[name="padd"]').value;
          	    var city = document.querySelector('input[name="pcity"]').value;
          	    var country = document.querySelector('input[name="pconutry"]').value;
          	    var code = document.querySelector('input[name="pcode"]').value;
          	    
          	    console.log(uname);
              }
              
              function up() {
            	    var uname = document.querySelector('input[name="puname"]').value;
            	    var uemail = document.querySelector('input[name="uemail"]').value;
            	    var fname = document.querySelector('input[name="pfname"]').value;
            	    var lname = document.querySelector('input[name="plname"]').value;
            	    var add = document.querySelector('input[name="padd"]').value;
            	    var city = document.querySelector('input[name="pcity"]').value;
            	    var country = document.querySelector('input[name="pconutry"]').value;
            	    var code = document.querySelector('input[name="pcode"]').value;
            	    var about = document.querySelector('textarea[name="pabout"]').value;
            	  
            	    
            	    var xhr = new XMLHttpRequest();
            	    xhr.open('POST', 'UpdateProfileServlet', true);
            	    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
            	    xhr.onreadystatechange = function() {
            	        if (xhr.readyState == 4 && xhr.status == 200) {

            	        	var response = JSON.parse(xhr.responseText);
            	            if (response.status == 'success') {

            	            	swal('Success', response.message, 'success').then(function() {
            	                    location.reload();
            	                });
            	            } else {

            	            	swal('Error', response.message, 'error');
            	            }
            	        }
            	    };
            	    xhr.send('uname=' + uname + '&uemail=' + uemail + '&first_name=' + fname + '&last_name=' + lname + '&address=' + add + '&city=' + city + '&country=' + country + '&postal_code=' + code + '&about_me=' + about);
            	}
              


              </script>
</body>

</html>