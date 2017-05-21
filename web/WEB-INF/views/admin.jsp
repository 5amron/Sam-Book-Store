<%@include file="/WEB-INF/views/template/header.jsp"%>



<div class="container marketing">

    <div class="container">
        <div class="page-header">
            <h1>Administrator Page</h1>

            <p>change things as administrator!</p>
        </div>


        <h3>
            <a href="<c:url value="/admin/bookInventory"/> ">Book Inventory</a>
        </h3>


        <p>Here you can view, check and modify the book inventory!</p>


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
