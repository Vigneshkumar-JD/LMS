<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <script src="https://kit.fontawesome.com/1ff71a7bde.js" crossorigin="anonymous"></script>
  <title>
    Argon Dashboard 2 by Creative Tim
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
  <!-- Nucleo Icons -->
  <link href="dashboard/assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="dashboard/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="dashboard/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link id="pagestyle" href="dashboard/assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />
</head>

<body class="g-sidenav-show   bg-gray-100">
<%@ page import="java.sql.*" %>
<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    int totalUsers = 0;
    double totalAmount = 0.0;
    String courseName = "";
    String[] courseNames = new String[8];
    int maxCount = 0;
    int[] courseEnrollments = new int[8];

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?useSSL=true","root","saranya@2001");

        stmt = conn.createStatement();
        rs = stmt.executeQuery("SELECT COUNT(*) AS total FROM enrollment_courses");
        if (rs.next()) {
            totalUsers = rs.getInt("total");
        }
        
        rs = stmt.executeQuery("SELECT SUM(CAST(amount AS DECIMAL(10,2))) AS total_amount FROM enrollment_courses");
        if (rs.next()) {
            totalAmount = rs.getDouble("total_amount");
        }
        
        rs = stmt.executeQuery("SELECT course, COUNT(*) AS count FROM enrollment_courses GROUP BY course ORDER BY count DESC LIMIT 1");
        if (rs.next()) {
            courseName = rs.getString("course");
            maxCount = rs.getInt("count");
        }
        
        rs = stmt.executeQuery("SELECT course, COUNT(*) AS enrollments FROM enrollment_courses GROUP BY course ORDER BY enrollments DESC");
        int i = 0;
        while (rs.next() && i < 8) {
            courseEnrollments[i++] = rs.getInt("enrollments");
            
        }
        
        rs = stmt.executeQuery("SELECT course, COUNT(*) AS totalEnrollments, SUM(amount) AS totalAmount FROM enrollment_courses GROUP BY course ORDER BY totalEnrollments DESC");
        int q = 0;
        while (rs.next() && q < 8) {
          
            courseNames[q++] = rs.getString("course");
        }
        
       
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try { rs.close(); } catch (Exception e) { e.printStackTrace(); }
        try { stmt.close(); } catch (Exception e) { e.printStackTrace(); }
        try { conn.close(); } catch (Exception e) { e.printStackTrace(); }
    }
%>
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
          <a class="nav-link active" href="admin.jsp">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Dashboard</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="dashboard/pages/users.jsp">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-calendar-grid-58 text-warning text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Users</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="dashboard/pages/addcourses.jsp">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-credit-card text-success text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Add courses</span>
          </a>
        </li>
         <li class="nav-item">
          <a class="nav-link " href="dashboard/pages/updatecourse.jsp">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-single-copy-04 text-warning text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Update / Delete Courses</span>
          </a>
        </li> 
        
    
        <li class="nav-item">
          <a class="nav-link " href="dashboard/pages/profile.jsp">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-single-02 text-dark text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Profile</span>
          </a>
        </li>

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
        <nav aria-label="breadcrumb">
      
          <h6 class="font-weight-bolder text-white mb-0">Dashboard</h6>
        </nav>
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center">
            <div class="input-group">
              <span class="input-group-text text-body"><i class="fas fa-search" aria-hidden="true"></i></span>
              <input type="text" class="form-control" placeholder="Type here...">
            </div>
          </div>
          <ul class="navbar-nav  justify-content-end">
           <li class="nav-item d-flex align-items-center" style="padding-right:20px;">
              <a href="javascript:;" class="nav-link text-white font-weight-bold px-0">
                <div class="parent">
  <span onclick="location.href='Notifications.jsp'"><i class="fa fa-bell"></i></span>

</div>
              </a>
            </li>
                        <li class="nav-item d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-white font-weight-bold px-0">
                <i class="fa fa-user me-sm-1"></i>
                <span class="d-sm-inline d-none"><%=session.getAttribute("name") %></span>
              </a>
            </li>
            <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-white p-0" id="iconNavbarSidenav">
                <div class="sidenav-toggler-inner">
                  <i class="sidenav-toggler-line bg-white"></i>
                  <i class="sidenav-toggler-line bg-white"></i>
                  <i class="sidenav-toggler-line bg-white"></i>
                </div>
              </a>
            </li>
         
         
          </ul>
        </div>
      </div>
    </nav>
    <!-- End Navbar -->
    <div class="container-fluid py-4">
      <div class="row">
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Total Sales</p>
                    <h5 class="font-weight-bolder">
                     <%= "\u20B9"+ String.format("%.2f", totalAmount) %>
                    </h5>
                   <p class="mb-0">
                      <span class="text-success text-sm font-weight-bolder">+5%</span> than last month
                    </p>
                  </div>
                </div>
                <div class="col-4 text-end">
                  <div class="icon icon-shape bg-gradient-primary shadow-primary text-center rounded-circle">
                    <i class="ni ni-money-coins text-lg opacity-10" aria-hidden="true"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Total Users</p>
                    <h5 class="font-weight-bolder">
                     <%=totalUsers %>
                    </h5>
                    <p class="mb-0">
                      <span class="text-success text-sm font-weight-bolder">+3%</span>
                      since last week
                    </p>
                  </div>
                </div>
                <div class="col-4 text-end">
                  <div class="icon icon-shape bg-gradient-danger shadow-danger text-center rounded-circle">
                    <i class="ni ni-world text-lg opacity-10" aria-hidden="true"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Overall courses</p>
                    <h5 class="font-weight-bolder">
                      8
                    </h5>
                    <p class="mb-0">
                      <span class="text-danger text-sm font-weight-bolder">Yet to come</span>
                     
                    </p>
                  </div>
                </div>
                <div class="col-4 text-end">
                  <div class="icon icon-shape bg-gradient-success shadow-success text-center rounded-circle">
                    <i class="ni ni-paper-diploma text-lg opacity-10" aria-hidden="true"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Most Enrolled Course</p>
                    <h6 class="font-weight-bolder">
                       <%= courseName %>
                    </h6>
                  
                  </div>
                </div>
                <div class="col-4 text-end">
                  <div class="icon icon-shape bg-gradient-warning shadow-warning text-center rounded-circle">
                    <i class="ni ni-cart text-lg opacity-10" aria-hidden="true"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row mt-4">
        <div class="col-lg-7 mb-lg-0 mb-4">
          <div class="card z-index-2 h-100">
            <div class="card-header pb-0 pt-3 bg-transparent">
              <h6 class="text-capitalize">Course overview</h6>
              <p class="text-sm mb-0">
               	
                <span class="font-weight-bold">2023</span>
              </p>
            </div>
            <div class="card-body p-3">
              <div class="chart">
                <canvas id="chart-line" class="chart-canvas" height="300"></canvas>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-5">
          <div class="card card-carousel overflow-hidden h-100 p-0">
            <div id="carouselExampleCaptions" class="carousel slide h-100" data-bs-ride="carousel">
              <div class="carousel-inner border-radius-lg h-100">
                <div class="carousel-item h-100 active" style="background-image: url('https://oneteamsolutions.in/blogoneteam/wp-content/uploads/2020/05/advanced-python-courses-kochi-scaled.jpg');
      background-size: cover;">
                  <div class="carousel-caption d-none d-md-block bottom-0 text-start start-0 ms-5">
                    <div class="icon icon-shape icon-sm bg-white text-center border-radius-md mb-3">
                      <i class="ni ni-camera-compact text-dark opacity-10"></i>
                    </div>
                    <h5 class="text-white mb-1">About Python</h5>
                    <p>Python is a high-level, general-purpose programming language.</p>
                  </div>
                </div>
                <div class="carousel-item h-100" style="background-image: url('https://www.codelivly.com/wp-content/uploads/2023/01/1665673562977-Best-way-to-learn-javascript.jpg');
      background-size: cover;">
                  <div class="carousel-caption d-none d-md-block bottom-0 text-start start-0 ms-5">
                    <div class="icon icon-shape icon-sm bg-white text-center border-radius-md mb-3">
                      <i class="ni ni-bulb-61 text-dark opacity-10"></i>
                    </div>
                    <h5 class="text-white mb-1">About Javascript</h5>
                    <p>Javascript is a high-level, general-purpose programming language.</p>
                  </div>
                </div>
                <div class="carousel-item h-100" style="background-image: url('https://www.komododigital.co.uk/app/uploads/2021/05/React-1-1024x683.jpg');
      background-size: cover;">
                  <div class="carousel-caption d-none d-md-block bottom-0 text-start start-0 ms-5">
                    <div class="icon icon-shape icon-sm bg-white text-center border-radius-md mb-3">
                      <i class="ni ni-trophy text-dark opacity-10"></i>
                    </div>
                    <h5 class="text-white mb-1">About React JS</h5>
                    <p>React JS is a high-level, general-purpose programming language.</p>
                  </div>
                </div>
              </div>
              <button class="carousel-control-prev w-5 me-3" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next w-5 me-3" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>
          </div>
        </div>
      </div>
      
      
      
      
      
      
      
      <div class="row mt-4">
        <div class="col-lg-7 mb-lg-0 mb-4">
          <div class="card ">
            <div class="card-header pb-0 p-3">
              <div class="d-flex justify-content-between">
                <h6 class="mb-2">Sales by Courses</h6>
              </div>
            </div>
            <div class="table-responsive">
              <table class="table align-items-center ">
                <tbody>
                  <tr>
                   <%
    try {
    	 Class.forName("com.mysql.cj.jdbc.Driver");
         conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?useSSL=true","root","saranya@2001");
      Statement stmts = conn.createStatement();
      ResultSet rst = stmts.executeQuery("SELECT course, COUNT(*) AS totalEnrollments, SUM(amount) AS totalAmount FROM enrollment_courses GROUP BY course ORDER BY totalEnrollments DESC");

      while (rst.next()) {
        String course = rst.getString("course");
        int totalEnrollments = rst.getInt("totalEnrollments");
        double totalAmountz = rst.getDouble("totalAmount");
  %>
                    <td class="w-30">
                      <div class="d-flex px-2 py-1 align-items-center">
                        <div>
                          
                        </div>
                        <div class="ms-4">
                          <p class="text-xs font-weight-bold mb-0">Courses:</p>
                          <h6 class="text-sm mb-0"><%= course %></h6>
                        </div>
                      </div>
                    </td>
                    <td>
                      <div class="text-center">
                        <p class="text-xs font-weight-bold mb-0">users:</p>
                        <h6 class="text-sm mb-0"><%= totalEnrollments %></h6>
                      </div>
                    </td>
                    <td>
                      <div class="text-center">
                        <p class="text-xs font-weight-bold mb-0">Value:</p>
                        <h6 class="text-sm mb-0"> <%= "₹ " + String.format("%.2f", totalAmountz) %></h6>
                      </div>
                    </td>
                    <td class="align-middle text-sm">
                      <div class="col text-center">
                        <p class="text-xs font-weight-bold mb-0">Bounce:</p>
                        <h6 class="text-sm mb-0">29.9%</h6>
                      </div>
                    </td>
                  </tr>

                </tbody>
                 <% 
      }
      rst.close();
      stmts.close();
      conn.close();
    } catch (Exception e) {
      e.printStackTrace();
    }
  %>
              </table>
            </div>
          </div>
        </div>
        <div class="col-lg-5">
          <div class="card">
            <div class="card-header pb-0 p-3">
              <h6 class="mb-0">Coming soon..!!!</h6>
            </div>
            <div class="card-body p-3">
              <ul class="list-group">
                <li class="list-group-item border-0 d-flex justify-content-between ps-0 mb-2 border-radius-lg">
                  <div class="d-flex align-items-center">
                    
                    <div class="d-flex flex-column">
                      <h6 class="mb-1 text-dark text-sm">AWS</h6>
                      <span class="text-xs">Will be Live from <span class="font-weight-bold">15 April 2023</span></span>
                    </div>
                  </div>
                  <div class="d-flex">
                    <button class="btn btn-link btn-icon-only btn-rounded btn-sm text-dark icon-move-right my-auto"><i class="ni ni-bold-right" aria-hidden="true"></i></button>
                  </div>
                </li>
                <li class="list-group-item border-0 d-flex justify-content-between ps-0 mb-2 border-radius-lg">
                  <div class="d-flex align-items-center">

                    <div class="d-flex flex-column">
                      <h6 class="mb-1 text-dark text-sm">PHP</h6>
                      <span class="text-xs">Will be Live from  <span class="font-weight-bold">15 April 2023</span></span>
                    </div>
                  </div>
                  <div class="d-flex">
                    <button class="btn btn-link btn-icon-only btn-rounded btn-sm text-dark icon-move-right my-auto"><i class="ni ni-bold-right" aria-hidden="true"></i></button>
                  </div>
                </li>
                <li class="list-group-item border-0 d-flex justify-content-between ps-0 mb-2 border-radius-lg">
                  <div class="d-flex align-items-center">
                    
                    <div class="d-flex flex-column">
                      <h6 class="mb-1 text-dark text-sm">Full Stack Java</h6>
                      <span class="text-xs">Will be Live from  <span class="font-weight-bold">16 April 2023</span></span>
                    </div>
                  </div>
                  <div class="d-flex">
                    <button class="btn btn-link btn-icon-only btn-rounded btn-sm text-dark icon-move-right my-auto"><i class="ni ni-bold-right" aria-hidden="true"></i></button>
                  </div>
                </li>
                <li class="list-group-item border-0 d-flex justify-content-between ps-0 mb-2 border-radius-lg">
                  <div class="d-flex align-items-center">
                
                    <div class="d-flex flex-column">
                      <h6 class="mb-1 text-dark text-sm">Full Stack Python</h6>
                      <span class="text-xs">Will be Live from  <span class="font-weight-bold">18 April 2023</span></span>
                    </div>
                  </div>
                  <div class="d-flex">
                    <button class="btn btn-link btn-icon-only btn-rounded btn-sm text-dark icon-move-right my-auto"><i class="ni ni-bold-right" aria-hidden="true"></i></button>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
    </div>
  </main>
 
  <!--   Core JS Files   -->
  <script src="dashboard/assets/js/core/popper.min.js"></script>
  <script src="dashboard/assets/js/core/bootstrap.min.js"></script>
  <script src="dashboard/assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="dashboard/assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script src="dashboard/assets/js/plugins/chartjs.min.js"></script>
<script>
  var ctx1 = document.getElementById("chart-line").getContext("2d");
  var gradientStroke1 = ctx1.createLinearGradient(0, 230, 0, 50);
  gradientStroke1.addColorStop(1, 'rgba(94, 114, 228, 0.2)');
  gradientStroke1.addColorStop(0.2, 'rgba(94, 114, 228, 0.0)');
  gradientStroke1.addColorStop(0, 'rgba(94, 114, 228, 0)');
  
  // Replace the following data with the data from the database
  var courses = ["<%= courseNames[0] %>", "<%= courseNames[1] %>", "<%= courseNames[1] %>", "<%= courseNames[2] %>", "<%= courseNames[3] %>", "<%= courseNames[4] %>", "<%= courseNames[5] %>", "<%= courseNames[6] %>","<%= courseNames[7] %>"];
  var courseEnrollments = [<%= courseEnrollments[0] %>, <%= courseEnrollments[1] %>, <%= courseEnrollments[2] %>, <%= courseEnrollments[3] %>, <%= courseEnrollments[4] %>, <%= courseEnrollments[5] %>, <%= courseEnrollments[6] %>, <%= courseEnrollments[7] %>];
  
  new Chart(ctx1, {
    type: "line",
    data: {
      labels: courses,
      datasets: [{
        label: "Enrolled Courses",
        tension: 0.4,
        borderWidth: 0,
        pointRadius: 0,
        borderColor: "#5e72e4",
        backgroundColor: gradientStroke1,
        borderWidth: 3,
        fill: true,
        data: courseEnrollments,
        maxBarThickness: 6
      }],
    },
    options: {
      responsive: true,
      maintainAspectRatio: false,
      plugins: {
        legend: {
          display: false,
        }
      },
      interaction: {
        intersect: false,
        mode: 'index',
      },
      scales: {
        y: {
          grid: {
            drawBorder: false,
            display: true,
            drawOnChartArea: true,
            drawTicks: false,
            borderDash: [5, 5]
          },
          ticks: {
            display: true,
            padding: 10,
            color: '#fbfbfb',
            font: {
              size: 11,
              family: "Open Sans",
              style: 'normal',
              lineHeight: 2
            },
          }
        },
        x: {
          grid: {
            drawBorder: false,
            display: false,
            drawOnChartArea: false,
            drawTicks: false,
            borderDash: [5, 5]
          },
          ticks: {
            display: true,
            color: '#ccc',
            padding: 20,
            font: {
              size: 11,
              family: "Open Sans",
              style: 'normal',
              lineHeight: 2
            },
          }
        },
      },
    },
  });
</script>

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