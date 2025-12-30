-- CRUISE_LINE INSERTS
INSERT INTO CRUISE_LINE VALUES
('Royal Caribbean', 'royal_logo.png', 27, 'Adventure focused big ships', 4.6, 'Broadway shows, surf rider', 'royal_line.jpg'),
('Norwegian Cruise Line', 'norwegian_logo.png', 19, 'Freestyle modern cruising vibe', 4.4, 'Live music theme nights', 'norwegian_line.jpg'),
('Carnival Cruise Line', 'carnival_logo.png', 24, 'Affordable fun family experience', 4.2, 'Comedy club water parks', 'carnival_line.jpg'),
('MSC Cruises', 'msc_logo.png', 22, 'European style onboard service', 4.3, 'Opera shows fine dining', 'msc_line.jpg'),
('Celebrity Cruises', 'celebrity_logo.png', 15, 'Modern luxury relaxed elegance', 4.7, 'Art galleries wine tastings', 'celebrity_line.jpg');
GO

-- CRUISE_SHIP INSERTS
INSERT INTO CRUISE_SHIP VALUES
('Wonder of the Seas', 2022, 2300, 6988, 3.04, 'Caribbean seven night loop', 4.8, 'Pools rink surf rider', 12, 'wonder_ship.jpg', 'Royal Caribbean'),
('Norwegian Encore', 2019, 1700, 3998, 2.35, 'Alaska and Panama canal', 4.6, 'Kart track laser tag', 8, 'encore_ship.jpg', 'Norwegian Cruise Line'),
('Carnival Mardi Gras', 2021, 1800, 5282, 2.93, 'Bahamas and short getaways', 4.5, 'Roller coaster comedy club', 10, 'mardigras_ship.jpg', 'Carnival Cruise Line'),
('MSC Seaside', 2017, 1500, 4134, 2.75, 'Mediterranean coastal explorer', 4.4, 'Aqua park zip line', 9, 'seaside_ship.jpg', 'MSC Cruises'),
('Celebrity Apex', 2020, 1400, 2910, 2.08, 'Greek isles iconic route', 4.9, 'Rooftop garden Eden lounge', 7, 'apex_ship.jpg', 'Celebrity Cruises');
GO

-- CRUISE_TRIP INSERTS 
INSERT INTO CRUISE_TRIP VALUES
(4101, 'Eastern Caribbean Adventure', 'Miami', 'Bahamas, St. Thomas, St. Maarten', 7, 1299.99, 'Caribbean focus itinerary', 'trip_4101.jpg', 'Wonder of the Seas', 'Royal Caribbean'),
(4102, 'Alaskan Glacier Voyage', 'Seattle', 'Ketchikan, Juneau, Skagway', 7, 1599.00, 'Alaska glacier sightseeing', 'trip_4102.jpg', 'Norwegian Encore', 'Norwegian Cruise Line'),
(4103, 'Mediterranean Odyssey', 'Barcelona', 'Rome, Naples, Athens', 10, 1899.50, 'Mediterranean culture highlights', 'trip_4103.jpg', 'MSC Seaside', 'MSC Cruises'),
(4104, 'Bahamas Getaway', 'Port Canaveral', 'Nassau, Half Moon Cay', 5, 899.99, 'Short tropical escape', 'trip_4104.jpg', 'Carnival Mardi Gras', 'Carnival Cruise Line'),
(4105, 'Greek Isles Luxury', 'Athens', 'Santorini, Mykonos, Crete', 8, 2099.99, 'Europe island hopping', 'trip_4105.jpg', 'Celebrity Apex', 'Celebrity Cruises');
GO

-- DESTINATION INSERTS
INSERT INTO DESTINATION VALUES
('Bahamas', 'Turquoise water beach time', 'Island', 'dest_bahamas.jpg'),
('St. Thomas', 'Harbor views duty free', 'Island', 'dest_stthomas.jpg'),
('Barcelona', 'Gaudi art vibrant streets', 'City', 'dest_barcelona.jpg'),
('Athens', 'Ancient sites classic ruins', 'City', 'dest_athens.jpg'),
('Santorini', 'Cliffside sunsets blue domes', 'Island', 'dest_santorini.jpg');
GO

-- PORT INSERTS 
INSERT INTO PORT VALUES
(5101, 'Port of Nassau', 'Nassau', 'port_nassau.jpg', 4104, 'Bahamas'),
(5102, 'Havensight Pier', 'Charlotte Amalie', 'port_stthomas.jpg', 4101, 'St. Thomas'),
(5103, 'Port of Barcelona', 'Barcelona', 'port_barcelona.jpg', 4103, 'Barcelona'),
(5104, 'Port of Piraeus', 'Athens', 'port_athens.jpg', 4105, 'Athens'),
(5105, 'Athinios Port', 'Santorini', 'port_santorini.jpg', 4105, 'Santorini');
GO

-- CRUISE_DEAL INSERTS
INSERT INTO CRUISE_DEAL VALUES
(6201, 999.99, 7, 'deal_6201.jpg', 'https://www.royalcaribbean.com/deal1', 'Royal Caribbean', 4101),
(6202, 1499.50, 7, 'deal_6202.jpg', 'https://www.ncl.com/deal2', 'Norwegian Cruise Line', 4102),
(6203, 1799.00, 10, 'deal_6203.jpg', 'https://www.msccruises.com/deal3', 'MSC Cruises', 4103),
(6204, 749.99, 5, 'deal_6204.jpg', 'https://www.carnival.com/deal4', 'Carnival Cruise Line', 4104),
(6205, 1999.00, 8, 'deal_6205.jpg', 'https://www.celebritycruises.com/deal5', 'Celebrity Cruises', 4105);
GO

-- USER_ACCOUNT INSERTS 
INSERT INTO USER_ACCOUNT VALUES
(7001, 'AbrarJawadTarafder', '2023-06-15', 12, 'Top Reviewer', 'abrar123'),
(7002, 'ShoumikAhmed', '2023-07-05', 8, 'Travel Expert', 'shoumik123'),
(7003, 'EkambirMomi', '2023-05-20', 10, 'Cruise Enthusiast', 'ekam123'),
(7004, 'JasveenSahani', '2023-08-10', 5, 'New Contributor', 'jasveen123'),
(7005, 'VrindaKhanduja', '2023-09-02', 6, 'Photo Uploader', 'vrinda123');
GO

-- FORUM INSERTS
INSERT INTO FORUM VALUES
(8001, 7001, 'Tips for first cruise', 'Advice', '2024-01-10 10:30:00'),
(8002, 7002, 'Best Alaska shore tours', 'Excursions', '2024-02-15 14:45:00'),
(8003, 7003, 'Mediterranean dining picks', 'Dining', '2024-03-22 09:20:00'),
(8004, 7004, 'Bahamas with kids tips', 'Family', '2024-04-18 16:05:00'),
(8005, 7005, 'Greek isles photo spots', 'Photography', '2024-05-25 19:40:00');
GO

-- COMMUNITY_REVIEW INSERTS 
INSERT INTO COMMUNITY_REVIEW VALUES
(9001, 4.8, 'Amazing Caribbean cruise', '2024-03-12', 'rev_9001.jpg', 7001, 'Wonder of the Seas', 'Royal Caribbean'),
(9002, 4.6, 'Loved the glacier views', '2024-05-10', 'rev_9002.jpg', 7002, 'Norwegian Encore', 'Norwegian Cruise Line'),
(9003, 4.4, 'Great Mediterranean flavors', '2024-06-20', 'rev_9003.jpg', 7003, 'MSC Seaside', 'MSC Cruises'),
(9004, 4.2, 'Fun short Bahamas trip', '2024-02-25', 'rev_9004.jpg', 7004, 'Carnival Mardi Gras', 'Carnival Cruise Line'),
(9005, 5.0, 'Unforgettable Greek luxury', '2024-07-01', 'rev_9005.jpg', 7005, 'Celebrity Apex', 'Celebrity Cruises');
GO

-- ADVICE INSERTS
INSERT INTO ADVICE VALUES
(10001, 'Pack light breathable layers', 'Check port weather updates', 9001),
(10002, 'Book glacier excursions early', 'Bring binoculars for wildlife', 9002),
(10003, 'Reserve specialty dining early', 'Wear comfy shoes for ruins', 9003),
(10004, 'Bring reef safe sunscreen', 'Plan kid friendly activities', 9004),
(10005, 'Sunset deck photo timing', 'Prebook tender priority spots', 9005);
GO

-- CRUISE_TRIP_STYLE INSERTS
INSERT INTO CRUISE_TRIP_STYLE VALUES
('Family Adventure', 4101),
('Scenic Wilderness', 4102),
('Culture Immersion', 4103),
('Quick Getaway', 4104),
('Modern Luxury', 4105);
GO

-- CRUISE_ITINERARY INSERTS 
INSERT INTO CRUISE_ITINERARY VALUES
(11001, 4101, 'map_4101.png', 'Eastern loop ports', 7),
(11002, 4102, 'map_4102.png', 'Inside passage route', 7),
(11003, 4103, 'map_4103.png', 'Western med highlights', 10),
(11004, 4104, 'map_4104.png', 'Bahamas short circuit', 5),
(11005, 4105, 'map_4105.png', 'Cyclades scenic circle', 8);
GO

-- VISITS INSERTS
INSERT INTO VISITS VALUES
(11001, 4101, 'Bahamas'),
(11001, 4101, 'St. Thomas'),
(11003, 4103, 'Barcelona'),
(11005, 4105, 'Athens'),
(11005, 4105, 'Santorini');
GO

-- CRUISE_SHIP_CABIN INSERTS
INSERT INTO CRUISE_SHIP_CABIN VALUES
(12001, 'Wonder of the Seas'),
(12002, 'Norwegian Encore'),
(12003, 'Carnival Mardi Gras'),
(12004, 'MSC Seaside'),
(12005, 'Celebrity Apex');
GO

-- CRUISE_TRIP_EXCURSIONS INSERTS 
INSERT INTO CRUISE_TRIP_EXCURSIONS VALUES
('Nassau snorkeling tour', 4104),
('Mendenhall glacier hike', 4102),
('Vatican museums skipline', 4103),
('St Thomas skyride view', 4101),
('Santorini catamaran sail', 4105);
GO

-- APPLIES_TO INSERTS 
INSERT INTO APPLIES_TO VALUES
(6201, 11001, 4101),
(6202, 11002, 4102),
(6203, 11003, 4103),
(6204, 11004, 4104),
(6205, 11005, 4105);
GO

-- DISCUSSES INSERTS 
INSERT INTO DISCUSSES VALUES
(8001, 7001, 9001),
(8002, 7002, 9002),
(8003, 7003, 9003),
(8004, 7004, 9004),
(8005, 7005, 9005);
GO

