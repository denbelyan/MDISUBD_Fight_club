select distinct(username), sum(Payment.total_cost) over (partition by Users.id)
from Users
join Reviews on Users.id = Reviews.author_id
join Fights on Fights.id = Reviews.fight_id
join Orders on Users.id = Orders.User_id
join Orders ords on Fights.id = ords.fight_id
join Payment on Orders.id = Payment.order_id
group by Username having count(Reviews.id)>0



