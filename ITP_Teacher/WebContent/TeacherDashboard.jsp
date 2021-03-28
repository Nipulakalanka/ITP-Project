<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


    <%@page import="dao.TeacherDao"%>
    <%@page import="model.Teacher"%>
    <%@page import="java.util.ArrayList"%>
    <%@page import= "java.util.List" %>
    <%@page import ="model.HallArrangements" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta charset="utf-8">
    <title>Student Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
    	body{
    color: #6c757d;
    background-color: #f5f6f8;
    margin-top:20px;
}
.card-box {
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid #e7eaed;
    padding: 1.5rem;
    margin-bottom: 24px;
    border-radius: .25rem;
}
.avatar-xl {
    height: 6rem;
    width: 6rem;
}
.rounded-circle {
    border-radius: 50%!important;
}
.nav-pills .nav-link.active, .nav-pills .show>.nav-link {
    color: #fff;
    background-color: #1abc9c;
}
.nav-pills .nav-link {
    border-radius: .25rem;
}
.navtab-bg li>a {
    background-color: #f7f7f7;
    margin: 0 5px;
}
.nav-pills>li>a, .nav-tabs>li>a {
    color: #6c757d;
    font-weight: 600;
}
.mb-4, .my-4 {
    margin-bottom: 2.25rem!important;
}
.tab-content {
    padding: 20px 0 0 0;
}
.progress-sm {
    height: 5px;
}
.m-0 {
    margin: 0!important;
}
.table .thead-light th {
    color: #6c757d;
    background-color: #f1f5f7;
    border-color: #dee2e6;
}
.social-list-item {
    height: 2rem;
    width: 2rem;
    line-height: calc(2rem - 4px);
    display: block;
    border: 2px solid #adb5bd;
    border-radius: 50%;
    color: #adb5bd;
}

.text-purple {
    color: #6559cc!important;
}
.border-purple {
    border-color: #6559cc!important;
}

.timeline {
    margin-bottom: 50px;
    position: relative;
}
.timeline:before {
    background-color: #dee2e6;
    bottom: 0;
    content: "";
    left: 50%;
    position: absolute;
    top: 30px;
    width: 2px;
    z-index: 0;
}
.timeline .time-show {
    margin-bottom: 30px;
    margin-top: 30px;
    position: relative;
}
.timeline .timeline-box {
    background: #fff;
    display: block;
    margin: 15px 0;
    position: relative;
    padding: 20px;
}
.timeline .timeline-album {
    margin-top: 12px;
}
.timeline .timeline-album a {
    display: inline-block;
    margin-right: 5px;
}
.timeline .timeline-album img {
    height: 36px;
    width: auto;
    border-radius: 3px;
}
@media (min-width: 768px) {
    .timeline .time-show {
        margin-right: -69px;
        text-align: right;
    }
    .timeline .timeline-box {
        margin-left: 45px;
    }
    .timeline .timeline-icon {
        background: #dee2e6;
        border-radius: 50%;
        display: block;
        height: 20px;
        left: -54px;
        margin-top: -10px;
        position: absolute;
        text-align: center;
        top: 50%;
        width: 20px;
    }
    .timeline .timeline-icon i {
        color: #98a6ad;
        font-size: 13px;
        position: absolute;
        left: 4px;
    }
    .timeline .timeline-desk {
        display: table-cell;
        vertical-align: top;
        width: 50%;
    }
    .timeline-item {
        display: table-row;
    }
    .timeline-item:before {
        content: "";
        display: block;
        width: 50%;
    }
    .timeline-item .timeline-desk .arrow {
        border-bottom: 12px solid transparent;
        border-right: 12px solid #fff !important;
        border-top: 12px solid transparent;
        display: block;
        height: 0;
        left: -12px;
        margin-top: -12px;
        position: absolute;
        top: 50%;
        width: 0;
    }
    .timeline-item.timeline-item-left:after {
        content: "";
        display: block;
        width: 50%;
    }
    .timeline-item.timeline-item-left .timeline-desk .arrow-alt {
        border-bottom: 12px solid transparent;
        border-left: 12px solid #fff !important;
        border-top: 12px solid transparent;
        display: block;
        height: 0;
        left: auto;
        margin-top: -12px;
        position: absolute;
        right: -12px;
        top: 50%;
        width: 0;
    }
    .timeline-item.timeline-item-left .timeline-desk .album {
        float: right;
        margin-top: 20px;
    }
    .timeline-item.timeline-item-left .timeline-desk .album a {
        float: right;
        margin-left: 5px;
    }
    .timeline-item.timeline-item-left .timeline-icon {
        left: auto;
        right: -56px;
    }
    .timeline-item.timeline-item-left:before {
        display: none;
    }
    .timeline-item.timeline-item-left .timeline-box {
        margin-right: 45px;
        margin-left: 0;
        text-align: right;
    }
}
@media (max-width: 767.98px) {
    .timeline .time-show {
        text-align: center;
        position: relative;
    }
    .timeline .timeline-icon {
        display: none;
    }
}
.timeline-sm {
    padding-left: 110px;
}
.timeline-sm .timeline-sm-item {
    position: relative;
    padding-bottom: 20px;
    padding-left: 40px;
    border-left: 2px solid #dee2e6;
}
.timeline-sm .timeline-sm-item:after {
    content: "";
    display: block;
    position: absolute;
    top: 3px;
    left: -7px;
    width: 12px;
    height: 12px;
    border-radius: 50%;
    background: #fff;
    border: 2px solid #1abc9c;
}
.timeline-sm .timeline-sm-item .timeline-sm-date {
    position: absolute;
    left: -104px;
}
@media (max-width: 420px) {
    .timeline-sm {
        padding-left: 0;
    }
    .timeline-sm .timeline-sm-date {
        position: relative !important;
        display: block;
        left: 0 !important;
        margin-bottom: 10px;
    }
}
    </style>
</head>
<body>
	<%
	
	try{
	HttpSession session1 = request.getSession();
	String userId=(String)session1.getAttribute("UserId");
	TeacherDao tdao=new TeacherDao();
	Teacher teacher = new Teacher();

	teacher=tdao.getTeacher(userId);
	HttpSession session2 = request.getSession();
	session.setAttribute("teacherObj", teacher);
	
	
} catch (Exception E) {
	E.printStackTrace();
}
	
		%>		
			
		

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css" integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc=" crossorigin="anonymous" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />
<div class="container">
<div class="row">
    <div class="col-lg-4 col-xl-4">
        <div class="card-box text-center">
            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="rounded-circle avatar-xl img-thumbnail" alt="profile-image">
			<h1>${teacherObj.getFirstName() } ${teacherObj.getLastName() } </h1>
			
            
            <p class="text-muted"></p>

            <!--  <button type="button" class="btn btn-success btn-xs waves-effect mb-2 waves-light">View Attendance</button>
            <button type="button" class="btn btn-danger btn-xs waves-effect mb-2 waves-light">Upload Assignment Marks</button>-->

            <div class="text-left mt-3">
                <p>
                </p>
                <p class="text-muted mb-2 font-13"><strong>Student ID :</strong> <span class="ml-2">${UserId }</span></p>
                
                <p class="text-muted mb-2 font-13"><strong>Mobile :</strong><span class="ml-2">${teacherObj.getTelephone() }</span></p>

                <p class="text-muted mb-2 font-13"><strong>Email :</strong> <span class="ml-2 ">${teacherObj.getEmail() }</span></p>

                <p class="text-muted mb-1 font-13"><strong>NIC :</strong> <span class="ml-2">${teacherObj.getNIC() }</span></p>
                
                <p class="text-muted mb-1 font-13"><strong>Date of Birth :</strong> <span class="ml-2">${teacherObj.getDOB() }</span></p>
                
                <p class="text-muted mb-1 font-13"><strong>Address :</strong> <span class="ml-2">${teacherObj.getAddress() }</span></p>
                
                <p class="text-muted mb-1 font-13"><strong>Gender :</strong> <span class="ml-2">${teacherObj.getGender() }</span></p>
                
                
            </div>

            <ul class="social-list list-inline mt-3 mb-0">
                <li class="list-inline-item">
                    <a href="javascript: void(0);" class="social-list-item border-purple text-purple"><i class="fab fa-facebook"></i></a>
                </li>
                <li class="list-inline-item">
                    <a href="javascript: void(0);" class="social-list-item border-danger text-danger"><i class="fab fa-google"></i></a>
                </li>
                <li class="list-inline-item">
                    <a href="javascript: void(0);" class="social-list-item border-info text-info"><i class="fab fa-twitter"></i></a>
                </li>
                <li class="list-inline-item">
                    <a href="javascript: void(0);" class="social-list-item border-secondary text-secondary"><i class="fab fa-github"></i></a>
                </li>
            </ul>
        </div> <!-- end card-box -->

    </div> <!-- end col-->

    <div class="col-lg-8 col-xl-8">
        <div class="card-box">
            <ul class="nav nav-pills navtab-bg">
                <li class="nav-item">
                    <a href="#about-me" data-toggle="tab" aria-expanded="true" class="nav-link ml-0 active">
                        <i class="mdi mdi-face-profile mr-1"></i>About Me
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#settings" data-toggle="tab" aria-expanded="false" class="nav-link">
                        <i class="mdi mdi-settings-outline mr-1"></i>Settings
                    </a>
                </li>
            </ul>

            <div class="tab-content">
                
                <div class="tab-pane show active" id="about-me">

                   
                    <div class="table-responsive">
<table class="table table-borderless mb-0">
                  <thead class="thead-light">
                    <tr>
                      <th>Payment No</th>
                      <th>Student ID</th>
                      <th>Class ID</th>
                      <th>Month</th>
                      <th>Monthly Fee</th>
                      <th>Type</th>
                    </tr>
                  </thead>

                  <%
                    //TeacherDao t1 = new TeacherDao();
                  HttpSession session3 = request.getSession();
                  String userId = (String) session3.getAttribute("UserId");
                    List<HallArrangements> arrayList = TeacherDao.selectAllArrangements(userId);

                    for (HallArrangements hall : arrayList) {
                  %>

                  <tbody>
                    <tr>

                      <td>fsfs</td>
                      <td>fdsf</td>
                      <td>fdf</td>
                      <td>sdsdd</td>
                      <td>dff</td>
                      <td>sdfsd</td>

                    </tr>
                  </tbody>

                <%
                    }
                 %> 
                
                
                  
                </table>
                    </div>

                </div>
                <!-- end timeline content-->

                <!-- Start Settings Tab-->

                <div class="tab-pane" id="settings">
                    <form action="TeacherUpdate" method="post">
                        <h5 class="mb-3 text-uppercase bg-light p-2"><i class="mdi mdi-account-circle mr-1"></i> Personal Info Update</h5>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="firstname">First Name</label>
                                    <input type="text" class="form-control" name="FirstName" id="FirstName" value="${teacherObj.getFirstName() }">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="lastname">Last Name</label>
                                    <input type="text" class="form-control" name="LastName" id="LastName" value="${teacherObj.getLastName() }">
                                </div>
                            </div> <!-- end col -->
                        </div> <!-- end row -->

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="firstname">Address</label>
                                    <input type="text" class="form-control" name="Address" id="address" value="${teacherObj.getAddress() }">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="lastname">Telephone</label>
                                    <input type="text" class="form-control" name="Telephone" id="telephone" value="${teacherObj.getTelephone() }">
                                </div>
                            </div> <!-- end col -->
                        </div> <!-- end row -->

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="useremail">Email Address</label>
                                    <input type="email" class="form-control" name="Email" id="email" value="${teacherObj.getEmail() }">
                                </div>
                            </div>
                            
                            
                        <div class="col-md-6">
                                <div class="form-group">
                                    <label for="lastname">Date Of Birth</label>
                                    <input type="text" class="form-control" name="DOB" id="telephone" value="${teacherObj.getDOB() }">
                                </div>
                            </div> <!-- end col -->
                        </div> <!-- end row -->
                       
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="useremail">NIC</label>
                                    <input type="text" class="form-control" name="NIC" id="nic" value="${teacherObj.getNIC() }">
                                </div>
                            </div>
                     
                        
                               <div class="col-md-6">
                                <div class="form-group">
                                    <label for="lastname">Password</label>
                                    <input type="text" class="form-control" name="Password" id="telephone" value="${teacherObj.getPassword() }">
                                </div>
                            </div> <!-- end col -->
                        </div> <!-- end row -->
                       
                       <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="useremail">Gender</label>
                                    <input type="text" class="form-control" name="Gender" id="nic" value="${teacherObj.getGender() }" readonly>
                                </div>
                            </div>
                        
                        <div class="text-right">
                            <button type="submit" class="btn btn-success waves-effect waves-light mt-2"><i class="mdi mdi-content-save"></i> Save</button>
                        </div>
                    </form>
                </div>
   
            </div> <!-- end tab-content -->
        </div> <!-- end card-box-->

    </div> <!-- end col -->
</div>
</div>
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>

</body>
</html>