<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="../../resources/css/coupon.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>  
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>     
<title>Insert title here</title>
</head>
<body>

	<!-- header -->
	<jsp:include page="${ pageContext.servletContext.contextPath }/view/commons/header.jsp"/>
	
	<br><br><br>
    <div class="page-text" style="width: 1550px; margin: 0 auto;">
        <h3 style="margin-left: 100px; font-weight: 900;">판매 상품 관리</h3>
        <hr>
    </div>
	
	<div class="body-all">
      <div class="body-inside">
      
     <!-- sidebar  -->
      <jsp:include page="${ pageContext.servletContext.contextPath }/view/commons/ownerSidebar.jsp"/>
      
      <div style="text-align: center;">
        <div style="margin-left: 450px;">
        <table class="table table" style="width: 1050px;">
            <thead style="background-color: #EDEDED;">
              <tr>
                <th scope="col"><input type="checkbox" id="allCheck"></th>
                <th scope="col">상품 번호</th>
                <th scope="col">상품</th>
                <th scope="col">제조일</th>
                <th scope="col">유통기한</th>
                <th scope="col">판매여부</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="col"><input type="checkbox" name="menu" id=""></th>
                <th scope="row">1</th>
                <td>두부 무침</td>
                <td>2021-11-23</td>
                <td>2021-11-30</td>
                <td><button class="couponBtn" id="btn1">판매</button></td>
              </tr>
              <tr>
                <th scope="col"><input type="checkbox" name="menu" id=""></th>
                <th scope="row">2</th>
                <td>오뎅 볶음</td>
                <td>2021-11-23</td>
                <td>2021-11-30</td>
                <td><button class="couponBtn" id="btn2" style="background-color: #777777;">판매 중단</button></td>
              </tr>
              <tr>
                <th scope="col"><input type="checkbox" name="menu" id=""></th>
                <th scope="row">3</th>
                <td>로제찜닭마요</td>
                <td>2021-11-24</td>
                <td>2021-11-30</td>
                <td><button class="couponBtn">판매</button></td>
              </tr>
            </tbody>
          </table>
        </div>
        <div style="float: right; margin: 20px 60px 0 0;">
          <button class="dateControll">제조일자 오늘로 변경</button>
          <button class="couponBtn" style="background-color: #777777;">삭제</button>
        </div>
        <div style="margin: 500px 0 300px 900px;">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
           </div>
        </div>
      </div>  
    </div>
	<script>
	  $(function(){
	    $("#btn1").click(function(){
	      if($("#btn1").html() == "판매"){
	        $(this).css("background-color","#777777").html("판매중단");
	      } else{
	        $(this).css("background-color","#F89E91").html("판매");
	      }
	    });
	
	    $("#allCheck").click(function(){
	      if($("#allCheck").prop("checked")){
	        $("input[type=checkbox]").prop("checked",true);
	      } else{
	        $("input[type=checkbox]").prop("checked",false);
	      }
	    });
	
	  });
	</script>  
	
	<!-- footer -->
	 <jsp:include page="${ pageContext.servletContext.contextPath }/view/commons/footer.jsp"/>
	
</body>
</html>