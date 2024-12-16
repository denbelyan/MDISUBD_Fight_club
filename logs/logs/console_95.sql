CREATE TRIGGER check_fight_date_before_insert
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
    SELECT
    CASE
        WHEN (SELECT Date FROM fights WHERE id = NEW.fight_id) < DATE('now')
        THEN
            RAISE(ABORT, 'Нельзя заказать бой с датой, меньшей текущей.')
    END;
END;
