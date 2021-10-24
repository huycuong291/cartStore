<%@page import="org.apache.tomcat.jni.User"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Your Cart</title>
    <link rel="stylesheet" href="styles/main_1.css" type="text/css"/>
</head>
<body>
 <div class="CartContainer">
      <div class="Header">
   	   	<h3 class="Heading">Your Cart</h3>
   	   </div>
  <table>
  <tr>
    <th>Quantity</th>
    <th>Description</th>
    <th>Price</th>
    <th>Amount</th>
    <th></th>
  </tr>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="item" items="${cart.items}">
  <tr>
    <td>
      <form action="cart" method="post">
        <input type="hidden" name="productCode" 
               value="<c:out value="${item.product.code}"/>">
        <input  class="sl"type=text name="quantity" 
                value="<c:out value="${item.quantity}"/>" id="quantity"> 
        <input class="up" type="submit" value="Update">
</button>
      </form>
    </td>
    <td><c:out value='${item.product.description}'/></td>
    <td>${item.product.priceCurrencyFormat}</td>
    <td>${item.totalCurrencyFormat}</td>
    <td>
      <a class="rm" href="cart?productCode=${item.product.code}&amp;quantity=0">Remove Item</a>
      
      <form action="" method="post">
        <input  type="hidden" name="productCode" 
               value="<c:out value="${item.product.code}"/>">
        <input type="hidden" name="quantity" 
               value="0">
        <input  class="co" type="submit" value="Remove Item">
      </form>
     
    </td>
  </tr>
</c:forEach>

</table>
                      <hr> 
                      <div class="checkout">
                         

                          <form action="" method="post">
                            <input type="hidden" name="action" value="shop">
                            <input class="cs"type="submit" value="Continue Shopping">
                          </form>
                      
                          <form class="a" action="checkout.jsp" method="post">
                            <input  type="hidden" name="action" value="checkout">
                            <input class="co" type="submit" value="Checkout">
                          </form>
                        </div>
 </div>





</body>
</html>