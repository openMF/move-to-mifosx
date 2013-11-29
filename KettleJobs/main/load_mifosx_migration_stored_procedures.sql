DROP PROCEDURE IF EXISTS `addLoanCycleCounter`; 
DELIMITER //  
CREATE PROCEDURE `addLoanCycleCounter` ()
LANGUAGE SQL
COMMENT 'Genernates loan cycle counter'
BEGIN
DECLARE acctId , xclientId, xprodId , clientId, prodId , lastRecord , lCounter, lpCounter INT;
DECLARE cur1 CURSOR FOR SELECT ml.account_no , ml.client_id , ml.product_id FROM m_loan ml order by ml.client_id , ml.product_id;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET lastRecord = 1;
SET lastRecord = 0;
SET lCounter = 1 ;
SET lpCounter = 1 ;
SET xclientId = -1;
SET xprodId = -1;
OPEN cur1;
WHILE lastRecord = 0 DO
          FETCH cur1 INTO acctId , clientId , prodId;
      IF lastRecord = 0 THEN
            IF xclientId = clientId THEN
            SET lCounter = lCounter + 1;
            UPDATE m_loan mln SET mln.loan_counter = lCounter WHERE  mln.account_no = acctId;
            IF xprodId = prodId THEN
              SET lpCounter = lpCounter + 1;
              UPDATE m_loan mln SET mln.loan_product_counter = lpCounter WHERE  mln.account_no = acctId;            
            ELSE
            SET lpCounter = 1;
            UPDATE m_loan mln SET mln.loan_product_counter = lpCounter WHERE  mln.account_no = acctId;            
            END IF;
        ELSE
          SET lCounter = 1;
          SET lpCounter = 1;
            UPDATE m_loan mln SET mln.loan_counter = lCounter WHERE  mln.account_no = acctId;
            UPDATE m_loan mln SET mln.loan_product_counter = lpCounter WHERE  mln.account_no = acctId;
           END IF;
      END IF;  
      SET xclientId = clientId;
      SET xprodId = prodId;
END WHILE;
CLOSE cur1;
END