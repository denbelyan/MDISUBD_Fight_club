select Fights.Date,
       Fights.base_ticket_cost,
       count(Reviews.id) over (partition by Fights.id),
       Location.Name
       from Fights
join Reviews on Fights.id = Reviews.fight_id
join Location on Fights.Location_id = Location.id