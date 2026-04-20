-- Teams
INSERT INTO teams VALUES (1, 'Knights',  'New York');
INSERT INTO teams VALUES (2, 'Rebels',   'Boston');
INSERT INTO teams VALUES (3, 'Storm',    'Chicago');
INSERT INTO teams VALUES (4, 'Stars',    'Los Angeles');

-- Seasons (2023 won by Boston; 2024 in progress)
INSERT INTO seasons VALUES (2023, 2);
INSERT INTO seasons VALUES (2024, NULL);

-- Players — New York Knights
INSERT INTO players VALUES (1,  1, 'Marcus Hale',    0.291, 0.198, 'SP');
INSERT INTO players VALUES (2,  1, 'Derek Rowe',     0.268, 0.221, 'RP');
INSERT INTO players VALUES (3,  1, 'Carlos Vega',    0.312, 0.175, '1B');
INSERT INTO players VALUES (4,  1, 'Tony Marsh',     0.244, 0.260, 'CF');

-- Players — Boston Rebels
INSERT INTO players VALUES (5,  2, 'Owen Pierce',    0.330, 0.145, 'SP');
INSERT INTO players VALUES (6,  2, 'Liam Nguyen',    0.278, 0.233, 'RP');
INSERT INTO players VALUES (7,  2, 'Sam Doyle',      0.299, 0.190, '3B');
INSERT INTO players VALUES (8,  2, 'Eric Tanner',    0.255, 0.275, 'RF');

-- Players — Chicago Storm
INSERT INTO players VALUES (9,  3, 'Jake Fuller',    0.241, 0.310, 'SP');
INSERT INTO players VALUES (10, 3, 'Ray Kimura',     0.275, 0.205, 'RP');
INSERT INTO players VALUES (11, 3, 'Andre Brooks',   0.308, 0.160, 'SS');
INSERT INTO players VALUES (12, 3, 'Pete Larson',    0.233, 0.290, 'LF');

-- Players — Los Angeles Stars
INSERT INTO players VALUES (13, 4, 'Diego Reyes',    0.318, 0.170, 'SP');
INSERT INTO players VALUES (14, 4, 'Noah Castillo',  0.265, 0.245, 'RP');
INSERT INTO players VALUES (15, 4, 'Will Santos',    0.295, 0.185, '2B');
INSERT INTO players VALUES (16, 4, 'Finn Harper',    0.248, 0.268, 'C');

-- Games
INSERT INTO games VALUES (1, 2023, 2, 1, '2023-07-15'); -- Boston (home) vs New York
INSERT INTO games VALUES (2, 2023, 3, 4, '2023-09-02'); -- Chicago (home) vs Los Angeles
INSERT INTO games VALUES (3, 2024, 1, 2, '2024-04-05'); -- New York (home) vs Boston
INSERT INTO games VALUES (4, 2024, 4, 3, '2024-04-06'); -- Los Angeles (home) vs Chicago

-- Pitches — Game 1: Boston vs New York (2023-07-15)
-- Owen Pierce (BOS SP) pitching to NYK batters
INSERT INTO pitches VALUES (1,  1, 'FF', 96.2, 2310.5, 5, 3,  'strikeout');
INSERT INTO pitches VALUES (2,  1, 'SL', 87.4, 2540.0, 5, 3,  'hit_into_play');
INSERT INTO pitches VALUES (3,  1, 'FF', 97.1, 2295.0, 5, 4,  'strikeout');
INSERT INTO pitches VALUES (4,  1, 'CU', 78.3, 2780.5, 5, 4,  'walk');
INSERT INTO pitches VALUES (5,  1, 'FF', 95.8, 2320.0, 5, 3,  'hit');
-- Marcus Hale (NYK SP) pitching to BOS batters
INSERT INTO pitches VALUES (6,  1, 'FF', 94.1, 2250.0, 1, 7,  'strikeout');
INSERT INTO pitches VALUES (7,  1, 'CT', 91.0, 2190.5, 1, 7,  'hit');
INSERT INTO pitches VALUES (8,  1, 'SL', 85.6, 2610.0, 1, 8,  'hit_into_play');
INSERT INTO pitches VALUES (9,  1, 'FF', 93.7, 2270.0, 1, 8,  'strikeout');
INSERT INTO pitches VALUES (10, 1, 'CU', 76.9, 2820.0, 1, 7,  'hit');

-- Pitches — Game 2: Chicago vs Los Angeles (2023-09-02)
-- Jake Fuller (CHI SP) pitching to LA batters
INSERT INTO pitches VALUES (11, 2, 'FF', 92.3, 2180.0, 9,  15, 'strikeout');
INSERT INTO pitches VALUES (12, 2, 'CH', 83.1, 1850.5, 9,  15, 'hit_into_play');
INSERT INTO pitches VALUES (13, 2, 'FF', 91.8, 2200.0, 9,  16, 'hit');
INSERT INTO pitches VALUES (14, 2, 'SL', 84.5, 2490.0, 9,  16, 'strikeout');
-- Diego Reyes (LA SP) pitching to CHI batters
INSERT INTO pitches VALUES (15, 2, 'FF', 98.4, 2380.0, 13, 11, 'strikeout');
INSERT INTO pitches VALUES (16, 2, 'FF', 97.9, 2365.5, 13, 11, 'strikeout');
INSERT INTO pitches VALUES (17, 2, 'SL', 89.2, 2600.0, 13, 12, 'hit');
INSERT INTO pitches VALUES (18, 2, 'CU', 79.6, 2750.0, 13, 12, 'walk');

-- Pitches — Game 3: New York vs Boston (2024-04-05)
-- Marcus Hale (NYK SP) pitching to BOS batters
INSERT INTO pitches VALUES (19, 3, 'FF', 95.0, 2280.0, 1, 7,  'hit');
INSERT INTO pitches VALUES (20, 3, 'CT', 90.5, 2175.0, 1, 8,  'strikeout');
INSERT INTO pitches VALUES (21, 3, 'FF', 94.8, 2260.0, 1, 7,  'hit_into_play');
-- Liam Nguyen (BOS RP) pitching to NYK batters
INSERT INTO pitches VALUES (22, 3, 'SL', 86.3, 2555.0, 6, 3,  'strikeout');
INSERT INTO pitches VALUES (23, 3, 'FF', 93.2, 2215.0, 6, 4,  'hit');
INSERT INTO pitches VALUES (24, 3, 'CH', 82.7, 1890.0, 6, 3,  'walk');

-- Pitches — Game 4: Los Angeles vs Chicago (2024-04-06)
-- Diego Reyes (LA SP) pitching to CHI batters
INSERT INTO pitches VALUES (25, 4, 'FF', 99.1, 2400.0, 13, 11, 'strikeout');
INSERT INTO pitches VALUES (26, 4, 'SL', 88.8, 2580.5, 13, 12, 'hit_into_play');
INSERT INTO pitches VALUES (27, 4, 'FF', 98.7, 2390.0, 13, 11, 'hit');
-- Ray Kimura (CHI RP) pitching to LA batters
INSERT INTO pitches VALUES (28, 4, 'CT', 89.4, 2145.0, 10, 15, 'strikeout');
INSERT INTO pitches VALUES (29, 4, 'FF', 92.1, 2205.0, 10, 16, 'hit_into_play');
INSERT INTO pitches VALUES (30, 4, 'CU', 77.5, 2800.0, 10, 15, 'strikeout');
