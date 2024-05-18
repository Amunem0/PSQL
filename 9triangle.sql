CREATE TABLE areatri (
   ht NUMBER,
   bs NUMBER,
   area NUMBER
);

DECLARE
   base_start NUMBER := 3;
   base_end NUMBER := 9;
   height_start NUMBER := 3;
   height_end NUMBER := 9;
   area NUMBER;
BEGIN
   FOR base IN base_start..base_end LOOP
      FOR height IN height_start..height_end LOOP
         area := (base * height) / 2;
         INSERT INTO areatri (ht, bs, area) VALUES (height, base, area);
      END LOOP;
   END LOOP;
   
   COMMIT;
   DBMS_OUTPUT.PUT_LINE('Data inserted successfully into the "areatri" table.');
END;
/
