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
    <h2>Vendedor</h2>
    
    
    <a href="/prova2/Salesman/new">Novo Vendedor</a>

    <table border="1">
        <thead>
        <tr>
            <th>ID do Vendedor</th>
            <th>Nome do Vendedor</th>
            <th>Cidade</th>
            <th>Comissão</th>
            <th colspan="2">Ações</th>
        </tr>
        </thead>
        <tbody>

        <c:if test="${listSalesman.size() > 0}">
            <c:forEach var="item" items="${listSalesman}">
                <tr>
                    <td><c:out value="${item.getSalesmanId()}" /></td>
                    <td><c:out value="${item.getName()}" /></td>
                    <td><c:out value="${item.getCity()}" /></td>
                    <td><c:out value="${item.getCommission()}" /></td>
                    <td>
                        <a href="/prova2/Salesman/delete?id=<c:out value='${item.getSalesmanId()}' />">Remover</a>
                    </td>
                    <td>
                        <a href="/prova2/Salesman/edit?id=<c:out value='${item.getSalesmanId()}' />">Editar</a>
                    </td>
                </tr>
            </c:forEach>
        </c:if>

        <c:if test="${listSalesman.size() <= 0}">
            <tr>
                <td colspan="6">Sem vendedores cadastrados</td>
            </tr>
        </c:if>
        </tbody>
    </table>
</section>

</body>
</html>
