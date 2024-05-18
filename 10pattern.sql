DECLARE  
           n INTEGER;  
           i INTEGER;  
           j INTEGER;
    
          BEGIN  
    
           n:=&n;  
        FOR i IN 1..n LOOP  
        FOR j IN 1..n-i+1 LOOP  
        dbms_output.put((n-i+1));  
   
   
        END LOOP;  
          DBMS_OUTPUT.NEW_LINE;  
         END LOOP;  
         END;  
         /  