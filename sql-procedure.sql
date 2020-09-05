CREATE 
DEFINER='root'@'localhost' 
PROCEDURE create_spam_users(amount INT, OUT last_name VARCHAR(20)) 
COMMENT 'This is comment for test' 
BEGIN 
SET @i = 0; 
SET @name = ROUND(RAND() * 100000, 0);
st_loop: LOOP 
INSERT INTO `site`.`users`(`name`, `password`) 
VALUE(@name, ROUND(RAND() * 10000000, 0)); 
SET @i = @i + 1; 
IF @i = much 
THEN 
SET last_name = @name; 
LEAVE st_loop; 
END IF; 
END LOOP; 
END!

