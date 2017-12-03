------CREATE A FUNCTION THAT SHOWS THE CAR TYPE WITH THE INPUT OF THE MODEL ID
CREATE OR REPLACE FUNCTION GET_MODEL_NAME 
(
  MO IN VARCHAR2 
) RETURN VARCHAR2 AS 
VMODEL_TYPE VARCHAR2(25);
BEGIN
SELECT MODEL_TYPE INTO VMODEL_TYPE FROM CARMODEL
WHERE MODEL_ID = MO;
  RETURN VMODEL_TYPE ;
END GET_MODEL_NAME;

SELECT GET_MODEL_NAME ('85') FROM DUAL;