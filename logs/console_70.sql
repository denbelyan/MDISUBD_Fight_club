SELECT Users.Username, Reviews.Review_date, Users.balance
FROM Users
LEFT JOIN Reviews ON Users.id = Reviews.author_id
WHERE Reviews.Review_date IS NOT NULL

