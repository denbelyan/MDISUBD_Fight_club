SELECT Reviews.Review_date, Users.Username, Users.balance
FROM Users
left outer JOIN Reviews on Users.id = author_id