DECLARE
   num NUMBER := &num;
   factorial NUMBER := 1;
BEGIN
   IF num < 0 THEN
      DBMS_OUTPUT.PUT_LINE('Factorial is not defined for negative numbers.');
   ELSE
      FOR i IN 1..num LOOP
         factorial := factorial * i;
      END LOOP;
      
      DBMS_OUTPUT.PUT_LINE('Factorial of ' || num || ' is ' || factorial);
   END IF;
END;
/
