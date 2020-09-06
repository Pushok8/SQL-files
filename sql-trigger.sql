DELIMITER ! ;
CREATE TRIGGER `set_titles_automaticly` 
BEFORE INSERT ON `orders` 
FOR EACH ROW 
BEGIN 
	-- When adding an order, the customer name and product name are automatically added to the field.
	SET NEW.`customer_name` = (SELECT `name` FROM `users` WHERE `id` = NEW.`customer_id`); 
	SET NEW.`product_name` = (SELECT `product_name` FROM `Shop` WHERE `id` = NEW.`product_id`); 
END!
