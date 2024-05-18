DECLARE
   input_str VARCHAR2(100) := '&input_str';
   reversed_str VARCHAR2(100) := '';
BEGIN
   FOR i IN REVERSE 1..LENGTH(input_str) LOOP
      reversed_str := reversed_str || SUBSTR(input_str, i, 1);
   END LOOP;
   
   IF input_str = reversed_str THEN
      DBMS_OUTPUT.PUT_LINE(input_str || ' is a palindrome.');
   ELSE
      DBMS_OUTPUT.PUT_LINE(input_str || ' is not a palindrome.');
   END IF;
END;
/
