<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Aluno</title>
</head>
<body>
    <h1>Cadastro de Aluno</h1>
    <form action="alunos" method="post">
        <label>Nome: </label>
        <input type="text" name="nome">
        <br><br>
        <label>E-mail:</label>
        <input type="email" name="email">
        <br><br>
        <label>Curso:</label>
        <input type="text" name="curso">
        <br><br>
        <button type="submit">Cadastrar</button>
    </form>
    <br>
    <a href="index.jsp">Voltar</a>
</body>
</html>
