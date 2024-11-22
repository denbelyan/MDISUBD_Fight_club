CREATE TABLE Orders (
    id integer primary key autoincrement ,
    persons_num int not null check(persons_num>0),
    fight_id int not null,
    User_id int not null,
    foreign key (fight_id) references Fights(id),
    foreign key (User_id) references Users(id)
);

CREATE INDEX indx_fight_id on Orders(id);
CREATE INDEX index_user_id on Orders(id);