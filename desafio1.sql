DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.signatures(
      sign_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      sign_name VARCHAR(50) NOT NULL,
      sign_value FLOAT NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.artists(
      artist_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      artist_name VARCHAR(200) NOT NULL
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.users(
      user_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      user_name VARCHAR(200) NOT NULL,
      user_age INT NOT NULL,
      sign_date DATE NOT NULL,
      sign_id INT NOT NULL, 
      FOREIGN KEY (sign_id) REFERENCES signatures (sign_id)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.following_artists(
      user_id INT NOT NULL,
      artist_id INT NOT NULL, 
      FOREIGN KEY (user_id) REFERENCES users (user_id),
      FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
  ) engine = InnoDB;

  -- INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
  -- VALUES
  --   ('exemplo de dados 1', 'exemplo de dados A'),
  --   ('exemplo de dados 2', 'exemplo de dados B'),
  --   ('exemplo de dados 3', 'exemplo de dados C');

  -- INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
  -- VALUES
  --   ('exemplo de dados 1', 'exemplo de dados X'),
  --   ('exemplo de dados 2', 'exemplo de dados Y');