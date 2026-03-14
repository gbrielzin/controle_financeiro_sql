CREATE TABLE gastos_pessoais (
    id SERIAL PRIMARY KEY,
    data_gasto DATE NOT NULL,
    descricao VARCHAR(100),
    categoria VARCHAR(50),
    valor DECIMAL(10, 2) NOT NULL
);

INSERT INTO gastos_pessoais (data_gasto, descricao, categoria, valor) VALUES
('2024-01-10', 'Compra de Hardware', 'Tecnologia', 450.00),
('2024-01-12', 'Assinatura Software', 'Serviços', 89.90),
('2024-01-15', 'Manutenção PC', 'Tecnologia', 120.00),
('2024-01-20', 'Curso de SQL', 'Educação', 199.00),
('2024-02-05', 'Internet Fibra', 'Serviços', 110.00);

SELECT 
    categoria, 
    SUM(valor) AS total_por_categoria
FROM 
    gastos_pessoais
GROUP BY 
    categoria
ORDER BY 
    total_por_categoria DESC;
