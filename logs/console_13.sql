CREATE TABLE Fighters(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fight_id INT,
    Name CHAR(50) NOT NULL,
    Lastname CHAR(50) NOT NULL,
    Weight_class CHAR(30) NOT NULL ,
    Stats CHAR(20) not null ,
    FOREIGN KEY (fight_id) REFERENCES Fights(id)
);

CREATE INDEX idx_fight_id on Fighters(id)