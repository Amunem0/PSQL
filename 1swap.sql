DECLARE
   num1 NUMBER := &num1;
   num2 NUMBER := &num2;
   temp NUMBER;
BEGIN
   DBMS_OUTPUT.PUT_LINE('Before swapping: num1 = ' || num1 || ', num2 = ' || num2);
   
   temp := num1;
   num1 := num2;
   num2 := temp;
   
   DBMS_OUTPUT.PUT_LINE('After swapping: num1 = ' || num1 || ', num2 = ' || num2);
END;
/

