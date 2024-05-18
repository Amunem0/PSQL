DECLARE
   num1 NUMBER := &num1;
   num2 NUMBER := &num2;
   num3 NUMBER := &num3;
   max_num NUMBER;
BEGIN
   IF num1 >= num2 AND num1 >= num3 THEN
      max_num := num1;
   ELSIF num2 >= num1 AND num2 >= num3 THEN
      max_num := num2;
   ELSE
      max_num := num3;
   END IF;
   
   DBMS_OUTPUT.PUT_LINE('Maximum number: ' || max_num);
END;
/
