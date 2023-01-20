CREATE DEFINER=`ist176180`@`%` PROCEDURE `natJOIN`( IN tab1 VARCHAR(255) , tab2 VARCHAR(255))
BEGIN
	SET @t1 =CONCAT('
    SELECT * 
	FROM ', tab1,
	' NATURAL JOIN ', tab2);
    PREPARE stmt3 FROM @t1;
	EXECUTE stmt3;
	DEALLOCATE PREPARE stmt3;
END