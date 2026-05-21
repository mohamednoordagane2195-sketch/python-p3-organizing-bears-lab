CREATE TABLE bears (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  species VARCHAR(255) NOT NULL,
  age INTEGER NOT NULL
);

INSERT INTO bears (name, species, age) VALUES
('Yogi', 'Grizzly', 10),
('Baloo', 'Sloth Bear', 15),
('Paddington', 'Spectacled Bear', 5);
CREATE TABLE honey (
  id SERIAL PRIMARY KEY,
  bear_id INTEGER REFERENCES bears(id),
  type VARCHAR(255) NOT NULL,
  quantity INTEGER NOT NULL
);

INSERT INTO honey (bear_id, type, quantity) VALUES
(1, 'Wildflower', 20),
(2, 'Clover', 15),
(3, 'Manuka', 10);

CREATE TABLE hives (
  id SERIAL PRIMARY KEY,
  location VARCHAR(255) NOT NULL,
  capacity INTEGER NOT NULL
);
INSERT INTO hives (location, capacity) VALUES
('Forest', 100),
('Meadow', 150),
('Garden', 200);
CREATE TABLE bear_hives (
  bear_id INTEGER REFERENCES bears(id),
  hive_id INTEGER REFERENCES hives(id),
  PRIMARY KEY (bear_id, hive_id)
);
INSERT INTO bear_hives (bear_id, hive_id) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3);     

