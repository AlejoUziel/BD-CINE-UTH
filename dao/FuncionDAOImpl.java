package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Funcion;
import util.Conexion;

public class FuncionDAOImpl implements FuncionDAO {

    @Override
    public void registrar(Funcion funcion) {
        String sql = "INSERT INTO funciones (pelicula_id, sala_id, fecha_hora) VALUES (?, ?, ?)";
        try (Connection conn = Conexion.getConexion();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, funcion.getIdPelicula());
            ps.setInt(2, funcion.getIdSala());
            ps.setString(3, funcion.getFechaHora());  // Asegúrate de tener este método en tu modelo
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void actualizar(Funcion funcion) {
        String sql = "UPDATE funciones SET pelicula_id=?, sala_id=?, fecha_hora=? WHERE id=?";
        try (Connection conn = Conexion.getConexion();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, funcion.getIdPelicula());
            ps.setInt(2, funcion.getIdSala());
            ps.setString(3, funcion.getFechaHora());
            ps.setInt(4, funcion.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void eliminar(int idFuncion) {
        String sql = "DELETE FROM funciones WHERE id=?";
        try (Connection conn = Conexion.getConexion();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, idFuncion);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Funcion> listar() {
        List<Funcion> lista = new ArrayList<>();
        String sql = "SELECT * FROM funciones";
        try (Connection conn = Conexion.getConexion();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Funcion f = new Funcion();
                f.setId(rs.getInt("id"));
                f.setIdPelicula(rs.getInt("pelicula_id"));
                f.setIdSala(rs.getInt("sala_id"));
                f.setFechaHora(rs.getString("fecha_hora"));
                lista.add(f);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }
}
