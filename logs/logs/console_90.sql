CREATE TRIGGER deduct_balance
AFTER INSERT ON services
FOR EACH ROW
BEGIN
    UPDATE users
    SET balance = balance - NEW.cost
    WHERE id = NEW.user_id AND balance >= NEW.cost;
END;
