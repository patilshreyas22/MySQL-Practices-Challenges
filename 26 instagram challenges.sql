use ig_clone;

SHOW tables;

SELECT * FROM users;

SELECT * FROM likes;

/* 5 oldest users */

SELECT * FROM users 
ORDER BY created_at
LIMIT 5;

/* MOST POPULAR REGISTRATION DATE */

SELECT COUNT(*) AS No_Of_Days,
DAYNAME(created_at) AS 'days'
FROM users
GROUP BY days
ORDER BY No_Of_Days DESC
LIMIT 2;

/* inactive users */

SHOW TABLES;
SELECT * FROM PHOTOS;

SELECT username FROM photos
RIGHT JOIN users ON users.id = photos.user_id
WHERE image_url IS NULL;	

/* most liked photo */

select username , photo_id , image_url , count(*) as total_likes from likes
INNER JOIN photos ON photos.id = likes.photo_id
INNER JOIN users ON users.id = photos.user_id
group by photo_id
order by count(*) DESC
LIMIT 1;

/* AVG NO OF PHOTOTS PER USER */

SELECT ((SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users)) AS 'Avg Posts by a User';

show tables;
select * from photo_tags;
select * from tags;

/* top 5 hashtags */

SELECT tag_name , tag_id , COUNT(*) FROM photo_tags
INNER JOIN tags ON tags.id = photo_tags.tag_id
GROUP BY tag_name , tag_id
ORDER BY COUNT(*) DESC
LIMIT 5;


/* bots , user who have liked every photo */

SHOW TABLES;

/* We have used sub query here that it the hacing clause line , where it will display the likes on the total no of phoots keeping the query dynamic and not hard coded */

SELECT username ,count(*) from likes
INNER JOIN users ON users.id = likes.user_id
GROUP BY username , user_id
HAVING count(*) = (SELECT COUNT(*) FROM photos);

