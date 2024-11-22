CREATE TABLE Users(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Username CHAR(50) NOT NULL,
    Password CHAR(255) NOT NULL,
    Email CHAR(100) NOT NULL,
    Name CHAR(50),
    Lastname CHAR(50),
    PhoneNumber CHAR(15),
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES Roles(id)
);

CREATE INDEX idx_role_id on Users(role_id);