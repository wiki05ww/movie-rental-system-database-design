create database MovieRental
go
use MovieRental

-- users
create table users (
    user_id int identity(1,1) primary key,
    name varchar(100),
    email varchar(100) unique,
    password varchar(100),   --hashowane
    role varchar(20) default 'user'
)

-- categories
create table categories (
    category_id int identity(1,1) primary key,
    name varchar(50)
)

-- movies
create table movies (
    movie_id int identity(1,1) primary key,
    title varchar(150),
    description varchar(max),
    category_id int,
    price decimal(5,2),
    foreign key (category_id) references categories(category_id)
)

-- rentals
create table rentals (
    rental_id int identity(1,1) primary key,
    user_id int,
    movie_id int,
    rental_date date,
    return_date date,
    status varchar(20),
    foreign key (user_id) references users(user_id),
    foreign key (movie_id) references movies(movie_id)
)

-- ratings
create table ratings (
    rating_id int identity(1,1) primary key,
    user_id int,
    movie_id int,
    rating int check (rating between 1 and 5),
    comment text,
    foreign key (user_id) references users(user_id),
    foreign key (movie_id) references movies(movie_id)

)
