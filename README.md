# 🎬 Sistema de Gestión de Cine - Proyecto UTH

Este proyecto es un **Sistema de Gestión de Cine** desarrollado en **Java (Swing)** con conexión a **MySQL**, diseñado para la materia de **Base de Datos**.  
Permite administrar películas, salas, funciones, ventas de boletos y promociones, así como manejar información de clientes y empleados.



## Funcionalidades principales

- **Gestión de películas**:  
  - Registrar, editar, eliminar y listar películas.
  - Datos: título, género, idioma, duración, clasificación, estado.

- **Gestión de salas**:  
  - Registrar y administrar salas con número, tipo (2D/3D) y capacidad.

- **Gestión de funciones**:  
  - Asignar películas a salas con horarios y precios.
  - Visualizar funciones disponibles.

- **Venta de boletos**:  
  - Selección de película, sala, horario y asiento.
  - Métodos de pago: efectivo o tarjeta.
  - Descuentos automáticos:
    - **60% para estudiantes**.
    - **2x1 viernes y sábados**.

- **Promociones y descuentos**:
  - Administración y aplicación automática en las ventas.



##  Estructura del Proyecto

**Paquetes principales:**
- `model` → Clases de entidades (`Pelicula`, `Sala`, `Funcion`, `Boleto`, etc.).
- `dao` → Interfaces y clases DAO para conexión y consultas a MySQL.
- `util` → Clase `Conexion` para conexión JDBC.
- `ui` → Ventanas Swing para cada módulo.

**Ventanas implementadas:**
- `PanelPeliculas` → Gestión de películas.
- `PanelSalas` → Gestión de salas.
- `PanelFunciones` → Gestión de funciones.
- `PanelVentaBoletos` → Venta de boletos con descuentos.



## 🗄 Base de Datos

**Tablas principales:**
- `peliculas` → id, nombre, género, idioma, duración, clasificación, estado.
- `salas` → id, nombre, tipo, capacidad.
- `funciones` → id, id_pelicula, id_sala, horario, precio.
- `boletos` → id, cliente, id_pelicula, id_sala, horario, asiento, metodo_pago, es_estudiante, precio.
- `promociones` *(opcional)* → id, nombre, descripcion, dia_aplicacion, descuento.

**Relaciones:**
- Una **película** puede tener varias **funciones**.
- Una **sala** puede proyectar varias **funciones**.
- Un **boleto** está asociado a una función específica.



## 📋 Requisitos técnicos

- **Java 17** o superior.
- **MySQL 8.0** o superior.
- **NetBeans** o IDE compatible.
- Driver JDBC para MySQL.



## 📦 Instalación y uso

1. Clonar el repositorio:
```bash
git clone https://github.com/AlejoUziel/BD-CINE-UTH
