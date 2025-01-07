<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
                <meta name="author" content="Hỏi Dân IT" />
                <title>Create User - Hỏi Dân IT</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#avatarPreview").attr("src", imgURL);
                            $("#avatarPreview").css({ "display": "block" });
                        });
                    });
                </script>

            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Manage User</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item active"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active"><a href="/admin/user">User</a></li>
                                    <li class="breadcrumb-item active">Create User</li>
                                </ol>
                                <div class="mt-5">
                                    <div class="row">
                                        <div class="col-md-6 col-12 mx-auto">
                                            <h2>Create a user</h2>
                                            <hr>
                                            <form:form action="/admin/user/create" method="post"
                                                modelAttribute="newUser" class="row g-3" enctype="multipart/form-data">
                                                <!-- Email -->
                                                <div class="col-md-6 col-12 mb-3">
                                                    <label for="email" class="form-label">Email:</label>
                                                    <form:input type="email" class="form-control" path="email" />
                                                </div>

                                                <!-- Password -->
                                                <div class="col-md-6 col-12 mb-3">
                                                    <label for="password" class="form-label">Password:</label>
                                                    <form:input type="password" class="form-control" path="password" />
                                                </div>

                                                <!-- Phone -->
                                                <div class="col-md-6 col-12 mb-3">
                                                    <label for="phone" class="form-label">Phone:</label>
                                                    <form:input type="text" class="form-control" path="phone" />
                                                </div>

                                                <!-- Full Name -->
                                                <div class="col-md-6 col-12 mb-3">
                                                    <label for="fullName" class="form-label">Full Name:</label>
                                                    <form:input type="text" class="form-control" path="fullName" />
                                                </div>

                                                <!-- Address -->
                                                <div class="col-12 mb-3">
                                                    <label for="address" class="form-label">Address:</label>
                                                    <form:input type="text" class="form-control" path="address" />
                                                </div>

                                                <!-- Role -->
                                                <div class="col-md-6 col-12 mb-3">
                                                    <label class="form-label">Role:</label>
                                                    <form:select name="" class="form-select" path="role.name">
                                                        <form:option value="admin">ADMIN</form:option>
                                                        <form:option value="user">USER</form:option>
                                                    </form:select>
                                                </div>

                                                <!-- Upload image -->
                                                <div class="col-md-6 col-12 mb-3">
                                                    <label for="avatarFile" class="form-label">Avatar:</label>
                                                    <input type="file" class="form-control" accept=".jpg, .png, .jpeg"
                                                        id="avatarFile" name="hoidanitFile" />
                                                </div>

                                                <!-- Preview image (hiden) -->
                                                <div class="col-12 mb-3">
                                                    <img src="" alt="image preview" id="avatarPreview"
                                                        style="max-width: 250px; display: none;">
                                                </div>
                                                <div class="mb-5 col-12">
                                                    <button type="submit" class="btn btn-primary">Create</button>
                                                </div>

                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>
            </body>

            </html>