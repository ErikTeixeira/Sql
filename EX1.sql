SET SERVEROUTPUT ON

DECLARE

    V_NUMERO NUMBER(5) := &DIGITE_UM_NUMERO;
    V_CONTADOR_PAR NUMBER(5) := 0;
     V_CONTADOR_IMPAR NUMBER(5) := 0;

BEGIN

     FOR I IN 1..V_NUMERO LOOP
        
        IF MOD(I, 2) = 0 THEN
            
            V_CONTADOR_PAR := V_CONTADOR_PAR + 1;
        
        ELSE 
            V_CONTADOR_IMPAR := V_CONTADOR_PAR + 1;
        
        END IF;
        
    
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('QUANTIDADE DE NUMEROS PARES -->' || V_CONTADOR_PAR);
    DBMS_OUTPUT.PUT_LINE('QUANTIDADE DE NUMEROS IMPARES -->' || V_CONTADOR_IMPAR);

END;