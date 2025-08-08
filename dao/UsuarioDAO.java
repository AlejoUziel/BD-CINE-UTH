package dao;

import java.sql.*;
import model.Usuario;
import util.Conexion;

public class UsuarioDAO {

    public Usuario validarUsuario(String username, String password) {
        Usuario usuario = null;

        try (Connection con = Conexion.getConexion()) {
           String sql = "SELECT u.id, u.username, e.rol, u.empleado_id " +
             "FROM usuarios u " +
             "JOIN empleados e ON u.empleado_id = e.id " +
             "WHERE u.username = ? AND u.password = SHA2(?, 256)";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                usuario = new Usuario(
                    rs.getInt("id"),
                    rs.getString("username"),
                    rs.getString("rol"),
                    rs.getInt("empleado_id")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return usuario;
    }
}
