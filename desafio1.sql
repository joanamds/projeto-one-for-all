DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.signatures(
      sign_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      sign_name VARCHAR(50) NOT NULL,
      sign_value VARCHAR(50) NOT NULL
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
      PRIMARY KEY (user_id, artist_id),
      FOREIGN KEY (user_id) REFERENCES users (user_id),
      FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.album(
      album_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      album_name VARCHAR(200) NOT NULL, 
      artist_id INT NOT NULL, 
      release_year YEAR NOT NULL,
      FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.songs(
      song_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      song_name VARCHAR(200) NOT NULL, 
      album_id INT NOT NULL, 
      song_duration INT NOT NULL,
      FOREIGN KEY (album_id) REFERENCES album (album_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.history(
    history_date DATETIME NOT NULL, 
    user_id INT NOT NULL, 
    song_id INT NOT NULL,
    PRIMARY KEY (user_id, song_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (song_id) REFERENCES songs (song_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.signatures (sign_name, sign_value)
  VALUES
    ('gratuito', '0,00'),
    ('familiar', '7,99'),
    ('universitário', '5,99'),
    ('pessoal', '6,99');
  
  INSERT INTO SpotifyClone.artists (artist_name)
  VALUES
    ('Beyoncé'), 
    ('Queen'), 
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');
    
  INSERT INTO SpotifyClone.users (user_name, user_age, sign_id, sign_date)
  VALUES
    ('Barbara Liskov', 82, 1,	'2019-10-20'),
    ('Robert Cecil Martin', 58,	1, '2017-01-06'),
    ('Ada Lovelace', 37, 2,	'2017-12-30'),
    ('Martin Fowler',	46,	2, '2017-01-17'),
    ('Sandi Metz',58,	2, '2018-04-29'),
    ('Paulo Freire', 19, 3, '2018-02-14'),
    ('Bell Hooks',	26,	3, '2018-01-05'),
    ('Christopher Alexander',	85,	4,	'2019-06-05'),
    ('Judith Butler', 45,	4,	'2020-05-13'),
    ('Jorge Amado', 58,	4,	'2017-02-17');

  INSERT INTO SpotifyClone.following_artists (user_id, artist_id)
  VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (4, 4),
    (5, 5),
    (5, 6),
    (6, 1),
    (6, 6),
    (7, 6),
    (9, 3),
    (10, 2);

  INSERT INTO SpotifyClone.album(album_name, artist_id, release_year)
  VALUES
    ('Renaissance', 1, '2022'),
    ('Jazz', 2, '1978'),
    ('Hot Space', 2, '1982'),
    ('Falso Brilhante', 3, '1998'),
    ('Vento de Maio', 3, '2001'),
    ('QVVJFA?', 4, '2003'),
    ('Somewhere Far Beyond', 5, '2007'),
    ('I Put A Spell On You', 6, '2012');

  INSERT INTO SpotifyClone.songs(song_name, song_duration, album_id)
  VALUES
    ('BREAK MY SOUL', 279, 1),
    ('VIRGO’S GROOVE', 369, 1),
    ('ALIEN SUPERSTAR',	116, 1),
    ('Don’t Stop Me Now',	203, 2),
    ('Under Pressure',	152, 3),
    ('Como Nossos Pais',	105, 4),
    ('O Medo de Amar é o Medo de Ser Livre',	207, 5),
    ('Samba em Paris',	267, 6),
    ('The Bard’s Song',	244, 7),
    ('Feeling Good',	100, 8);

  INSERT INTO SpotifyClone.history(user_id, history_date, song_id)
  VALUES
    (1, '2022-02-28 10:45:55', 8),
    (1, '2020-05-02 05:30:35', 2),
    (1, '2020-03-06 11:22:33', 10),
    (2, '2022-08-05 08:05:17', 10),
    (2,'2020-01-02 07:40:33', 7),
    (3, '2020-11-13 16:55:13', 10),
    (3, '2020-12-05 18:38:30', 2),
    (4, '2021-08-15 17:10:10', 8),
    (5, '2022-01-09 01:44:33', 8),
    (5, '2020-08-06 15:23:43', 5),
    (6, '2017-01-24 00:31:17', 7),
    (6,'2017-10-12 12:35:20', 1),
    (7, '2011-12-15 22:30:49', 4),
    (8, '2012-03-17 14:56:41', 4),
    (9, '2022-02-24 21:14:22', 9),
    (10, '2015-12-13 08:30:22', 3);        