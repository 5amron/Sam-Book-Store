<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Register Customer</h1>

            <p class="lead">Please fill in your information below:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post" commandName="user">

        <h3>Basic Info</h3>



        <div class="form-group">
            <label for="email">Email</label><span style="color: #ff0000;">  ${phoneMsg} </span><form:errors
                path="userEmail" cssStyle="color: #ff0000;"/>
            <form:input path="userEmail" id="email" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="userPhone" id="phone" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="userFullName">Username</label><span style="color: #ff0000;">  ${userFullNameMsg}
        </span><form:errors path="userFullName" cssStyle="color: #ff0000;"/>
            <form:input path="userFullName" id="userFullName" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="userPassword">password</label><form:errors path="userPassword" cssStyle="color: #ff0000;"/>
            <form:password path="userPassword" id="password" class="form-Control"/>
        </div>
        <br>




        <h3>Shipping Address</h3>

        <div class="form-group">
            <label for="userAddress">Address</label>
            <form:input path="userAddress" id="address" class="form-Control"/>
        </div>



        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
