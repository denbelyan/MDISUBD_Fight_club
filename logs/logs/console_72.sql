select
    distinct (Location.Name),
    count(Fights.id) over (partition by  Location.id)
    from Fights
join Location on Fights.Location_id = Location.id