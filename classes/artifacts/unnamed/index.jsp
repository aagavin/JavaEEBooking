<%@ page import="javax.persistence.EntityManagerFactory" %>
<%@ page import="javax.persistence.Persistence" %>
<%@ page import="javax.persistence.EntityManager" %>
<%@ page import="model.Customer" %>
<%@ page import="java.util.List" %>
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
		List<Customer> a=  _em.createQuery("select c from Customer c", Customer.class).getResultList();

		for (Customer c : a){
		  c.getFullname();
		}

		System.out.println("TEST");
	%>
</body>
</html>
