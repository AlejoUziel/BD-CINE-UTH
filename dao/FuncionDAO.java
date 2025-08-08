
package dao;

import java.util.List;
import model.Funcion;

public interface FuncionDAO {
    void registrar(Funcion funcion);
    void actualizar(Funcion funcion);
    void eliminar(int idFuncion);
    List<Funcion> listar();
}
