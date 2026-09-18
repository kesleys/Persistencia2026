package br.edu.universidade.servlet;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import br.edu.universidade.dao.ProfessorDAO;
import br.edu.universidade.dao.ProfessorDAOImpl;
import br.edu.universidade.model.Professor;

@WebServlet(name = "professores", urlPatterns = { "/professores" })
public class ProfessorServlet extends HttpServlet {
    private ProfessorDAO professorDAO;

    @Override
    public void init() throws ServletException {
        professorDAO = new ProfessorDAOImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String acao = request.getParameter("acao");
        if (acao != null && acao.equals("excluir")) {
            int id = Integer.parseInt(request.getParameter("id"));
            professorDAO.excluir(id);
            response.sendRedirect("professores");
            return;
        }
        List<Professor> professores = professorDAO.listar();
        request.setAttribute("professores", professores);
        request.getRequestDispatcher("lista-professores.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("nome");
        Date dataNascimento = Date.valueOf(request.getParameter("data_nascimento")); // Converte string do form para Date SQL
        String naturalidade = request.getParameter("naturalidade");
        String sexo = request.getParameter("sexo");
        String linkLattes = request.getParameter("link_lattes");
        
        Professor professor = new Professor(nome, dataNascimento, naturalidade, sexo, linkLattes);
        professorDAO.inserir(professor);
        response.sendRedirect("professores");
    }
}
