package model;

public class Funcion {

    private int id;
    private int idPelicula;
    private int idSala;
    private String fechaHora;  // Reemplaza horario y precio

    // Constructor vacío
    public Funcion() {
    }

    // Constructor completo
    public Funcion(int id, int idPelicula, int idSala, String fechaHora) {
        this.id = id;
        this.idPelicula = idPelicula;
        this.idSala = idSala;
        this.fechaHora = fechaHora;
    }

    // Getters y Setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdPelicula() {
        return idPelicula;
    }

    public void setIdPelicula(int idPelicula) {
        this.idPelicula = idPelicula;
    }

    public int getIdSala() {
        return idSala;
    }

    public void setIdSala(int idSala) {
        this.idSala = idSala;
    }

    public String getFechaHora() {
        return fechaHora;
    }

    public void setFechaHora(String fechaHora) {
        this.fechaHora = fechaHora;
    }
}
