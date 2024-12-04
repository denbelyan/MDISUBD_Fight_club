update Fighters
set Weight_class = case
    when id%3=0 then 'lightweight'
    when id%3=1 then 'middleweight'
    when id%3=2 then'heavyweight'
end
where id is not null
