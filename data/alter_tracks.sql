alter table tracks add create_date timestamp;
alter table tracks drop post_date;
alter table tracks add downloadable boolean;

