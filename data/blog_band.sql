-- ================================================================================
--   postgres SQL DDL Script File
-- ================================================================================


-- ===============================================================================
-- 
--   Generated by:      tedia2sql -- v1.2.12
--                      See http://tedia2sql.tigris.org/AUTHORS.html for tedia2sql author information
-- 
--   Target Database:   postgres
--   Generated at:      Wed Mar 14 10:52:31 2007
--   Input Files:       Diagram1.dia
-- 
-- ================================================================================



-- Generated SQL Constraints Drop statements
-- --------------------------------------------------------------------
--     Target Database:   postgres
--     SQL Generator:     tedia2sql -- v1.2.12
--     Generated at:      Wed Mar 14 10:52:30 2007
--     Input Files:       Diagram1.dia

-- alter table musicians drop constraint musicians_fk_Instrument_1-- (is implicitly done)
-- alter table musicians drop constraint musicians_fk_Instrument_2-- (is implicitly done)
-- alter table musicians drop constraint musicians_fk_Instrument_3-- (is implicitly done)
-- alter table musicians drop constraint musicians_fk_Instrument_4-- (is implicitly done)
-- alter table musician_tracks drop constraint musician_tracks_fk_Musician-- (is implicitly done)
-- alter table musician_images drop constraint musician_images_fk_Musician-- (is implicitly done)
-- alter table musician_band drop constraint musician_band_fk_Musician-- (is implicitly done)
-- alter table musician_band drop constraint musician_band_fk_Band-- (is implicitly done)
-- alter table band_genres drop constraint band_genres_fk_Band-- (is implicitly done)
-- alter table band_images drop constraint band_images_fk_Band-- (is implicitly done)
-- alter table songs drop constraint songs_fk_Band-- (is implicitly done)
-- alter table track_internal_comments drop constraint track_internal_comments_fk_Track-- (is implicitly done)
-- alter table band_comments drop constraint band_comments_fk_Band-- (is implicitly done)
-- alter table band_internal_comments drop constraint band_internal_comments_fk_Band-- (is implicitly done)
-- alter table musician_band_invitations drop constraint musician_band_invitations_fk_Musician-- (is implicitly done)
-- alter table musician_band_invitations drop constraint musician_band_invitations_fk_Band-- (is implicitly done)
-- alter table band_genres drop constraint band_genres_fk_Genre-- (is implicitly done)
-- alter table tracks drop constraint tracks_fk_Song-- (is implicitly done)
-- alter table registrants drop constraint registrants_fk_Musician-- (is implicitly done)
-- alter table tracks drop constraint tracks_fk_Musician-- (is implicitly done)
-- alter table band_comments drop constraint band_comments_fk_Registrant-- (is implicitly done)
-- alter table band_internal_comments drop constraint band_internal_comments_fk_Musician-- (is implicitly done)
-- alter table song_comments drop constraint song_comments_fk_Song-- (is implicitly done)
-- alter table song_comments drop constraint song_comments_fk_Registrant-- (is implicitly done)


-- Generated Permissions Drops
-- --------------------------------------------------------------------
--     Target Database:   postgres
--     SQL Generator:     tedia2sql -- v1.2.12
--     Generated at:      Wed Mar 14 10:52:30 2007
--     Input Files:       Diagram1.dia




-- Generated SQL View Drop Statements
-- --------------------------------------------------------------------
--     Target Database:   postgres
--     SQL Generator:     tedia2sql -- v1.2.12
--     Generated at:      Wed Mar 14 10:52:30 2007
--     Input Files:       Diagram1.dia



-- Generated SQL Schema Drop statements
-- --------------------------------------------------------------------
--     Target Database:   postgres
--     SQL Generator:     tedia2sql -- v1.2.12
--     Generated at:      Wed Mar 14 10:52:30 2007
--     Input Files:       Diagram1.dia

drop table musicians cascade ;
drop table instruments cascade ;
drop table musician_tracks cascade ;
drop table musician_images cascade ;
drop table bands cascade ;
drop table genres cascade ;
drop table musician_band cascade ;
drop table tracks cascade ;
drop table track_internal_comments cascade ;
drop table band_images cascade ;
drop table band_comments cascade ;
drop table band_internal_comments cascade ;
drop table registrants cascade ;
drop table musician_band_invitations cascade ;
drop table band_genres cascade ;
drop table songs cascade ;
drop table song_comments cascade ;


-- Generated SQL Schema
-- --------------------------------------------------------------------
--     Target Database:   postgres
--     SQL Generator:     tedia2sql -- v1.2.12
--     Generated at:      Wed Mar 14 10:52:30 2007
--     Input Files:       Diagram1.dia


-- musicians
create table musicians (
  id                        serial primary key,
  first_name                text,
  last_name                 text,
  address                   text,
  address_2                 text,
  city                      text,
  state                     text,
  zip                       text,
  country                   text,
  phone                     text,
  date_of_birth             timestamp,
  email                     text,
  background                text,
  influences                text,
  gear                      text,
  instrument_1              int,
  instrument_2              int,
  instrument_3              int,
  instrument_4              int,
  featured                  boolean,
  instrument_1_years_played int,
  instrument_2_years_played int,
  instrument_3_years_played int,
  instrument_4_years_played int,
  create_date               timestamp,
  last_update               timestamp
) ;

-- instruments
create table instruments (
  id                        serial primary key,
  name                      text
) ;

-- musician_tracks
create table musician_tracks (
  id                        serial primary key,
  musician                  int,
  title                     text,
  notes                     text,
  filename                  text,
  post_date                 timestamp,
  num_plays                 int
) ;

-- musician_images
create table musician_images (
  id                        serial primary key,
  musician                  int,
  filename                  text,
  order_by                  int
) ;

-- bands
create table bands (
  id                        serial primary key,
  name                      text,
  description               text,
  influences                text,
  memorable_shows           text,
  featured                  boolean,
  create_date               timestamp,
  last_update               timestamp
) ;

-- genres
create table genres (
  id                        serial primary key,
  name                      text,
  description               text
) ;

-- musician_band
create table musician_band (
  musician                  int,
  band                      int
) ;

-- tracks
create table tracks (
  id                        serial primary key,
  song                      int,
  musician                  int,
  instrument                int,
  filename                  text,
  comments                  text,
  public                    boolean,
  num_plays                 int,
  is_audition               boolean,
  post_date                 timestamp,
  order_by                  int
) ;

-- track_internal_comments
create table track_internal_comments (
  id                        serial primary key,
  track                     int,
  musician                  int,
  comment                   text,
  create_date               timestamp
) ;

-- band_images
create table band_images (
  id                        serial primary key,
  band                      int,
  filename                  text,
  order_by                  int
) ;

-- band_comments
create table band_comments (
  id                        serial primary key,
  band                      int,
  comment                   text,
  create_date               timestamp,
  registrant                int,
  rating                    int
) ;

-- band_internal_comments
create table band_internal_comments (
  id                        serial primary key,
  band                      int,
  musician                  int,
  comment                   text,
  create_date               timestamp
) ;

-- registrants
create table registrants (
  id                        serial primary key,
  username                  text,
  password                  text,
  email                     text,
  musician                  int,
  create_date               timestamp,
  last_update               timestamp
) ;

-- musician_band_invitations
create table musician_band_invitations (
  musician                  int,
  band                      int,
  create_date               timestamp
) ;

-- band_genres
create table band_genres (
  band                      int,
  genre                     int,
  order_by                  int
) ;

-- songs
create table songs (
  id                        serial primary key,
  band                      int,
  title                     text,
  description               text
) ;

-- song_comments
create table song_comments (
  id                        serial primary key,
  song                      int,
  comment                   text,
  registrant                int,
  rating                    int,
  create_date               timestamp
) ;



















-- Generated SQL Views
-- --------------------------------------------------------------------
--     Target Database:   postgres
--     SQL Generator:     tedia2sql -- v1.2.12
--     Generated at:      Wed Mar 14 10:52:30 2007
--     Input Files:       Diagram1.dia




-- Generated Permissions
-- --------------------------------------------------------------------
--     Target Database:   postgres
--     SQL Generator:     tedia2sql -- v1.2.12
--     Generated at:      Wed Mar 14 10:52:30 2007
--     Input Files:       Diagram1.dia



-- Generated SQL Insert statements
-- --------------------------------------------------------------------
--     Target Database:   postgres
--     SQL Generator:     tedia2sql -- v1.2.12
--     Generated at:      Wed Mar 14 10:52:30 2007
--     Input Files:       Diagram1.dia



-- Generated SQL Constraints
-- --------------------------------------------------------------------
--     Target Database:   postgres
--     SQL Generator:     tedia2sql -- v1.2.12
--     Generated at:      Wed Mar 14 10:52:30 2007
--     Input Files:       Diagram1.dia

alter table musicians add constraint musicians_fk_Instrument_1
  foreign key (instrument_1)
  references instruments (id)  ;
alter table musicians add constraint musicians_fk_Instrument_2
  foreign key (instrument_2)
  references instruments (id)  ;
alter table musicians add constraint musicians_fk_Instrument_3
  foreign key (instrument_3)
  references instruments (id)  ;
alter table musicians add constraint musicians_fk_Instrument_4
  foreign key (instrument_4)
  references instruments (id)  ;
alter table musician_tracks add constraint musician_tracks_fk_Musician
  foreign key (musician)
  references musicians (id)  ;
alter table musician_images add constraint musician_images_fk_Musician
  foreign key (musician)
  references musicians (id)  ;
alter table musician_band add constraint musician_band_fk_Musician
  foreign key (musician)
  references musicians (id)  ;
alter table musician_band add constraint musician_band_fk_Band
  foreign key (band)
  references bands (id)  ;
alter table band_genres add constraint band_genres_fk_Band
  foreign key (band)
  references bands (id)  ;
alter table band_images add constraint band_images_fk_Band
  foreign key (band)
  references bands (id)  ;
alter table songs add constraint songs_fk_Band
  foreign key (band)
  references bands (id)  ;
alter table track_internal_comments add constraint track_internal_comments_fk_Track
  foreign key (track)
  references tracks (id)  ;
alter table band_comments add constraint band_comments_fk_Band
  foreign key (band)
  references bands (id)  ;
alter table band_internal_comments add constraint band_internal_comments_fk_Band
  foreign key (band)
  references bands (id)  ;
alter table musician_band_invitations add constraint musician_band_invitations_fk_Musician
  foreign key (musician)
  references musicians (id)  ;
alter table musician_band_invitations add constraint musician_band_invitations_fk_Band
  foreign key (band)
  references bands (id)  ;
alter table band_genres add constraint band_genres_fk_Genre
  foreign key (genre)
  references genres (id)  ;
alter table tracks add constraint tracks_fk_Song
  foreign key (song)
  references songs (id)  ;
alter table registrants add constraint registrants_fk_Musician
  foreign key (musician)
  references musicians (id)  ;
alter table tracks add constraint tracks_fk_Musician
  foreign key (musician)
  references musicians (id)  ;
alter table band_comments add constraint band_comments_fk_Registrant
  foreign key (registrant)
  references registrants (id)  ;
alter table band_internal_comments add constraint band_internal_comments_fk_Musician
  foreign key (musician)
  references musicians (id)  ;
alter table song_comments add constraint song_comments_fk_Song
  foreign key (song)
  references songs (id)  ;
alter table song_comments add constraint song_comments_fk_Registrant
  foreign key (registrant)
  references registrants (id)  ;
