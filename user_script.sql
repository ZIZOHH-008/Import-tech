CREATE USER 'Parra_usuario1'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'Parra_usuario2'@'localhost' IDENTIFIED BY '5678';

GRANT CREATE, INSERT, SELECT, UPDATE ON import_tech.* TO 'Parra_usuario1'@'localhost';
GRANT ALL PRIVILEGES ON * . * To 'Parra_usuario2'@'localhost';
FLUSH PRIVILEGES;

