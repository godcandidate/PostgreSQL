CREATE TABLE CarCollection
(
    id SERIAL NOT NULL,
    make VARCHAR(20) NOT NULL,
    model VARCHAR(20) NOT NULL,
    price DECIMAL NOT NULL
);

--DROP TABLE CarCollection;

INSERT INTO CarCollection(make, model, price)
VALUES ('Aston Martin','Valhalla', 542189),
    ('Honda', 'Accord',	475112),
    ('Toyota', 'Vitz', 231056),
    ('Lamborghini', 'Aventador', 105487.55),
    ('Ferrari', '458 Italia', 478000.56),
    ('Aston Martin', 'DBS', 785100.00),
    ('McLaren',	'720S',	450000.00),
    ('Honda','Civic', 120000.55),
    ('Toyota', 'Yaris', 452000.33),
    ('Mercedes', 'Maybach', 454545.45);


--Question 1 number of items in database
SELECT COUNT(*) FROM CarCollection;

--Question 2 average price
SELECT AVG(price) AS average_price FROM CarCollection;

--Question 3 the most expensive car
SELECT MAX(price) AS expensive_car FROM CarCollection;
SELECT * FROM CarCollection WHERE price=785100;

--Question 4 the most affordable car
SELECT MIN(price) AS affordable_car FROM CarCollection;
SELECT * FROM CarCollection WHERE price=105487.55;

--Question 4 the total value of all cars
SELECT SUM(price) AS total_price FROM CarCollection;

--Question 4 the total value of all cars
SELECT * FROM CarCollection ORDER BY price DESC;



