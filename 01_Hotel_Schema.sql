-- HOTEL SCHEMA SETUP

-- Drop tables if already exist
DROP TABLE IF EXISTS booking_commercials;
DROP TABLE IF EXISTS bookings;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS users;

-- Create tables
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY,
    user_id INT,
    booking_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE items (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    rate DECIMAL(10,2)
);

CREATE TABLE booking_commercials (
    id INT PRIMARY KEY,
    booking_id INT,
    item_id INT,
    quantity INT,
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id),
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);

-- Insert data
INSERT INTO users VALUES 
(1, 'John'),
(2, 'Alice'),
(3, 'Bob');

INSERT INTO bookings VALUES 
(1, 1, '2021-11-10'),
(2, 2, '2021-11-15'),
(3, 3, '2021-12-01');

INSERT INTO items VALUES 
(1, 'Room Service', 500),
(2, 'Food', 300),
(3, 'Laundry', 200);

INSERT INTO booking_commercials VALUES
(1, 1, 1, 2),
(2, 1, 2, 1),
(3, 2, 2, 3),
(4, 3, 1, 1),
(5, 3, 3, 2);
