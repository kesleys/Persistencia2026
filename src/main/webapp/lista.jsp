<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alunos</title>
</head>
<body>
    <h1>Alunos cadastrados</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>E-mail</th>
            <th>Curso</th>
            <th>Ação</th>
        </tr>
        <c:forEach var="aluno" items="${alunos}">
            <tr>
                <td>${aluno.id}</td>
                <td>${aluno.nome}</td>
                <td>${aluno.email}</td>
                <td>${aluno.curso}</td>
                <td><a href="alunos?acao=excluir&id=${aluno.id}">Excluir</a></td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="cadastro.jsp"> Novo aluno</a>
    <br><br>
    <a href="index.jsp"> Início </a>
</body>
</html>

