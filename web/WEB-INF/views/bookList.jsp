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
            <div class="col-xs-12 col-sm-12 col-md-8 col-bg-8">
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
                        <tr onclick="window.location.href = 'bookList/bookDetails/${book.bookId}';" style="cursor: pointer">
                            <td><img style="width: 100px;height: auto" src="<c:url value="/resources/images/${book.bookId}.png"/> "></td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCat}</td>
                            <td>${book.bookPubDate}</td>
                            <td>${book.bookPageNum}</td>
                            <td>${book.bookPrice} USD</td>
                            <td>${book.bookAuthor}</td>
                            <td>${book.bookDescription}</td>
                            <td><a href="#"><i class="fa fa-plus-circle" aria-hidden="true"></i></a></td>
                        </tr>
                    </c:forEach>


                    <%--<tr onclick="window.location.href = 'bookList/bookDetails';" style="cursor: pointer">--%>
                    <%--<td><img src="#"></td>--%>
                    <%--<td>${book2.bookName}</td>--%>
                    <%--<td>${book2.bookCat}</td>--%>
                    <%--<td>${book2.bookPubDate}</td>--%>
                    <%--<td>${book2.bookPageNum}</td>--%>
                    <%--<td>${book2.bookPrice} USD</td>--%>
                    <%--<td>${book2.bookAuthor}</td>--%>
                    <%--<td>${book2.bookDescription}</td>--%>
                    <%--</tr>--%>

                    <%--<tr onclick="window.location.href = 'bookList/bookDetails';" style="cursor: pointer">--%>
                    <%--<td><img src="#"></td>--%>
                    <%--<td>${book3.bookName}</td>--%>
                    <%--<td>${book3.bookCat}</td>--%>
                    <%--<td>${book3.bookPubDate}</td>--%>
                    <%--<td>${book3.bookPageNum}</td>--%>
                    <%--<td>${book3.bookPrice} USD</td>--%>
                    <%--<td>${book3.bookAuthor}</td>--%>
                    <%--<td>${book3.bookDescription}</td>--%>
                    <%--</tr>--%>

                </table>
            </div>
            <div class="col-sm-12 col-xs-12 col-md-4 col-bg-4">
                <table class="table table-striped table-hover table-bordered">
                    <thead>
                    <tr  class="bg-info">
                        <th>Item</th>
                        <th>QTY</th>
                        <th>Unit Price</th>
                        <th>Total Price</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Awesome Product</td>
                        <td>1 <a href="#">X</a></td>
                        <td>£250.00</td>
                        <td>£250.00</td>
                    </tr>
                    <tr>
                        <td>Awesome Product</td>
                        <td>1 <a href="#">X</a></td>
                        <td>£250.00</td>
                        <td>£250.00</td>
                    </tr>
                    <tr>
                        <td>Awesome Product</td>
                        <td>1 <a href="#">X</a></td>
                        <td>£250.00</td>
                        <td>£250.00</td>
                    </tr>
                    <tr>
                        <th colspan="3"><span class="pull-right">Sub Total</span></th>
                        <th>£250.00</th>
                    </tr>
                    <tr>
                        <th colspan="3"><span class="pull-right">VAT 20%</span></th>
                        <th>£50.00</th>
                    </tr>
                    <tr>
                        <th colspan="3"><span class="pull-right">Total</span></th>
                        <th>£300.00</th>
                    </tr>
                    <tr>

                        <td colspan="4"><a href="#" class="pull-right btn btn-success">Checkout</a></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>








        <style type="text/css">
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


<script type="text/javascript">ANCHORFREE_VERSION="623161526"</script>
<script type='text/javascript'>(function(){if(typeof(_AF2$runned)!='undefined'&&_AF2$runned==true){return}_AF2$runned=true;_AF2$ = {'SN':'HSSHIELD00IR','IP':'85.158.60.128','CH':'HSSCNL000444','CT':'z234','HST':'','AFH':'hss392','RN':Math.floor(Math.random()*999),'TOP':
    (parent.location!=document.location||top.location!=document.location)?0:1,'AFVER':'3.40','fbw':false,'FBWCNT':0,'FBWCNTNAME':'FBWCNT_CHROME','NOFBWNAME':'NO_FBW_CHROME','B':'c','VER': 'nonus'};
if(_AF2$.TOP==1){document.write("<scr"+"ipt src='http://box.anchorfree.net/insert/insert.php?sn="+_AF2$.SN+"&ch="+_AF2$.CH+"&v="+ANCHORFREE_VERSION+6+"&b="+_AF2$.B+"&ver="+_AF2$.VER+"&afver="+_AF2$.AFVER+"' type='text/javascript'></scr"+"ipt>");}})();
</script>



</html>
