INSERT INTO Disciplines (Name, Description) VALUES
(N'Bóng đá', N'Môn thể thao vua'),
(N'Bóng rổ', N'Thi đấu bằng tay'),
(N'Cầu lông', N'Dùng vợt và cầu'),
(N'Bóng chuyền', N'Thi đấu qua lưới'),
(N'Quần vợt', N'Thi đấu cá nhân hoặc đôi');
 select *from Disciplines
 SELECT * FROM Teams
-- ======================
-- COACHES
-- ======================
INSERT INTO Coaches (Name, Email, Phone) VALUES
(N'Nguyễn Văn An', 'an@gmail.com', '0901111111'),
(N'Trần Văn Bình', 'binh@gmail.com', '0902222222'),
(N'Lê Văn Cường', 'cuong@gmail.com', '0903333333'),
(N'Phạm Văn Dũng', 'dung@gmail.com', '0904444444'),
(N'Hoàng Văn Huy', 'huy@gmail.com', '0905555555');

-- ======================
-- TEAMS
-- ======================
INSERT INTO Teams (Name, CoachId) VALUES
(N'Team Dragon',1),
(N'Team Tiger',2),
(N'Team Phoenix',3),
(N'Team Shark',4),
(N'Team Eagle',5);

-- ======================
-- PLAYERS
-- ======================
INSERT INTO Players (Name, Age, TeamId) VALUES
(N'Nguyễn Văn A',20,1),
(N'Nguyễn Văn B',21,1),
(N'Nguyễn Văn C',22,1),

(N'Trần Văn D',23,2),
(N'Trần Văn E',24,2),
(N'Trần Văn F',25,2),

(N'Lê Văn G',20,3),
(N'Lê Văn H',21,3),
(N'Lê Văn I',22,3),

(N'Phạm Văn J',23,4),
(N'Phạm Văn K',24,4),
(N'Phạm Văn L',25,4),

(N'Hoàng Văn M',21,5),
(N'Hoàng Văn N',22,5),
(N'Hoàng Văn O',23,5);

-- ======================
-- SPONSORS
-- ======================
INSERT INTO Sponsors (Name, ContactEmail) VALUES
(N'Nike','nike@gmail.com'),
(N'Adidas','adidas@gmail.com'),
(N'Puma','puma@gmail.com'),
(N'Pepsi','pepsi@gmail.com'),
(N'Coca Cola','coca@gmail.com');

-- ======================
-- VENUES
-- ======================
INSERT INTO Venues (Name, Location) VALUES
(N'Sân Mỹ Đình',N'Hà Nội'),
(N'Sân Thống Nhất',N'TP HCM'),
(N'Sân Hàng Đẫy',N'Hà Nội'),
(N'Sân Lạch Tray',N'Hải Phòng');

-- ======================
-- TOURNAMENTS
-- ======================
INSERT INTO Tournaments (Name, StartDate, EndDate, VenueId) VALUES
(N'Giải Sinh Viên 2026','2026-04-01','2026-04-10',1),
(N'Giải Mùa Xuân','2026-05-01','2026-05-07',2),
(N'Giải Mùa Hè','2026-06-01','2026-06-10',3);

-- ======================
-- MATCHES
-- ======================
INSERT INTO Matches (TeamAId, TeamBId, MatchDate, VenueId) VALUES
(1,2,'2026-04-02',1),
(3,4,'2026-04-03',2),
(2,5,'2026-04-04',3),
(1,3,'2026-04-05',4),
(4,5,'2026-04-06',1);

-- ======================
-- TOURNAMENT SPONSORS
-- ======================
INSERT INTO TournamentSponsors (TournamentId, SponsorId) VALUES
(1,1),
(1,2),
(2,3),
(2,4),
(3,5);

