<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>

<div class="container" style="padding-top:50px;">
<form action="${path}/mLogin">
        
   <c:import url="../nav.jsp"></c:import>
        <div class="col-md-4 col-md-offset-4" style="margin-top:10%;">
            <div class="panel panel-default">
                <div class="panel-heading">
                    개인 회원 로그인
                </div>
                <div class="panel-body">
                    <input type="text" class="form-control" placeholder="ID" name="mId" required="required" autofocus="autofocus">
                    <br>
                    <input type="password" class="form-control" placeholder="비밀번호" name="mPassword" required="required">
                    <br>
                    <input type="submit" class="btn btn-lg btn-success btn-block" value="로그인">
                    <br>
                        <a href="${path}/mIdfindForm">아이디 찾기 | </a>
                       <a href="${path}/mPassfindForm">비밀번호 찾기 | </a>
                       <a href="${path}/mJoinForm">회원가입</a>
                </div>
            </div>
        </div>
	
</form>
</div>
</body>
</html>