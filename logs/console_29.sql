CREATE TABLE Fights (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Date DATE NOT NULL,
    Status CHAR(20),
    Description char(255),
    base_ticket_cost int not null check(base_ticket_cost>0),
    Location_id int not null,
    fighter1_id int not null,
    fighter2_id int not null,
    FOREIGN KEY (Location_id) REFERENCES Location(id),
    FOREIGN KEY (fighter1_id) REFERENCES Fighters(id),
    FOREIGN KEY (fighter2_id) REFERENCES Fighters(id)
);

CREATE INDEX index_location_id on Fights(Location_id);
CREATE INDEX index_fighter1_id on Fights(fighter1_id);
CREATE INDEX index_fighter2_id on Fights(fighter2_id);