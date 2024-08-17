<%@ include file="header.jsp"%>

<div class="row" style="margin-left: 18%;margin-top: 2%;margin-right: 1%">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Reviews Table</h3>
              </div>
              <!-- ./card-header -->
              <div class="card-body">
                <table class="table table-bordered table-hover">
                  <thead>
		<tr>
			<th>Name</th>
			<th>Message</th>
			<th>Actions on Row</th>
		</tr>
		</thead>
        <tbody>
		<c:forEach items="${feedbacks}" var="feedback">
			<tr>
				<td><c:out value="${feedback.feedbackname }"/>
				<td><c:out value="${feedback.feedbacksubject}"/></td>
				<td><c:out value="${feedback.feedbackmessage}"/></td>
				</tr>
		</c:forEach>
	    </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
<%@ include file="footer.jsp"%>
	