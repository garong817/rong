<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
   <div class="row">
       <h1 class="text-center">여행용품</h1>
       <c:forEach var="vo" items="${list }">
           <div class="col-md-4">
                <div class="thumbnail">
                  <a href="detail.do?cno=${vo.cno }&gno=${vo.gno}"> 
                       <img src="${vo.poster }" title="${vo.title }" style="width:100%">
                       <div class="caption">
                         <p>${vo.selling_price }</p>
                         <p>${vo.mileage }</p>
                       </div>
                  </a>
              </div>
            </div>
         </c:forEach>
     </div>
     <div style="height: 20px"></div>
     <div class="row">
       <div class="text-center">
            <ul class="pagination">
                 <%--
                       <!ENTITY lt "<">
                       <!ENTITY gt ">">
                       => &lt;
                  --%>
                  <c:if test="${startPage>1 }">
                    <li><a href="travel.do?page=${startPage-1}">&lt;</a></li>
                 </c:if>
                 <c:forEach var="i" begin="${startPage }" end="${endPage }">
                      <li ${curpage==i?"class=active":"" }><a href="travel.do?page=${i}">${i }</a></li>
                 </c:forEach>
                 <c:if test="${endPage<totalpage }">
                    <li><a href="travel.do?page=${endPage+1}">&gt;</a></li>
                 </c:if>
               </ul>
       </div>
     </div>
     <div style="height: 20px"></div>
     <h3>최근 방문 상품</h3>
     <hr>
     <c:if test="${count==0 }">
         방문기록이 없습니다.
     </c:if>
     <c:if test="${count!=0 }">
       <c:forEach var="vo" items="${cList }">
            <img src="${vo.goods_poster }" style="width: 100px;height: 100px;margin-left:10px">
       </c:forEach>
     </c:if>
</body>
</html>