<%--
  Created by IntelliJ IDEA.
  User: charles
  Date: 15/9/5
  Time: 下午1:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/include.jsp"%>
<jsp:include page="common/head.jsp">
    <jsp:param name="title" value="title_enterprise"/>
</jsp:include>
<fmt:bundle basename="site">
<div class="content container-fluid">
    <h2 class="titlebar"><fmt:message key="title_enterprise"/></h2>
    <div class="row">
        <div class="col-sm-2">
            <jsp:include page="common/sidebar.jsp"/>
        </div>
        <div class="col-sm-8" id="template">
        </div>
    </div>
</div>
<jsp:include page="common/foot.jsp"/>
<script type="text/javascript">
    $.get('/attach/${pageName}_${lang}.html', function(res){
        var match = res.match(/<body>[\n+\s+]+<div class="template container">([\d\D]*)<\/div>[\n+\s+]+<\/body>/);
        if(match) {
            $('#template').html(match[1]);
        }
    })
</script>
</fmt:bundle>
