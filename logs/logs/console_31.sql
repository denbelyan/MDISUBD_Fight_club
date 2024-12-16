CREATE TABLE Payment (
    id integer primary key autoincrement ,
    total_cost int not null check(total_cost>0),
    order_id int not null ,
    FOREIGN KEY (order_id) references Orders(id)
);

CREATE INDEX idx_order on Payment(order_id);