CREATE TABLE Reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    Date date not null ,
    fight_id int,
    author_id int,
    Text CHAR(255),
    Rating integer check (rating >=1 and rating <=5),
    FOREIGN KEY (fight_id) references fights(id),
    FOREIGN KEY (author_id) references Users(id)
);

CREATE INDEX index_fight_id on Reviews(fight_id);
CREATE INDEX idx_author_id on Reviews(author_id);
