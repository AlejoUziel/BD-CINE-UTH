
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Boleto;

public class BoletosDAO {
    private Connection connection;

    public BoletosDAO(Connection connection) {
        this.connection = connection;
    }

    public boolean insertarBoleto(Boleto boleto) {
        String sql = "INSERT INTO boletos (id_funcion, id_asiento, cliente, precio, metodo_pago, es_estudiante, fecha) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, boleto.getIdFuncion());
            stmt.setInt(2, boleto.getIdAsiento());
            stmt.setString(3, boleto.getCliente());
            stmt.setDouble(4, boleto.getPrecio());
            stmt.setString(5, boleto.getMetodoPago());
            stmt.setBoolean(6, boleto.isEsEstudiante());
            stmt.setString(7, boleto.getFecha());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean marcarAsientoComoOcupado(int idAsiento) {
        String sql = "UPDATE asientos SET disponible = false WHERE id_asiento = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, idAsiento);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
