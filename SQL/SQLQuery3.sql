INSERT INTO Disciplines (Name, Type) VALUES ('Football',1);
INSERT INTO Disciplines (Name, Type) VALUES ('Basketball',1);
INSERT INTO Disciplines (Name, Type) VALUES ('Tennis',2);
INSERT INTO Disciplines (Name, Type) VALUES ('Badminton',2);
INSERT INTO Disciplines (Name, Type) VALUES ('Volleyball',1);

SELECT * FROM Disciplines;

INSERT INTO Venues (Name, Location, Capacity) VALUES ('Old Trafford','Manchester',75000);
INSERT INTO Venues (Name, Location, Capacity) VALUES ('Camp Nou','Barcelona',99000);
INSERT INTO Venues (Name, Location, Capacity) VALUES ('Santiago Bernabeu','Madrid',81000);
INSERT INTO Venues (Name, Location, Capacity) VALUES ('My Dinh Stadium','Hanoi',40000);
INSERT INTO Venues (Name, Location, Capacity) VALUES ('Wembley Stadium','London',90000);

SELECT * FROM Venues;

INSERT INTO Users (Username, Password, Role)
VALUES ('user','123456',1);
SELECT * FROM Users;

INSERT INTO Teams (Name, Country) VALUES ('Tiger Team','Thailand');
INSERT INTO Teams (Name, Country) VALUES ('Phoenix Team','Japan');
INSERT INTO Teams (Name, Country) VALUES ('Dragon Team','China');
INSERT INTO Teams (Name, Country) VALUES ('Lion Team','England');
INSERT INTO Teams (Name, Country) VALUES ('Eagle Team','USA');
INSERT INTO Teams (Name, Country) VALUES ('Samurai Team','Japan');
INSERT INTO Teams (Name, Country) VALUES ('Golden Star','Vietnam');
INSERT INTO Teams (Name, Country) VALUES ('Red Warriors','Korea');
INSERT INTO Teams (Name, Country) VALUES ('Blue Sharks','Australia');
INSERT INTO Teams (Name, Country) VALUES ('Thunder FC','Germany');
INSERT INTO Teams (Name, Country) VALUES ('Storm United','France');
INSERT INTO Teams (Name, Country) VALUES ('Rising Sun','Japan');
INSERT INTO Teams (Name, Country) VALUES ('Mekong Legends','Vietnam');
INSERT INTO Teams (Name, Country) VALUES ('Bangkok Giants','Thailand');
INSERT INTO Teams (Name, Country) VALUES ('Seoul Tigers','Korea');
SELECT * FROM Teams

INSERT INTO Sponsors (Name, Industry) VALUES ('Nike','Sportswear');
INSERT INTO Sponsors (Name, Industry) VALUES ('Adidas','Sportswear');
INSERT INTO Sponsors (Name, Industry) VALUES ('Puma','Sportswear');
INSERT INTO Sponsors (Name, Industry) VALUES ('Samsung','Technology');
INSERT INTO Sponsors (Name, Industry) VALUES ('Apple','Technology');
INSERT INTO Sponsors (Name, Industry) VALUES ('Sony','Electronics');
INSERT INTO Sponsors (Name, Industry) VALUES ('Coca Cola','Beverage');
INSERT INTO Sponsors (Name, Industry) VALUES ('Pepsi','Beverage');
INSERT INTO Sponsors (Name, Industry) VALUES ('Red Bull','Energy Drink');
INSERT INTO Sponsors (Name, Industry) VALUES ('Toyota','Automotive');
INSERT INTO Sponsors (Name, Industry) VALUES ('Honda','Automotive');
INSERT INTO Sponsors (Name, Industry) VALUES ('Hyundai','Automotive');
INSERT INTO Sponsors (Name, Industry) VALUES ('Viettel','Telecommunications');
INSERT INTO Sponsors (Name, Industry) VALUES ('VNPT','Telecommunications');
INSERT INTO Sponsors (Name, Industry) VALUES ('FPT','Technology');
INSERT INTO Sponsors (Name, Industry) VALUES ('Grab','Transportation');
INSERT INTO Sponsors (Name, Industry) VALUES ('Shopee','E-commerce');
INSERT INTO Sponsors (Name, Industry) VALUES ('Lazada','E-commerce');
INSERT INTO Sponsors (Name, Industry) VALUES ('Unilever','Consumer Goods');
INSERT INTO Sponsors (Name, Industry) VALUES ('Nestle','Food & Beverage');
SELECT * FROM Sponsors

INSERT INTO Players (Name, Age, TeamId) VALUES ('Nguyen Van A',22,1);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Tran Van B',24,1);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Le Van C',23,1);

INSERT INTO Players (Name, Age, TeamId) VALUES ('Kenji Tanaka',25,2);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Hiroshi Sato',27,2);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Takumi Ito',21,2);

INSERT INTO Players (Name, Age, TeamId) VALUES ('Chen Wei',26,3);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Li Jun',24,3);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Zhang Hao',23,3);

INSERT INTO Players (Name, Age, TeamId) VALUES ('John Smith',28,4);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Michael Brown',26,4);
INSERT INTO Players (Name, Age, TeamId) VALUES ('David Wilson',24,4);

INSERT INTO Players (Name, Age, TeamId) VALUES ('Carlos Lopez',27,5);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Luis Garcia',25,5);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Miguel Torres',23,5);

INSERT INTO Players (Name, Age, TeamId) VALUES ('Park Ji Hoon',24,6);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Kim Min Jae',26,6);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Lee Kang In',22,6);

INSERT INTO Players (Name, Age, TeamId) VALUES ('Nguyen Quang Hai',26,7);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Do Hung Dung',29,7);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Nguyen Tien Linh',25,7);

INSERT INTO Players (Name, Age, TeamId) VALUES ('Alex Johnson',24,8);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Chris Evans',27,8);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Ryan Walker',23,8);

INSERT INTO Players (Name, Age, TeamId) VALUES ('Tom Anderson',25,9);
INSERT INTO Players (Name, Age, TeamId) VALUES ('James Carter',26,9);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Daniel Scott',22,9);

INSERT INTO Players (Name, Age, TeamId) VALUES ('Robert King',28,10);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Kevin White',24,10);
INSERT INTO Players (Name, Age, TeamId) VALUES ('Jason Hall',23,10);

SELECT * FROM Players



SELECT * FROM Matches

INSERT INTO Tournaments (Name, Type, StartDate, EndDate, DisciplineId, VenueId)
VALUES ('World Cup 2026', 1, '2026-06-10', '2026-07-10', 1, 1);

INSERT INTO Tournaments (Name, Type, StartDate, EndDate, DisciplineId, VenueId)
VALUES ('Champions League', 2, '2025-09-10', '2026-05-30', 1, 2);

INSERT INTO Tournaments (Name, Type, StartDate, EndDate, DisciplineId, VenueId)
VALUES ('Asian Cup', 1, '2025-01-10', '2025-02-10', 1, 3);

INSERT INTO Tournaments (Name, Type, StartDate, EndDate, DisciplineId, VenueId)
VALUES ('SEA Games', 3, '2025-05-01', '2025-05-20', 1, 4);
SELECT * FROM Tournaments