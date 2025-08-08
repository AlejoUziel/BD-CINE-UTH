package util;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import java.sql.Connection;
import java.sql.SQLException;

public class Conexion {

    private static HikariDataSource dataSource;

    static {
        try {
            HikariConfig config = new HikariConfig();
            config.setJdbcUrl("jdbc:mysql://localhost:3306/cine_db"); // este es el enlace apuntando a mi BD.
            config.setUsername("root"); // Este es mi usuario, es el predeterminado.
            config.setPassword("Alejo0001."); // Esta es mi contraseña espero no sea una brecha de vulnerabilidad :)
            config.setDriverClassName("com.mysql.cj.jdbc.Driver");

            // Opcionales
            config.setMaximumPoolSize(10);
            config.setMinimumIdle(2);
            config.setIdleTimeout(30000);
            config.setConnectionTimeout(30000);

            dataSource = new HikariDataSource(config);
            System.out.println("Conexión establecida correctamente.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Connection getConexion() throws SQLException {
        return dataSource.getConnection();
    }
}
