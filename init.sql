CREATE TABLE IF NOT EXISTS usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO usuarios (nome, email)
VALUES 
  ('Ana Silva', 'ana.silva@example.com'),
  ('Carlos Souza', 'carlos.souza@example.com'),
  ('Maria Oliveira', 'maria.oliveira@example.com');

CREATE TABLE IF NOT EXISTS transacoes (
    id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES usuarios(id),
    valor NUMERIC(10, 2),
    status VARCHAR(20),
    data_transacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO transacoes (usuario_id, valor, status)
VALUES
  (1, 250.00, 'aprovado'),
  (2, 89.90, 'pendente'),
  (3, 45.50, 'recusado'),
  (1, 120.75, 'aprovado');