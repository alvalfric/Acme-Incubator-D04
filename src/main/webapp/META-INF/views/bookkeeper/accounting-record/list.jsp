<%@page language="java"%>
<%@taglib prefix="jstl" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir ="/WEB-INF/tags"%>

<acme:list>
	<acme:list-column code="bookkeeper.accounting-record.list.label.title" path="title" width="80%" />
	<acme:list-column code="bookkeeper.accounting-record.list.label.creation" path="creation" width="20%" />
</acme:list>