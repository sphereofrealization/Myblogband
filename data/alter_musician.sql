alter table musicians add genre_1 int;
alter table musicians add genre_2 int;
alter table musicians add genre_3 int;
alter table musicians add constraint musicians_fk_genre_1 foreign key (genre_1) references genres (id); 
alter table musicians add constraint musicians_fk_genre_2 foreign key (genre_2) references genres (id); 
alter table musicians add constraint musicians_fk_genre_3 foreign key (genre_3) references genres (id); 
