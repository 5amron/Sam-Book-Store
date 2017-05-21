<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>



<div class="container marketing">

    <div class="container">
        <div class="page-header">
            <h1>Book Details</h1>

            <p class="lead">fill the below fields about book details :</p>
        </div>

        <%--this enctype property is for uploading file!!!!!!--%>
        <form:form action="${pageContext.request.contextPath}/admin/bookInventory/addBook" method="post" commandName="book" enctype="multipart/form-data">

            <div class="form-group">
                <label for="name">book name</label> <form:errors path="bookName" cssStyle="color:#ff0000"/>
                <form:input path="bookName" id="name" class="form-Control"/>
            </div>





            <div class="form-group">
                <label for="category">Category</label>
                <label class="checkbox-inline"><form:radiobutton path="bookCat" id="category"
                                                                 value="Science fiction" /> Science fiction</label>
                <label class="checkbox-inline"><form:radiobutton path="bookCat" id="category"
                                                                 value="Satire" /> Satire</label>
                <label class="checkbox-inline"><form:radiobutton path="bookCat" id="category"
                                                                 value="Horror" /> Horror</label>
                <label class="checkbox-inline"><form:radiobutton path="bookCat" id="category"
                                                                 value="Romance" /> Romance</label>
            </div>



            <div class="form-group">
                <label for="description">Description</label>
                <form:textarea path="bookDescription" id="description" class="form-Control"/>
            </div>


            <div class="form-group">
                <label for="price">Price</label>  <form:errors path="bookPrice" cssStyle="color: #ff0000;" />
                <form:input path="bookPrice" id="price" class="form-Control"/>
            </div>



            <div class="form-group">
                <label for="bookPubDate">publication date</label>
                <form:input path="bookPubDate" id="pubDate" class="form-Control"/>
            </div>



            <div class="form-group">
                <label for="bookAuthor">Author</label>
                <form:input path="bookAuthor" id="author" class="form-Control"/>
            </div>



            <div class="form-group">
                <label for="bookPageNum">Page number</label>
                <form:input path="bookPageNum" id="pageNum" class="form-Control"/>
            </div>




            <%--  radio box example code  --%>
            <%--<div class="form-group">--%>
                <%--<label for="status">Status</label>--%>
                <%--<label class="checkbox-inline"><form:radiobutton path="bookStatus" id="status"--%>
                                                                 <%--value="active" />Active</label>--%>
                <%--<label class="checkbox-inline"><form:radiobutton path="bookStatus" id="status"--%>
                                                                 <%--value="inactive" />Inactive</label>--%>
            <%--</div>--%>





            <div class="form-group">
                <label class="control-label" for="bookImage">Upload Picture</label>
                <form:input id="bookImage" path="bookImage" type="file" class="form:input-large" />
            </div>



            <br><br>
            <input type="submit" value="submit" class="btn btn-default">
            <a href="<c:url value="/admin/bookInventory" />" class="btn btn-default">Cancel</a>


            </form:form>






        <%@include file="/WEB-INF/views/template/footer.jsp"%>

    </div>

</div><!-- /.container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="<c:url value="/resources/js/jquery-3.2.0.min.js"/>"><\/script>')</script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</body>



</html>
