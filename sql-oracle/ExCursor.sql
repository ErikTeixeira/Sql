CREATE TABLE PRODUTO_Cp(
    CODIGO NUMBER(4),
    CATEGORIA CHAR(1),
    VALOR NUMBER(4,2)
)

INSERT INTO PRODUTO_Cp VALUES (1001, 'A', 7.55);
INSERT INTO PRODUTO_Cp VALUES (1002, 'B', 5.95);
INSERT INTO PRODUTO_Cp VALUES (1003, 'C', 3.45);


SELECT * FROM PRODUTO_Cp;


SET SERVEROUTPUT ON

declare

	cursor c_PRODUTO_Cp is select * from PRODUTO_Cp;

	v_produto c_PRODUTO_Cp % rowtype;

    

begin
	
    
    open c_PRODUTO_Cp;
    
    loop
		fetch c_PRODUTO_Cp into v_produto;
        
		exit when c_PRODUTO_Cp%notfound;

		if v_produto.CATEGORIA = 'A' then
            v_produto.VALOR := v_produto.VALOR * 1.05;
        elsif v_produto.CATEGORIA = 'B' then
            v_produto.VALOR := v_produto.VALOR * 1.1;
        else 
            v_produto.VALOR := v_produto.VALOR * 1.15;
        end if;
		
        DBMS_OUTPUT.PUT_LINE(v_produto.VALOR);

	end loop;

	close c_PRODUTO_Cp;
    

end;
