DECLARE
   n NUMBER := &n;
   s NUMBER := 0;
   factorial NUMBER := 1;
BEGIN
   FOR i IN 1..n LOOP
      factorial := factorial * i;
      s := s + (i / factorial);
   END LOOP;

   DBMS_OUTPUT.PUT_LINE('Sum of the series: ' || s);
END;
/
