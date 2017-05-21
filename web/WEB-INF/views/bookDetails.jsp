<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>



<div class="container marketing">

    <div class="container">
        <div class="page-header">
            <h1>Book Details</h1>

            <p>here is the details about this book!</p>
        </div>



        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <img style="width: 100%" src="<c:url value="/resources/images/${book.bookId}.png"/> ">
                </div>
                <div class="col-md-6">
                    <h3>${book.bookName}</h3>
                    <p>by ${book.bookAuthor} On ${book.bookPubDate}</p>
                    <br/>
                    <p><strong>Category : <strong/>${book.bookCat}</p>
                    <p><strong>Price : <strong/>${book.bookPrice} USD</p>
                    <p><strong>Pages : <strong/>${book.bookPageNum}</p>

                    <br/>
                    <p>${book.bookDescription}</p>

                </div>

            </div>

        </div>




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
