<%-- 
    Document   : main_web
    Created on : Mar 9, 2023, 12:14:03 AM
    Author     : DELL VOSTRO 5510
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Section --><%@page contentType="text/html" pageEncoding="utf-8" %>
								<section>
									<header class="major">
										<h2>Tin tức nổi bật</h2>
									</header>
									<div class="posts">
                                                                            <c:forEach begin="1" end="6" var="o">
                                                                                <article>
											<a href="#" class="image"><img src="images/fpt_tuyensinh02.webp" alt="" /></a>
                                                                                        <h3><a href="news_web.jsp">Đại học FPT thông báo tuyển sinh Hệ đại học chính quy đợt bổ sung năm 2022 </a></h3>
											<p>Trường Đại học FPT trân trọng thông báo tuyển sinh Hệ đại học chính quy đợt bổ sung năm 2022 như sau: I. Lịch trình tuyển sinh đợt bổ sung Thời gian đăng ký và nộp hồ sơ: từ ngày 16/9/2022. II. Thủ tục đăng ký 1. Hồ sơ đăng</p>
											<ul class="actions">
												<li><a href="#" class="button">More</a></li>
											</ul>
										</article>
                                                                            </c:forEach>
										
									</div>
								</section>

						</div>
					</div>
