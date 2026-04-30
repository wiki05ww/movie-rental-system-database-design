insert into categories (name) values ('action'), ('comedy'), ('drama')

insert into users (name, email, password)
values ('jan kowalski', 'jan@example.com', '1234')

insert into movies (title, description, category_id, price)
values ('inception', 'sci-fi movie', 1, 9.99)

insert into rentals (user_id, movie_id, rental_date, return_date, status)
values (1, 1, getdate(), dateadd(day, 2, getdate()), 'active')

insert into ratings (user_id, movie_id, rating, comment)
values (1, 1, 5, 'swietny film!')
