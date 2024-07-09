drop table band_genres
alter table bands add genre_1 int;
alter table bands add genre_2 int;
alter table bands add genre_3 int;
alter table bands add genre_4 int;
alter table bands add constraint bands_fk_Genre_1 foreign key (genre_1) references genres(id);
alter table bands add constraint bands_fk_Genre_2 foreign key (genre_2) references genres(id);
alter table bands add constraint bands_fk_Genre_3 foreign key (genre_3) references genres(id);
alter table bands add constraint bands_fk_Genre_4 foreign key (genre_4) references genres(id);
