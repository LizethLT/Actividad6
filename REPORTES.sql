CREATE DATABASE REPORTES;

CREATE TABLE CLIENTE (
IDCLIENTE INT IDENTITY (1,1) NOT NULL,
NOMBRE NVARCHAR (50) NOT NULL,
APELLIDO NVARCHAR (50) NOT NULL,
TELEFONO NVARCHAR (50) NULL,
PRIMARY KEY (IDCLIENTE),
);

CREATE TABLE VENTA (
IDVENTA INT IDENTITY (1,1) NOT NULL,
FECHAVENTA DATETIME NOT NULL,
TOTALVENTA MONEY NOT NULL,
PRIMARY KEY (IDVENTA),
);


CREATE TABLE PRODUCTO (
IDPRODUCTO INT IDENTITY (1,1) NOT NULL,
NOMBREPRODUCTO NVARCHAR (50) NOT NULL,
PRECIOUNITARIO MONEY NOT NULL,
PRIMARY KEY (IDPRODUCTO),
);

CREATE TABLE DETALLEVENTA (
IDDETALLEVENTA INT IDENTITY (1,1) NOT NULL,
IDCLIENTE INT NOT NULL,
IDVENTA INT NOT NULL,
IDPRODUCTO INT NOT NULL,
CANTIDAD INT NOT NULL,
PRECIOUNITARIO MONEY NOT NULL,
TOTALDETALLE MONEY NOT NULL,
PRIMARY KEY (IDDETALLEVENTA),
FOREIGN KEY (IDCLIENTE) REFERENCES CLIENTE (IDCLIENTE),
FOREIGN KEY (IDVENTA) REFERENCES VENTA (IDVENTA),
FOREIGN KEY (IDPRODUCTO) REFERENCES PRODUCTO (IDPRODUCTO),
);



INSERT INTO CLIENTE (NOMBRE, APELLIDO, TELEFONO)
VALUES ('Mar�a', 'Mart�nez', '1112223333'),
       ('Juan', 'G�mez', '4445556666'),
       ('Luisa', 'Rodr�guez', '7778889999'),
       ('Pablo', 'L�pez', '1234567890'),
       ('Marta', 'Garc�a', '9876543210'),
       ('Roberto', 'S�nchez', '0000012212'),
       ('Eva', 'Torres', '1113335555'),
       ('Andr�s', 'Jim�nez', '9998887777'),
       ('Carla', 'Ruiz', '5554443333'),
       ('Daniel', 'Fern�ndez', '6667778888');

INSERT INTO VENTA (FECHAVENTA, TOTALVENTA)
VALUES ('2024-04-01', 150.00),
       ('2024-04-02', 200.50),
       ('2024-04-03', 75.25),
       ('2024-04-04', 300.00),
       ('2024-04-05', 120.75),
       ('2024-04-06', 80.50),
       ('2024-04-07', 90.25),
       ('2024-04-08', 175.00),
       ('2024-04-09', 250.50),
       ('2024-04-10', 60.75);

INSERT INTO VENTA (FECHAVENTA, TOTALVENTA)
VALUES ('2024-05-01', 200.00),
       ('2024-05-02', 180.75),
       ('2024-05-03', 90.50),
       ('2024-05-04', 400.25),
       ('2024-05-05', 150.00),
       ('2024-05-06', 100.50),
       ('2024-05-07', 110.25),
       ('2024-05-08', 225.00),
       ('2024-05-09', 300.50),
       ('2024-05-10', 80.75);


INSERT INTO DETALLEVENTA (IDCLIENTE, IDVENTA, IDPRODUCTO, CANTIDAD, PRECIOUNITARIO, TOTALDETALLE)
VALUES (1, 1, 1, 2, 25.00, 50.00),
       (2, 1, 2, 1, 35.50, 35.50),
       (1, 2, 3, 1, 50.75, 50.75),
       (3, 3, 1, 3, 25.00, 75.00),
       (4, 4, 4, 1, 15.00, 15.00),
       (5, 5, 5, 2, 10.25, 20.50),
       (6, 6, 6, 4, 8.50, 34.00),
       (7, 7, 7, 3, 5.75, 17.25),
       (8, 8, 8, 1, 20.00, 20.00),
       (9, 9, 9, 2, 30.50, 61.00);
