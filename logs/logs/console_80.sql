select Users.Username
from Users
join Reviews on Users.id = Reviews.author_id
join Fights on Fights.id = Reviews.fight_id
join Orders on Users.id = Orders.User_id
join Orders f on Orders.id = Fights.id
join Payment on Payment.id = Orders.id
group by Username having sum(Reviews.id) > 0