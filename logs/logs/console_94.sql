CREATE TRIGGER check_balance_before_insert
BEFORE INSERT ON services
FOR EACH ROW
BEGIN
    SELECT
    CASE
        WHEN (SELECT balance FROM users WHERE id = NEW.user_id) < NEW.cost
        THEN
            RAISE(ABORT, 'Недостаточно средств на балансе для заказа услуги.')
    END;
END;
