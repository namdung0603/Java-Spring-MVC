<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Delete User</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">


                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container">
                    <div class="row">
                        <div class="col-12 mt-5">
                            <h2>Delete the user with id = ${id}</h2>
                            <hr>
                            <div class="alert alert-danger">
                                Are you sure to delete this user?
                            </div>
                            <form:form method="post" action="/admin/user/delete" modelAttribute="newUser">
                                <!-- Id -->
                                <div class="mb-3" style="display: none;">
                                    <label for="id" class="form-label">ID</label>
                                    <form:input type="number" class="form-control" path="id" readonly="true"
                                        value="${id}" />
                                </div>
                                <button class="btn btn-danger" type="submit">Confirm</button>
                            </form:form>
                            <!-- <form:form method="post" action="/admin/user/delete/${id}" modelAttribute="newUser">
                                <button class="btn btn-danger" type="submit">Confirm</button>
                            </form:form> -->
                        </div>
                    </div>
                </div>
            </body>

            </html>