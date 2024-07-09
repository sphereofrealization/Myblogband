--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: meta
--

SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('genres', 'id'), 11, true);


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: meta
--

--INSERT INTO genres VALUES (1, 'Rock', NULL);
--INSERT INTO genres VALUES (2, 'Rhythm and Blues', NULL);
--INSERT INTO genres VALUES (3, 'Electronic', NULL);
--INSERT INTO genres VALUES (4, 'Soul', NULL);
--INSERT INTO genres VALUES (5, 'House', NULL);
--INSERT INTO genres VALUES (7, 'Dance', NULL);
--INSERT INTO genres VALUES (8, 'Jazz', NULL);
--INSERT INTO genres VALUES (9, 'Blues', NULL);
--INSERT INTO genres VALUES (10, 'Classical', NULL);
--INSERT INTO genres VALUES (11, 'Film Score', NULL);
INSERT INTO genres VALUES (12, 'Gospel', NULL);
INSERT INTO genres VALUES (13, 'Latin American', NULL);
INSERT INTO genres VALUES (14, 'Funk', NULL);
INSERT INTO genres VALUES (15, 'Pop', NULL);
INSERT INTO genres VALUES (16, 'Country', NULL);
INSERT INTO genres VALUES (17, 'Electronic', NULL);
INSERT INTO genres VALUES (18, 'Melodic', NULL);
INSERT INTO genres VALUES (19, 'Ska, Reggae, Dub', NULL);
INSERT INTO genres VALUES (20, 'Hip Hop', NULL);
INSERT INTO genres VALUES (21, 'Rap', NULL);
INSERT INTO genres VALUES (22, 'Contemporary African music', NULL);
INSERT INTO genres VALUES (23, 'Gong and chime music', NULL);
INSERT INTO genres VALUES (24, 'Avant-guarde', NULL);
INSERT INTO genres VALUES (25, 'Terror', NULL);
INSERT INTO genres VALUES (26, 'Trance', NULL);
INSERT INTO genres VALUES (27, 'Ambient', NULL);
INSERT INTO genres VALUES (28, 'Punk', NULL);
INSERT INTO genres VALUES (29, 'Metal', NULL);
INSERT INTO genres VALUES (30, 'Hardcore', NULL);
INSERT INTO genres VALUES (31, 'Christian', NULL);
INSERT INTO genres VALUES (32, 'Industrial', NULL);
INSERT INTO genres VALUES (33, 'Disco', NULL);
INSERT INTO genres VALUES (34, 'Eurobeat', NULL);
INSERT INTO genres VALUES (35, 'Experimental', NULL);
INSERT INTO genres VALUES (36, 'Impressionist', NULL);
INSERT INTO genres VALUES (37, 'Vocal', NULL);
INSERT INTO genres VALUES (38, 'Singer/Songwriter', NULL);
INSERT INTO genres VALUES (39, 'Noise', NULL);
INSERT INTO genres VALUES (40, 'Synth', NULL);
INSERT INTO genres VALUES (41, 'Techno', NULL);
INSERT INTO genres VALUES (42, 'Alternative', NULL);
INSERT INTO genres VALUES (43, 'A''cappella', NULL);


--
-- PostgreSQL database dump complete
--

