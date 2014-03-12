<%@ tag import="com.jv391.models.Beer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:forEach var="eachBeer" items="<%= Beer.beers %>">
	<tr>
		<td>${eachBeer.name}</td>
		<td>${eachBeer.color}</td>
		<td>
			<fmt:formatDate type="date" timeStyle="long" value="${eachBeer.date}" />
        </td>
		<td>${eachBeer.rating}</td>
	</tr>
</c:forEach>