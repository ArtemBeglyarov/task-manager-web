<%@ page import="com.taskmanager.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>@import url(css/style.css);</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8"/>
<meta name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
<meta http-equiv="x-ua-compatible" content="ie=edge"/>
<link rel="icon" href="img/mdb-favicon.ico" type="image/x-icon"/>
<!-- Font Awesome -->
<link rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<!-- Google Fonts Roboto -->
<link rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Material Design Bootstrap -->
<link rel="stylesheet" href="css/mdb.min.css">

<link rel="stylesheet" href="css/style.css">
<header
        class="navbar navbar-expand-lg  bg-dark flex-column flex-md-row ">
    <a href="index.jsp"><img style=" margin:10px"
                             src="css/images/home-circle-512.webp"
                             width="50"
                             height="45" class="me-3" alt="HOME"> </a>

    <div class="dropdown" style=" margin:10px">
        <a class="btn btn-success"
           style="background-color:  #0B614B" href="findUsers.jsp"
           role="button">USER
        </a>
        <div class="dropdown-menu">
            <a class="dropdown-item" href="currUser.jsp">My data</a>
            <a class="dropdown-item" href="createUser.jsp">Create
                user</a>
            <a class="dropdown-item" href="findUsers.jsp">Find all
                user</a>
            <a class="dropdown-item" href="findUser.jsp">Find user</a>
            <a class="dropdown-item" href="removeUser.jsp">Remove
                user</a>
            <a class="dropdown-item" href="updateUser.jsp">Update user</a>
        </div>
    </div>
    <div class="dropdown" style=" margin:10px">
            <a class="btn btn-success"
               style="background-color:  #0B614B" href="Tasks.jsp"
               role="button">TASK
            </a>
    </div>

    <div class="dropdown" style=" margin:10px">
        <a class="btn btn-success"
           style="background-color:  #0B614B" href="Projects.jsp"
           role="button">Project
        </a>
    </div>
    <a class="btn btn-success" style="margin-left: auto!important;
        margin:10px; background-color: #0B614B"
       role="button" href="singOut.jsp">Sign out
    </a>
</header>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="js/mdb.min.js"></script>
<!-- Your custom scripts (optional) -->
<script type="text/javascript">
    var a = document.getElementById('disc-50');
    a.onclick = function () {
        Clipboard_CopyTo("T9TTVSQB");
        var div = document.getElementById('code-success');
        div.style.display = 'block';
        setTimeout(function () {
            document.getElementById('code-success').style.display = 'none';
        }, 900);
    };

    function Clipboard_CopyTo(value) {
        var tempInput = document.createElement("input");
        tempInput.value = value;
        document.body.appendChild(tempInput);
        tempInput.select();
        document.execCommand("copy");
        document.body.removeChild(tempInput);
    }
</script>


