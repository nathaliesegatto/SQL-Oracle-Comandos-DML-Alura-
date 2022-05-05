-- Estou alterando a tabela de vendas (filha) , adicionando uma restri��o (constraint),
-- restri��o � chave estrangeira ligada com a tabela clientes pelo cpf.
ALTER TABLE TABELA_DE_VENDAS  
ADD CONSTRAINT FK_CLIENTES
FOREIGN KEY (CPF)
REFERENCES CLIENTES (CPF); 


ALTER TABLE TABELA_DE_VENDAS  
ADD CONSTRAINT FK_VENDEDORES 
FOREIGN KEY (MATRICULA)
REFERENCES VENDEDORES (MATRICULA);

-- FK - PRODUTOS X ITENS_NOTA (CODIGO)
ALTER TABLE ITENS_NOTAS_FISCAIS  
ADD CONSTRAINT FK_PRODUTOS 
FOREIGN KEY (CODIGO)
REFERENCES PRODUTOS (CODIGO);

-- FK - NOTAS X ITENS_NOTA (NUMERO)
ALTER TABLE ITENS_NOTAS_FISCAIS  
ADD CONSTRAINT FK_NOTAS 
FOREIGN KEY (NUMERO)
REFERENCES NOTAS (NUMERO);