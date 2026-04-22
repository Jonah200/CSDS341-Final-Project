-- Teams
INSERT INTO teams VALUES (1,  'Diamondbacks', 'Arizona'); -- 3
INSERT INTO teams VALUES (2,  'Athletics',    'Oakland');
INSERT INTO teams VALUES (3,  'Braves',       'Atlanta');
INSERT INTO teams VALUES (4,  'Orioles',      'Baltimore');
INSERT INTO teams VALUES (5,  'Red Sox',      'Boston');
INSERT INTO teams VALUES (6,  'Cubs',         'Chicago');
INSERT INTO teams VALUES (7,  'White Sox',    'Chicago'); 
INSERT INTO teams VALUES (8,  'Reds',         'Cincinnati'); 
INSERT INTO teams VALUES (9,  'Guardians',    'Cleveland'); 
INSERT INTO teams VALUES (10, 'Rockies',      'Colorado'); -- 5
INSERT INTO teams VALUES (11, 'Tigers',       'Detroit');
INSERT INTO teams VALUES (12, 'Astros',       'Houston');
INSERT INTO teams VALUES (13, 'Royals',       'Kansas City'); 
INSERT INTO teams VALUES (14, 'Angels',       'Los Angeles'); 
INSERT INTO teams VALUES (15, 'Dodgers',      'Los Angeles'); --H 1
INSERT INTO teams VALUES (16, 'Marlins',      'Miami');
INSERT INTO teams VALUES (17, 'Brewers',      'Milwaukee'); 
INSERT INTO teams VALUES (18, 'Twins',        'Minnesota'); 
INSERT INTO teams VALUES (19, 'Mets',         'New York'); 
INSERT INTO teams VALUES (20, 'Yankees',      'New York'); 
INSERT INTO teams VALUES (21, 'Phillies',     'Philadelphia'); 
INSERT INTO teams VALUES (22, 'Pirates',      'Pittsburgh');
INSERT INTO teams VALUES (23, 'Padres',       'San Diego'); -- 2
INSERT INTO teams VALUES (24, 'Giants',       'San Francisco'); -- 4
INSERT INTO teams VALUES (25, 'Mariners',     'Seattle');
INSERT INTO teams VALUES (26, 'Cardinals',    'St. Louis'); 
INSERT INTO teams VALUES (27, 'Rays',         'Tampa Bay');
INSERT INTO teams VALUES (28, 'Rangers',      'Texas');
INSERT INTO teams VALUES (29, 'Blue Jays',    'Toronto'); 
INSERT INTO teams VALUES (30, 'Nationals',    'Washington'); 

-- Seasons (2022 won by Houston Astros; 2023 won byTexas Rangers; 2024 & 2025 won by Los Angeles Dodgers; 2026 in progress)
INSERT INTO seasons VALUES (2022, 12);
INSERT INTO seasons VALUES (2023, 28);
INSERT INTO seasons VALUES (2024, 15);
INSERT INTO seasons VALUES (2025, 15);
INSERT INTO seasons VALUES (2026, NULL);

-- Players — Arizona Diamondbacks
INSERT INTO players VALUES (1, 1, 'Ketel Marte',        0.217, 0.189, '2B');
INSERT INTO players VALUES (2, 1, 'Corbin Carroll',     0.300, 0.256, 'RF');
INSERT INTO players VALUES (3, 1, 'Geraldo Perdomo',    0.229, 0.106, 'SS');
INSERT INTO players VALUES (4, 1, 'Josh Naylor',        0.292, 0.124, '1B');
INSERT INTO players VALUES (5, 1, 'Brandon Pfaadt',     0.000, 0.144, 'SP');

-- Players — Oakland Athletics
INSERT INTO players VALUES (6, 2, 'Jacob Wilson',       0.263, 0.130, 'SS');
INSERT INTO players VALUES (7, 2, 'Brent Rooker',       0.146, 0.288, 'DH');
INSERT INTO players VALUES (8,2, 'Lawrence Butler',     0.208, 0.239, 'RF');

-- Players — Atlanta Braves
INSERT INTO players VALUES (9, 3, 'Matt Olson',         0.278, 0.260, '1B');
INSERT INTO players VALUES (10, 3, 'Ozzie Albies',       0.281, 0.143, '2B');
INSERT INTO players VALUES (11, 3, 'Marcell Ozuna',      0.188, 0.243, 'DH');

-- Players — Baltimore Orioles
INSERT INTO players VALUES (12, 4, 'Gunnar Henderson',  0.196, 0.300, 'SS');
INSERT INTO players VALUES (13, 4, 'Jackson Holliday',  0.249, 0.218, '2B');

-- Players — Boston Red Sox
INSERT INTO players VALUES (14, 5, 'Trevor Story',      0.196, 0.337, 'SS');
INSERT INTO players VALUES (15, 5, 'Jarren Duran',      0.264, 0.284, 'LF');
INSERT INTO players VALUES (16, 5, 'Ceddanne Rafaela',  0.286, 0.211, 'CF');

-- Players — Chicago Cubs
INSERT INTO players VALUES (17, 6, 'Nico Hoerner',      0.322, 0.109, '2B');
INSERT INTO players VALUES (18, 6, 'Ian Happ',          0.244, 0.315, 'LF');
INSERT INTO players VALUES (19, 6, 'Seiya Suzuki',       0.229, 0.256, 'RF');

-- Players — Chicago White Sox
INSERT INTO players VALUES (20, 7, 'Chase Meidroth',    0.250, 0.205, '2B');
INSERT INTO players VALUES (21, 7, 'Miguel Vargas',     0.173, 0.163, '2B');

-- Players — Cincinnati Reds
INSERT INTO players VALUES (22, 8, 'TJ Friedl',         0.157, 0.216, 'CF');
INSERT INTO players VALUES (23, 8, 'Spencer Steer',     0.211, 0.308, 'LF');
INSERT INTO players VALUES (24, 8, 'Matt McLain',       0.188, 0.247, '2B');

-- Players — Cleveland Guardians
INSERT INTO players VALUES (25, 9, 'José Ramírez',       0.230, 0.135, '3B');
INSERT INTO players VALUES (26, 9, 'Steven Kwan',       0.220, 0.117, 'CF');
INSERT INTO players VALUES (27, 9, 'Kyle Manzardo',     0.182, 0.384, '1B');

-- Players — Colorado Rockies
INSERT INTO players VALUES (28, 10, 'Jordan Beck',      0.178, 0.184, 'LF');
INSERT INTO players VALUES (29, 10, 'Brenton Doyle',    0.215, 0.324, 'CF');
INSERT INTO players VALUES (30, 10, 'Hunter Goodman',    0.241, 0.386, 'C');
INSERT INTO players VALUES (31, 10, 'Tyler Freeman',   0.281, 0.119, 'RF');
INSERT INTO players VALUES (32, 10, 'Ryan McMahon',    0.243, 0.248, '3B');
INSERT INTO players VALUES (33, 10, 'Ezequiel Tovar',  0.238, 0.212, 'SS');

-- Players — Detroit Tigers
INSERT INTO players VALUES (34, 11, 'Riley Greene',     0.263, 0.234, 'LH');
INSERT INTO players VALUES (35, 11, 'Gleyber Torres',   0.238, 0.168, '2B');
INSERT INTO players VALUES (36, 11, 'Zach McKinstry',   0.209, 0.217, '2B');

-- Players — Houston Astros
INSERT INTO players VALUES (37, 12, 'Jeremy Peña',      0.256, 0.097, 'SS');
INSERT INTO players VALUES (38, 12, 'Jose Altuve',      0.281, 0.183, '2B');
INSERT INTO players VALUES (39, 12, 'Yainer Diaz',      0.194, 0.153, 'C');

-- Players — Kansas City Royals
INSERT INTO players VALUES (40, 13, 'Maikel Garcia',   0.272, 0.176, '3B');
INSERT INTO players VALUES (41, 13, 'Salvador Perez',   0.176, 0.220, 'C');
INSERT INTO players VALUES (42, 13, 'Jonathan India',  0.167, 0.224, '2B');

-- Players — Los Angeles Angels
INSERT INTO players VALUES (43, 14, 'Zach Neto',       0.247, 0.277,  'SS');
INSERT INTO players VALUES (44, 14, 'Jo Adell',        0.278, 0.204, 'RF');
INSERT INTO players VALUES (45, 14, 'Mike Trout',      0.235, 0.208, 'CF');

-- Players — Los Angeles Dodgers
INSERT INTO players VALUES (46, 15, 'Yoshinobu Yamamoto',  0.000, 0.221, 'SP');
INSERT INTO players VALUES (47, 15, 'Teoscar Hernández',   0.268, 0.312, 'LF');
INSERT INTO players VALUES (48, 15, 'Mookie Betts',        0.179, 0.125, 'SS');
INSERT INTO players VALUES (49, 15, 'Freddie Freeman',     0.295, 0.204, '1B');
INSERT INTO players VALUES (50, 15, 'Shohei Ohtani',       0.282, 0.257, 'TWP');

--Players - New York Yankees
INSERT INTO players VALUES (51, 20, 'Aaron Judge',     0.235, 0.290, 'RF');
INSERT INTO players VALUES (52, 20, 'Anthony Volpe',   0.231, 0.252, 'SS');
INSERT INTO players VALUES (53, 20, 'Carlos Rodón',    0.000, 0.249, 'SP');

-- Players — San Diego Padres
INSERT INTO players VALUES (54,  23, 'Manny Machado',   0.330, 0.193, 'SP');
INSERT INTO players VALUES (55,  23, 'Xander Bogaerts',  0.275, 0.170, 'RP');
INSERT INTO players VALUES (56,  23, 'Jake Cronenworth',  0.263, 0.208, '3B');
INSERT INTO players VALUES (57,  23, 'Luis Arraez',    0.246, 0.031, 'RF');

-- Players — San Francisco Giants 
INSERT INTO players VALUES (58, 24, 'Dominic Smith',   0.284, 0.187, '1B');
INSERT INTO players VALUES (59, 24, 'Jung Hoo Lee',    0.271, 0.162, 'CF');
INSERT INTO players VALUES (60, 24, 'Willy Adames',    0.263, 0.221, 'SS');
INSERT INTO players VALUES (61, 24, 'Matt Chapman',    0.241, 0.233, '3B');

-- Players — Texas Rangers
INSERT INTO players VALUES (62, 28, 'Nathan Eovaldi',   0.000, 0.230, 'SP');
INSERT INTO players VALUES (63, 28, 'Adolis García',    0.210, 0.247, 'RF');

-- Players — Toronto Blue Jays
INSERT INTO players VALUES (64, 29, 'George Springer', 0.185, 0.226, 'DH');
INSERT INTO players VALUES (65, 29, 'Alejandro Kirk',  0.150, 0.091, 'C');
INSERT INTO players VALUES (66, 29, 'Ernie Clement',   0.297, 0.065, '2B');
INSERT INTO players VALUES (67, 29, 'Kevin Gausman',   0.000, 0.310, 'SP');

-- Games 
INSERT INTO games VALUES (1, 2021, 12, 21, '2021-10-26'); -- Houston(home) vs Philadelphia
INSERT INTO games VALUES (2, 2022, 12, 21, '2022-10-28'); -- Houston(home) vs Philadelphia
INSERT INTO games VALUES (3, 2023, 5,  20, '2023-07-15'); -- Boston (home) vs New York h
INSERT INTO games VALUES (4, 2023, 6,  15, '2023-09-02'); -- Chicago (home) vs Los Angeles h
INSERT INTO games VALUES (5, 2023, 28, 1,  '2023-10-27'); -- Texas(home) vs Arizona
INSERT INTO games VALUES (6, 2024, 20, 2,  '2024-04-05'); -- New York (home) vs Boston h
INSERT INTO games VALUES (7, 2024, 15, 3,  '2024-04-06'); -- Los Angeles (home) vs Chicago h
INSERT INTO games VALUES (8, 2024, 15, 20, '2024-10-25'); -- Los Angeles(home) vs New York 
INSERT INTO games VALUES (9, 2025, 15, 29, '2025-10-24'); -- Los Angeles(home) vs Toronto

-- Pitches — Game 1: Los Angeles vs Toronto (2025-10-24)
-- Yoshinobu Yamamoto (LAD SP) pitching to TOR batters
INSERT INTO pitches VALUES (31,  9, 'FF', 92.1, 1320.0, 46, 65,  'hit_into_play');
INSERT INTO pitches VALUES (32,  9, 'SL', 80.3, 2970.0, 46, 65,  'strikeout');
INSERT INTO pitches VALUES (33,  9, 'FF', 92.8, 2446.0, 46, 65,  'foul');
-- Kevin Gausman (TOR SP) pitching to LAD batters
INSERT INTO pitches VALUES (34,  9, 'FS', 84.7, 1429.0, 67, 47,  'strikeout');
INSERT INTO pitches VALUES (35,  9, 'SL', 91.0, 2235.5, 67, 47,  'ball');
INSERT INTO pitches VALUES (36,  9, 'FF', 85.6, 2339.0, 67, 47,  'swinging_strike');
INSERT INTO pitches VALUES (37,  9, 'FS', 85.2, 1520.0, 67, 10,   'hit_into_play');
INSERT INTO pitches VALUES (38,  9, 'FS', 84.6, 1574.0, 67, 9,   'foul');
INSERT INTO pitches VALUES (39,  9, 'SL', 84.8, 2262.0, 67, 9,   'ball');

-- Pitches — Game 2: Los Angeles vs New York (2024-10-25)
-- Yoshinobu Yamamoto (LAD SP) pitching to NYY batters
INSERT INTO pitches VALUES (31,  8, 'FS', 91.5, 1502.0, 45, 51,  'swinging_strike');
INSERT INTO pitches VALUES (32,  8, 'CU', 76.2, 2621.0, 45, 51,  'foul');
INSERT INTO pitches VALUES (33,  8, 'FF', 92.8, 2446.0, 45, 51,  'foul');
-- Carlos Rodón (NYY SP) pitching to LAD batters
INSERT INTO pitches VALUES (34,  8, 'FF', 96.9, 2450.0, 53, 49,  'hit_into_play');
INSERT INTO pitches VALUES (35,  8, 'SL', 87.8, 2695.0, 53, 49,  'ball');
INSERT INTO pitches VALUES (36,  8, 'SL', 88.3, 2673.0, 53, 49,  'ball');


-- Pitches — Game 3: Texas Rangers vs Arizona (2023-10-27)
-- Nathan Eovaldi (TEX SP) pitching to ARI batters
INSERT INTO pitches VALUES (31,  5, 'FC', 91.5, 2281.0, 62, 3,  'called_strike');
INSERT INTO pitches VALUES (32,  5, 'CU', 76.2, 1928.0, 62, 3,  'called_strike');
INSERT INTO pitches VALUES (33,  5, 'FS', 92.8, 2446.0, 62, 3,  'ball');
-- Brandon Pfaadt (ARI SP) pitching to TEX batters
INSERT INTO pitches VALUES (34,  5, 'ST', 85.2, 2808.0, 5, 63,  'ball');
INSERT INTO pitches VALUES (35,  5, 'ST', 86.3, 2882.0, 5, 63,  'ball');
INSERT INTO pitches VALUES (36,  5, 'FF', 94.9, 2472.0, 5, 63,  'foul');




