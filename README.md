# RPA - Automatización End-to-End de Productos

## Descripción General

Este proyecto implementa una solución de **automatización robótica de procesos (RPA)** utilizando PIX Robotics para ejecutar un flujo completo de negocio:

1. Consumo de datos desde una API pública
2. Almacenamiento estructurado en base de datos
3. Generación de reportes en Excel
4. Automatización web para envío de información
5. Captura de evidencia del proceso

El objetivo es simular un escenario real de automatización empresarial, garantizando **eficiencia, integridad de datos y trazabilidad**.

---

## Tecnologías Utilizadas

* PIX Robotics Studio
* SQL Server Express
* .NET (C# embebido en PIX)
* Excel Automation
* Selenium (automatización web)

---

##  Arquitectura del Proceso

```plaintext
API → Base de Datos → Excel → Formulario Web → Evidencia
```

---

##  Flujo de Ejecución

### 1. Consumo de API

* Se realiza una solicitud HTTP GET a FakeStore API
* Se obtiene información de productos en formato JSON

### 2. Almacenamiento en Base de Datos

* Base de datos: `RPA_productos`
* Tabla: `Productos`
* Se evita duplicidad validando el campo `id` antes de insertar

### 3. Generación de Reporte Excel

Se genera automáticamente un archivo:

```plaintext
/Reportes/Reporte_YYYY-MM-DD.xlsx
```

#### Contenido:

* **Hoja 1 - Productos**

  * Listado completo de productos

* **Hoja 2 - Resumen**

  * Total de productos
  * Precio promedio general
  * Precio promedio por categoría
  * Cantidad de productos por categoría

---

### 4. Automatización Web

El robot realiza:

* Apertura del formulario web
* Llenado automático de campos
* Subida del archivo Excel generado
* Envío del formulario

---

### 5. Evidencia del Proceso

Se genera automáticamente:

```plaintext
/Evidencias/formulario_confirmacion_YYYY-MM-DD.png
```

---

##  Ejecución del Proyecto

### 1. Base de datos

Ejecutar el script ubicado en:

```plaintext
/Database/script_bd.sql
```

---

### 2. Configuración

* Ajustar la cadena de conexión en el proyecto PIX
* Verificar rutas:

  * `/Reportes/`
  * `/Evidencias/`

---

### 3. Ejecución

Ejecutar:

```plaintext
processTransactionItem.pix
```

---

##  Formulario Web

👉 Enlace utilizado:

```
https://forms.gle/5PMFwnohWgLo2D5d9
```

---



## 🧠 Consideraciones Técnicas

* Se evita duplicidad mediante validación previa en SQL (`IF NOT EXISTS`)
* Se utilizó Selenium para mayor estabilidad en automatización web
* La carga de archivos se implementó mediante `SendKeys` debido a restricciones del navegador
* Se emplearon esperas controladas para asegurar sincronización del flujo

---

## 📊 Resultados

* Automatización completa de punta a punta
* Reducción de intervención manual
* Generación automática de reportes
* Evidencia verificable del proceso

---

## 👨‍💻 Autor

**Juan Felipe Vásquez**

---
