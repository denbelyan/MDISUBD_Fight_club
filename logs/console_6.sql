CREATE TABLE Coupon(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Discount int NOT NULL CHECK (Discount >=0 and Discount<=100),
    Name Char(50),
    User_id int,
    FOREIGN KEY (User_id) references Users(id)
);
