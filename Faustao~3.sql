SET SERVEROUTPUT ON

DECLARE

    V_RM NUMBER(10) := 444555666;

BEGIN

    DELETE FROM ALUNO WHERE RM = V_RM;
    
    DBMS_OUTPUT.PUT_LINE('ALUNO ATUALIZADO COM SUCESSO');
    
    COMMIT;

END;


SELECT * FROM ALUNO;