CREATE TABLE Fighters(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fight_id INT,
    Name CHAR(50) NOT NULL,
    Lastname CHAR(50) NOT NULL,
    Weight_class CHAR(30),
    Status CHAR(20),
    FOREIGN KEY (fight_id) REFERENCES Fights(id)
);

CREATE INDEX idx_fight_id on Fighters(id)