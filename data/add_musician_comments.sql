create table musician_comments (
id serial primary key,
musician integer,
comment text,
create_date timestamp,
registrant integer,
rating integer
);
alter table musician_comments add constraint musicians_fk_organization foreign key (musician) references musicians (id);
alter table musician_comments add constraint registrants_fk_organization foreign key (registrant) references registrants (id);
