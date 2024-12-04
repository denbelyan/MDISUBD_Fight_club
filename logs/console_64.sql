SELECT Users.Username, Reviews.Review_date
FROM Users
left join Reviews on Users.id = author_id