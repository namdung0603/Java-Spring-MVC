<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Update a User</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">


                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-md-6 col-12 mx-auto">
                            <h2>Update a user</h2>
                            <hr>
                            <form:form action="" method="post" modelAttribute="newUser">
                                <!-- Id -->
                                <div class="mb-3" style="display: none;">
                                    <label for="id" class="form-label">ID</label>
                                    <form:input type="number" class="form-control" path="id" readonly="true" />
                                </div>

                                <!-- Email -->
                                <div class="mb-3">
                                    <label for="email" class="form-label">Email</label>
                                    <form:input type="email" class="form-control" path="email" disabled="true" />
                                </div>

                                <!-- Full Name -->
                                <div class="mb-3">
                                    <label for="fullName" class="form-label">Full Name</label>
                                    <form:input type="text" class="form-control" path="fullName" />
                                </div>

                                <!-- Address -->
                                <div class="mb-3">
                                    <label for="address" class="form-label">Address</label>
                                    <form:input type="text" class="form-control" path="address" />
                                </div>

                                <!-- Phone -->
                                <div class="mb-3">
                                    <label for="phone" class="form-label">Phone</label>
                                    <form:input type="text" class="form-control" path="phone" />
                                </div>
                                <button type="submit" class="btn btn-warning">Update</button>
                            </form:form>
                        </div>
                    </div>
                </div>
            </body>

            </html>