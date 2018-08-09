<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<% 
 response.setHeader("Cache-Control","no-cache"); 
 response.setHeader("Pragma","no-cache"); 
 response.setDateHeader("Expires",0); 
%>

<body class="hold-transition sidebar-mini">
	<div id="wrap" style="width: 960px; height: 630px; background: #EEEEEE; margin: 0px auto;">
		<section class="content-header">
			<h1>Timeline</h1>
		</section>
		<section class="content" style="overflow-y: scroll; overflow-x: hidden; height: 450px;">
			<div class="row">
				<div class="col-md-12">
					<ul class="timeline">
						<c:forEach var="sns" items="${snsList}">
							<li>
								<i class="fa fa-envelope bg-blue"></i>
								<div class="timeline-item">
									<span class="time"><i class="fa fa-clock-o"></i><fmt:formatDate pattern="yyyy.MM.dd HH:mm:ss"
										value="${sns.sns_date}" /></span>
									
									<h3 class="timeline-header"><a href="#">${sns.mem_name}[${sns.mem_rank}]</a></h3>

                					<div class="timeline-body">
                						${sns.sns_content}
                					</div>
                					<div class="timeline-footer">
                						<c:if test="${loginUser.mem_name == sns.mem_name}">
                							<button value="${sns.sns_no}" style="color: white;" class="btn btn-danger btn-sm deleteBtn">Delete</button>
                						</c:if>
                					</div>
                				</div>
                			</li>
                		</c:forEach>
                	</ul>
                </div>
			</div>
		</section>
		<section>
			<div style="height: 100px; position: relative;">
				<form action="list" method="post">
					<div style="position: absolute; left: 50px;">
						<textarea name="sns_content" style="height: 80px; width: 747px; float: left; resize: none; margin: 10px;"></textarea>
						<input type="submit" value="보내기" class="btn btn-block btn-default btn-lg"
							style="width: 120px; height: 80px; float: left; margin: 10px; margin-left: 0px; display: inline;" />
					</div>
				</form>
			</div>
		</section>
	</div>
	
	<form role="form" action="delete" method="post"></form>
	
	<!-- jQuery -->
	<script
		src="<%=request.getContextPath()%>/resources/plugins/jquery/jquery.min.js"></script>

	<script>
		var form = $('form[role="form"]');
		var input = $('<input>').attr({
			"name" : "sns_no",
			"type" : "hidden"
		});

		$('.deleteBtn').on('click', function(event) {
			if (confirm("정말 삭제하시겠습니까?") == true) {
				input.attr("value", $(this).attr('value'));
				form.append(input);
				form.submit();
			} else {
				return;
			}
		});
	</script>
</body>

	

	