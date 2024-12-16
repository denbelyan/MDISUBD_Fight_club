SELECT Users.Username, COUNT(Reviews.id) AS Review_Count, AVG(Users.balance) AS Average_Balance
FROM Users
LEFT OUTER JOIN Reviews ON Users.id = Reviews.author_id
GROUP BY Users.Username;
