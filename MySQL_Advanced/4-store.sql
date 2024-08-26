-- SQL script that creates a trigger that decreases the quantity of an item after adding a new order.
-- Define the trigger

DELIMITER $$

CREATE TRIGGER decrease_item_quantity AFTER INSERT ON orders FOR EACH ROW BEGIN
    -- Update the items table
    UPDATE items SET quantity = quantity - NEW.quantity_ordered WHERE item_id = NEW.item_id; END $$

DELIMITER ;
