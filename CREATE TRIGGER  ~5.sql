---CREATE A TRIGGER TO STOP USER FROM UPDATING THE TABLE DURING WEEKENDS------
CREATE OR REPLACE TRIGGER WEEKDAYS_ 
BEFORE UPDATE OF EMAIL_ADDRESS,FIRST_NAME,LAST_NAME,POSTAL_CODE,ADDRESS,TEL_PHONE ON CARCUST 
BEGIN
  if(TO_CHAR (SYSDATE,'DY')IN ('SAT', 'SUN')) THEN
  RAISE_APPLICATION_ERROR(-20506, 'You may only change date normal business hours.');
  END IF;
END;