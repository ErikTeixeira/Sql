SET SERVEROUTPUT ON

DECLARE
-- 11122233;
--NOVO NOME: ALEX
    V_NOME VARCHAR2(50) := 'ALEX';
    V_RM NUMBER(10) := 111222333;


BEGIN
    
    UPDATE ALUNO SET NOME = V_NOME WHERE RM = V_RM;
    
    DBMS_OUTPUT.PUT_LINE('ALUNO ATUALIZADO COM SUCESSO');
    
    COMMIT;

END;


