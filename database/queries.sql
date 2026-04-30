select u.name, m.title, r.rental_date
from rentals r
join users u on r.user_id = u.user_id
join movies m on r.movie_id = m.movie_id

select m.title, count(*) as rentals_count
from rentals r
join movies m on r.movie_id = m.movie_id
group by m.title
order by rentals_count desc

select m.title, avg(r.rating) as avg_rating
from ratings r
join movies m on r.movie_id = m.movie_id
group by m.title
