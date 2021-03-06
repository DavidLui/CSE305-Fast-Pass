
<!DOCTYPE html>
<html lang="en">

<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Fast Pass</title>

    <!-- Bootstrap Core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="assets/css/simple-sidebar.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        Start Bootstrap
                    </a>
                </li>
                <li>
                    <a href="#">Dashboard</a>
                </li>
                <li>
                    <a href="#">Shortcuts</a>
                </li>
                <li>
                    <a href="#">Overview</a>
                </li>
                <li>
                    <a href="#">Events</a>
                </li>
                <li>
                    <a href="#">About</a>
                </li>
                <li>
                    <a href="#">Services</a>
                </li>
                <li>
                    <a href="#">Contact</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <jsp:include page="header.jsp" />
           
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1>Welcome</h1>
                        
                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle Menu</a>
                        ${Circle.id}
                        ${Circle.posts.get(1).content}
                        <c:choose>
                            <c:when test="${ not empty customer}">
                                <li>hi ${customer.firstName}</li>
                                <li>${customer.city}</li>
                                
                                <h1> Your Circles <h1>
                                 
                                    <c:forEach var="listVar" items="${circleObjects}">     
                                        <div class="col-xs-6 col-lg-3">
                                         
                                            <!--<center><p>${listVar.id}</p></center>-->
                                            <center><a href="viewcircle=${listVar.id}.htm"><p>${listVar.name}</p></a></center>
                                        </div>		
                                    </c:forEach>			
                                

                                 
                                
                            </c:when>
                            <c:otherwise>
                                <c:if test="${not empty cannotLogin}">
                                    <a href="index.htm" style="color:#003366"><b>${cannotLogin}</b></a>
                                </c:if>
                           
                            </c:otherwise>
                        </c:choose>
                        
                    
                    </div>
                </div>
            </div>
            <hr><jsp:include page="footer.jsp" />
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="assets/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

    
</body>


</html>
