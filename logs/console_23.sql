CREATE TABLE Location(
    id integer primary key autoincrement ,
    Adress char(255) not null ,
    Name char(50) not null,
    seats_number int not null check(seats_number>0)
)