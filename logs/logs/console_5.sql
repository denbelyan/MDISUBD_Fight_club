CREATE TABLE Deals (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    Fight_id int,
    User_id int,
    seats int not null CHECK (seats > 0),
    Total_cost int not null CHECK (Total_cost > 0),
    FOREIGN KEY (Fight_id) references Fights(id),
    FOREIGN KEY (User_id) references Users(id)
);

CREATE INDEX indx_fight_id on Deals(Fight_id);
CREATE INDEX indx_user_id on Deals(User_id);