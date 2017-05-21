<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>



<div class="container marketing">

    <div class="container">
        <div class="page-header">
            <h1>Book Inventory Page</h1>

            <p>this is book inventory :</p>
        </div>



        <table class="table table-striped table-bordered table-hover">
            <thead>
            <tr class="bg-info">
                <th>image</th>
                <th>Name</th>
                <th>Category</th>
                <th>PubDate</th>
                <th>PageNum</th>
                <th>Price</th>
                <th>Author</th>
                <th>Description</th>
                <th>Action</th>
            </tr>
            </thead>

            <c:forEach items="${books}" var="book">
                <tr onclick="window.location.href = 'bookList/bookDetails/${book.bookId}';" style="cursor: pointer">
                    <td><img style="width: 100px;height: auto" src="<c:url value="/resources/images/${book.bookId}.png"/> "></td>
                    <td>${book.bookName}</td>
                    <td>${book.bookCat}</td>
                    <td>${book.bookPubDate}</td>
                    <td>${book.bookPageNum}</td>
                    <td>${book.bookPrice} USD</td>
                    <td>${book.bookAuthor}</td>
                    <td>${book.bookDescription}</td>
                    <td><a href="<c:url value="/admin/bookInventory/deleteBook/${book.bookId}"/> "><span class="glyphicon glyphicon-remove"></span></a>
                        <a href="<c:url value="/admin/bookInventory/updateBook/${book.bookId}"/> "><span class="glyphicon glyphicon-pencil"></span></a>
                    </td>

                </tr>
            </c:forEach>


        </table>


        <a class="btn btn-primary" href="<c:url value="/admin/bookInventory/addBook"/> ">add book</a>



        <%@include file="/WEB-INF/views/template/footer.jsp"%>

    </div>

</div><!-- /.container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="<c:url value="/resources/js/jquery-3.2.0.min.js"/>"><\/script>')</script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>


<%--********* Another way ***********--%>
<%--<tr class='clickable-row' data-href='bookList/bookDetails' style="cursor: pointer">--%>
<%--this is for making table rows clickable--%>
<%--<script type="text/javascript">--%>
<%--jQuery(document).ready(function($) {--%>
<%--$(".clickable-row").click(function() {--%>
<%--location.href = $(this).data("href");--%>
<%--});--%>
<%--});--%>
<%--</script>--%>


</body>



</html>
