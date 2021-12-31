create table if not exists Genre (
    id serial primary key,
    name_genre varchar(40) unique not null
);

create table if not exists Artist (
    id serial primary key, 
    artist_name varchar(40) unique not null 
);

create table if not exists Genre_Artist (
    id serial primary key, 
    genre_id integer not null references Genre(id),
    artist_id integer not null references Artist(id) 
);

create table Albums (
    id serial primary key, 
    name_album varchar(40) unique not null, 
    date_release integer
);

create table if not exists Artist_Albums (
    id serial primary key, 
    artist_id integer not null references Artist(id),
    albums_id integer not null references Albums(id)
);

create table Tracks (
    id serial primary key,
    track_name text not null,
    track_time serial,
    album_id integer not null references Albums(id)
);

create table Sborniks (
    id serial primary key,
    sbornik_name text not null,
    year_release integer
);

create table if not exists Sborniks_Tracks (
    id serial primary key, 
    tracks_id integer not null references Tracks(id),
    sbornik_id integer not null references Sborniks(id)
);