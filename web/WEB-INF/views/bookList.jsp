<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>



<div class="container marketing">

    <div class="container">
        <div class="page-header">
            <h1>All Books</h1>

            <p>Check out all these awesome books, that are available!</p>
        </div>










        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-9 col-bg-9">
                <table class="table table-striped table-bordered table-hover ttt">
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
                        <th>Add</th>
                    </tr>
                    </thead>

                    <c:forEach items="${books}" var="book">
                        <tr>
                            <td><img style="width: 100px;height: auto" src="<c:url value="/resources/images/${book.bookId}.png"/> "></td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCat}</td>
                            <td>${book.bookPubDate}</td>
                            <td>${book.bookPageNum}</td>
                            <td id="book-price">${book.bookPrice} USD</td>
                            <td>${book.bookAuthor}</td>
                            <td>${book.bookDescription}</td>
                            <td>
                                <a id="addToCart" href="#"><i class="fa fa-plus-circle" aria-hidden="true"></i></a>
                                <a href="<c:url value="/bookList/bookDetails/${book.bookId}"/>"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                            </td>
                        </tr>
                    </c:forEach>



                </table>
            </div>
            <div class="col-sm-12 col-xs-12 col-md-3 col-bg-3">
                <table id="cart" class="table table-striped table-hover table-bordered">
                    <thead>
                    <tr  class="bg-info">
                        <th>Item</th>
                        <th>QTY</th>
                        <th>Unit Price</th>
                        <th>Total Price</th>
                    </tr>
                    </thead>
                    <tbody>
                    <!-- <tr>
                        <td>Awesome Product</td>
                        <td>1 <a href="#">X</a></td>
                        <td>£250.00</td>
                        <td>£250.00</td>
                    </tr> -->

                    <tr>
                        <th colspan="3"><span class="pull-right">Total</span></th>
                        <td><span id="totalPrice">0</span> USD</td>
                    </tr>
                    <tr>

                        <td colspan="4"><a href="#" class="pull-right btn btn-success">Checkout</a></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>








        <style type="text/css">
            #deleteRow{
                color: #ac2925;
            }
            .ttt{
                /*margin: 20px;*/
                /*width: 600px;*/
            }
            .ttt th{
                text-align: center;
            }
            .ttt td{
                text-align: center;
            }
        </style>










        
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





<script type="text/javascript">
    $(document).ready(function(){
        $('a#addToCart').on('click',function(e){
            e.preventDefault();
            totalPrice = parseFloat($('#totalPrice').html());
            id = $(this).parent().parent().prop("id");
            name = $(this).parent().parent().children('#book-name').first().find('a').html();
            price = parseFloat($(this).parent().parent().children('#book-price').first().html());
            booksInCart = $('table#cart>tbody>tr.bookInCart');
            added = false;
            qty = 1;
            for (var i = booksInCart.length - 1; i >= 0; i--) {

                if (booksInCart[i].id == id) {
                    console.log($(booksInCart[i]));
                    qty = parseInt($(booksInCart[i]).children('#qty').children('span#qtyNum').html())+1;
                    sum = qty*price;
                    $(booksInCart[i]).children('#qty').children('span#qtyNum').html(qty);
                    $(booksInCart[i]).children('#sum').children('span#sumNum').html(sum);
                    totalPrice = totalPrice+price;
                    added = true;

                    break;
                }

            }
            if (!added) {
                $('table#cart>tbody').prepend(
                    "<tr class='bookInCart' id= \""+id+"\"><td id='name'>"+name+"</td><td id = 'qty'><span id = 'qtyNum'>1</span><a href='#' id= 'deleteRow'>     X</a></td><td id='price'>"+price+" USD</td><td id= 'sum'><span id= 'sumNum'>"+price+"</span> USD</td></tr>"
                );
                totalPrice = totalPrice + price;
            }
            $('#totalPrice').html(totalPrice);


        })


    })
    $(document).on('click', '#deleteRow', function(e){
        e.preventDefault();
        totalPrice = parseFloat($('#totalPrice').html()) - parseFloat($(this).parent().parent().children('#sum').children('#sumNum').html());
        console.log(totalPrice);
        $('#totalPrice').html(totalPrice);
        $(this).parent().parent().remove();
    });

</script>




</html>
