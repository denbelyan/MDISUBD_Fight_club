CREATE TABLE Services(
    id INTEGER primary key AUTOINCREMENT ,
    Description char(255),
    Cost int not null check(cost>0),
    User_id int,
    FOREIGN KEY (User_id) references Users(id)
)
