<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>
   Courses
  </title>
 
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
 
  <link href="dashboard/assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="dashboard/assets/css/nucleo-svg.css" rel="stylesheet" />

  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="dashboard/assets/css/nucleo-svg.css" rel="stylesheet" />
 
  <link id="pagestyle" href="dashboard/assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />
  
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.css">
 
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
  
  
  
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">

<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<style>
table {
  caption-side: bottom;
  
}
.table-responsive {
    margin: 30px 0;
}
.table-wrapper {
	background: #fff;
	padding: 20px 25px;
	border-radius: 3px;
	min-width: 1000px;
	box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {        
	padding-bottom: 15px;
	background: #d5d0dd;
	color: #fff;
	padding: 16px 30px;
	min-width: 100%;
	margin: -20px -25px 10px;
	border-radius: 3px 3px 0 0;
}
.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
	
}
.table-title .btn-group {
	float: right;
}
.table-title .btn {
	color: #fff;
	float: right;
	font-size: 13px;
	border: none;
	min-width: 50px;
	border-radius: 2px;
	border: none;
	outline: none !important;
	margin-left: 10px;
}
.table-title .btn i {
	float: left;
	font-size: 21px;
	margin-right: 5px;
}
.table-title .btn span {
	float: left;
	margin-top: 2px;
}
table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}
table.table tr th:first-child {
	width: 60px;
}
table.table tr th:last-child {
	width: 100px;
}
table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}
table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}
table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}	
table.table td:last-child i {
	opacity: 0.9;
	font-size: 22px;
	margin: 0 5px;
}
table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
	outline: none !important;
}
table.table td a:hover {
	color: #2196F3;
}
table.table td button.edit {
	color: #FFC107;
	border:none;
	background:transparent;
}
table.table td a.delete {
	color: #F44336;
}
table.table td i {
	font-size: 19px;
}
table.table .avatar {
	border-radius: 50%;
	vertical-align: middle;
	margin-right: 10px;
}
.pagination {
	float: right;
	margin: 0 0 5px;
}
.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #0b0742;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}
.pagination li a:hover {
	color: #666;
}	
.pagination li.active a, .pagination li.active a.page-link {
	background: #aba3bc;
}
.pagination li.active a:hover {        
	background: #0397d6;
}
.pagination li.disabled i {
	color: #ccc;
}
.pagination li i {
	font-size: 16px;
	padding-top: 6px
}
.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}    
/* Custom checkbox */
.custom-checkbox {
	position: relative;
}
.custom-checkbox input[type="checkbox"] {    
	opacity: 0;
	position: absolute;
	margin: 5px 0 0 3px;
	z-index: 9;
}
.custom-checkbox label:before{
	width: 18px;
	height: 18px;
}
.custom-checkbox label:before {
	content: '';
	margin-right: 10px;
	display: inline-block;
	vertical-align: text-top;
	background: white;
	border: 1px solid #bbb;
	border-radius: 2px;
	box-sizing: border-box;
	z-index: 2;
}
.custom-checkbox input[type="checkbox"]:checked + label:after {
	content: '';
	position: absolute;
	left: 6px;
	top: 3px;
	width: 6px;
	height: 11px;
	border: solid #000;
	border-width: 0 3px 3px 0;
	transform: inherit;
	z-index: 3;
	transform: rotateZ(45deg);
}
.custom-checkbox input[type="checkbox"]:checked + label:before {
	border-color: #03A9F4;
	background: #03A9F4;
}
.custom-checkbox input[type="checkbox"]:checked + label:after {
	border-color: #fff;
}
.custom-checkbox input[type="checkbox"]:disabled + label:before {
	color: #b8b8b8;
	cursor: auto;
	box-shadow: none;
	background: #ddd;
}
/* Modal styles */
.modal .modal-dialog {
	max-width: 400px;
}
.modal .modal-header, .modal .modal-body, .modal .modal-footer {
	padding: 20px 30px;
}
.modal .modal-content {
	border-radius: 3px;
	font-size: 14px;
}
.modal .modal-footer {
	background: #ecf0f1;
	border-radius: 0 0 3px 3px;
}
.modal .modal-title {
	display: inline-block;
}
.modal .form-control {
	border-radius: 2px;
	box-shadow: none;
	border-color: #dddddd;
}
.modal textarea.form-control {
	resize: vertical;
}
.modal .btn {
	border-radius: 2px;
	min-width: 100px;
}	
.modal form label {
	font-weight: normal;
}	
</style>
<script>
$(document).ready(function(){
	// Activate tooltip
	$('[data-toggle="tooltip"]').tooltip();
	
	// Select/Deselect checkboxes
	var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
});
</script>


<body class="g-sidenav-show   bg-gray-100">
  <div class="min-height-300 bg-primary position-absolute w-100"></div>
  <aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href=" https://demos.creative-tim.com/argon-dashboard/pages/dashboard.html " target="_blank">
      
         <img src="images/log.png" alt="Working Illustration"  />
      </a>
    </div>
    <hr class="horizontal dark mt-0">
    <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link " href="admin.jsp">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Dashboard</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="../../users.jsp">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-calendar-grid-58 text-warning text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Users</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="../../addcourses.jsp">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-credit-card text-success text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Add courses</span>
          </a>
        </li>
        
           <li class="nav-item ">
          <a class="nav-link " href="../../updatecourse.jsp">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-single-copy-04 text-warning text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Update / Delete Courses</span>
          </a>
        </li>
     
       
        <li class="nav-item">
          <a class="nav-link  " href="../../profile.jsp">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-single-02 text-dark text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Profile</span>
          </a>
        </li>
      <!--   <li class="nav-item">
          <a class="nav-link " href="../pages/sign-in.html">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-single-copy-04 text-warning text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Sign In</span>
          </a>
        </li> -->
        <li class="nav-item">
          <a class="nav-link " href="NewHome.jsp">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-collection text-info text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Logout</span>
          </a>
        </li>
      </ul>
    </div>

  </aside>
  <main class="main-content position-relative border-radius-lg ">
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl " id="navbarBlur" data-scroll="false">
      <div class="container-fluid py-1 px-3">
    
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
         <!--  <div class="ms-md-auto pe-md-3 d-flex align-items-center">
            <div class="input-group">
              <span class="input-group-text text-body"><i class="fas fa-search" aria-hidden="true"></i></span>
              <input type="text" class="form-control" placeholder="Type here...">
            </div>
          </div> -->
          <ul class="navbar-nav  justify-content-end" style="margin-left:90%;">
            <li class="nav-item d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-white font-weight-bold px-0">
                <i class="fa fa-user me-sm-1" style="font-size:1.5rem;"></i>
                <span class="d-sm-inline d-none" style="font-size:1.5rem;"><%=session.getAttribute("name") %></span>
              </a>
            </li>
         
           
           
          </ul>
        </div>
      </div>
    </nav>
<section>
<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2 style="color:#0b0742;margin-top:10px;">Notification <b>Manager</b></h2>
					</div>
					<!-- <div class="col-sm-6">
						
						<a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>						
					</div> -->
				</div>
			</div>
			<table class="table table-striped table-hover"  id="courseTable">
				<thead>
					<tr>
						<!-- <th>
							<span class="custom-checkbox">
								<input type="checkbox" id="selectAll">
								<label for="selectAll"></label>
							</span>
						</th> -->
						<th>ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>Message</th>
					
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				<%@ page import="java.sql.*" %>
<%
   // Database credentials
   String url = "jdbc:mysql://localhost:3306/mydatabase";
   String user = "root";
   String password = "password";

   // Connect to the database
   Connection conn = null;
   Statement stmt = null;
   ResultSet rs = null;

   try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?useSSL=true","root","saranya@2001");

      // Execute a SQL query to fetch data from the table
      stmt = conn.createStatement();
      rs = stmt.executeQuery("SELECT * FROM contact");

      // Display the data in the table format
      while (rs.next()) {
%>
         <tr>
           <%--  <td>
               <span class="custom-checkbox">
                  <input type="checkbox" id="<%=rs.getInt("course_id")%>" name="options[]" value="<%=rs.getInt("course_id")%>">
                  <label for="<%=rs.getInt("course_id")%>"></label>
               </span>
            </td> --%>
            <td><%=rs.getInt("id")%></td>
            <td><%=rs.getString("name")%></td>
            <td><%=rs.getString("email")%></td>
            <td><%=rs.getString("message")%></td>

            <td>
<%--                <button onclick="openModal(this)" data-toggle="modal" data-target="#editEmployeeModal" onclick="openModal(this)" data-id="<%=rs.getInt("course_id")%>" data-name="<%=rs.getString("course_name")%>" data-price="<%=rs.getDouble("coursePrice")%>" data-dur="<%=rs.getInt("courseduration")%>" data-lesson="<%=rs.getInt("courselessons")%>" class="edit"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>
 --%>               <a style="cursor:pointer;" class="delete" onclick="removenotification(<%=rs.getInt("id")%>)" ><i class="material-icons" data-toggle="tooltip" title="Thumbs Up">&#x1F44D;</i></a>
               
            </td>
         </tr>
<%
      }
   } catch (ClassNotFoundException e) {
      e.printStackTrace();
   } catch (SQLException e) {
      e.printStackTrace();
   } finally {
      // Close the database resources
      if (rs != null) {
         try {
            rs.close();
         } catch (SQLException e) {
            e.printStackTrace();
         }
      }
      if (stmt != null) {
         try {
            stmt.close();
         } catch (SQLException e) {
            e.printStackTrace();
         }
      }
      if (conn != null) {
         try {
            conn.close();
         } catch (SQLException e) {
            e.printStackTrace();
         }
      }
   }
%>
				
				
					
				</tbody>
				
				<script>
function removenotification(id) {
	console.log(id);

	swal({
        title: 'Have you Solved?',
        text: 'You will not be able to recover this record!',
        icon: 'warning',
        buttons: ['Cancel', 'Completed'],
        dangerMode: true
    }).then(function(confirmDelete) {
        if (confirmDelete) {

        	var xhr = new XMLHttpRequest();
            xhr.open('POST', 'NotificationCompleted', true);
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
            xhr.send('id=' + id);
        }
    });
}
</script>

<!-- <script>
function openModal(button) {
	  var id = button.getAttribute("data-id");
	  var name = button.getAttribute("data-name");
	  var price = button.getAttribute("data-price");
	  var dur = button.getAttribute("data-dur");
	  var lesson = button.getAttribute("data-lesson");
	  
	  
	  document.getElementById("cId").value = id;
	  document.getElementById("cName").value = name;
	  document.getElementById("cPrice").value = price;
	  document.getElementById("cDur").value = dur;
	  document.getElementById("cLesson").value = lesson;
	}
</script> -->
				
			</table>
			<div>
			<p style="font-weight:600;color:#0b0742;margin-top:20px;">*You can complete the Action By clicking the Thumbs-up icon once the Problem is solved .
			</div>
			<div class="clearfix">
  <div class="hint-text">Showing <b>5</b> entries</div>
  <ul class="pagination">
    <li class="page-item" id="prevPage"><a href="#" class="page-link" style="padding-right:20px">Previous</a></li>
    <li class="page-item active" ><a href="#" class="page-link" onclick="goToPage(1)">1</a></li>
    <li class="page-item"><a href="#" class="page-link" onclick="goToPage(2)">2</a></li>
    <li class="page-item"><a href="#" class="page-link" onclick="goToPage(3)">3</a></li>
    <li class="page-item"><a href="#" class="page-link" onclick="goToPage(4)">4</a></li>
    <li class="page-item"><a href="#" class="page-link" onclick="goToPage(5)">5</a></li>
    <li class="page-item" id="nextPage"><a href="#" class="page-link">Next</a></li>
  </ul>
</div>

	</div>        
</div>

<script>
let table = document.getElementById("courseTable");
let rowsPerPage = 6; // number of rows per page
let currentPage = 1; // current page number
let totalPages = Math.ceil(table.rows.length / rowsPerPage); // total number of pages

function showPage(page) {
  currentPage = page;
  for (let i = 1; i <= table.rows.length; i++) {
    if (i <= rowsPerPage * page && i > rowsPerPage * (page - 1)) {
      table.rows[i - 1].style.display = "table-row";
    } else {
      table.rows[i - 1].style.display = "none";
    }
  }
}

function nextPage() {
  if (currentPage < totalPages) {
    showPage(currentPage + 1);
    setActivePage(currentPage);
  }
}

function previousPage() {
  if (currentPage > 1) {
    showPage(currentPage - 1);
    setActivePage(currentPage);
  }
}

function goToPage(page) {
  if (page > 0 && page <= totalPages) {
    showPage(page);
    setActivePage(page);
  }
}

function setActivePage(page) {
  let paginationLinks = document.querySelectorAll(".pagination .page-link");
  paginationLinks.forEach(link => {
    link.classList.remove("active");
    if (parseInt(link.innerText) === page) {
      link.classList.add("active");
    }
  });
}

// initially show the first page
showPage(1);

// add event listeners to pagination links
let paginationLinks = document.querySelectorAll(".pagination .page-link");
paginationLinks.forEach(link => {
  link.addEventListener("click", function() {
    let page = parseInt(link.innerText);
    goToPage(page);
  });
});

// add event listeners to previous and next buttons
let prevButton = document.querySelector(".pagination .page-item:first-child a");
let nextButton = document.querySelector(".pagination .page-item:last-child a");
prevButton.addEventListener("click", function() {
  previousPage();
});
nextButton.addEventListener("click", function() {
  nextPage();
});

</script>
<!-- Edit Modal HTML -->
<!-- <div id="editEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form>
				<div class="modal-header">						
					<h4 class="modal-title">Edit Employee</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>Course ID</label>
						<input type="text" class="form-control" id="cId" name="cId" readonly="readonly">
					</div>
					<div class="form-group">
						<label>Course Name</label>
						<input type="text" class="form-control" id="cName" name="cName" required>
					</div>
					<div class="form-group">
						<label>Course Price</label>
						<input type="text" class="form-control" id="cPrice" name="cPrice" required>
					</div>	
						<div class="form-group">
						<label>Course Duration</label>
						<input type="text" class="form-control" id="cDur" name="cDur" required>
					</div>
						<div class="form-group">
						<label>Course Lessons</label>
						<input type="text" class="form-control" id="cLesson" name="cLesson" required>
					</div>				
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<input class="btn btn-info" onclick="updateRecord()" value="Update">
				</div>
			</form>
		</div>
	</div>
</div>
<script>
function updateRecord() {
    var id = document.querySelector('input[name="cId"]').value;
    var name = document.querySelector('input[name="cName"]').value;
    var price = document.querySelector('input[name="cPrice"]').value;
    var dur = document.querySelector('input[name="cDur"]').value;
    var lesson = document.querySelector('input[name="cLesson"]').value;
    
    var xhr = new XMLHttpRequest();
    xhr.open('POST', '../../UpdateRecordServlet', true);
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
    xhr.send('id=' + id + '&name=' + name + '&price=' + price + '&dur=' + dur + '&lesson=' + lesson);
}
 -->
</script>
<!-- Delete Modal HTML -->
<div id="deleteEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form>
				<div class="modal-header">						
					<h4 class="modal-title">Delete Employee</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<p>Are you sure you want to delete these Records?</p>
					<p class="text-warning"><small>This action cannot be undone.</small></p>
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<input type="submit" class="btn btn-danger" value="Delete">
				</div>
			</form>
		</div>
	</div>
</div>
</section>


  <!--   Core JS Files   -->
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>

  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="dashboard/assets/js/argon-dashboard.min.js?v=2.0.4"></script>
</body>

</html>
