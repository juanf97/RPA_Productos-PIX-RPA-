CREATE DATABASE RPA_productos;
GO

USE RPA_productos;
GO

CREATE TABLE Productos (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    price DECIMAL(10,2),
    category VARCHAR(100),
    description VARCHAR(MAX),
    fecha_insercion DATETIME DEFAULT GETDATE()
);


SELECT 1
SELECT COUNT(*) 
FROM Productos 
WHERE id = @id
SELECT COUNT(*) FROM Productos WHERE id = @id
SELECT COUNT(*) FROM Productos WHERE id = 1;

SELECT id, title, price, category, description FROM Productos

SELECT * FROM productos;