package model;

public class Boleto {
    private int idFuncion;
    private int idAsiento;
    private String cliente;
    private double precio;
    private String metodoPago;
    private boolean esEstudiante;
    private String fecha;

    // Constructor
    public Boleto(int idFuncion, int idAsiento, String cliente, double precio,
                  String metodoPago, boolean esEstudiante, String fecha) {
        this.idFuncion = idFuncion;
        this.idAsiento = idAsiento;
        this.cliente = cliente;
        this.precio = precio;
        this.metodoPago = metodoPago;
        this.esEstudiante = esEstudiante;
        this.fecha = fecha;
    }

    // Getters y Setters
    public int getIdFuncion() { return idFuncion; }
    public int getIdAsiento() { return idAsiento; }
    public String getCliente() { return cliente; }
    public double getPrecio() { return precio; }
    public String getMetodoPago() { return metodoPago; }
    public boolean isEsEstudiante() { return esEstudiante; }
    public String getFecha() { return fecha; }
}
