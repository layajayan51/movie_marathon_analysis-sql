-- SQL Question 1: Movie Marathon Analysis ,Scenario: 
-- You are a data analyst for "CineFlex," a streaming platform. Your team wants to understand user 
-- watch patterns for movies, specifically focusing on how many movies a user has watched and the total duration.


--  create database moviedb;
-- use moviedb;

-- -- Create Movies table
-- CREATE TABLE Movies (
--     movie_id INT PRIMARY KEY,
--     title VARCHAR(100),
--     genre VARCHAR(50),
--     duration_minutes INT
-- );

-- -- Insert sample data into Movies
-- INSERT INTO Movies (movie_id, title, genre, duration_minutes) VALUES
-- (101, 'The Great Adventure', 'Action', 120),
-- (102, 'Romantic Evening', 'Romance', 90),
-- (103, 'Sci-Fi Future', 'Sci-Fi', 150),
-- (104, 'Comedy Hour', 'Comedy', 80),
-- (105, 'Drama Queen', 'Drama', 110);

-- -- Create WatchHistory table
-- CREATE TABLE WatchHistory (
--     watch_id INT PRIMARY KEY,
--     user_id INT,
--     movie_id INT,
--     watch_date DATE,
--     FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
-- );

-- -- Insert sample data into WatchHistory
-- INSERT INTO WatchHistory (watch_id, user_id, movie_id, watch_date) VALUES
-- (1, 1, 101, '2024-01-05'),
-- (2, 2, 102, '2024-01-06'),
-- (3, 1, 103, '2024-01-07'),
-- (4, 3, 101, '2024-01-08'),
-- (5, 2, 101, '2024-01-09'),
-- (6, 1, 102, '2024-01-10'),
-- (7, 4, 104, '2024-01-11'),
-- (8, 3, 105, '2024-01-12'),
-- (9, 2, 105, '2024-01-13');
-- select * from movies;
--  select * from watchhistory;
-- select w.user_id,count(w.movie_id) as movies_watched,sum(m.duration_minutes)
-- from watchhistory as w left join movies as m on w.movie_id=m.movie_id
-- group by w.user_id order by movies_watched desc limit 3;