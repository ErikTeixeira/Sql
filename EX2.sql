SET SERVEROUTPUT ON

DECLARE

    V_CONTADOR NUMBER(5) := 1;
    V_LIMITE NUMBER(5) := 10;

BEGIN

    WHILE V_CONTADOR <= V_LIMITE LOOP
    
        DBMS_OUTPUT.PUT_LINE(V_CONTADOR);
        
        V_CONTADOR := V_CONTADOR + 1;
        
    END LOOP;

END;