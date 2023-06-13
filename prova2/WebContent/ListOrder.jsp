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
    <h2>Ordens de compra</h2>

	<a href="/prova2/Order/new">nova ordem de venda</a>

    <table border="1">
        <thead>
        <tr>
            <th>Número da Ordem</th>
            <th>Valor da Compra</th>
            <th>Data da Ordem</th>
            <th>ID do Cliente</th>
            <th>ID do Vendedor</th>
            <th colspan="2">Ações</th>
        </tr>
        </thead>
        <tbody>

        <c:if test="${listOrders.size() > 0}">
            <c:forEach var="ordem" items="${listOrders}">
                <tr>
                    <td><c:out value="${ordem.getOrdNo()}" /></td>
                    <td><c:out value="${ordem.getPurchAmt()}" /></td>
                    <td><fmt:formatDate value="${ordem.getOrdDate()}" pattern="dd/MM/yyyy" /></td>
                    <td><c:out value="${ordem.getCustomerId()}" /></td>
                    <td><c:out value="${ordem.getSalesmanId()}" /></td>
                    <td>
                        <a href="/prova2/Order/delete?id=<c:out value='${ordem.getOrdNo()}' />">Remover</a>
                    </td>
                    <td>
                        <a href="/prova2/Order/edit?id=<c:out value='${ordem.getOrdNo()}' />">Editar</a>
                    </td>
                </tr>
            </c:forEach>
        </c:if>

        <c:if test="${listOrders.size() <= 0}">
            <tr>
                <td colspan="7">Sem ordens de venda cadastradas</td>
            </tr>
        </c:if>
        </tbody>
    </table>
</section>
</body>
</html>
