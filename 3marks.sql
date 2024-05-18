DECLARE
   subject1_marks NUMBER := &subject1_marks;
   subject2_marks NUMBER := &subject2_marks;
   subject3_marks NUMBER := &subject3_marks;
   subject4_marks NUMBER := &subject4_marks;
   total_marks NUMBER;
   percentage NUMBER;
   grade VARCHAR2(10);
BEGIN
   total_marks := subject1_marks + subject2_marks + subject3_marks + subject4_marks;
   percentage := total_marks / 4;
   
   IF subject1_marks < 40 OR subject2_marks < 40 OR subject3_marks < 40 OR subject4_marks < 40 THEN
      grade := 'Fail';
   ELSIF percentage > 85 THEN
      grade := 'A';
   ELSIF percentage >= 75 THEN
      grade := 'B';
   ELSIF percentage >= 65 THEN
      grade := 'C';
   ELSE
      grade := 'D';
   END IF;
   
   DBMS_OUTPUT.PUT_LINE('Total Marks: ' || total_marks);
   DBMS_OUTPUT.PUT_LINE('Percentage: ' || percentage || '%');
   DBMS_OUTPUT.PUT_LINE('Grade: ' || grade);
END;
/
