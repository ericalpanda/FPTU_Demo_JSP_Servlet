<%-- 
    Document   : news_admin
    Created on : Mar 9, 2023, 11:35:39 AM
    Author     : DELL VOSTRO 5510
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin</title>
    <!-- CSS của Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<%@ include file="/news_includes/header.jsp" %>
<%@ include file="/news_includes/nav_bar.jsp" %>
    <main>        
        <style>
            h2{
                display: block;
                text-align: center;
                margin-top: 30px;
                margin-bottom: 30px;
            }
            .btn btn-primaries{
                color: white!important;
                background-color: blue;
            }
        </style>
        
        <div class="container">
            <!-- Bảng hiển thị danh sách tin tức -->
            <h2>Danh sách tin tức</h2>
            <table class="table">
                <thead>
                    <tr>
                        <th>Tiêu đề</th>
                        <th>Nội dung main</th>
                        <th>Nội dung</th>
                        <th>Tác giả</th>
                        <th>Hình ảnh</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Tin tức số 1</td>
                        <td>Nội dung </td>
                        <td>Nội dung của tin tức số 1</td>
                        <td>Tác giả A</td>
                        <td><img src="https://via.placeholder.com/150x150" alt=""></td>
                                            <td>
                        <button type="button" class="btn btn-primary">Sửa</button>
                        <button type="button" class="btn btn-danger">Xóa</button>
                    </td>
                </tr>
                <tr>
                    <td>Tin tức số 2</td>
                    <td>Nội dung </td>
                    <td>Nội dung của tin tức số 2</td>
                    <td>Tác giả B</td>
                    <td><img src="https://via.placeholder.com/150x150" alt=""></td>
                    <td>
                        <button type="button" class="btn btn-primary">Sửa</button>
                        <button type="button" class="btn btn-danger">Xóa</button>
                    </td>
                </tr>
            </tbody>
        </table>
            
            <!-- Biểu mẫu thêm tin tức -->
            <h2>Thêm tin tức</h2>
            <form>
                <div class="form-group">
                    <label for="title">Tiêu đề</label>
                    <input type="text" class="form-control" id="title">
                </div>
                <div class="form-group">
                    <label for="content">Summary</label>
                    <textarea class="form-control" id="content"></textarea>
                </div>                
                <div class="form-group">
                    <label for="content">Nội dung</label>
                    <textarea class="form-control" id="content"></textarea>
                </div>
                <div class="form-group">
                    <label for="author">Tác giả</label>
                    <input type="text" class="form-control" id="author">
                </div>
                <div class="form-group">
                    <label for="image">Hình ảnh</label>
                    <input type="file" class="form-control-file" id="image">
                </div>
                <button type="submit" class="btn btn-primary">Thêm tin tức</button>
            </form>
    </div>
</main>

<!-- JavaScript của Bootstrap -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


