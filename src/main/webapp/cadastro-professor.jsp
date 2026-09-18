<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastro de Professor</title>
    <style>
        body { font-family: Arial, sans-serif; padding: 20px; background-color: #f9f9f9; }
        form { background: white; padding: 20px; border-radius: 8px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); max-width: 400px; }
        label { display: block; margin-top: 10px; font-weight: bold; }
        input, select { width: 100%; padding: 8px; margin-top: 5px; box-sizing: border-box; }
        button { margin-top: 15px; padding: 10px 15px; background: #0056b3; color: white; border: none; border-radius: 4px; cursor: pointer; }
        button:hover { background: #004494; }
        a { display: inline-block; margin-top: 15px; color: #0056b3; text-decoration: none; }
    </style>
</head>
<body>
    <h1>Cadastro de Professor</h1>
    <form action="professores" method="post">
        <label>Nome: </label>
        <input type="text" name="nome" maxlength="60" required>
        
        <label>Data de Nascimento: </label>
        <input type="date" name="data_nascimento" required>
        
        <label>Naturalidade: </label>
        <input type="text" name="naturalidade" maxlength="40">
        
        <label>Sexo: </label>
        <select name="sexo">
            <option value="M">Masculino</option>
            <option value="F">Feminino</option>
        </select>
        
        <label>Link Lattes: </label>
        <input type="url" name="link_lattes" maxlength="40">
        
        <button type="submit">Cadastrar Professor</button>
    </form>
    <a href="index.jsp">Voltar</a>
</body>
</html>
