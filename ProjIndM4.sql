CREATE TABLE `alunos` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `nascimento` int(6),
  `cpf` int(11),
  `endereco` varchar(100)
);

CREATE TABLE `cursos` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `area` varchar(255)
);

CREATE TABLE `materias` (
  `id` int PRIMARY KEY,
  `nome` varchar(100),
  `facilitador_id` int,
  `curso_id` int,
  `nota` decimal,
  `aluno_id` int
);

CREATE TABLE `facilitadores` (
  `id` int PRIMARY KEY,
  `nome` varchar(100),
  `cpf` int(11),
  `endereco` varchar(100),
  `turma_id` int
);

CREATE TABLE `turmas` (
  `id` int PRIMARY KEY,
  `materias_id` int,
  `aluno_id` int
);

ALTER TABLE `turmas` ADD FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`);

ALTER TABLE `materias` ADD FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`);

ALTER TABLE `materias` ADD FOREIGN KEY (`facilitador_id`) REFERENCES `facilitadores` (`id`);

ALTER TABLE `facilitadores` ADD FOREIGN KEY (`turma_id`) REFERENCES `turmas` (`id`);

ALTER TABLE `turmas` ADD FOREIGN KEY (`materias_id`) REFERENCES `materias` (`id`);
