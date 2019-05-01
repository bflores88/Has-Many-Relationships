-- --1
-- select *
-- from users;

-- --2
-- select *
-- from posts
-- where user_id = 100;

-- --3
-- select posts.*, users.first_name, users.last_name
-- from posts
--   inner join users on users.id = posts.user_id
-- where posts.user_id = 200;

-- --4
-- select posts.*, users.username
-- from posts
--   inner join users on posts.user_id = users.id
-- where users.first_name = 'Norene' and users.last_name = 'Schmitt';

-- --5
-- select users.username
-- from users
--   inner join posts on users.id = posts.user_id
-- where posts.created_at > '2015-01-01';

-- --6
-- select posts.title, posts.content, users.username
-- from posts
--   inner join users on posts.user_id = users.id
-- where users.created_at < '2015-01-01';

-- --7
-- select posts.title as "Post Title", comments.*
-- from comments
--   inner join posts on comments.post_id = posts.id

-- --8
-- select *, posts.title as "post_title", posts.url as "post_url", comments.body as "comment_body"
-- from comments
--   inner join posts on comments.post_id = posts.id
-- where posts.created_at < '2015-01-01';

-- --9
-- select *, posts.title as "post_title", posts.url as "post_url", comments.body as "comment_body"
-- from comments
--   inner join posts on comments.post_id = posts.id
-- where posts.created_at > '2015-01-01';

-- --10
-- select posts.title as "post_title", posts.url as "post_url", comments.body as "comment_body"
-- from comments
--   inner join posts on comments.post_id = posts.id
-- where comments.body like '%USB%';

-- --11
-- select posts.title as "post_title", users.first_name, users.last_name, comments.body as "comment_body"
-- from posts
--   inner join comments on comments.post_id = posts.id
--   inner join users on posts.user_id = users.id
-- where comments.body like '%matrix%';

-- --12
-- select distinct users.first_name, users.last_name, comments.body as "comment_body"
-- from comments
--   inner join users on comments.user_id = users.id
--   inner join posts on comments.post_id = posts.id
-- where comments.body like '%SSL%' and posts.content like '%dolorum%';

--13
select distinct users.first_name as "post_author_first_name", users.last_name as "post_author_last_name", posts.title as "post_title", users.username as 
"comment_author_username", comments.body as "comment_body"
from posts
  inner join users on posts.user_id = users.id
  inner join comments on posts.id = comments.post_id
where comments.body like '%SSL%' and posts.content like '%nemo%' or comments.body like '%firewall%' and posts.content like '%nemo%';

-- --Additional Queries

-- --1
-- select count(*)
-- from comments
--   inner join posts on comments.post_id = posts.id
-- where posts.created_at > '2015-07-14';

-- --2
-- select *
-- from users
--   inner join comments on users.id = comments.user_id
-- where comments.body like '%programming%';