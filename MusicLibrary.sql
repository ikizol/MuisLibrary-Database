CREATE DATABASE MusicLibrary;
USE MusicLibrary;



CREATE TABLE Artists (
    ArtistID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Debut_Year YEAR,
    Nationality VARCHAR(50)
);


INSERT INTO Artists (ArtistID, Name, Debut_Year, Genre, Nationality)
VALUES 
(1, 'Beyoncé', 1997, 'American'),
(2, 'Coldplay', 1996, 'British'),
(3, 'Eminem', 1996, 'American'),
(4, 'Lady Gaga', 2008,'American'),
(5, 'Britney Spears', 1998,'American'),
(6, 'Adele', 2006, 'British'),
(7, 'Taylor Swift', 2006, 'American'),
(8, 'Drake', 2001, 'Canadian'),
(9, 'Rihanna', 2005,'Barbadian'),
(10, 'Bruno Mars', 2010, 'American'),
(11, 'Ed Sheeran', 2011, 'British'),
(12, 'Tate McRae', 2017, 'Canadian'),
(13, 'The Beatles', 1963,'British'),
(14, 'BTS', 2013,'South Korea'),
(15, 'BLACKPINK', 2016,'South Korea'),
(16, 'Dojacat', 2014,'American'),
(17, 'FLO', 2019, 'British'),
(18, 'Cigarettes After Sex', 2012,'American'),
(19, 'Mariah Carey', 1990, 'American'),
(20, 'Michael Jackson', 1964,'American'),
(21, 'Christina Aguilera', 1999,'American'),
(22, 'TLC', 1992,'American'),
(23, 'SWV', 1992,'American');


CREATE TABLE Genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO Genres (name)
VALUES 
('Pop'),
('Rock'),
('Hip-Hop'),
('R&B');

CREATE TABLE Albums (
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    artist_id INT,
    genre_id INT,
    release_year YEAR,
    FOREIGN KEY (artist_id) REFERENCES Artists(ArtistID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id) ON DELETE SET NULL ON UPDATE CASCADE
);



INSERT INTO Albums (title, artist_id, genre_id, release_year)
VALUES 
('Lemonade', 1, 2, 2016),
('A Rush of Blood to the Head', 2, 3, 2002),
('The Eminem Show', 3, 4, 2002),
('The Fame Monster', 4, 1, 2011),
('21', 6, 1, 2011),
('Abbey Road', 13, 2, 1969),
('Dangerously in Love', 1, 4, 2003),
('Born This Way', 4,1, 2011),
('Take Care', 8, 3, 2011),
('In the Zone', 5, 1, 2003),
('1989', 7, 1, 2020),
('Fearless', 7, 5, 2008),
('The Beatles (White Album)', 13,2, 1968),
('Thriller', 20, 1, 1982),
('Blackout', 5, 1, 2007),
('Red', 7, 5, 2012),
('Hot Pink', 16, 1, 2020),
('Anti',9 ,3, 2016),
('Its About Time', 23, 3, 1992),
('Crazy Sexy Cool',22, 3,1994),
('Back to Basics', 21, 1,2006),
('Unorthodox Jukebox', 10,1, 2012),
('Think Later', 12, 4, 2023),
('Love Yourself: Tear', 14, 1, 2018),
('The Album', 15, 1, 2020), 
('The Lead (EP)', 17, 4, 2022),
('Cry', 18, 1, 2019),
('The. Emancipation of Mimi', 19, 4, 2005);

