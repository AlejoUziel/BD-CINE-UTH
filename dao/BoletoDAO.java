
package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Boleto;
import model.Funcion;
import util.Conexion;


import model.Boleto;

public interface BoletoDAO {
    void registrar(Boleto boleto);
}
