alter table musician_tracks drop post_date;
alter table musician_tracks add create_date timestamp;
alter table musician_tracks add order_by int;
