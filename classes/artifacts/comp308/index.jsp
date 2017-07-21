<%@ page import="javax.persistence.EntityManagerFactory" %>
<%@ page import="javax.persistence.Persistence" %>
<%@ page import="javax.persistence.EntityManager" %>
<%@ page import="java.util.List" %>
<%@ page import="model.CustomerEntity" %>
<%--

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Hello</title>
</head>
<body>
	<h1>Hello world</h1>
	<%
		EntityManagerFactory _emf = Persistence.createEntityManagerFactory("Resort303_COMP303_Final_Project");
		EntityManager _em = _emf.createEntityManager();
		List<CustomerEntity> a = _em.createQuery("select c from CustomerEntity c", CustomerEntity.class).getResultList();

		for (CustomerEntity c : a){
			System.out.println(c.getFullname());
		}

	%>
</body>
</html>
