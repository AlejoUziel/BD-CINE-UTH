# 🎬 Sistema de Gestión de Cine - Proyecto de Base de Datos

Este proyecto consiste en el diseño de una base de datos relacional para un cine hondureño. El sistema permite gestionar películas, funciones, salas, boletos, promociones, ventas de snacks y más.

---

## Características principales

- Registro de películas, salas y funciones (2D y 3D).
- Clasificación por idioma: Español, Inglés, Subtituladas.
- Asientos numerados.
- Registro de clientes y empleados.
- Venta de boletos y productos (snacks, combos, bebidas).
- Descuentos y promociones:
  - 2x1 los **viernes y sábados**.
  - 60% de descuento para **estudiantes**.
- Soporte para pagos en efectivo y tarjeta.
- Funciones por departamento de Honduras y su ciudad principal.

---

## Modelo de Base de Datos

Incluye:
- Diagrama lógico y físico.
- Al menos **9 tablas**: `peliculas`, `funciones`, `salas`, `clientes`, `empleados`, `boletos`, `compras`, `productos`, `promociones`, etc.
- Llaves foráneas, índices, y relaciones normalizadas.
- Triggers, inserciones y consultas SQL avanzadas.

---

## Consultas destacadas

- Mostrar todas las películas.
- Funciones disponibles para una película.
- Promociones activas por día.
- Disponibilidad de asientos por función.
- Ventas por día / cliente / producto.

---

## Tecnologías utilizadas

- **MySQL** / **MySQL Workbench**
- **dbdiagram.io** (para diseño lógico)
- **VS Code** (edición de scripts)
- **Markdown** para documentación

---

## Cómo usar este proyecto

1. Clona el repositorio:
```bash
git clone https://github.com/AlejoUziel/BD-CINE-UTH
cd gestion-cine-db


