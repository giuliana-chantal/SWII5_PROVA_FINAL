<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Prova 2 - Giuliana</title>
</head>
<body>

<ul>
	<li><a href="/prova2/"> Inicio</a></li>
	<li><a href="/prova2/Customer/list"> Cliente</a></li>
	<li><a href="/prova2/Salesman/list">Vendedor</a></li>
	<li><a href="/prova2/Order/list">Ordem de Venda</a></li>
</ul>

<section>
    <h2>Clientes</h2>

	<a href="/prova2/Customer/new">Novo Cliente</a>

    <table border="1">
        <thead>
        <tr>
            <th>ID do Cliente</th>
            <th>Nome do Cliente</th>
            <th>Cidade</th>
            <th>Classificação</th>
            <th>ID do Vendedor</th>
            <th colspan="2">Ações</th>
        </tr>
        </thead>
        <tbody>

        <c:if test="${listCustomer.size() > 0}">
            <c:forEach var="item" items="${listCustomer}">
                <tr>
                    <td><c:out value="${item.customerId}" /></td>
                    <td><c:out value="${item.custName}" /></td>
                    <td><c:out value="${item.city}" /></td>
                    <td><c:out value="${item.grade}" /></td>
                    <td><c:out value="${item.salesmanId}" /></td>
                    <td>
                        <a href="/prova2/Customer/delete?id=<c:out value='${item.customerId}' />">Remover</a>
                    </td>
                    <td>
                        <a href="/prova2/Customer/edit?id=<c:out value='${item.customerId}' />">Editar</a>
                    </td>
                </tr>
            </c:forEach>
        </c:if>

        <c:if test="${listCustomer.size() <= 0}">
            <tr>
                <td colspan="7">Sem clientes cadastrados</td>
            </tr>
        </c:if>
        </tbody>
    </table>

</section>

</body>
</html>
