<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">
	<a href="#" class="btn btn-warning">수정</a>
	<button id="deleteBtn" class="btn btn-danger" onclick="deleteById(${boardEntity.id})">삭제</button>

	<script>
         	function deleteById(id){ // board.id 자바스크립트는 타입 필요 없다.
         		// 비동기 함수 호출 -> 비동기 잘 처리하는 방법??????		
         		fetch("http://localhost:8000/board/"+id, { // fetch : http 요청 함수 (axios, ajax...) 
									         		// http://localhost:8000 -> 생략가능
         			method : "DELETE"
         		});  
         	}
         	
         </script>

	<br />
	<br />
	<div>
		글 번호 : ${boardEntity.id}</span> 작성자 : <span><i>${boardEntity.user.username}</i></span>
	</div>
	<br />
	<div>
		<h3>${boardEntity.title}</h3>
	</div>
	<hr />
	<div>
		<div>${boardEntity.content}</div>
	</div>
	<hr />

	<div class="card">
		<form>
			<div class="card-body">
				<textarea id="reply-content" class="form-control" rows="1"></textarea>
			</div>
			<div class="card-footer">
				<button type="button" id="btn-reply-save" class="btn btn-primary">등록</button>
			</div>
		</form>
	</div>
	<br />

	<div class="card">
		<div class="card-header">
			<b>댓글 리스트</b>
		</div>
		<ul id="reply-box" class="list-group">
			<li id="reply-1"
				class="list-group-item d-flex justify-content-between">
				<div>댓글입니다</div>
				<div class="d-flex">
					<div class="font-italic">작성자 : 홍길동 &nbsp;</div>
					<button class="badge">삭제</button>
				</div>
			</li>
		</ul>
	</div>
	<br />
</div>

<%@ include file="../layout/footer.jsp"%>