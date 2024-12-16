SELECT Users.Username,
       Users.balance,
       COUNT(Reviews.id) OVER (PARTITION BY Users.id),
       fight_id
FROM Users
LEFT JOIN Reviews ON Users.id = Reviews.author_id;
