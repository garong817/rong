<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원가입</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="font.css">
<style type="text/css">

.container {
  border: 2px solid #B2EBF4; /* 실선 테두리, 선의 두께는 2px, 색상은 검정 (#000) */
  padding: 20px; /* 컨테이너 내부 여백 설정 (선택적) */
}

.row1 {
      margin: 0px auto;
      width: 600px;
    }
.div{
	width:200px;
	white-space:nowrap; /* 자동 줄바꿈 해제 */
	overflow:hidden; /* 초과된 글자를 감춘다 . . . */
	text-overflow: ellipsis; /* 글자가 초과되는 경우 */
	/* 자동으로  . . . 으로 출력 | 글자가 벗어나면 줄바꿈없이 감추기 */
}
  </style>
</head>
<body>
    <div class="container">
    <div class="jumbotron" style="background-image: url('../img/rr.png'); background-size: cover;">
      <h2 class="text-center">회원가입을 위해<br>정보를 입력해주세요</h2>
      <p class="text-center">지금 바로 캠핑 가요 우리</p>
    </div>
    <div class="row row1"> 
      <table class="table">
     <tr>
     <th class="text-right" width="15%">ID</th>
     <td width="85%">
     <input type="text" size=15 class="input-sm">
	      <input type="button" value="중복확인" class="btn-sm btn-danger">
	      </td>
	     </tr>
	     
	     <tr>
	     <th class="text-right" width="15%">비밀번호</th>
	     <td width="85%">
	      <input type="password" size=15 class="input-sm">
	      &nbsp;비밀번호 재입력<input type="password" size=15 class="input-sm" id="pwd1">
	      </td>
	     </tr>
	     
	     <tr>
	     <th class="text-right" width="15%">이름</th>
	     <td width="85%">
	      <input type="text" size=15 class="input-sm">
	      </td>
	     </tr>
	     
	     <tr>
	     <th class="text-right" width="15%">성별</th>
	     <td width="85%">
	      <input type="radio" name="gender" value="male">남자
   	      <input type="radio" name="gender" value="female">여자
	      </td>
	      </tr>
	     
	     <tr>
	     <th class="text-right" width="15%">생년월일</th>
	     <td width="85%">
	     <input type="date" size=20 class="input-sm">
	      </td>
	     </tr>
	     
	      <tr>
	     <th class="text-right" width="15%">이메일주소</th>
	     <td width="85%">
	     <input type="email" size=10 class="input-sm"> @
	     <input type="email" id="email" name="email" list="emailList" autocomplete="off" class="input-sm">
  		 <datalist id="emailList">
    	<option value="naver.com"></option>
    	<option value="daum.net"></option>
   		 <option value="icloud.com"></option>
   		 </datalist>
	      </td>
	     </tr>
	     
	       <tr>
	     <th class="text-right" width="15%">전화번호</th>
	     <td width="85%">
	     	<select class="input-sm">
	     	  <option>010</option>
	     	  <option>011</option>
	     	  <option>016</option>
	     	  <option>017</option>
	     	  <option>018</option>
	     	  <option>019</option>
	     	</select>
	     <input type="text" size=20 class="input-sm">
	      </td>
	     </tr>
	     
	     <tr>
	     <th class="text-right" width="15%">우편번호</th>
	     <td width="85%">
	     <input type="text" size=7 class="input-sm">-
	     <input type="text" size=7 class="input-sm">
	     <input type="button" value="우편번호 검색" class="btn btn-sm btn-primary">
	      </td>
	     </tr>
	     
	      <tr>
	     <th class="text-right" width="15%">주소</th>
	     <td width="85%">
	     <input type="text" size=50 class="input-sm">
	      </td>
	     </tr>
	     
	      <tr>
	     <th class="text-right" width="15%">상세주소</th>
	     <td width="85%">
	     <input type="text" size=50 class="input-sm">
	      </td>
	     </tr>
	     
	     
	     <tr>
	     <th class="text-right" width="30%">[필수]개인정보 수집 및<br>정보이용 동의</th>
	     <td width="85%">
	     <span>개인정보 수집 및 정보이용 동의 안하면<br>
	     너희는 사이트를 이용할 수 없다</span>
	      </td>
	     </tr>
	      
	      <tr>
	      <td colspan="2">
	      <input type="checkbox" class="agree1">&nbsp 이용약관 개인정보 수집 및 정보이용에 동의합니다.
	      </td>
	      </tr>
	      
	    <tr>
	    <th class="text-right" width="30%">[선택]쇼핑정보 수신동의</th>
  		<td width="85%">
	    <span>할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 쇼핑몰에서 제공하는<br>
	    	유익한 쇼핑정보를 SMS나 이메일로 받아보실 수 있습니다.<br>
	    	선택 약관에 동의하지 않으셔도 회원가입은 가능하며,<br>
	    	회원가입 후 회원정보수정 페이지에서<br>
	    	언제든지 수신여부를 변경하실 수 있습니다.</span>
	     </tr>
	     	     
	     <tr>
	      <td colspan="2">
	      <input type="checkbox" class="agree2">&nbsp SMS 수신에 동의하시겠습니까?
	      </td>
	      </tr>
	      
	      <tr>
	      <td colspan="2">
	      <input type="checkbox" class="agree3">&nbsp email 수신에 동의하시겠습니까?
	      </td>
	      </tr>
	
	
	     <tr>
	     <td colspan="2" class="text-center">
	     <input type="submit" value="가입하기" class="btn-lg btn-info">
	     <input type="button" value="메인으로" class="btn-lg btn-warning">
	      </td>
	     </tr>   
	     
		   </table>
	  </div>
	</div>
</body>
</html>