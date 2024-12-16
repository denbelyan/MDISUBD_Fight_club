create table Ticket(
    id integer primary key autoincrement,
    seat_num int not null check(seat_num>0),
    order_id int not null ,
    FOREIGN KEY (order_id) references Orders(id)
);

CREATE INDEX indx_order_id on Ticket(order_id)