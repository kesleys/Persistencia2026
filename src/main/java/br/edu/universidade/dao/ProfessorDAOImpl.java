package br.edu.universidade.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.edu.universidade.factory.ConnectionFactory;
import br.edu.universidade.model.Professor;

public class ProfessorDAOImpl implements ProfessorDAO {

    @Override
    public void inserir(Professor professor) {
        String sql = "INSERT INTO professor (nome, data_nascimento, naturalidade, sexo, link_lattes) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, professor.getNome());
            stmt.setDate(2, professor.getDataNascimento());
            stmt.setString(3, professor.getNaturalidade());
            stmt.setString(4, professor.getSexo());
            stmt.setString(5, professor.getLinkLattes());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Professor> listar() {
        List<Professor> professores = new ArrayList<>();
        String sql = "SELECT id, nome, data_nascimento, naturalidade, sexo, link_lattes FROM professor ORDER BY nome";
        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                Professor prof = new Professor(
                    rs.getInt("id"), rs.getString("nome"), rs.getDate("data_nascimento"),
                    rs.getString("naturalidade"), rs.getString("sexo"), rs.getString("link_lattes")
                );
                professores.add(prof);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return professores;
    }

    @Override
    public void excluir(int id) {
        String sql = "DELETE FROM professor WHERE id = ?";
        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
