select username, Fights.Date, Fights.base_ticket_cost, Fighters.Name, f2.Name, Location.Name
from Users
join Reviews on Users.id = Reviews.author_id
join Fights on Fights.id = Reviews.fight_id
join Fighters on Fights.fighter1_id = Fighters.id
join Fighters f2 on f2.id = Fights.fighter2_id
join Location on Location.id = Fights.Location_id
group by Username having count(Reviews.id) >0;