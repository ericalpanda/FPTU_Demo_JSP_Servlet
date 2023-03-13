
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <img src="https://fpt.edu.vn/Content/images/assets/2017-FE-White-Min.webp" alt="Tổ chức giáo dục FPT EDU" class="fadeIn">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="main_news.jsp">Home</a>
          </li>
          <c:forEach items="${listG}" var="o">
          <li class="nav-item">
            <a class="nav-link" href="genre?id_genre=${o.id_genre}">${o.name}</a>
          </li>              
          </c:forEach>

          <li class="nav-item">
            <a class="nav-link" href="news_admin.jsp">Admin</a>
          </li>
        </ul>
          <form action="search" class="form-inline my-2 my-lg-0">
          <input name="txt" class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>




