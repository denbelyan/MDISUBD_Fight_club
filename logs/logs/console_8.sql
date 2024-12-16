CREATE TABLE Action_logs(
    id integer primary key autoincrement ,
    Date date not null ,
    User_id int,
    Action_type_id int,
    FOREIGN KEY (User_id) references Users(id),
    FOREIGN KEY (Action_type_id) references Action_types(id)
);
