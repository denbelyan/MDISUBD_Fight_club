CREATE TRIGGER calculate_total_cost_payment
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    INSERT INTO payment (order_id, total_cost)
    VALUES (
        NEW.id,
        (
            SELECT (f.base_ticket_cost * NEW.persons_num * (1 - r.discount/100))
            FROM fights f
            JOIN users u ON u.id = NEW.user_id
            JOIN roles r ON u.role_id = r.id
            WHERE f.id = NEW.fight_id
        )
    );
END;
