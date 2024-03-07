SET SERVEROUTPUT ON

DECLARE

    V_NUMERO NUMBER(5) := &DIGITE_UM_NUMERO;
    V_LIMITE NUMBER(5) := 10;
    V_RESULTADO NUMBER(5) := 0;
    V_NUM NUMBER(5) := 0;

BEGIN

    WHILE V_NUM <= V_LIMITE LOOP
    
        V_RESULTADO := V_NUMERO * V_NUM;
    
        DBMS_OUTPUT.PUT_LINE(V_NUMERO || ' X ' || V_NUM || ' = ' || V_RESULTADO);
        
        V_NUM := V_NUM + 1;
        
    END LOOP;

END;