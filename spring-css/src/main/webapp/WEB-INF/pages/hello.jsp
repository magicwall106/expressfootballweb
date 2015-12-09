<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${pageContext.request.contextPath}/resources/css/mui.min.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/resources/static/style.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/resources/css/flipper.css" rel="stylesheet" type="text/css"/>    
    
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/material-wfont.min.css" rel="stylesheet" type="text/css"/>
    
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script><!-- ORDER REQUIRED -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script><!-- ORDER REQUIRED -->
    
    
    <script src="${pageContext.request.contextPath}/resources/js/mui.min.js"></script><!-- REQUIRED -->
    <script src="${pageContext.request.contextPath}/resources/static/script.js"></script><!-- REQUIRED -->
  </head>
  <body>
    <div id="sidedrawer" class="mui--no-user-select">
      <div id="sidedrawer-brand" class="mui--appbar-line-height mui--text-title">Express Football</div>
      <div class="mui-divider"></div>
      <ul>
      	
        <li>
          <strong>Category 1</strong>
          <ul>
            <li><a href="#">Item 1</a></li>
            <li><a href="#">Item 2</a></li>
            <li><a href="#">Item 3</a></li>
            <c:forEach var="item" items="${listItem}">
            	<li><a href="#">${item.get("shortDescription")}</a></li>	 
            
            </c:forEach>
          </ul>
        </li>
        <li>
          <strong>Category 2</strong>
          <ul>
            <li><a href="#">Item 1</a></li>
            <li><a href="#">Item 2</a></li>
            <li><a href="#">Item 3</a></li>
          </ul>
        </li>
        <li>
          <strong>Category 3</strong>
          <ul>
            <li><a href="#">Item 1</a></li>
            <li><a href="#">Item 2</a></li>
            <li><a href="#">Item 3</a></li>
          </ul>
        </li>
      </ul>
    </div>
    <header id="header">
      <div class="mui-appbar mui--appbar-line-height">
        <div class="mui-container-fluid">
          <a class="sidedrawer-toggle mui--visible-xs-inline-block js-show-sidedrawer">☰</a>
          <a class="sidedrawer-toggle mui--hidden-xs js-hide-sidedrawer">☰</a>
          <span class="mui--text-title mui--visible-xs-inline-block">Brand.io</span>
        </div>
      </div>
    </header>
    <div id="content-wrapper">
      <div id="example-row" class="row">
            <a href="javascript:void(0)" class="btn btn-default btn-lg btn-block withripple">Material Design Cards<div class="ripple-wrapper"></div></a>
           
			<c:forEach var="team" items="${listTeam}">
			           
            <div class="col-xs-12 col-md-4 full-card">
                <div class="flip-card active-card">
                    <div class="card alert-success">
                        <h6>${team.get("name")}</h6>
                    </div>
                    <div class="well">
                        <h1>${team.get("title")}</h1>
                    </div>
                </div>
            </div>
			</c:forEach>             
        </div>
    </div>
    <footer id="footer">
      <div class="mui-container-fluid">
        <br>
        Made with ♥ by <a href="https://www.muicss.com">MUI</a>
      </div>
    </footer>
  </body>
</html>