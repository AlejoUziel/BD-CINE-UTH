package model;

public class Usuario {
    private int id;
    private String username;
    private String rol;
    private int empleadoId;

    public Usuario(int id, String username, String rol, int empleadoId) {
        this.id = id;
        this.username = username;
        this.rol = rol;
        this.empleadoId = empleadoId;
    }

    public int getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getRol() {
        return rol;
    }

    public int getEmpleadoId() {
        return empleadoId;
    }
}
