<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>MKS School - Add Students</title>

<link rel="shortcut icon" href="assets/img/top-logo.png">

<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400;1,500;1,700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" href="assets/plugins/feather/feather.css">

<link rel="stylesheet" href="assets/plugins/icons/flags/flags.css">

<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

<link rel="stylesheet" href="assets/css/style.css">
<%@ include file="theme/header.jsp" %>
<%@ include file="theme/sidebar.jsp" %>
</head>
<body>

<div class="main-wrapper">







<div class="page-wrapper">
<div class="content container-fluid">

<div class="page-header">
<div class="row align-items-center">
<div class="col-sm-12">
<div class="page-sub-header">
<h3 class="page-title">Add Students</h3>
<ul class="breadcrumb">
<li class="breadcrumb-item"><a href="students.html">Student</a></li>
<li class="breadcrumb-item active">Add Students</li>
</ul>
</div>
</div>
</div>
</div>

<div class="row">
<div class="col-sm-12">
<div class="card comman-shadow">
<div class="card-body">
    <form action="Add_Student" method="post">
        <div class="row">
            <div class="col-12">
                <h5 class="form-title student-info">Student Information <span><a href="javascript:;"><i class="feather-more-vertical"></i></a></span></h5>
            </div>
            
<!--              <div class="col-12 col-sm-4">
                <div class="form-group local-forms">
                    <label>Student ID <span class="login-danger">*</span></label>
                    <input class="form-control" type="text" id="account_id" name="account_id" placeholder="Enter Student ID">
                </div>
            </div>-->
            <!-- Full Name Start -->
            <div class="col-12 col-sm-4">
                <div class="form-group local-forms">
                    <label>Full Name <span class="login-danger">*</span></label>
                    <input class="form-control" type="text" id="fullname" name="fullname" placeholder="Enter Full Name">
                </div>
            </div>
            <!-- Full Name End-->
            <!-- Gender Start -->
            <div class="col-12 col-sm-4">
                <div class="form-group local-forms">
                    <label>Gender <span class="login-danger">*</span></label>
                    <select class="form-control select" id="gender" name="gender">
                        <option>Select Gender</option>
                        <option>Female</option>
                        <option>Male</option>
                        <option>Others</option>
                    </select>
                </div>
            </div>
            <!-- Gender End -->
            <!-- Date Of Birth Start -->
            <div class="col-12 col-sm-4">
                <div class="form-group local-forms calendar-icon">
                    <label>Date Of Birth <span class="login-danger">*</span></label>
                    <input class="form-control datetimepicker" type="text" id="date_of_birth" name="date_of_birth" placeholder="DD-MM-YYYY">
                </div>
            </div>
            <!-- Date Of Birth End -->
            <!-- Roll No Start -->
            <div class="col-12 col-sm-4">
                <div class="form-group local-forms">
                    <label>Roll No</label>
                    <input class="form-control" type="number" id="roll_no" name="roll_no" placeholder="Enter Roll Number">
                </div>
            </div>
            <!-- Roll No End -->
            <!-- Location Start -->
            <div class="col-12 col-sm-4">
                <div class="form-group local-forms">
                    <label>Location</label>
                    <input class="form-control" type="text" id="location" name="location" placeholder="Enter Location">
                </div>
            </div>
            <!-- Location End -->
            <!-- Blood Group Start -->
            <div class="col-12 col-sm-4">
                <div class="form-group local-forms">
                    <label>Blood Group <span class="login-danger">*</span></label>
                    <select class="form-control select" id="blood_group" name="blood_group">
                        <option>Please Select Group </option>
                        <option>A+</option>
                        <option>B+</option>
                        <option>O+</option>
                        <option>A-</option>
                        <option>B-</option>
                        <option>O-</option>
                        <option>AB+</option>
                        <option>AB-</option>
                    </select>
                </div>
            </div>
            <!-- Blood Group End -->
            <!-- Religion Start -->
            <div class="col-12 col-sm-4">
                <div class="form-group local-forms">
                    <label>Religion <span class="login-danger">*</span></label>
                    <select class="form-control select" id="religion" name="religion">
                        <option>Please Select Religion </option>
                        <option>Hindu</option>
                        <option>Christian</option>
                        <option>Others</option>
                    </select>
                </div>
            </div>
            <!-- Religion End -->
            <!-- Email Start -->
            <div class="col-12 col-sm-4">
                <div class="form-group local-forms">
                    <label>E-Mail <span class="login-danger">*</span></label>
                    <input class="form-control" type="text" id="email" name="email" placeholder="Enter Email Address">
                </div>
            </div>
            <!-- Email End -->
            <!-- Class Start -->
            <div class="col-12 col-sm-4">
                <div class="form-group local-forms">
                    <label>Class <span class="login-danger">*</span></label>
                    <select class="form-control select" id="student_class" name="student_class">
                        <option>Please Select Class </option>
                        <option>12</option>
                        <option>11</option>
                        <option>10</option>
                        <option>9</option>
                        <option>8</option>
                        <option>7</option>
                        <option>6</option>
                        <option>5</option>
                        <option>4</option>
                        <option>3</option>
                        <option>2</option>
                        <option>1</option>
                        <option>Pre II </option>
                        <option>Pre I</option>
                        <option>Foundation</option>
                    </select>
                </div>
            </div>
            <!-- Class End -->
            <!-- Section Start -->
            <div class="col-12 col-sm-4">
                <div class="form-group local-forms">
                    <label>Section <span class="login-danger">*</span></label>
                    <select class="form-control select" id="section" name="section">
                        <option>Please Select Section </option>
                        <option>A</option>
                        <option>B</option>
                        <option>C</option>
                        <option>D</option>
                        <option>E</option>
                    </select>
                </div>
            </div>
            <!-- Section End -->
            <!-- Phone Number Start -->
            <div class="col-12 col-sm-4">
                <div class="form-group local-forms">
                    <label>Phone Number </label>
                    <input class="form-control" type="text" id="number" name="number" placeholder="Enter Phone Number">
                </div>
            </div>
            <!-- Phone Number End -->
            <!-- Parent Name Start -->
            <div class="col-12 col-sm-4">
                <div class="form-group local-forms">
                    <label>Parent Name </label>
                    <input class="form-control" type="text" id="parent_name" name="parent_name" placeholder="Enter Parent Name">
                </div>
            </div>
            <!-- Parent Name End -->
            <!-- Parent Number Start -->
            <div class="col-12 col-sm-4">
                <div class="form-group local-forms">
                    <label>Parent Number </label>
                    <input class="form-control" type="text" id="parent_no" name="parent_no" placeholder="Enter Phone Number">
                </div>
            </div>
            <!-- Parent Number End -->
            <!-- Photo Start -->
            <div class="col-12 col-sm-4">
                <div class="form-group local-forms">
                    <label>Image Name </label>
                    <input class="form-control" type="text" id="image" name="image" placeholder="Enter Image Name">
                </div>
            </div>
            <!-- Photo End -->
            <div class="col-12">
                <div class="student-submit">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </div>
    </form>
    
</div>
</div>
</div>
</div>
</div>
</div>

</div>


<script src="assets/js/jquery-3.6.0.min.js"></script>

<script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="assets/js/feather.min.js"></script>

<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<script src="assets/plugins/select2/js/select2.min.js"></script>

<script src="assets/plugins/moment/moment.min.js"></script>
<script src="assets/js/bootstrap-datetimepicker.min.js"></script>

<script src="assets/js/script.js"></script>
</body>
</html>