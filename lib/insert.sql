INSERT INTO bears (name, species, age) VALUES
('Yogi', 'Grizzly', 10),
('Baloo', 'Sloth Bear', 15),
('Paddington', 'Spectacled Bear', 5);
INSERT INTO honey (bear_id, type, quantity) VALUES
(1, 'Wildflower', 20),
(2, 'Clover', 15),
(3, 'Manuka', 10);
INSERT INTO hives (location, capacity) VALUES
('Forest', 100),
('Meadow', 150),('Garden', 200);
INSERT INTO bear_hives (bear_id, hive_id) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3);
