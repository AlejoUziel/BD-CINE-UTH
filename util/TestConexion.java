
package util;


import java.sql.Connection;
import java.sql.SQLException;

public class TestConexion {
    public static void main(String[] args) {
        try {
            Connection con = Conexion.getConexion();
            if (con != null && !con.isClosed()) {
                System.out.println("Conexión establecida correctamente.");
                con.close();
            } else {
                System.out.println("No se pudo establecer la conexión.");
            }
        } catch (SQLException e) {
            System.err.println(" Error al conectar: " + e.getMessage());
            e.printStackTrace();
        }
    }
}

