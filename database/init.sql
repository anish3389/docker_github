CREATE TABLE users (
  id INT AUTO_INCREMENT,
  name VARCHAR(255),
  email VARCHAR(255),
  PRIMARY KEY (id)
);

INSERT INTO users (name, email) VALUES
  ('John Doe', 'john@example.com'),
  ('Jane Doe', 'jane@example.com'),
  ('Bob Smith', 'bob@example.com');