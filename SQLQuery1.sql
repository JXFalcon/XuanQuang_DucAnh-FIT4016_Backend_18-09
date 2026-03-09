SELECT * FROM Teams;
SELECT Id, Name, Played, Won, Drawn, Lost, Points 
FROM Teams 
ORDER BY Points DESC, (Won * 3 + Drawn) DESC;
SELECT Name, Logo FROM Teams;