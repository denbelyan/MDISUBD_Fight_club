CREATE TABLE Coupon(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Discount int NOT NULL CHECK (Discount >=0 and Discount<=100),
    Name Char(50) not null,
    User_id int,
    FOREIGN KEY (User_id) references Users(id)
);

CREATE INDEX idx_user_id on Coupon(User_id)