-- Teams
INSERT INTO teams VALUES (1, 'Dodgers',  'Los Angeles');
INSERT INTO teams VALUES (2, 'Padres',   'San Diego');
INSERT INTO teams VALUES (3, 'Diamondbacks', 'Arizona ');
INSERT INTO teams VALUES (4, 'Giants',    'San Francisco');
INSERT INTO teams VALUES (5, 'Rockies',  'Colorado');

-- Seasons (2024 and 2025 won by LA Dodgers)
INSERT INTO seasons VALUES (2024, 1);
INSERT INTO seasons VALUES (2025, 1);

-- Players — LA Dodgers
INSERT INTO players VALUES (1,  1, 'Freddie Freeman', 0.295, 0.204, '1B');
INSERT INTO players VALUES (2,  1, 'Teoscar Hernandez',0.247, 0.245, 'RF');
INSERT INTO players VALUES (3,  1, 'Mookie Betts',    0.258, 0.103, 'SS');
INSERT INTO players VALUES (4,  1, 'Shohei Ohtani',     0.282, 0.257, 'TWP');

-- Players — San Diego Padres
INSERT INTO players VALUES (5,  2, 'Manny Machado',   0.330, 0.193, 'SP');
INSERT INTO players VALUES (6,  2, 'Xander Bogaerts',  0.275, 0.170, 'RP');
INSERT INTO players VALUES (7,  2, 'Jake Cronenworth',  0.263, 0.208, '3B');
INSERT INTO players VALUES (8,  2, 'Luis Arraez',    0.246, 0.031, 'RF');

-- Players — Arizona Diamondbacks
INSERT INTO players VALUES (9,  3, 'Geraldo Perdomo', 0.290, 0.176, 'SS');
INSERT INTO players VALUES (10, 3, 'Josh Naylor',     0.292, 0.124, '1B');
INSERT INTO players VALUES (11, 3, 'Ketel Marte',     0.281, 0.149, '2B');
INSERT INTO players VALUES (12, 3, 'Corbin Carroll',  0.243, 0.224, 'CF');

-- Players — San Francisco Giants
INSERT INTO players VALUES (13, 4, 'Dominic Smith',   0.284, 0.187, '1B');
INSERT INTO players VALUES (14, 4, 'Jung Hoo Lee',    0.271, 0.162, 'CF');
INSERT INTO players VALUES (15, 4, 'Willy Adames',    0.263, 0.221, 'SS');
INSERT INTO players VALUES (16, 4, 'Matt Chapman',    0.241, 0.233, '3B');

-- Players — Colorado Rockies
INSERT INTO players VALUES (17, 5, 'Tyler Freeman',   0.281, 0.119, 'RF');
INSERT INTO players VALUES (18, 5, 'Hunter Goodman',  0.261, 0.253, 'C');
INSERT INTO players VALUES (19, 5, 'Ryan McMahon',    0.243, 0.248, '3B');
INSERT INTO players VALUES (20, 5, 'Ezequiel Tovar',  0.238, 0.212, 'SS');

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

-- Teams
INSERT INTO teams VALUES (1,  'Diamondbacks', 'Arizona');
INSERT INTO teams VALUES (2,  'Athletics',    'Oakland');
INSERT INTO teams VALUES (3,  'Braves',       'Atlanta');
INSERT INTO teams VALUES (4,  'Orioles',      'Baltimore');
INSERT INTO teams VALUES (5,  'Red Sox',      'Boston');
INSERT INTO teams VALUES (6,  'Cubs',         'Chicago');
INSERT INTO teams VALUES (7,  'White Sox',    'Chicago'); 
INSERT INTO teams VALUES (8,  'Reds',         'Cincinnati'); 
INSERT INTO teams VALUES (9,  'Guardians',    'Cleveland'); 
INSERT INTO teams VALUES (10, 'Rockies',      'Colorado'); 
INSERT INTO teams VALUES (11, 'Tigers',       'Detroit');
INSERT INTO teams VALUES (12, 'Astros',       'Houston');
INSERT INTO teams VALUES (13, 'Royals',       'Kansas City'); 
INSERT INTO teams VALUES (14, 'Angels',       'Los Angeles'); 
INSERT INTO teams VALUES (15, 'Dodgers',      'Los Angeles'); 
INSERT INTO teams VALUES (16, 'Marlins',      'Miami');
INSERT INTO teams VALUES (17, 'Brewers',      'Milwaukee'); 
INSERT INTO teams VALUES (18, 'Twins',        'Minnesota'); 
INSERT INTO teams VALUES (19, 'Mets',         'New York'); 
INSERT INTO teams VALUES (20, 'Yankees',      'New York'); 
INSERT INTO teams VALUES (21, 'Phillies',     'Philadelphia'); 
INSERT INTO teams VALUES (22, 'Pirates',      'Pittsburgh');
INSERT INTO teams VALUES (23, 'Padres',       'San Diego');
INSERT INTO teams VALUES (24, 'Giants',       'San Francisco'); 
INSERT INTO teams VALUES (25, 'Mariners',     'Seattle');
INSERT INTO teams VALUES (26, 'Cardinals',    'St. Louis'); 
INSERT INTO teams VALUES (27, 'Rays',         'Tampa Bay');
INSERT INTO teams VALUES (28, 'Rangers',      'Texas');
INSERT INTO teams VALUES (29, 'Blue Jays',    'Toronto'); 
INSERT INTO teams VALUES (30, 'Nationals',    'Washington'); 

-- Seasons (2022 won by Houston Astros; 2023 won byTexas Rangers; 2024 won by Los Angeles Dodgers; 2025 won by Los Angeles Dodgers; 2026 in progress)
INSERT INTO seasons VALUES (2022, 12);
INSERT INTO seasons VALUES (2023, 28);
INSERT INTO seasons VALUES (2024, 15);
INSERT INTO seasons VALUES (2025, 15);
INSERT INTO seasons VALUES (2026, NULL);

-- Players — Arizona Diamondbacks
INSERT INTO players VALUES (1, 1, 'Ketel Marte',        0.217, 0.189, '2B');
INSERT INTO players VALUES (2, 1, 'Corbin Carroll',     0.300, 0.256, 'RF');
INSERT INTO players VALUES (3, 1, 'Geraldo Perdomo',    0.229, 0.106, 'SS');

-- Players — Oakland Athletics
INSERT INTO players VALUES (4, 2, 'Jacob Wilson',       0.263, 0.130, 'SS');
INSERT INTO players VALUES (5, 2, 'Brent Rooker',       0.146, 0.288, 'DH');
INSERT INTO players VALUES (6, 2, 'Lawrence Butler',    0.208, 0.239, 'RF');

-- Players — Atlanta Braves
INSERT INTO players VALUES (7, 3, 'Matt Olson',         0.278, 0.260, '1B');
INSERT INTO players VALUES (8, 3, 'Ozzie Albies',       0.281, 0.143, '2B');
INSERT INTO players VALUES (9, 3, 'Marcell Ozuna',      0.188, 0.243, 'DH');

-- Players — Baltimore Orioles
INSERT INTO players VALUES (10, 4, 'Gunnar Henderson',  0.196, 0.300, 'SS');
INSERT INTO players VALUES (11, 4, 'Jackson Holliday',  0.249, 0.218, '2B');

-- Players — Boston Red Sox
INSERT INTO players VALUES (12, 5, 'Trevor Story',      0.196, 0.337, 'SS');
INSERT INTO players VALUES (13, 5, 'Jarren Duran',      0.264, 0.284, 'LF');
INSERT INTO players VALUES (14, 5, 'Ceddanne Rafaela',  0.286, 0.211, 'CF');

-- Players — Chicago Cubs
INSERT INTO players VALUES (15, 6, 'Nico Hoerner',      0.322, 0.109, '2B');
INSERT INTO players VALUES (16, 6, 'Ian Happ',          0.244, 0.315, 'LF');
INSERT INTO players VALUES (17, 6, 'Seiya Suzuki',       0.229, 0.256, 'RF');

-- Players — Chicago White Sox
INSERT INTO players VALUES (18, 7, 'Chase Meidroth',    0.250, 0.205, '2B');
INSERT INTO players VALUES (19, 7, 'Miguel Vargas',     0.173, 0.163, '2B');

-- Players — Cincinnati Reds
INSERT INTO players VALUES (20, 8, 'TJ Friedl',         0.157, 0.216, 'CF');
INSERT INTO players VALUES (21, 8, 'Spencer Steer',     0.211, 0.308, 'LF');
INSERT INTO players VALUES (22, 8, 'Matt McLain',       0.188, 0.247, '2B');

-- Players — Cleveland Guardians
INSERT INTO players VALUES (23, 9, 'José Ramírez',       0.230, 0.135, '3B');
INSERT INTO players VALUES (24, 9, 'Steven Kwan',       0.220, 0.117, 'CF');
INSERT INTO players VALUES (25, 9, 'Kyle Manzardo',     0.182, 0.384, '1B');

-- Players — Colorado Rockies
INSERT INTO players VALUES (26, 10, 'Jordan Beck',      0.178, 0.184, 'LF');
INSERT INTO players VALUES (27, 10, 'Brenton Doyle',    0.215, 0.324, 'CF');
INSERT INTO players VALUES (28, 10, 'Hunter Goodman',    0.241, 0.386, 'C');

-- Players — Detroit Tigers
INSERT INTO players VALUES (29, 11, 'Riley Greene',     0.263, 0.234, 'LH');
INSERT INTO players VALUES (30, 11, 'Gleyber Torres',   0.238, 0.168, '2B');
INSERT INTO players VALUES (31, 11, 'Zach McKinstry',   0.209, 0.217, '2B');

-- Players — Houston Astros
INSERT INTO players VALUES (32, 12, 'Jeremy Peña',      0.256, 0.097, 'SS');
INSERT INTO players VALUES (33, 12, 'Jose Altuve',      0.281, 0.183, '2B');
INSERT INTO players VALUES (34, 12, 'Yainer Diaz',      0.194, 0.153, 'C');

-- Players — Kansas City Royals
INSERT INTO players VALUES (35, 13, 'Maikel Garcia',   0.272, 0.176, '3B');
INSERT INTO players VALUES (36, 13, 'Salvador Perez',   0.176, 0.220, 'C');
INSERT INTO players VALUES (37, 13, 'Jonathan India',  0.167, 0.224, '2B');

-- Players — Los Angeles Angels
INSERT INTO players VALUES (38, 14, 'Zach Neto',       0.247, 0.277,  'SS');
INSERT INTO players VALUES (39, 14, 'Jo Adell',        0.278, 0.204, 'RF');
INSERT INTO players VALUES (40, 14, 'Mike Trout',      0.235, 0.208, 'CF');

-- Players — Los Angeles Dodgers
INSERT INTO players VALUES (41, 15, 'Yoshinobu Yamamoto',  0.000, 0.221, 'SP');
INSERT INTO players VALUES (42, 15, 'Teoscar Hernández',   0.268, 0.312, 'LF');
INSERT INTO players VALUES (43, 15, 'Mookie Betts',        0.179, 0.125, 'SS');

-- Players — Toronto Blue Jays
INSERT INTO players VALUES (44, 29, 'George Springer', 0.185, 0.226, 'DH');
INSERT INTO players VALUES (45, 29, 'Alejandro Kirk',  0.150, 0.091, 'C');
INSERT INTO players VALUES (46, 29, 'Ernie Clement',   0.297, 0.065, '2B');
INSERT INTO players VALUES (47, 29, 'Kevin Gausman',   0.000, 0.310, 'SP');

-- Games 
INSERT INTO games VALUES (1, 2021, 12, 1,  '2021-10-26'); -- Houston(home) vs Philadelphia
INSERT INTO games VALUES (2, 2022, 12, 21, '2022-10-28'); -- Houston(home) vs Philadelphia
INSERT INTO games VALUES (3, 2023, 28, 1,  '2023-10-27'); -- Texas(home) vs Arizona
INSERT INTO games VALUES (4, 2024, 15, 20, '2024-10-25'); -- Los Angeles(home) vs New York
INSERT INTO games VALUES (5, 2025, 15, 29, '2025-10-24'); -- Los Angeles(home) vs Toronto

- Pitches — Game 1: Los Angeles vs Toronto (2025-10-24)
-- Yoshinobu Yamamoto (LAD SP) pitching to TOR batters
INSERT INTO pitches VALUES (1,  5, 'FF', 92.1, 1320.0, 41, 45,  'hit_into_play');
INSERT INTO pitches VALUES (2,  5, 'SL', 80.3, 2970.0, 41, 45,  'strikeout');
INSERT INTO pitches VALUES (3,  5, 'FF', 92.8, 2446.0, 41, 45,  'foul');
-- Kevin Gausman (TOR SP) pitching to LAD batters
INSERT INTO pitches VALUES (4,  5, 'FS', 84.7, 1429.0, 47, 42,  'strikeout');
INSERT INTO pitches VALUES (5,  5, 'SL', 91.0, 2235.5, 47, 42,  'ball');
INSERT INTO pitches VALUES (6,  5, 'FF', 85.6, 2339.0, 47, 42,  'swinging_strike');
INSERT INTO pitches VALUES (7,  5, 'FS', 85.2, 1520.0, 47, 8,   'hit_into_play');
INSERT INTO pitches VALUES (8,  5, 'FS', 84.6, 1574.0, 47, 7,   'foul');
INSERT INTO pitches VALUES (9,  5, 'SL', 84.8, 2262.0, 47, 7,   'ball');

