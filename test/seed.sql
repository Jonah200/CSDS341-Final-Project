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
INSERT INTO players VALUES (54,  23, 'Manny Machado',     0.330, 0.193, '3B');
INSERT INTO players VALUES (55,  23, 'Xander Bogaerts',   0.275, 0.170, 'RP');
INSERT INTO players VALUES (56,  23, 'Jake Cronenworth',  0.263, 0.208, '3B');
INSERT INTO players VALUES (57,  23, 'Luis Arraez',       0.246, 0.031, 'RF');

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

-- Players — Miami Marlins
INSERT INTO players VALUES (68,  16, 'Jazz Chisholm Jr.', 0.242, 0.291, 'CF');
INSERT INTO players VALUES (69,  16, 'Josh Bell',          0.233, 0.254, '1B');
INSERT INTO players VALUES (70,  16, 'Bryan De La Cruz',   0.258, 0.247, 'RF');
INSERT INTO players VALUES (71,  16, 'Jake Burger',        0.251, 0.318, '3B');
INSERT INTO players VALUES (72,  16, 'Sandy Alcantara',    0.000, 0.197, 'SP');
 
-- Players — Milwaukee Brewers
INSERT INTO players VALUES (73,  17, 'Christian Yelich',   0.263, 0.228, 'LF');
INSERT INTO players VALUES (74,  17, 'William Contreras',  0.271, 0.241, 'C');
INSERT INTO players VALUES (75,  17, 'Jackson Chourio',    0.240, 0.218, 'LF');
INSERT INTO players VALUES (76,  17, 'Sal Frelick',        0.255, 0.148, 'RF');
INSERT INTO players VALUES (77,  17, 'Freddy Peralta',     0.000, 0.287, 'SP');
 
-- Players — Minnesota Twins
INSERT INTO players VALUES (78,  18, 'Carlos Correa',      0.237, 0.211, 'SS');
INSERT INTO players VALUES (79,  18, 'Byron Buxton',       0.241, 0.304, 'CF');
INSERT INTO players VALUES (80,  18, 'Max Kepler',         0.248, 0.225, 'RF');
INSERT INTO players VALUES (81,  18, 'Ryan Jeffers',       0.259, 0.293, 'C');
INSERT INTO players VALUES (82,  18, 'Pablo López',        0.000, 0.221, 'SP');
 
-- Players — New York Mets
INSERT INTO players VALUES (83,  19, 'Francisco Lindor',   0.273, 0.207, 'SS');
INSERT INTO players VALUES (84,  19, 'Pete Alonso',        0.249, 0.302, '1B');
INSERT INTO players VALUES (85,  19, 'Brandon Nimmo',      0.238, 0.221, 'CF');
INSERT INTO players VALUES (86,  19, 'Mark Vientos',       0.252, 0.294, '3B');
INSERT INTO players VALUES (87,  19, 'Sean Manaea',        0.000, 0.237, 'SP');
 
-- Players — Philadelphia Phillies
INSERT INTO players VALUES (88,  21, 'Bryce Harper',       0.286, 0.218, '1B');
INSERT INTO players VALUES (89,  21, 'Trea Turner',        0.271, 0.202, 'SS');
INSERT INTO players VALUES (90,  21, 'Nick Castellanos',   0.264, 0.237, 'RF');
INSERT INTO players VALUES (91,  21, 'J.T. Realmuto',      0.267, 0.231, 'C');
INSERT INTO players VALUES (92,  21, 'Zack Wheeler',       0.000, 0.208, 'SP');
 
-- Players — Pittsburgh Pirates
INSERT INTO players VALUES (93,  22, 'Oneil Cruz',         0.244, 0.332, 'SS');
INSERT INTO players VALUES (94,  22, 'Bryan Reynolds',     0.261, 0.247, 'CF');
INSERT INTO players VALUES (95,  22, 'Andrew McCutchen',   0.250, 0.198, 'DH');
INSERT INTO players VALUES (96,  22, 'Henry Davis',        0.233, 0.268, 'C');
INSERT INTO players VALUES (97,  22, 'Paul Skenes',        0.000, 0.251, 'SP');
 
-- Players — Seattle Mariners
INSERT INTO players VALUES (98,  25, 'Julio Rodríguez',    0.269, 0.276, 'CF');
INSERT INTO players VALUES (99,  25, 'Cal Raleigh',        0.221, 0.335, 'C');
INSERT INTO players VALUES (100, 25, 'Mitch Haniger',      0.248, 0.244, 'RF');
INSERT INTO players VALUES (101, 25, 'JP Crawford',        0.236, 0.181, 'SS');
INSERT INTO players VALUES (102, 25, 'Logan Gilbert',      0.000, 0.218, 'SP');
 
-- Players — St. Louis Cardinals
INSERT INTO players VALUES (103, 26, 'Paul Goldschmidt',   0.267, 0.237, '1B');
INSERT INTO players VALUES (104, 26, 'Nolan Arenado',      0.272, 0.194, '3B');
INSERT INTO players VALUES (105, 26, 'Willson Contreras',  0.258, 0.262, 'C');
INSERT INTO players VALUES (106, 26, 'Lars Nootbaar',      0.247, 0.233, 'RF');
INSERT INTO players VALUES (107, 26, 'Miles Mikolas',      0.000, 0.178, 'SP');
 
-- Players — Tampa Bay Rays
INSERT INTO players VALUES (108, 27, 'Yandy Díaz',         0.274, 0.174, '1B');
INSERT INTO players VALUES (109, 27, 'Randy Arozarena',    0.239, 0.259, 'LF');
INSERT INTO players VALUES (110, 27, 'Josh Lowe',          0.251, 0.274, 'CF');
INSERT INTO players VALUES (111, 27, 'Isaac Paredes',      0.258, 0.267, '3B');
INSERT INTO players VALUES (112, 27, 'Zach Eflin',         0.000, 0.206, 'SP');
 
-- Players — Washington Nationals
INSERT INTO players VALUES (113, 30, 'CJ Abrams',          0.256, 0.248, 'SS');
INSERT INTO players VALUES (114, 30, 'Lane Thomas',        0.245, 0.271, 'RF');
INSERT INTO players VALUES (115, 30, 'Joey Meneses',       0.262, 0.188, '1B');
INSERT INTO players VALUES (116, 30, 'Keibert Ruiz',       0.253, 0.161, 'C');
INSERT INTO players VALUES (117, 30, 'MacKenzie Gore',     0.000, 0.264, 'SP');

-- Games 
INSERT INTO games VALUES (1, 2021, 12, 21, '2021-10-26'); -- Houston(home) vs Philadelphia
INSERT INTO games VALUES (2, 2022, 12, 21, '2022-10-28'); -- Houston(home) vs Philadelphia
INSERT INTO games VALUES (3, 2023, 5,  20, '2023-07-15'); -- Boston (home) vs New York 
INSERT INTO games VALUES (4, 2023, 6,  15, '2023-09-02'); -- Chicago (home) vs Los Angeles 
INSERT INTO games VALUES (5, 2023, 28, 1,  '2023-10-27'); -- Texas(home) vs Arizona
INSERT INTO games VALUES (6, 2024, 20, 2,  '2024-04-05'); -- New York (home) vs Boston 
INSERT INTO games VALUES (7, 2024, 15, 3,  '2024-04-06'); -- Los Angeles (home) vs Chicago 
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

-- 2022 Regular Season
INSERT INTO games VALUES (10, 2022, 12, 21, '2022-05-14'); -- Houston(home) vs Philadelphia
--Pitches Game 10: Houston vs Philadelphia (2022-05-14)
-- Zack Wheeler (PHI SP) pitching to HOU batters
  INSERT INTO pitches VALUES (40, 10, 'FF', 97.2, 2511.0, 92, 37, 'called_strike');
INSERT INTO pitches VALUES (41, 10, 'SL', 88.4, 2703.0, 92, 37, 'swinging_strike');
INSERT INTO pitches VALUES (42, 10, 'FF', 96.8, 2498.0, 92, 37, 'strikeout');
INSERT INTO pitches VALUES (43, 10, 'CH', 87.1, 1847.0, 92, 38, 'ball');
INSERT INTO pitches VALUES (44, 10, 'FF', 97.5, 2522.0, 92, 38, 'foul');
INSERT INTO pitches VALUES (45, 10, 'SL', 87.9, 2688.0, 92, 38, 'hit_into_play');
INSERT INTO pitches VALUES (46, 10, 'FF', 96.1, 2489.0, 92, 39, 'foul');
INSERT INTO pitches VALUES (47, 10, 'CU', 80.3, 2121.0, 92, 39, 'swinging_strike');
INSERT INTO pitches VALUES (48, 10, 'FF', 97.0, 2505.0, 92, 39, 'called_strike');
INSERT INTO pitches VALUES (49, 10, 'SL', 88.1, 2697.0, 92, 39, 'strikeout');
-- Justin Verlander (HOU SP) pitching to PHI batters
INSERT INTO pitches VALUES (50, 10, 'FF', 94.3, 2421.0, 12, 88, 'called_strike');
INSERT INTO pitches VALUES (51, 10, 'SL', 84.2, 2584.0, 12, 88, 'ball');
INSERT INTO pitches VALUES (52, 10, 'CU', 76.8, 2108.0, 12, 88, 'swinging_strike');
INSERT INTO pitches VALUES (53, 10, 'FF', 94.7, 2435.0, 12, 88, 'hit_into_play');
INSERT INTO pitches VALUES (54, 10, 'FC', 90.1, 2303.0, 12, 89, 'foul');
INSERT INTO pitches VALUES (55, 10, 'FF', 94.5, 2428.0, 12, 89, 'called_strike');
INSERT INTO pitches VALUES (56, 10, 'SL', 84.0, 2571.0, 12, 89, 'ball');
INSERT INTO pitches VALUES (57, 10, 'FC', 89.8, 2291.0, 12, 89, 'strikeout');
INSERT INTO pitches VALUES (58, 10, 'FF', 93.9, 2408.0, 12, 90, 'foul');
INSERT INTO pitches VALUES (59, 10, 'CU', 77.1, 2118.0, 12, 90, 'swinging_strike');
INSERT INTO pitches VALUES (60, 10, 'FF', 94.6, 2431.0, 12, 90, 'called_strike');
INSERT INTO pitches VALUES (61, 10, 'SL', 84.4, 2589.0, 12, 90, 'hit_into_play');

INSERT INTO games VALUES (11, 2022, 5,  20, '2022-06-22'); -- Boston(home)  vs New York Yankees
-- GAME 11: Boston vs NY Yankees (2022-06-22)
-- Carlos Rodón (NYY SP) pitching to BOS batters
INSERT INTO pitches VALUES (62, 11, 'FF', 96.7, 2467.0, 53, 14, 'called_strike');
INSERT INTO pitches VALUES (63, 11, 'SL', 87.5, 2681.0, 53, 14, 'swinging_strike');
INSERT INTO pitches VALUES (64, 11, 'FF', 96.9, 2472.0, 53, 14, 'strikeout');
INSERT INTO pitches VALUES (65, 11, 'SL', 88.0, 2695.0, 53, 15, 'ball');
INSERT INTO pitches VALUES (66, 11, 'FF', 97.1, 2479.0, 53, 15, 'foul');
INSERT INTO pitches VALUES (67, 11, 'CH', 85.3, 1798.0, 53, 15, 'hit_into_play');
INSERT INTO pitches VALUES (68, 11, 'FF', 96.5, 2461.0, 53, 16, 'called_strike');
INSERT INTO pitches VALUES (69, 11, 'SL', 87.2, 2667.0, 53, 16, 'ball');
INSERT INTO pitches VALUES (70, 11, 'FF', 97.0, 2474.0, 53, 16, 'swinging_strike');
INSERT INTO pitches VALUES (71, 11, 'SL', 88.2, 2701.0, 53, 16, 'strikeout');
-- Chris Sale (BOS SP) pitching to NYY batters
INSERT INTO pitches VALUES (72, 11, 'FF', 95.4, 2444.0, 5,  51, 'foul');
INSERT INTO pitches VALUES (73, 11, 'SL', 85.6, 2617.0, 5,  51, 'called_strike');
INSERT INTO pitches VALUES (74, 11, 'FF', 95.8, 2455.0, 5,  51, 'hit_into_play');
INSERT INTO pitches VALUES (75, 11, 'CU', 78.2, 2148.0, 5,  52, 'ball');
INSERT INTO pitches VALUES (76, 11, 'FF', 95.2, 2438.0, 5,  52, 'foul');
INSERT INTO pitches VALUES (77, 11, 'SL', 85.1, 2604.0, 5,  52, 'swinging_strike');
INSERT INTO pitches VALUES (78, 11, 'FF', 96.0, 2461.0, 5,  52, 'called_strike');
INSERT INTO pitches VALUES (79, 11, 'CU', 78.5, 2159.0, 5,  52, 'strikeout');
INSERT INTO games VALUES (12, 2022, 15, 19, '2022-07-09'); -- LA Dodgers(home) vs NY Mets

-- GAME 12: LA Dodgers vs NY Mets (2022-07-09)
-- Yoshinobu Yamamoto (LAD SP) pitching to NYM batters
INSERT INTO pitches VALUES (80, 12, 'FF', 97.4, 2541.0, 46, 83, 'called_strike');
INSERT INTO pitches VALUES (81, 12, 'SL', 88.7, 2714.0, 46, 83, 'swinging_strike');
INSERT INTO pitches VALUES (82, 12, 'FS', 90.1, 1811.0, 46, 83, 'foul');
INSERT INTO pitches VALUES (83, 12, 'FF', 97.6, 2548.0, 46, 83, 'strikeout');
INSERT INTO pitches VALUES (84, 12, 'FF', 97.1, 2532.0, 46, 84, 'ball');
INSERT INTO pitches VALUES (85, 12, 'FS', 89.8, 1798.0, 46, 84, 'swinging_strike');
INSERT INTO pitches VALUES (86, 12, 'SL', 88.4, 2701.0, 46, 84, 'called_strike');
INSERT INTO pitches VALUES (87, 12, 'FF', 97.8, 2558.0, 46, 84, 'hit_into_play');
INSERT INTO pitches VALUES (88, 12, 'CU', 77.9, 2182.0, 46, 85, 'ball');
INSERT INTO pitches VALUES (89, 12, 'FF', 97.3, 2538.0, 46, 85, 'foul');
INSERT INTO pitches VALUES (90, 12, 'FS', 90.3, 1819.0, 46, 85, 'swinging_strike');
INSERT INTO pitches VALUES (91, 12, 'FF', 97.5, 2544.0, 46, 85, 'strikeout');
-- Sean Manaea (NYM SP) pitching to LAD batters
INSERT INTO pitches VALUES (92, 12, 'FF', 92.8, 2381.0, 87, 47, 'foul');
INSERT INTO pitches VALUES (93, 12, 'SL', 82.6, 2547.0, 87, 47, 'called_strike');
INSERT INTO pitches VALUES (94, 12, 'CH', 83.4, 1771.0, 87, 47, 'hit_into_play');
INSERT INTO pitches VALUES (95, 12, 'FF', 93.1, 2391.0, 87, 49, 'called_strike');
INSERT INTO pitches VALUES (96, 12, 'SL', 82.9, 2558.0, 87, 49, 'ball');
INSERT INTO pitches VALUES (97, 12, 'CH', 83.1, 1762.0, 87, 49, 'swinging_strike');
INSERT INTO pitches VALUES (98, 12, 'FF', 92.5, 2371.0, 87, 49, 'foul');
INSERT INTO pitches VALUES (99, 12, 'SL', 82.3, 2538.0, 87, 49, 'strikeout');
INSERT INTO pitches VALUES (100, 12, 'FF', 93.4, 2401.0, 87, 50, 'called_strike');
INSERT INTO pitches VALUES (101, 12, 'CH', 83.6, 1779.0, 87, 50, 'ball');
INSERT INTO pitches VALUES (102, 12, 'SL', 82.7, 2551.0, 87, 50, 'swinging_strike');
INSERT INTO pitches VALUES (103, 12, 'FF', 93.0, 2388.0, 87, 50, 'hit_into_play');
 
INSERT INTO games VALUES (13, 2022, 9,  18, '2022-08-01'); -- Cleveland(home) vs Minnesota
-- GAME 13: Cleveland vs Minnesota (2022-08-01)
-- Pablo López (MIN SP) pitching to CLE batters
INSERT INTO pitches VALUES (104, 13, 'FF', 93.5, 2404.0, 82, 25, 'called_strike');
INSERT INTO pitches VALUES (105, 13, 'CH', 85.0, 1794.0, 82, 25, 'swinging_strike');
INSERT INTO pitches VALUES (106, 13, 'SL', 84.1, 2578.0, 82, 25, 'strikeout');
INSERT INTO pitches VALUES (107, 13, 'FF', 93.8, 2414.0, 82, 26, 'foul');
INSERT INTO pitches VALUES (108, 13, 'CU', 79.2, 2198.0, 82, 26, 'ball');
INSERT INTO pitches VALUES (109, 13, 'CH', 85.3, 1804.0, 82, 26, 'swinging_strike');
INSERT INTO pitches VALUES (110, 13, 'FF', 93.2, 2394.0, 82, 26, 'called_strike');
INSERT INTO pitches VALUES (111, 13, 'SL', 84.4, 2589.0, 82, 26, 'hit_into_play');
INSERT INTO pitches VALUES (112, 13, 'FF', 94.1, 2424.0, 82, 27, 'called_strike');
INSERT INTO pitches VALUES (113, 13, 'CH', 84.8, 1788.0, 82, 27, 'ball');
INSERT INTO pitches VALUES (114, 13, 'FF', 93.7, 2411.0, 82, 27, 'foul');
INSERT INTO pitches VALUES (115, 13, 'CU', 79.5, 2208.0, 82, 27, 'swinging_strike');
INSERT INTO pitches VALUES (116, 13, 'SL', 84.0, 2571.0, 82, 27, 'strikeout');
-- Shane Bieber (CLE SP) pitching to MIN batters
INSERT INTO pitches VALUES (117, 13, 'FF', 93.0, 2387.0, 9,  78, 'called_strike');
INSERT INTO pitches VALUES (118, 13, 'CU', 79.8, 2218.0, 9,  78, 'swinging_strike');
INSERT INTO pitches VALUES (119, 13, 'FF', 93.4, 2401.0, 9,  78, 'hit_into_play');
INSERT INTO pitches VALUES (120, 13, 'SL', 83.7, 2564.0, 9,  79, 'ball');
INSERT INTO pitches VALUES (121, 13, 'FF', 92.8, 2381.0, 9,  79, 'foul');
INSERT INTO pitches VALUES (122, 13, 'CU', 79.4, 2204.0, 9,  79, 'called_strike');
INSERT INTO pitches VALUES (123, 13, 'FF', 93.2, 2394.0, 9,  79, 'strikeout');
INSERT INTO pitches VALUES (124, 13, 'SL', 83.9, 2571.0, 9,  80, 'foul');
INSERT INTO pitches VALUES (125, 13, 'FF', 93.6, 2408.0, 9,  80, 'called_strike');
INSERT INTO pitches VALUES (126, 13, 'CU', 80.1, 2228.0, 9,  80, 'ball');
INSERT INTO pitches VALUES (127, 13, 'FF', 93.1, 2391.0, 9,  80, 'swinging_strike');
INSERT INTO pitches VALUES (128, 13, 'SL', 84.2, 2584.0, 9,  80, 'strikeout');
 
INSERT INTO games VALUES (14, 2022, 26, 21, '2022-09-05'); -- St. Louis(home) vs Philadelphia
-- GAME 14: St. Louis vs Philadelphia (2022-09-05)
-- Zack Wheeler (PHI SP) pitching to STL batters
INSERT INTO pitches VALUES (129, 14, 'FF', 97.3, 2515.0, 92, 103, 'called_strike');
INSERT INTO pitches VALUES (130, 14, 'SL', 88.2, 2697.0, 92, 103, 'ball');
INSERT INTO pitches VALUES (131, 14, 'FF', 97.5, 2522.0, 92, 103, 'swinging_strike');
INSERT INTO pitches VALUES (132, 14, 'CU', 80.4, 2124.0, 92, 103, 'strikeout');
INSERT INTO pitches VALUES (133, 14, 'FF', 96.9, 2496.0, 92, 104, 'foul');
INSERT INTO pitches VALUES (134, 14, 'SL', 87.8, 2681.0, 92, 104, 'called_strike');
INSERT INTO pitches VALUES (135, 14, 'CH', 87.3, 1851.0, 92, 104, 'swinging_strike');
INSERT INTO pitches VALUES (136, 14, 'FF', 97.1, 2508.0, 92, 104, 'strikeout');
INSERT INTO pitches VALUES (137, 14, 'FF', 97.4, 2518.0, 92, 105, 'hit_into_play');
INSERT INTO pitches VALUES (138, 14, 'SL', 88.0, 2691.0, 92, 105, 'ball');
INSERT INTO pitches VALUES (139, 14, 'CU', 80.6, 2131.0, 92, 105, 'called_strike');
INSERT INTO pitches VALUES (140, 14, 'FF', 97.6, 2528.0, 92, 105, 'foul');
-- Miles Mikolas (STL SP) pitching to PHI batters
INSERT INTO pitches VALUES (141, 14, 'SI', 91.5, 2304.0, 107, 88, 'called_strike');
INSERT INTO pitches VALUES (142, 14, 'FC', 88.4, 2291.0, 107, 88, 'ball');
INSERT INTO pitches VALUES (143, 14, 'SI', 91.8, 2314.0, 107, 88, 'foul');
INSERT INTO pitches VALUES (144, 14, 'CU', 78.1, 2144.0, 107, 88, 'swinging_strike');
INSERT INTO pitches VALUES (145, 14, 'SI', 91.3, 2297.0, 107, 88, 'hit_into_play');
INSERT INTO pitches VALUES (146, 14, 'FC', 88.7, 2301.0, 107, 89, 'foul');
INSERT INTO pitches VALUES (147, 14, 'SI', 92.0, 2321.0, 107, 89, 'called_strike');
INSERT INTO pitches VALUES (148, 14, 'SL', 83.2, 2558.0, 107, 89, 'ball');
INSERT INTO pitches VALUES (149, 14, 'FC', 88.2, 2284.0, 107, 89, 'swinging_strike');
INSERT INTO pitches VALUES (150, 14, 'SI', 91.7, 2311.0, 107, 89, 'strikeout');
INSERT INTO games VALUES (15, 2022, 3,  15, '2022-09-18'); -- Atlanta(home)   vs LA Dodgers
-- GAME 15: Atlanta vs LA Dodgers (2022-09-18)
-- Yoshinobu Yamamoto (LAD SP) pitching to ATL batters
INSERT INTO pitches VALUES (151, 15, 'FF', 97.7, 2551.0, 46, 9,  'called_strike');
INSERT INTO pitches VALUES (152, 15, 'FS', 90.5, 1824.0, 46, 9,  'swinging_strike');
INSERT INTO pitches VALUES (153, 15, 'FF', 98.0, 2561.0, 46, 9,  'foul');
INSERT INTO pitches VALUES (154, 15, 'SL', 88.9, 2721.0, 46, 9,  'strikeout');
INSERT INTO pitches VALUES (155, 15, 'FF', 97.4, 2541.0, 46, 10, 'ball');
INSERT INTO pitches VALUES (156, 15, 'CU', 78.3, 2188.0, 46, 10, 'called_strike');
INSERT INTO pitches VALUES (157, 15, 'FS', 90.2, 1814.0, 46, 10, 'swinging_strike');
INSERT INTO pitches VALUES (158, 15, 'FF', 97.9, 2558.0, 46, 10, 'foul');
INSERT INTO pitches VALUES (159, 15, 'SL', 88.6, 2708.0, 46, 10, 'hit_into_play');
INSERT INTO pitches VALUES (160, 15, 'FF', 97.5, 2544.0, 46, 11, 'called_strike');
INSERT INTO pitches VALUES (161, 15, 'FS', 89.9, 1801.0, 46, 11, 'ball');
INSERT INTO pitches VALUES (162, 15, 'CU', 78.6, 2198.0, 46, 11, 'swinging_strike');
INSERT INTO pitches VALUES (163, 15, 'FF', 98.1, 2564.0, 46, 11, 'strikeout');
 
-- Spencer Strider (ATL SP) pitching to LAD batters
INSERT INTO pitches VALUES (164, 15, 'FF', 99.1, 2598.0, 3,  47, 'called_strike');
INSERT INTO pitches VALUES (165, 15, 'SL', 89.4, 2734.0, 3,  47, 'swinging_strike');
INSERT INTO pitches VALUES (166, 15, 'FF', 99.4, 2608.0, 3,  47, 'strikeout');
INSERT INTO pitches VALUES (167, 15, 'SL', 89.1, 2721.0, 3,  48, 'ball');
INSERT INTO pitches VALUES (168, 15, 'FF', 99.2, 2601.0, 3,  48, 'foul');
INSERT INTO pitches VALUES (169, 15, 'CH', 87.4, 1858.0, 3,  48, 'swinging_strike');
INSERT INTO pitches VALUES (170, 15, 'FF', 99.6, 2614.0, 3,  48, 'called_strike');
INSERT INTO pitches VALUES (171, 15, 'SL', 89.6, 2741.0, 3,  48, 'strikeout');
INSERT INTO pitches VALUES (172, 15, 'FF', 98.9, 2591.0, 3,  49, 'foul');
INSERT INTO pitches VALUES (173, 15, 'SL', 89.2, 2727.0, 3,  49, 'called_strike');
INSERT INTO pitches VALUES (174, 15, 'FF', 99.3, 2605.0, 3,  49, 'hit_into_play');


-- 2023 Regular Season
INSERT INTO games VALUES (16, 2023, 19, 21, '2023-04-12'); -- NY Mets(home)   vs Philadelphia
INSERT INTO games VALUES (17, 2023, 12, 20, '2023-05-20'); -- Houston(home)   vs NY Yankees
INSERT INTO games VALUES (18, 2023, 27, 5,  '2023-06-14'); -- Tampa Bay(home) vs Boston
INSERT INTO games VALUES (19, 2023, 25, 14, '2023-07-04'); -- Seattle(home)   vs LA Angels
INSERT INTO games VALUES (20, 2023, 3,  21, '2023-08-11'); -- Atlanta(home)   vs Philadelphia
INSERT INTO games VALUES (21, 2023, 26, 12, '2023-09-09'); -- St. Louis(home) vs Houston
 
-- 2024 Regular Season
INSERT INTO games VALUES (22, 2024, 19, 15, '2024-04-15'); -- NY Mets(home)   vs LA Dodgers
INSERT INTO games VALUES (23, 2024, 12, 28, '2024-05-03'); -- Houston(home)   vs Texas
INSERT INTO games VALUES (24, 2024, 21, 5,  '2024-05-27'); -- Philadelphia(home) vs Boston
INSERT INTO games VALUES (25, 2024, 9,  20, '2024-06-08'); -- Cleveland(home) vs NY Yankees
INSERT INTO games VALUES (26, 2024, 17, 6,  '2024-07-13'); -- Milwaukee(home) vs Chicago Cubs
INSERT INTO games VALUES (27, 2024, 3,  15, '2024-08-02'); -- Atlanta(home)   vs LA Dodgers
INSERT INTO games VALUES (28, 2024, 25, 12, '2024-09-01'); -- Seattle(home)   vs Houston
INSERT INTO games VALUES (29, 2024, 23, 15, '2024-09-20'); -- San Diego(home) vs LA Dodgers
INSERT INTO games VALUES (30, 2024, 26, 3,  '2024-09-28'); -- St. Louis(home) vs Atlanta
 
-- 2025 Regular Season
INSERT INTO games VALUES (31, 2025, 15, 19, '2025-04-08'); -- LA Dodgers(home) vs NY Mets
INSERT INTO games VALUES (32, 2025, 20, 5,  '2025-04-22'); -- NY Yankees(home) vs Boston
INSERT INTO games VALUES (33, 2025, 12, 3,  '2025-05-10'); -- Houston(home)    vs Atlanta
INSERT INTO games VALUES (34, 2025, 21, 15, '2025-06-07'); -- Philadelphia(home) vs LA Dodgers
INSERT INTO games VALUES (35, 2025, 6,  19, '2025-06-21'); -- Chicago Cubs(home) vs NY Mets
INSERT INTO games VALUES (36, 2025, 27, 12, '2025-07-14'); -- Tampa Bay(home)  vs Houston
INSERT INTO games VALUES (37, 2025, 3,  20, '2025-08-03'); -- Atlanta(home)    vs NY Yankees
INSERT INTO games VALUES (38, 2025, 25, 15, '2025-09-06'); -- Seattle(home)    vs LA Dodgers
INSERT INTO games VALUES (39, 2025, 23, 15, '2025-09-19'); -- San Diego(home)  vs Shohei Ohtani's team
 
-- 2026 Season (in progress)
INSERT INTO games VALUES (40, 2026, 15, 20, '2026-04-01'); -- LA Dodgers(home) vs NY Yankees
INSERT INTO games VALUES (41, 2026, 12, 15, '2026-04-05'); -- Houston(home)    vs LA Dodgers
INSERT INTO games VALUES (42, 2026, 19, 20, '2026-04-12'); -- NY Mets(home)    vs NY Yankees
INSERT INTO games VALUES (43, 2026, 3,  21, '2026-04-18'); -- Atlanta(home)    vs Philadelphia
INSERT INTO games VALUES (44, 2026, 25, 6,  '2026-04-25'); -- Seattle(home)    vs Chicago Cubs

-- ============================================================
-- GAME 16: NY Mets vs Philadelphia (2023-04-12)
-- Zack Wheeler (PHI SP) pitching to NYM batters
-- ============================================================
INSERT INTO pitches VALUES (175, 16, 'FF', 97.8, 2554.0, 92, 83, 'called_strike');
INSERT INTO pitches VALUES (176, 16, 'SL', 88.5, 2708.0, 92, 83, 'swinging_strike');
INSERT INTO pitches VALUES (177, 16, 'FF', 97.6, 2547.0, 92, 83, 'foul');
INSERT INTO pitches VALUES (178, 16, 'CU', 80.8, 2138.0, 92, 83, 'strikeout');
INSERT INTO pitches VALUES (179, 16, 'FF', 98.0, 2561.0, 92, 84, 'called_strike');
INSERT INTO pitches VALUES (180, 16, 'CH', 87.4, 1855.0, 92, 84, 'ball');
INSERT INTO pitches VALUES (181, 16, 'SL', 88.3, 2701.0, 92, 84, 'swinging_strike');
INSERT INTO pitches VALUES (182, 16, 'FF', 97.4, 2541.0, 92, 84, 'strikeout');
INSERT INTO pitches VALUES (183, 16, 'FF', 97.9, 2558.0, 92, 85, 'foul');
INSERT INTO pitches VALUES (184, 16, 'SL', 88.7, 2714.0, 92, 85, 'called_strike');
INSERT INTO pitches VALUES (185, 16, 'CH', 87.6, 1862.0, 92, 85, 'hit_into_play');
INSERT INTO pitches VALUES (186, 16, 'FF', 98.1, 2564.0, 92, 86, 'called_strike');
INSERT INTO pitches VALUES (187, 16, 'SL', 88.1, 2694.0, 92, 86, 'ball');
INSERT INTO pitches VALUES (188, 16, 'CU', 80.5, 2128.0, 92, 86, 'swinging_strike');
INSERT INTO pitches VALUES (189, 16, 'FF', 97.7, 2551.0, 92, 86, 'strikeout');
 
-- Sean Manaea (NYM SP) pitching to PHI batters
INSERT INTO pitches VALUES (190, 16, 'FF', 93.2, 2394.0, 87, 88, 'called_strike');
INSERT INTO pitches VALUES (191, 16, 'SL', 83.1, 2554.0, 87, 88, 'ball');
INSERT INTO pitches VALUES (192, 16, 'CH', 83.8, 1778.0, 87, 88, 'swinging_strike');
INSERT INTO pitches VALUES (193, 16, 'FF', 93.5, 2404.0, 87, 88, 'strikeout');
INSERT INTO pitches VALUES (194, 16, 'SL', 82.8, 2544.0, 87, 89, 'ball');
INSERT INTO pitches VALUES (195, 16, 'FF', 93.0, 2387.0, 87, 89, 'foul');
INSERT INTO pitches VALUES (196, 16, 'CH', 83.5, 1771.0, 87, 89, 'called_strike');
INSERT INTO pitches VALUES (197, 16, 'SL', 83.3, 2561.0, 87, 89, 'hit_into_play');
 
-- GAME 17: Houston vs NY Yankees (2023-05-20)
-- Carlos Rodón (NYY SP) pitching to HOU batters
INSERT INTO pitches VALUES (198, 17, 'FF', 97.0, 2474.0, 53, 37, 'called_strike');
INSERT INTO pitches VALUES (199, 17, 'SL', 87.6, 2684.0, 53, 37, 'ball');
INSERT INTO pitches VALUES (200, 17, 'FF', 97.3, 2482.0, 53, 37, 'foul');
INSERT INTO pitches VALUES (201, 17, 'SL', 88.1, 2698.0, 53, 37, 'swinging_strike');
INSERT INTO pitches VALUES (202, 17, 'FF', 97.5, 2488.0, 53, 37, 'strikeout');
INSERT INTO pitches VALUES (203, 17, 'CH', 85.5, 1804.0, 53, 38, 'ball');
INSERT INTO pitches VALUES (204, 17, 'FF', 96.8, 2467.0, 53, 38, 'called_strike');
INSERT INTO pitches VALUES (205, 17, 'SL', 87.4, 2678.0, 53, 38, 'swinging_strike');
INSERT INTO pitches VALUES (206, 17, 'FF', 97.1, 2478.0, 53, 38, 'foul');
INSERT INTO pitches VALUES (207, 17, 'SL', 87.9, 2691.0, 53, 38, 'hit_into_play');
INSERT INTO pitches VALUES (208, 17, 'FF', 97.4, 2485.0, 53, 39, 'called_strike');
INSERT INTO pitches VALUES (209, 17, 'CU', 82.1, 2404.0, 53, 39, 'ball');
INSERT INTO pitches VALUES (210, 17, 'SL', 87.7, 2687.0, 53, 39, 'swinging_strike');
INSERT INTO pitches VALUES (211, 17, 'FF', 97.2, 2481.0, 53, 39, 'strikeout');
 
-- Framber Valdez (HOU SP) pitching to NYY batters
INSERT INTO pitches VALUES (212, 17, 'SI', 93.8, 2414.0, 12, 51, 'called_strike');
INSERT INTO pitches VALUES (213, 17, 'CU', 78.7, 2201.0, 12, 51, 'ball');
INSERT INTO pitches VALUES (214, 17, 'SI', 94.1, 2424.0, 12, 51, 'foul');
INSERT INTO pitches VALUES (215, 17, 'CH', 85.9, 1814.0, 12, 51, 'swinging_strike');
INSERT INTO pitches VALUES (216, 17, 'SI', 93.5, 2404.0, 12, 51, 'hit_into_play');
INSERT INTO pitches VALUES (217, 17, 'CU', 78.4, 2191.0, 12, 52, 'ball');
INSERT INTO pitches VALUES (218, 17, 'SI', 94.3, 2431.0, 12, 52, 'called_strike');
INSERT INTO pitches VALUES (219, 17, 'CH', 85.6, 1804.0, 12, 52, 'swinging_strike');
INSERT INTO pitches VALUES (220, 17, 'SI', 93.9, 2418.0, 12, 52, 'foul');
INSERT INTO pitches VALUES (221, 17, 'CU', 79.0, 2211.0, 12, 52, 'strikeout');


-- GAME 18: Tampa Bay vs Boston (2023-06-14)
-- Zach Eflin (TB SP) pitching to BOS batters
INSERT INTO pitches VALUES (222, 18, 'FF', 92.7, 2378.0, 112, 14, 'called_strike');
INSERT INTO pitches VALUES (223, 18, 'SL', 83.5, 2564.0, 112, 14, 'ball');
INSERT INTO pitches VALUES (224, 18, 'FF', 93.0, 2387.0, 112, 14, 'foul');
INSERT INTO pitches VALUES (225, 18, 'CH', 84.8, 1788.0, 112, 14, 'swinging_strike');
INSERT INTO pitches VALUES (226, 18, 'FF', 92.5, 2371.0, 112, 14, 'strikeout');
INSERT INTO pitches VALUES (227, 18, 'SL', 83.2, 2554.0, 112, 15, 'ball');
INSERT INTO pitches VALUES (228, 18, 'FF', 92.8, 2381.0, 112, 15, 'called_strike');
INSERT INTO pitches VALUES (229, 18, 'CU', 79.4, 2204.0, 112, 15, 'swinging_strike');
INSERT INTO pitches VALUES (230, 18, 'FF', 93.2, 2394.0, 112, 15, 'hit_into_play');
INSERT INTO pitches VALUES (231, 18, 'SL', 83.7, 2567.0, 112, 16, 'foul');
INSERT INTO pitches VALUES (232, 18, 'FF', 92.6, 2374.0, 112, 16, 'called_strike');
INSERT INTO pitches VALUES (233, 18, 'CH', 85.0, 1794.0, 112, 16, 'ball');
INSERT INTO pitches VALUES (234, 18, 'SL', 83.4, 2561.0, 112, 16, 'swinging_strike');
INSERT INTO pitches VALUES (235, 18, 'FF', 93.4, 2401.0, 112, 16, 'strikeout');
-- Chris Sale (BOS SP) pitching to TB batters
INSERT INTO pitches VALUES (236, 18, 'FF', 95.6, 2451.0, 5,  108, 'called_strike');
INSERT INTO pitches VALUES (237, 18, 'SL', 85.8, 2624.0, 5,  108, 'ball');
INSERT INTO pitches VALUES (238, 18, 'FF', 96.0, 2461.0, 5,  108, 'foul');
INSERT INTO pitches VALUES (239, 18, 'CU', 78.9, 2208.0, 5,  108, 'swinging_strike');
INSERT INTO pitches VALUES (240, 18, 'FF', 95.4, 2444.0, 5,  108, 'strikeout');
INSERT INTO pitches VALUES (241, 18, 'SL', 85.5, 2617.0, 5,  109, 'ball');
INSERT INTO pitches VALUES (242, 18, 'FF', 95.8, 2455.0, 5,  109, 'called_strike');
INSERT INTO pitches VALUES (243, 18, 'CH', 84.2, 1778.0, 5,  109, 'swinging_strike');
INSERT INTO pitches VALUES (244, 18, 'FF', 96.2, 2465.0, 5,  109, 'hit_into_play');
 

-- GAME 19: Seattle vs LA Angels (2023-07-04)
-- Logan Gilbert (SEA SP) pitching to LAA batters
INSERT INTO pitches VALUES (245, 19, 'FF', 95.8, 2455.0, 102, 43, 'called_strike');
INSERT INTO pitches VALUES (246, 19, 'SL', 85.4, 2611.0, 102, 43, 'swinging_strike');
INSERT INTO pitches VALUES (247, 19, 'FF', 96.1, 2465.0, 102, 43, 'foul');
INSERT INTO pitches VALUES (248, 19, 'CU', 79.8, 2218.0, 102, 43, 'called_strike');
INSERT INTO pitches VALUES (249, 19, 'FF', 95.6, 2448.0, 102, 43, 'strikeout');
INSERT INTO pitches VALUES (250, 19, 'SL', 85.1, 2601.0, 102, 44, 'ball');
INSERT INTO pitches VALUES (251, 19, 'FF', 95.9, 2458.0, 102, 44, 'foul');
INSERT INTO pitches VALUES (252, 19, 'CH', 84.6, 1784.0, 102, 44, 'swinging_strike');
INSERT INTO pitches VALUES (253, 19, 'FF', 96.3, 2468.0, 102, 44, 'called_strike');
INSERT INTO pitches VALUES (254, 19, 'SL', 85.6, 2617.0, 102, 44, 'hit_into_play');
INSERT INTO pitches VALUES (255, 19, 'FF', 95.7, 2451.0, 102, 45, 'foul');
INSERT INTO pitches VALUES (256, 19, 'CU', 80.1, 2228.0, 102, 45, 'ball');
INSERT INTO pitches VALUES (257, 19, 'SL', 85.3, 2608.0, 102, 45, 'called_strike');
INSERT INTO pitches VALUES (258, 19, 'FF', 96.0, 2461.0, 102, 45, 'swinging_strike');
INSERT INTO pitches VALUES (259, 19, 'CH', 84.3, 1774.0, 102, 45, 'strikeout');
 
-- Reid Detmers (LAA SP) pitching to SEA batters
INSERT INTO pitches VALUES (260, 19, 'FF', 93.7, 2408.0, 14, 98,  'called_strike');
INSERT INTO pitches VALUES (261, 19, 'CH', 84.0, 1771.0, 14, 98,  'ball');
INSERT INTO pitches VALUES (262, 19, 'SL', 83.8, 2571.0, 14, 98,  'swinging_strike');
INSERT INTO pitches VALUES (263, 19, 'FF', 94.0, 2418.0, 14, 98,  'foul');
INSERT INTO pitches VALUES (264, 19, 'SL', 84.1, 2578.0, 14, 98,  'hit_into_play');
INSERT INTO pitches VALUES (265, 19, 'FF', 93.4, 2401.0, 14, 99,  'called_strike');
INSERT INTO pitches VALUES (266, 19, 'CU', 79.5, 2208.0, 14, 99,  'ball');
INSERT INTO pitches VALUES (267, 19, 'CH', 83.7, 1764.0, 14, 99,  'swinging_strike');
INSERT INTO pitches VALUES (268, 19, 'FF', 93.8, 2411.0, 14, 99,  'strikeout');
INSERT INTO pitches VALUES (269, 19, 'SL', 83.5, 2564.0, 14, 100, 'ball');
INSERT INTO pitches VALUES (270, 19, 'FF', 93.6, 2404.0, 14, 100, 'foul');
INSERT INTO pitches VALUES (271, 19, 'CH', 84.2, 1778.0, 14, 100, 'called_strike');
INSERT INTO pitches VALUES (272, 19, 'FF', 93.9, 2414.0, 14, 100, 'hit_into_play');
 
-- GAME 20: Atlanta vs Philadelphia (2023-08-11)
-- Spencer Strider (ATL SP) pitching to PHI batters
INSERT INTO pitches VALUES (273, 20, 'FF', 99.2, 2601.0, 3,  88, 'called_strike');
INSERT INTO pitches VALUES (274, 20, 'SL', 89.3, 2727.0, 3,  88, 'swinging_strike');
INSERT INTO pitches VALUES (275, 20, 'FF', 99.5, 2611.0, 3,  88, 'strikeout');
INSERT INTO pitches VALUES (276, 20, 'SL', 89.0, 2714.0, 3,  89, 'ball');
INSERT INTO pitches VALUES (277, 20, 'FF', 99.0, 2598.0, 3,  89, 'foul');
INSERT INTO pitches VALUES (278, 20, 'CH', 87.2, 1851.0, 3,  89, 'swinging_strike');
INSERT INTO pitches VALUES (279, 20, 'FF', 99.4, 2608.0, 3,  89, 'called_strike');
INSERT INTO pitches VALUES (280, 20, 'SL', 89.5, 2734.0, 3,  89, 'strikeout');
INSERT INTO pitches VALUES (281, 20, 'FF', 98.8, 2588.0, 3,  90, 'called_strike');
INSERT INTO pitches VALUES (282, 20, 'SL', 88.8, 2714.0, 3,  90, 'ball');
INSERT INTO pitches VALUES (283, 20, 'CH', 87.0, 1844.0, 3,  90, 'swinging_strike');
INSERT INTO pitches VALUES (284, 20, 'FF', 99.3, 2604.0, 3,  90, 'foul');
INSERT INTO pitches VALUES (285, 20, 'SL', 89.2, 2721.0, 3,  90, 'hit_into_play');
INSERT INTO pitches VALUES (286, 20, 'FF', 99.6, 2614.0, 3,  91, 'called_strike');
INSERT INTO pitches VALUES (287, 20, 'CH', 87.5, 1858.0, 3,  91, 'ball');
INSERT INTO pitches VALUES (288, 20, 'SL', 89.4, 2734.0, 3,  91, 'swinging_strike');
INSERT INTO pitches VALUES (289, 20, 'FF', 99.1, 2598.0, 3,  91, 'strikeout');
 
-- Zack Wheeler (PHI SP) pitching to ATL batters
INSERT INTO pitches VALUES (290, 20, 'FF', 97.6, 2547.0, 92, 9,  'called_strike');
INSERT INTO pitches VALUES (291, 20, 'SL', 88.4, 2701.0, 92, 9,  'ball');
INSERT INTO pitches VALUES (292, 20, 'FF', 97.9, 2558.0, 92, 9,  'foul');
INSERT INTO pitches VALUES (293, 20, 'CU', 80.7, 2134.0, 92, 9,  'strikeout');
INSERT INTO pitches VALUES (294, 20, 'FF', 97.4, 2541.0, 92, 10, 'called_strike');
INSERT INTO pitches VALUES (295, 20, 'SL', 88.6, 2708.0, 92, 10, 'swinging_strike');
INSERT INTO pitches VALUES (296, 20, 'FF', 98.0, 2561.0, 92, 10, 'hit_into_play');
INSERT INTO pitches VALUES (297, 20, 'CU', 80.4, 2124.0, 92, 11, 'ball');
INSERT INTO pitches VALUES (298, 20, 'FF', 97.7, 2551.0, 92, 11, 'foul');
INSERT INTO pitches VALUES (299, 20, 'SL', 88.2, 2697.0, 92, 11, 'called_strike');
INSERT INTO pitches VALUES (300, 20, 'CH', 87.5, 1858.0, 92, 11, 'swinging_strike');
INSERT INTO pitches VALUES (301, 20, 'FF', 98.2, 2567.0, 92, 11, 'strikeout');
 
-- GAME 22: NY Mets vs LA Dodgers (2024-04-15)
-- Yoshinobu Yamamoto (LAD SP) pitching to NYM batters
INSERT INTO pitches VALUES (302, 22, 'FF', 98.2, 2567.0, 46, 83, 'called_strike');
INSERT INTO pitches VALUES (303, 22, 'FS', 90.8, 1831.0, 46, 83, 'swinging_strike');
INSERT INTO pitches VALUES (304, 22, 'SL', 89.1, 2721.0, 46, 83, 'foul');
INSERT INTO pitches VALUES (305, 22, 'FF', 98.5, 2578.0, 46, 83, 'strikeout');
INSERT INTO pitches VALUES (306, 22, 'CU', 78.8, 2204.0, 46, 84, 'ball');
INSERT INTO pitches VALUES (307, 22, 'FF', 98.0, 2561.0, 46, 84, 'called_strike');
INSERT INTO pitches VALUES (308, 22, 'FS', 90.5, 1821.0, 46, 84, 'swinging_strike');
INSERT INTO pitches VALUES (309, 22, 'SL', 88.8, 2714.0, 46, 84, 'strikeout');
INSERT INTO pitches VALUES (310, 22, 'FF', 98.3, 2571.0, 46, 85, 'foul');
INSERT INTO pitches VALUES (311, 22, 'CU', 79.1, 2214.0, 46, 85, 'ball');
INSERT INTO pitches VALUES (312, 22, 'FS', 91.0, 1838.0, 46, 85, 'swinging_strike');
INSERT INTO pitches VALUES (313, 22, 'FF', 98.6, 2581.0, 46, 85, 'called_strike');
INSERT INTO pitches VALUES (314, 22, 'SL', 89.3, 2727.0, 46, 85, 'hit_into_play');
 
-- Sean Manaea (NYM SP) pitching to LAD batters
INSERT INTO pitches VALUES (315, 22, 'FF', 93.4, 2401.0, 87, 49, 'called_strike');
INSERT INTO pitches VALUES (316, 22, 'CH', 83.9, 1781.0, 87, 49, 'ball');
INSERT INTO pitches VALUES (317, 22, 'SL', 83.4, 2561.0, 87, 49, 'swinging_strike');
INSERT INTO pitches VALUES (318, 22, 'FF', 93.7, 2411.0, 87, 49, 'foul');
INSERT INTO pitches VALUES (319, 22, 'SL', 83.7, 2571.0, 87, 49, 'strikeout');
INSERT INTO pitches VALUES (320, 22, 'FF', 93.1, 2391.0, 87, 50, 'called_strike');
INSERT INTO pitches VALUES (321, 22, 'CH', 83.6, 1778.0, 87, 50, 'ball');
INSERT INTO pitches VALUES (322, 22, 'SL', 83.2, 2554.0, 87, 50, 'swinging_strike');
INSERT INTO pitches VALUES (323, 22, 'FF', 93.5, 2404.0, 87, 50, 'hit_into_play');
 

-- GAME 24: Philadelphia vs Boston (2024-05-27)
-- Zack Wheeler (PHI SP) pitching to BOS batters
INSERT INTO pitches VALUES (324, 24, 'FF', 97.8, 2554.0, 92, 14, 'called_strike');
INSERT INTO pitches VALUES (325, 24, 'SL', 88.5, 2708.0, 92, 14, 'swinging_strike');
INSERT INTO pitches VALUES (326, 24, 'FF', 98.1, 2564.0, 92, 14, 'foul');
INSERT INTO pitches VALUES (327, 24, 'CU', 80.9, 2141.0, 92, 14, 'strikeout');
INSERT INTO pitches VALUES (328, 24, 'FF', 97.5, 2544.0, 92, 15, 'ball');
INSERT INTO pitches VALUES (329, 24, 'SL', 88.2, 2697.0, 92, 15, 'called_strike');
INSERT INTO pitches VALUES (330, 24, 'CH', 87.5, 1858.0, 92, 15, 'swinging_strike');
INSERT INTO pitches VALUES (331, 24, 'FF', 97.9, 2558.0, 92, 15, 'strikeout');
INSERT INTO pitches VALUES (332, 24, 'FF', 98.3, 2571.0, 92, 16, 'foul');
INSERT INTO pitches VALUES (333, 24, 'SL', 88.7, 2714.0, 92, 16, 'called_strike');
INSERT INTO pitches VALUES (334, 24, 'CU', 81.0, 2144.0, 92, 16, 'ball');
INSERT INTO pitches VALUES (335, 24, 'FF', 97.6, 2547.0, 92, 16, 'hit_into_play');
 
-- Chris Sale (BOS SP) pitching to PHI batters
INSERT INTO pitches VALUES (336, 24, 'FF', 95.7, 2451.0, 5,  88, 'called_strike');
INSERT INTO pitches VALUES (337, 24, 'SL', 86.0, 2631.0, 5,  88, 'ball');
INSERT INTO pitches VALUES (338, 24, 'FF', 96.1, 2465.0, 5,  88, 'foul');
INSERT INTO pitches VALUES (339, 24, 'CU', 79.2, 2198.0, 5,  88, 'swinging_strike');
INSERT INTO pitches VALUES (340, 24, 'FF', 95.5, 2448.0, 5,  88, 'strikeout');
INSERT INTO pitches VALUES (341, 24, 'SL', 85.7, 2617.0, 5,  89, 'ball');
INSERT INTO pitches VALUES (342, 24, 'FF', 95.9, 2458.0, 5,  89, 'called_strike');
INSERT INTO pitches VALUES (343, 24, 'CH', 84.5, 1784.0, 5,  89, 'swinging_strike');
INSERT INTO pitches VALUES (344, 24, 'FF', 96.3, 2468.0, 5,  89, 'foul');
INSERT INTO pitches VALUES (345, 24, 'SL', 85.9, 2624.0, 5,  89, 'hit_into_play');
INSERT INTO pitches VALUES (346, 24, 'FF', 95.4, 2444.0, 5,  90, 'called_strike');
INSERT INTO pitches VALUES (347, 24, 'CU', 79.5, 2208.0, 5,  90, 'ball');
INSERT INTO pitches VALUES (348, 24, 'SL', 85.5, 2617.0, 5,  90, 'swinging_strike');
INSERT INTO pitches VALUES (349, 24, 'FF', 96.0, 2461.0, 5,  90, 'strikeout');
 

-- GAME 25: Cleveland vs NY Yankees (2024-06-08)
-- Carlos Rodón (NYY SP) pitching to CLE batters
INSERT INTO pitches VALUES (350, 25, 'FF', 97.2, 2481.0, 53, 25, 'called_strike');
INSERT INTO pitches VALUES (351, 25, 'SL', 87.8, 2688.0, 53, 25, 'swinging_strike');
INSERT INTO pitches VALUES (352, 25, 'FF', 97.5, 2488.0, 53, 25, 'strikeout');
INSERT INTO pitches VALUES (353, 25, 'SL', 87.5, 2681.0, 53, 26, 'ball');
INSERT INTO pitches VALUES (354, 25, 'FF', 97.0, 2474.0, 53, 26, 'foul');
INSERT INTO pitches VALUES (355, 25, 'CH', 85.4, 1801.0, 53, 26, 'swinging_strike');
INSERT INTO pitches VALUES (356, 25, 'FF', 97.3, 2482.0, 53, 26, 'called_strike');
INSERT INTO pitches VALUES (357, 25, 'SL', 88.0, 2694.0, 53, 26, 'strikeout');
INSERT INTO pitches VALUES (358, 25, 'FF', 97.6, 2491.0, 53, 27, 'foul');
INSERT INTO pitches VALUES (359, 25, 'CU', 82.3, 2411.0, 53, 27, 'ball');
INSERT INTO pitches VALUES (360, 25, 'SL', 87.7, 2684.0, 53, 27, 'called_strike');
INSERT INTO pitches VALUES (361, 25, 'FF', 97.4, 2485.0, 53, 27, 'hit_into_play');
-- Shane Bieber (CLE SP) pitching to NYY batters
INSERT INTO pitches VALUES (362, 25, 'FF', 93.5, 2404.0, 9,  51, 'called_strike');
INSERT INTO pitches VALUES (363, 25, 'CU', 80.2, 2231.0, 9,  51, 'ball');
INSERT INTO pitches VALUES (364, 25, 'SL', 84.4, 2589.0, 9,  51, 'swinging_strike');
INSERT INTO pitches VALUES (365, 25, 'FF', 93.8, 2414.0, 9,  51, 'strikeout');
INSERT INTO pitches VALUES (366, 25, 'SL', 84.1, 2578.0, 9,  52, 'ball');
INSERT INTO pitches VALUES (367, 25, 'FF', 93.2, 2394.0, 9,  52, 'foul');
INSERT INTO pitches VALUES (368, 25, 'CU', 80.5, 2241.0, 9,  52, 'called_strike');
INSERT INTO pitches VALUES (369, 25, 'FF', 93.6, 2408.0, 9,  52, 'hit_into_play');
 

-- GAME 26: Milwaukee vs Chicago Cubs (2024-07-13)
-- Freddy Peralta (MIL SP) pitching to CHC batters
INSERT INTO pitches VALUES (370, 26, 'FF', 95.2, 2438.0, 77, 17, 'called_strike');
INSERT INTO pitches VALUES (371, 26, 'SL', 85.8, 2624.0, 77, 17, 'swinging_strike');
INSERT INTO pitches VALUES (372, 26, 'FF', 95.5, 2448.0, 77, 17, 'strikeout');
INSERT INTO pitches VALUES (373, 26, 'SL', 85.5, 2617.0, 77, 18, 'ball');
INSERT INTO pitches VALUES (374, 26, 'FF', 94.9, 2431.0, 77, 18, 'foul');
INSERT INTO pitches VALUES (375, 26, 'CH', 84.4, 1781.0, 77, 18, 'swinging_strike');
INSERT INTO pitches VALUES (376, 26, 'FF', 95.3, 2441.0, 77, 18, 'called_strike');
INSERT INTO pitches VALUES (377, 26, 'SL', 86.0, 2631.0, 77, 18, 'strikeout');
INSERT INTO pitches VALUES (378, 26, 'FF', 95.6, 2451.0, 77, 19, 'foul');
INSERT INTO pitches VALUES (379, 26, 'CU', 79.8, 2218.0, 77, 19, 'ball');
INSERT INTO pitches VALUES (380, 26, 'SL', 85.7, 2621.0, 77, 19, 'called_strike');
INSERT INTO pitches VALUES (381, 26, 'FF', 95.0, 2434.0, 77, 19, 'hit_into_play');
-- Justin Steele (CHC SP) pitching to MIL batters
INSERT INTO pitches VALUES (382, 26, 'FF', 94.3, 2421.0, 6,  73, 'called_strike');
INSERT INTO pitches VALUES (383, 26, 'SL', 84.7, 2597.0, 6,  73, 'ball');
INSERT INTO pitches VALUES (384, 26, 'FF', 94.6, 2431.0, 6,  73, 'foul');
INSERT INTO pitches VALUES (385, 26, 'CH', 83.8, 1771.0, 6,  73, 'swinging_strike');
INSERT INTO pitches VALUES (386, 26, 'FF', 94.1, 2418.0, 6,  73, 'strikeout');
INSERT INTO pitches VALUES (387, 26, 'SL', 84.4, 2589.0, 6,  74, 'ball');
INSERT INTO pitches VALUES (388, 26, 'FF', 94.7, 2434.0, 6,  74, 'called_strike');
INSERT INTO pitches VALUES (389, 26, 'CU', 79.5, 2208.0, 6,  74, 'swinging_strike');
INSERT INTO pitches VALUES (390, 26, 'FF', 94.4, 2424.0, 6,  74, 'hit_into_play');
INSERT INTO pitches VALUES (391, 26, 'SL', 84.9, 2604.0, 6,  75, 'foul');
INSERT INTO pitches VALUES (392, 26, 'FF', 95.0, 2434.0, 6,  75, 'called_strike');
INSERT INTO pitches VALUES (393, 26, 'CH', 84.0, 1778.0, 6,  75, 'ball');
INSERT INTO pitches VALUES (394, 26, 'SL', 84.6, 2597.0, 6,  75, 'swinging_strike');
INSERT INTO pitches VALUES (395, 26, 'FF', 94.8, 2431.0, 6,  75, 'strikeout');
 

-- GAME 27: Atlanta vs LA Dodgers (2024-08-02)
-- Yoshinobu Yamamoto (LAD SP) pitching to ATL batters
INSERT INTO pitches VALUES (396, 27, 'FF', 98.4, 2574.0, 46, 9,  'called_strike');
INSERT INTO pitches VALUES (397, 27, 'FS', 91.1, 1841.0, 46, 9,  'swinging_strike');
INSERT INTO pitches VALUES (398, 27, 'SL', 89.4, 2734.0, 46, 9,  'foul');
INSERT INTO pitches VALUES (399, 27, 'FF', 98.7, 2584.0, 46, 9,  'strikeout');
INSERT INTO pitches VALUES (400, 27, 'CU', 79.2, 2214.0, 46, 10, 'ball');
INSERT INTO pitches VALUES (401, 27, 'FF', 98.1, 2564.0, 46, 10, 'foul');
INSERT INTO pitches VALUES (402, 27, 'FS', 90.8, 1831.0, 46, 10, 'swinging_strike');
INSERT INTO pitches VALUES (403, 27, 'SL', 89.1, 2721.0, 46, 10, 'called_strike');
INSERT INTO pitches VALUES (404, 27, 'FF', 98.5, 2578.0, 46, 10, 'strikeout');
INSERT INTO pitches VALUES (405, 27, 'FF', 98.2, 2567.0, 46, 11, 'foul');
INSERT INTO pitches VALUES (406, 27, 'CU', 79.5, 2224.0, 46, 11, 'ball');
INSERT INTO pitches VALUES (407, 27, 'FS', 91.3, 1848.0, 46, 11, 'swinging_strike');
INSERT INTO pitches VALUES (408, 27, 'FF', 98.8, 2588.0, 46, 11, 'called_strike');
INSERT INTO pitches VALUES (409, 27, 'SL', 89.6, 2741.0, 46, 11, 'hit_into_play');
-- Spencer Strider (ATL SP) pitching to LAD batters
INSERT INTO pitches VALUES (410, 27, 'FF', 99.5, 2611.0, 3,  47, 'called_strike');
INSERT INTO pitches VALUES (411, 27, 'SL', 89.7, 2741.0, 3,  47, 'swinging_strike');
INSERT INTO pitches VALUES (412, 27, 'FF', 99.8, 2621.0, 3,  47, 'foul');
INSERT INTO pitches VALUES (413, 27, 'SL', 89.9, 2748.0, 3,  47, 'strikeout');
INSERT INTO pitches VALUES (414, 27, 'FF', 99.2, 2601.0, 3,  50, 'called_strike');
INSERT INTO pitches VALUES (415, 27, 'CH', 87.6, 1862.0, 3,  50, 'ball');
INSERT INTO pitches VALUES (416, 27, 'SL', 89.5, 2734.0, 3,  50, 'swinging_strike');
INSERT INTO pitches VALUES (417, 27, 'FF', 99.6, 2614.0, 3,  50, 'strikeout');
INSERT INTO pitches VALUES (418, 27, 'FF', 99.0, 2598.0, 3,  49, 'foul');
INSERT INTO pitches VALUES (419, 27, 'SL', 89.4, 2734.0, 3,  49, 'called_strike');
INSERT INTO pitches VALUES (420, 27, 'CH', 87.3, 1855.0, 3,  49, 'ball');
INSERT INTO pitches VALUES (421, 27, 'FF', 99.3, 2605.0, 3,  49, 'hit_into_play');
 
-- GAME 31: LA Dodgers vs NY Mets (2025-04-08)
-- Yoshinobu Yamamoto (LAD SP) pitching to NYM batters
INSERT INTO pitches VALUES (422, 31, 'FF', 98.6, 2581.0, 46, 83, 'called_strike');
INSERT INTO pitches VALUES (423, 31, 'SL', 89.5, 2734.0, 46, 83, 'swinging_strike');
INSERT INTO pitches VALUES (424, 31, 'FS', 91.4, 1848.0, 46, 83, 'foul');
INSERT INTO pitches VALUES (425, 31, 'FF', 98.9, 2591.0, 46, 83, 'strikeout');
INSERT INTO pitches VALUES (426, 31, 'CU', 79.3, 2217.0, 46, 84, 'ball');
INSERT INTO pitches VALUES (427, 31, 'FF', 98.3, 2571.0, 46, 84, 'foul');
INSERT INTO pitches VALUES (428, 31, 'FS', 91.1, 1841.0, 46, 84, 'swinging_strike');
INSERT INTO pitches VALUES (429, 31, 'SL', 89.2, 2721.0, 46, 84, 'strikeout');
INSERT INTO pitches VALUES (430, 31, 'FF', 99.0, 2598.0, 46, 86, 'called_strike');
INSERT INTO pitches VALUES (431, 31, 'FS', 90.9, 1834.0, 46, 86, 'ball');
INSERT INTO pitches VALUES (432, 31, 'CU', 79.6, 2228.0, 46, 86, 'swinging_strike');
INSERT INTO pitches VALUES (433, 31, 'FF', 99.2, 2604.0, 46, 86, 'foul');
INSERT INTO pitches VALUES (434, 31, 'SL', 89.7, 2741.0, 46, 86, 'hit_into_play');
 
-- Sean Manaea (NYM SP) pitching to LAD batters
INSERT INTO pitches VALUES (435, 31, 'FF', 93.6, 2408.0, 87, 47, 'called_strike');
INSERT INTO pitches VALUES (436, 31, 'CH', 84.1, 1778.0, 87, 47, 'ball');
INSERT INTO pitches VALUES (437, 31, 'SL', 83.6, 2567.0, 87, 47, 'swinging_strike');
INSERT INTO pitches VALUES (438, 31, 'FF', 93.9, 2418.0, 87, 47, 'strikeout');
INSERT INTO pitches VALUES (439, 31, 'SL', 83.3, 2557.0, 87, 48, 'ball');
INSERT INTO pitches VALUES (440, 31, 'FF', 93.3, 2397.0, 87, 48, 'foul');
INSERT INTO pitches VALUES (441, 31, 'CH', 83.8, 1771.0, 87, 48, 'called_strike');
INSERT INTO pitches VALUES (442, 31, 'SL', 83.8, 2574.0, 87, 48, 'hit_into_play');
INSERT INTO pitches VALUES (443, 31, 'FF', 93.7, 2411.0, 87, 49, 'called_strike');
INSERT INTO pitches VALUES (444, 31, 'CH', 83.4, 1764.0, 87, 49, 'ball');
INSERT INTO pitches VALUES (445, 31, 'SL', 83.1, 2551.0, 87, 49, 'swinging_strike');
INSERT INTO pitches VALUES (446, 31, 'FF', 94.0, 2418.0, 87, 49, 'strikeout');
INSERT INTO pitches VALUES (447, 31, 'SL', 83.5, 2564.0, 87, 50, 'ball');
INSERT INTO pitches VALUES (448, 31, 'FF', 93.4, 2401.0, 87, 50, 'foul');
INSERT INTO pitches VALUES (449, 31, 'CH', 84.3, 1781.0, 87, 50, 'called_strike');
INSERT INTO pitches VALUES (450, 31, 'SL', 83.9, 2578.0, 87, 50, 'swinging_strike');
INSERT INTO pitches VALUES (451, 31, 'FF', 93.8, 2414.0, 87, 50, 'hit_into_play');
 
-- GAME 33: Houston vs Atlanta (2025-05-10)
-- Framber Valdez (HOU SP) pitching to ATL batters
INSERT INTO pitches VALUES (452, 33, 'SI', 94.0, 2418.0, 12, 9,  'called_strike');
INSERT INTO pitches VALUES (453, 33, 'CH', 86.1, 1818.0, 12, 9,  'ball');
INSERT INTO pitches VALUES (454, 33, 'SI', 94.3, 2428.0, 12, 9,  'foul');
INSERT INTO pitches VALUES (455, 33, 'CU', 79.1, 2211.0, 12, 9,  'swinging_strike');
INSERT INTO pitches VALUES (456, 33, 'SI', 93.8, 2414.0, 12, 9,  'hit_into_play');
INSERT INTO pitches VALUES (457, 33, 'CH', 85.8, 1811.0, 12, 10, 'ball');
INSERT INTO pitches VALUES (458, 33, 'SI', 94.5, 2434.0, 12, 10, 'called_strike');
INSERT INTO pitches VALUES (459, 33, 'CU', 79.4, 2221.0, 12, 10, 'ball');
INSERT INTO pitches VALUES (460, 33, 'SI', 94.1, 2421.0, 12, 10, 'swinging_strike');
INSERT INTO pitches VALUES (461, 33, 'CH', 86.3, 1824.0, 12, 10, 'strikeout');
INSERT INTO pitches VALUES (462, 33, 'SI', 94.7, 2441.0, 12, 11, 'foul');
INSERT INTO pitches VALUES (463, 33, 'CU', 79.7, 2231.0, 12, 11, 'ball');
INSERT INTO pitches VALUES (464, 33, 'SI', 93.5, 2404.0, 12, 11, 'called_strike');
INSERT INTO pitches VALUES (465, 33, 'CH', 85.5, 1804.0, 12, 11, 'swinging_strike');
INSERT INTO pitches VALUES (466, 33, 'SI', 94.2, 2424.0, 12, 11, 'strikeout');
 
-- Spencer Strider (ATL SP) pitching to HOU batters
INSERT INTO pitches VALUES (467, 33, 'FF', 99.7, 2617.0, 3,  37, 'called_strike');
INSERT INTO pitches VALUES (468, 33, 'SL', 89.9, 2748.0, 3,  37, 'swinging_strike');
INSERT INTO pitches VALUES (469, 33, 'FF', 100.0, 2628.0, 3, 37, 'strikeout');
INSERT INTO pitches VALUES (470, 33, 'SL', 89.6, 2741.0, 3,  38, 'ball');
INSERT INTO pitches VALUES (471, 33, 'FF', 99.4, 2608.0, 3,  38, 'foul');
INSERT INTO pitches VALUES (472, 33, 'CH', 87.8, 1865.0, 3,  38, 'swinging_strike');
INSERT INTO pitches VALUES (473, 33, 'FF', 99.8, 2621.0, 3,  38, 'called_strike');
INSERT INTO pitches VALUES (474, 33, 'SL', 90.0, 2754.0, 3,  38, 'strikeout');
INSERT INTO pitches VALUES (475, 33, 'FF', 99.2, 2601.0, 3,  39, 'foul');
INSERT INTO pitches VALUES (476, 33, 'CU', 82.8, 2424.0, 3,  39, 'ball');
INSERT INTO pitches VALUES (477, 33, 'SL', 89.8, 2748.0, 3,  39, 'called_strike');
INSERT INTO pitches VALUES (478, 33, 'FF', 99.6, 2614.0, 3,  39, 'hit_into_play');
 

-- GAME 40: LA Dodgers vs NY Yankees — 2026 Season Opener
-- Yoshinobu Yamamoto (LAD SP) pitching to NYY batters
INSERT INTO pitches VALUES (479, 40, 'FF', 98.9, 2591.0, 46, 51, 'called_strike');
INSERT INTO pitches VALUES (480, 40, 'FS', 91.5, 1851.0, 46, 51, 'swinging_strike');
INSERT INTO pitches VALUES (481, 40, 'SL', 89.8, 2748.0, 46, 51, 'foul');
INSERT INTO pitches VALUES (482, 40, 'FF', 99.2, 2601.0, 46, 51, 'strikeout');
INSERT INTO pitches VALUES (483, 40, 'CU', 79.8, 2228.0, 46, 52, 'ball');
INSERT INTO pitches VALUES (484, 40, 'FF', 98.6, 2581.0, 46, 52, 'foul');
INSERT INTO pitches VALUES (485, 40, 'FS', 91.2, 1844.0, 46, 52, 'swinging_strike');
INSERT INTO pitches VALUES (486, 40, 'SL', 89.5, 2734.0, 46, 52, 'called_strike');
INSERT INTO pitches VALUES (487, 40, 'FF', 99.0, 2598.0, 46, 52, 'strikeout');
 
-- Carlos Rodón (NYY SP) pitching to LAD batters
INSERT INTO pitches VALUES (488, 40, 'FF', 97.8, 2554.0, 53, 47, 'called_strike');
INSERT INTO pitches VALUES (489, 40, 'SL', 88.6, 2708.0, 53, 47, 'ball');
INSERT INTO pitches VALUES (490, 40, 'FF', 98.1, 2564.0, 53, 47, 'foul');
INSERT INTO pitches VALUES (491, 40, 'SL', 88.9, 2721.0, 53, 47, 'swinging_strike');
INSERT INTO pitches VALUES (492, 40, 'FF', 97.5, 2544.0, 53, 47, 'strikeout');
INSERT INTO pitches VALUES (493, 40, 'FF', 98.3, 2571.0, 53, 49, 'called_strike');
INSERT INTO pitches VALUES (494, 40, 'CH', 85.9, 1814.0, 53, 49, 'ball');
INSERT INTO pitches VALUES (495, 40, 'SL', 88.4, 2701.0, 53, 49, 'swinging_strike');
INSERT INTO pitches VALUES (496, 40, 'FF', 97.9, 2558.0, 53, 49, 'foul');
INSERT INTO pitches VALUES (497, 40, 'SL', 88.7, 2714.0, 53, 49, 'hit_into_play');
INSERT INTO pitches VALUES (498, 40, 'FF', 98.5, 2578.0, 53, 50, 'called_strike');
INSERT INTO pitches VALUES (499, 40, 'CU', 82.5, 2418.0, 53, 50, 'ball');
INSERT INTO pitches VALUES (500, 40, 'SL', 88.2, 2697.0, 53, 50, 'swinging_strike');
INSERT INTO pitches VALUES (501, 40, 'FF', 98.0, 2561.0, 53, 50, 'foul');
INSERT INTO pitches VALUES (502, 40, 'SL', 88.5, 2708.0, 53, 50, 'strikeout');
INSERT INTO pitches VALUES (503, 40, 'FF', 97.6, 2547.0, 53, 48, 'called_strike');
INSERT INTO pitches VALUES (504, 40, 'CH', 85.6, 1808.0, 53, 48, 'ball');
INSERT INTO pitches VALUES (505, 40, 'SL', 88.0, 2694.0, 53, 48, 'swinging_strike');
INSERT INTO pitches VALUES (506, 40, 'FF', 98.2, 2567.0, 53, 48, 'strikeout');
 
-- GAME 41: Houston vs LA Dodgers (2026-04-05)
-- Framber Valdez (HOU SP) pitching to LAD batters
INSERT INTO pitches VALUES (507, 41, 'SI', 94.2, 2424.0, 12, 47, 'called_strike');
INSERT INTO pitches VALUES (508, 41, 'CH', 86.0, 1814.0, 12, 47, 'ball');
INSERT INTO pitches VALUES (509, 41, 'SI', 94.5, 2434.0, 12, 47, 'foul');
INSERT INTO pitches VALUES (510, 41, 'CU', 79.3, 2214.0, 12, 47, 'swinging_strike');
INSERT INTO pitches VALUES (511, 41, 'SI', 93.9, 2418.0, 12, 47, 'strikeout');
INSERT INTO pitches VALUES (512, 41, 'CH', 85.7, 1808.0, 12, 49, 'ball');
INSERT INTO pitches VALUES (513, 41, 'SI', 94.7, 2441.0, 12, 49, 'called_strike');
INSERT INTO pitches VALUES (514, 41, 'CU', 79.6, 2224.0, 12, 49, 'ball');
INSERT INTO pitches VALUES (515, 41, 'SI', 94.0, 2418.0, 12, 49, 'swinging_strike');
INSERT INTO pitches VALUES (516, 41, 'CH', 86.2, 1821.0, 12, 49, 'hit_into_play');
INSERT INTO pitches VALUES (517, 41, 'SI', 94.4, 2431.0, 12, 50, 'foul');
INSERT INTO pitches VALUES (518, 41, 'CU', 79.9, 2231.0, 12, 50, 'called_strike');
INSERT INTO pitches VALUES (519, 41, 'SI', 93.7, 2411.0, 12, 50, 'ball');
INSERT INTO pitches VALUES (520, 41, 'CH', 85.4, 1801.0, 12, 50, 'swinging_strike');
INSERT INTO pitches VALUES (521, 41, 'SI', 94.6, 2438.0, 12, 50, 'strikeout');
 
-- Yoshinobu Yamamoto (LAD SP) pitching to HOU batters
INSERT INTO pitches VALUES (522, 41, 'FF', 99.1, 2598.0, 46, 37, 'called_strike');
INSERT INTO pitches VALUES (523, 41, 'FS', 91.6, 1854.0, 46, 37, 'swinging_strike');
INSERT INTO pitches VALUES (524, 41, 'SL', 89.9, 2748.0, 46, 37, 'foul');
INSERT INTO pitches VALUES (525, 41, 'FF', 99.4, 2608.0, 46, 37, 'strikeout');
INSERT INTO pitches VALUES (526, 41, 'CU', 79.9, 2231.0, 46, 38, 'ball');
INSERT INTO pitches VALUES (527, 41, 'FF', 98.8, 2588.0, 46, 38, 'foul');
INSERT INTO pitches VALUES (528, 41, 'FS', 91.3, 1844.0, 46, 38, 'swinging_strike');
INSERT INTO pitches VALUES (529, 41, 'SL', 89.6, 2741.0, 46, 38, 'called_strike');
INSERT INTO pitches VALUES (530, 41, 'FF', 99.2, 2601.0, 46, 38, 'strikeout');
INSERT INTO pitches VALUES (531, 41, 'FF', 98.5, 2578.0, 46, 39, 'foul');
INSERT INTO pitches VALUES (532, 41, 'CU', 80.2, 2241.0, 46, 39, 'ball');
INSERT INTO pitches VALUES (533, 41, 'FS', 91.7, 1858.0, 46, 39, 'swinging_strike');
INSERT INTO pitches VALUES (534, 41, 'FF', 99.5, 2611.0, 46, 39, 'called_strike');
INSERT INTO pitches VALUES (535, 41, 'SL', 90.0, 2754.0, 46, 39, 'hit_into_play');
 
-- GAME 42: NY Mets vs NY Yankees (2026-04-12)
-- Carlos Rodón (NYY SP) pitching to NYM batters
INSERT INTO pitches VALUES (536, 42, 'FF', 98.0, 2561.0, 53, 83, 'called_strike');
INSERT INTO pitches VALUES (537, 42, 'SL', 88.3, 2701.0, 53, 83, 'ball');
INSERT INTO pitches VALUES (538, 42, 'FF', 98.3, 2571.0, 53, 83, 'foul');
INSERT INTO pitches VALUES (539, 42, 'SL', 88.7, 2714.0, 53, 83, 'swinging_strike');
INSERT INTO pitches VALUES (540, 42, 'FF', 97.7, 2551.0, 53, 83, 'strikeout');
INSERT INTO pitches VALUES (541, 42, 'CH', 85.8, 1811.0, 53, 84, 'ball');
INSERT INTO pitches VALUES (542, 42, 'FF', 98.1, 2564.0, 53, 84, 'called_strike');
INSERT INTO pitches VALUES (543, 42, 'SL', 88.5, 2708.0, 53, 84, 'swinging_strike');
INSERT INTO pitches VALUES (544, 42, 'FF', 97.9, 2558.0, 53, 84, 'foul');
INSERT INTO pitches VALUES (545, 42, 'SL', 88.9, 2721.0, 53, 84, 'strikeout');
INSERT INTO pitches VALUES (546, 42, 'FF', 98.4, 2574.0, 53, 85, 'foul');
INSERT INTO pitches VALUES (547, 42, 'CU', 82.4, 2414.0, 53, 85, 'ball');
INSERT INTO pitches VALUES (548, 42, 'SL', 88.1, 2694.0, 53, 85, 'called_strike');
INSERT INTO pitches VALUES (549, 42, 'FF', 97.8, 2554.0, 53, 85, 'hit_into_play');
 
-- Sean Manaea (NYM SP) pitching to NYY batters
INSERT INTO pitches VALUES (550, 42, 'FF', 93.8, 2414.0, 87, 51, 'called_strike');
INSERT INTO pitches VALUES (551, 42, 'CH', 84.2, 1781.0, 87, 51, 'ball');
INSERT INTO pitches VALUES (552, 42, 'SL', 83.7, 2571.0, 87, 51, 'swinging_strike');
INSERT INTO pitches VALUES (553, 42, 'FF', 94.1, 2424.0, 87, 51, 'strikeout');
INSERT INTO pitches VALUES (554, 42, 'SL', 83.4, 2561.0, 87, 52, 'ball');
INSERT INTO pitches VALUES (555, 42, 'FF', 93.5, 2404.0, 87, 52, 'foul');
INSERT INTO pitches VALUES (556, 42, 'CH', 84.0, 1778.0, 87, 52, 'called_strike');
INSERT INTO pitches VALUES (557, 42, 'SL', 83.9, 2578.0, 87, 52, 'hit_into_play');
 
-- GAME 43: Atlanta vs Philadelphia (2026-04-18)
-- Zack Wheeler (PHI SP) pitching to ATL batters

INSERT INTO pitches VALUES (558, 43, 'FF', 98.2, 2567.0, 92, 9,  'called_strike');
INSERT INTO pitches VALUES (559, 43, 'SL', 88.6, 2708.0, 92, 9,  'swinging_strike');
INSERT INTO pitches VALUES (560, 43, 'FF', 98.5, 2578.0, 92, 9,  'foul');
INSERT INTO pitches VALUES (561, 43, 'CU', 81.1, 2147.0, 92, 9,  'strikeout');
INSERT INTO pitches VALUES (562, 43, 'FF', 97.9, 2558.0, 92, 10, 'ball');
INSERT INTO pitches VALUES (563, 43, 'SL', 88.3, 2701.0, 92, 10, 'called_strike');
INSERT INTO pitches VALUES (564, 43, 'CH', 87.7, 1865.0, 92, 10, 'swinging_strike');
INSERT INTO pitches VALUES (565, 43, 'FF', 98.3, 2571.0, 92, 10, 'strikeout');
INSERT INTO pitches VALUES (566, 43, 'FF', 98.6, 2581.0, 92, 11, 'foul');
INSERT INTO pitches VALUES (567, 43, 'SL', 88.8, 2714.0, 92, 11, 'called_strike');
INSERT INTO pitches VALUES (568, 43, 'CU', 81.3, 2154.0, 92, 11, 'ball');
INSERT INTO pitches VALUES (569, 43, 'FF', 98.0, 2561.0, 92, 11, 'hit_into_play');
 
-- Spencer Strider (ATL SP) pitching to PHI batters
INSERT INTO pitches VALUES (570, 43, 'FF', 99.8, 2621.0, 3,  88, 'called_strike');
INSERT INTO pitches VALUES (571, 43, 'SL', 90.1, 2754.0, 3,  88, 'swinging_strike');
INSERT INTO pitches VALUES (572, 43, 'FF', 100.1, 2631.0, 3, 88, 'foul');
INSERT INTO pitches VALUES (573, 43, 'SL', 89.8, 2748.0, 3,  88, 'strikeout');
INSERT INTO pitches VALUES (574, 43, 'FF', 99.5, 2611.0, 3,  89, 'called_strike');
INSERT INTO pitches VALUES (575, 43, 'CH', 87.9, 1868.0, 3,  89, 'ball');
INSERT INTO pitches VALUES (576, 43, 'SL', 89.6, 2741.0, 3,  89, 'swinging_strike');
INSERT INTO pitches VALUES (577, 43, 'FF', 99.9, 2624.0, 3,  89, 'foul');
INSERT INTO pitches VALUES (578, 43, 'SL', 90.0, 2754.0, 3,  89, 'strikeout');
INSERT INTO pitches VALUES (579, 43, 'FF', 99.3, 2605.0, 3,  90, 'foul');
INSERT INTO pitches VALUES (580, 43, 'SL', 89.4, 2734.0, 3,  90, 'called_strike');
INSERT INTO pitches VALUES (581, 43, 'CH', 87.7, 1862.0, 3,  90, 'ball');
INSERT INTO pitches VALUES (582, 43, 'FF', 99.6, 2614.0, 3,  90, 'hit_into_play');
INSERT INTO pitches VALUES (583, 43, 'FF', 100.0, 2628.0, 3, 91, 'called_strike');
INSERT INTO pitches VALUES (584, 43, 'CH', 88.1, 1872.0, 3,  91, 'ball');
INSERT INTO pitches VALUES (585, 43, 'SL', 90.2, 2761.0, 3,  91, 'swinging_strike');
INSERT INTO pitches VALUES (586, 43, 'FF', 99.7, 2617.0, 3,  91, 'strikeout');
 

-- GAME 44: Seattle vs Chicago Cubs (2026-04-25)
-- Logan Gilbert (SEA SP) pitching to CHC batters

INSERT INTO pitches VALUES (587, 44, 'FF', 96.2, 2465.0, 102, 17, 'called_strike');
INSERT INTO pitches VALUES (588, 44, 'SL', 86.1, 2634.0, 102, 17, 'swinging_strike');
INSERT INTO pitches VALUES (589, 44, 'FF', 96.5, 2475.0, 102, 17, 'foul');
INSERT INTO pitches VALUES (590, 44, 'CU', 80.3, 2231.0, 102, 17, 'called_strike');
INSERT INTO pitches VALUES (591, 44, 'FF', 96.0, 2461.0, 102, 17, 'strikeout');
INSERT INTO pitches VALUES (592, 44, 'SL', 85.8, 2624.0, 102, 18, 'ball');
INSERT INTO pitches VALUES (593, 44, 'FF', 96.3, 2468.0, 102, 18, 'foul');
INSERT INTO pitches VALUES (594, 44, 'CH', 84.8, 1788.0, 102, 18, 'swinging_strike');
INSERT INTO pitches VALUES (595, 44, 'FF', 96.6, 2478.0, 102, 18, 'called_strike');
INSERT INTO pitches VALUES (596, 44, 'SL', 86.3, 2641.0, 102, 18, 'hit_into_play');
INSERT INTO pitches VALUES (597, 44, 'FF', 95.8, 2455.0, 102, 19, 'foul');
INSERT INTO pitches VALUES (598, 44, 'CU', 80.6, 2241.0, 102, 19, 'ball');
INSERT INTO pitches VALUES (599, 44, 'SL', 86.0, 2631.0, 102, 19, 'called_strike');
INSERT INTO pitches VALUES (600, 44, 'FF', 96.1, 2465.0, 102, 19, 'swinging_strike');
INSERT INTO pitches VALUES (601, 44, 'CH', 84.5, 1781.0, 102, 19, 'strikeout');
 
-- Justin Steele (CHC SP) pitching to SEA batters
INSERT INTO pitches VALUES (602, 44, 'FF', 94.6, 2431.0, 6,  98,  'called_strike');
INSERT INTO pitches VALUES (603, 44, 'SL', 85.1, 2604.0, 6,  98,  'ball');
INSERT INTO pitches VALUES (604, 44, 'FF', 94.9, 2441.0, 6,  98,  'foul');
INSERT INTO pitches VALUES (605, 44, 'CH', 84.1, 1778.0, 6,  98,  'swinging_strike');
INSERT INTO pitches VALUES (606, 44, 'FF', 94.3, 2421.0, 6,  98,  'strikeout');
INSERT INTO pitches VALUES (607, 44, 'SL', 84.8, 2597.0, 6,  99,  'ball');
INSERT INTO pitches VALUES (608, 44, 'FF', 95.0, 2434.0, 6,  99,  'called_strike');
INSERT INTO pitches VALUES (609, 44, 'CU', 79.8, 2218.0, 6,  99,  'swinging_strike');
INSERT INTO pitches VALUES (610, 44, 'FF', 94.7, 2434.0, 6,  99,  'hit_into_play');
INSERT INTO pitches VALUES (611, 44, 'SL', 85.2, 2608.0, 6,  100, 'foul');
INSERT INTO pitches VALUES (612, 44, 'FF', 95.2, 2438.0, 6,  100, 'called_strike');
INSERT INTO pitches VALUES (613, 44, 'CH', 84.3, 1781.0, 6,  100, 'ball');
INSERT INTO pitches VALUES (614, 44, 'SL', 84.9, 2604.0, 6,  100, 'swinging_strike');
INSERT INTO pitches VALUES (615, 44, 'FF', 94.8, 2431.0, 6,  100, 'strikeout');
INSERT INTO pitches VALUES (616, 44, 'FF', 95.3, 2441.0, 6,  101, 'called_strike');
INSERT INTO pitches VALUES (617, 44, 'SL', 85.4, 2611.0, 6,  101, 'ball');
INSERT INTO pitches VALUES (618, 44, 'FF', 94.5, 2428.0, 6,  101, 'foul');
INSERT INTO pitches VALUES (619, 44, 'CU', 80.0, 2224.0, 6,  101, 'called_strike');
INSERT INTO pitches VALUES (620, 44, 'FF', 95.1, 2438.0, 6,  101, 'hit_into_play');
