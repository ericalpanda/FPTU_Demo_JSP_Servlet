<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="news_includes/header.jsp" %>
<%@include file="news_includes/nav_bar.jsp" %>

<!-- Section -->
<section>
    <header class="major">
        <h2>Tin tức nổi bật</h2>
    </header>

    <div class="posts">
        <c:forEach items="${listN}" var="o">
            <article>
                <a href="#" class="image"><img src="${o.image}" alt="" /></a>
                <h3>${o.title}</h3>
                <p>Trường Đại học FPT trân trọng thông báo tuyển sinh Hệ đại học chính quy đợt bổ sung năm 2022 như sau: I. Lịch trình tuyển sinh đợt bổ sung Thời gian đăng ký và nộp hồ sơ: từ ngày 16/9/2022. II. Thủ tục đăng ký 1. Hồ sơ đăng</p>
                <ul class="actions">
                    <li><a href="news_web?id=${o.id}" class="button">More</a></li>
                </ul>
            </article>
        </c:forEach>

    </div>
</section>

</div>
</div>

</body>
</html>