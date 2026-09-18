<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Professores</title>
    <style>
        body { font-family: Arial, sans-serif; padding: 20px; }
        table { width: 100%; border-collapse: collapse; margin-top: 15px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); }
        th, td { border: 1px solid #ddd; padding: 10px; text-align: left; }
        th { background-color: #0056b3; color: white; }
        a { color: #d9534f; text-decoration: none; font-weight: bold; }
        .nav-link { color: #0056b3; margin-right: 15px; }
    </style>
</head>
<body>
    <h1>Professores cadastrados</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Nascimento</th>
            <th>Naturalidade</th>
            <th>Sexo</th>
            <th>Lattes</th>
            <th>Ação</th>
        </tr>
        <c:forEach var="prof" items="${professores}">
            <tr>
                <td>${prof.id}</td>
                <td>${prof.nome}</td>
                <td>${prof.dataNascimento}</td>
                <td>${prof.naturalidade}</td>
                <td>${prof.sexo}</td>
                <td>${prof.linkLattes}</td>
                <td><a href="professores?acao=excluir&id=${prof.id}">Excluir</a></td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a class="nav-link" href="cadastro-professor.jsp">+ Novo professor</a>
    <a class="nav-link" href="index.jsp">Início</a>
</body>
</html>

