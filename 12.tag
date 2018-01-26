toc.dat                                                                                             0000600 0004000 0002000 00000031654 13232611225 0014445 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       0    #                 v            Library    9.6.4    10.1 2    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         �           1262    16490    Library    DATABASE     �   CREATE DATABASE "Library" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE "Library";
             postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false         �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                     3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false         �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1         �            1259    16502    author    TABLE     }   CREATE TABLE author (
    fio character varying(300) NOT NULL,
    birthday date NOT NULL,
    id_author integer NOT NULL
);
    DROP TABLE public.author;
       public         postgres    false    3         �            1259    16652    author_id_author_seq    SEQUENCE     v   CREATE SEQUENCE author_id_author_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.author_id_author_seq;
       public       postgres    false    185    3         �           0    0    author_id_author_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE author_id_author_seq OWNED BY author.id_author;
            public       postgres    false    190         �            1259    16582    book    TABLE     �  CREATE TABLE book (
    name character varying(100),
    content text NOT NULL,
    page_count integer NOT NULL,
    isbn character varying(100) NOT NULL,
    publish_year integer,
    descr character varying(5000),
    rating integer,
    vote_count integer,
    id_book integer NOT NULL,
    author_id_book integer NOT NULL,
    genre_id_book integer NOT NULL,
    publisher_id_book integer NOT NULL
);
    DROP TABLE public.book;
       public         postgres    false    3         �            1259    16677    book_id_book_seq    SEQUENCE     r   CREATE SEQUENCE book_id_book_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.book_id_book_seq;
       public       postgres    false    3    188         �           0    0    book_id_book_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE book_id_book_seq OWNED BY book.id_book;
            public       postgres    false    193         �            1259    16553    genre    TABLE     |   CREATE TABLE genre (
    name character varying(100) NOT NULL,
    parent bigint NOT NULL,
    id_genre integer NOT NULL
);
    DROP TABLE public.genre;
       public         postgres    false    3         �            1259    16660    genre_id_genre_seq    SEQUENCE     t   CREATE SEQUENCE genre_id_genre_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.genre_id_genre_seq;
       public       postgres    false    186    3         �           0    0    genre_id_genre_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE genre_id_genre_seq OWNED BY genre.id_genre;
            public       postgres    false    191         �            1259    16566 	   publisher    TABLE     h   CREATE TABLE publisher (
    name character varying(100) NOT NULL,
    id_publisher integer NOT NULL
);
    DROP TABLE public.publisher;
       public         postgres    false    3         �            1259    16668    publisher_id_publisher_seq    SEQUENCE     |   CREATE SEQUENCE publisher_id_publisher_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.publisher_id_publisher_seq;
       public       postgres    false    3    187         �           0    0    publisher_id_publisher_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE publisher_id_publisher_seq OWNED BY publisher.id_publisher;
            public       postgres    false    192         �            1259    16605    vote    TABLE     �   CREATE TABLE vote (
    username character varying(100) NOT NULL,
    id_vote integer NOT NULL,
    id_book_vote integer NOT NULL
);
    DROP TABLE public.vote;
       public         postgres    false    3         �            1259    16700    vote_id_vote_seq    SEQUENCE     r   CREATE SEQUENCE vote_id_vote_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.vote_id_vote_seq;
       public       postgres    false    3    189         �           0    0    vote_id_vote_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE vote_id_vote_seq OWNED BY vote.id_vote;
            public       postgres    false    194         �           2604    16654    author id_author    DEFAULT     f   ALTER TABLE ONLY author ALTER COLUMN id_author SET DEFAULT nextval('author_id_author_seq'::regclass);
 ?   ALTER TABLE public.author ALTER COLUMN id_author DROP DEFAULT;
       public       postgres    false    190    185         �           2604    16679    book id_book    DEFAULT     ^   ALTER TABLE ONLY book ALTER COLUMN id_book SET DEFAULT nextval('book_id_book_seq'::regclass);
 ;   ALTER TABLE public.book ALTER COLUMN id_book DROP DEFAULT;
       public       postgres    false    193    188         �           2604    16662    genre id_genre    DEFAULT     b   ALTER TABLE ONLY genre ALTER COLUMN id_genre SET DEFAULT nextval('genre_id_genre_seq'::regclass);
 =   ALTER TABLE public.genre ALTER COLUMN id_genre DROP DEFAULT;
       public       postgres    false    191    186         �           2604    16670    publisher id_publisher    DEFAULT     r   ALTER TABLE ONLY publisher ALTER COLUMN id_publisher SET DEFAULT nextval('publisher_id_publisher_seq'::regclass);
 E   ALTER TABLE public.publisher ALTER COLUMN id_publisher DROP DEFAULT;
       public       postgres    false    192    187         �           2604    16702    vote id_vote    DEFAULT     ^   ALTER TABLE ONLY vote ALTER COLUMN id_vote SET DEFAULT nextval('vote_id_vote_seq'::regclass);
 ;   ALTER TABLE public.vote ALTER COLUMN id_vote DROP DEFAULT;
       public       postgres    false    194    189         v          0    16502    author 
   TABLE DATA               3   COPY author (fio, birthday, id_author) FROM stdin;
    public       postgres    false    185       2166.dat y          0    16582    book 
   TABLE DATA               �   COPY book (name, content, page_count, isbn, publish_year, descr, rating, vote_count, id_book, author_id_book, genre_id_book, publisher_id_book) FROM stdin;
    public       postgres    false    188       2169.dat w          0    16553    genre 
   TABLE DATA               0   COPY genre (name, parent, id_genre) FROM stdin;
    public       postgres    false    186       2167.dat x          0    16566 	   publisher 
   TABLE DATA               0   COPY publisher (name, id_publisher) FROM stdin;
    public       postgres    false    187       2168.dat z          0    16605    vote 
   TABLE DATA               8   COPY vote (username, id_vote, id_book_vote) FROM stdin;
    public       postgres    false    189       2170.dat �           0    0    author_id_author_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('author_id_author_seq', 5, true);
            public       postgres    false    190         �           0    0    book_id_book_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('book_id_book_seq', 3, true);
            public       postgres    false    193         �           0    0    genre_id_genre_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('genre_id_genre_seq', 5, true);
            public       postgres    false    191         �           0    0    publisher_id_publisher_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('publisher_id_publisher_seq', 3, true);
            public       postgres    false    192         �           0    0    vote_id_vote_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('vote_id_vote_seq', 2, true);
            public       postgres    false    194         �           2606    16659    author author_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id_author);
 <   ALTER TABLE ONLY public.author DROP CONSTRAINT author_pkey;
       public         postgres    false    185         �           2606    16687    book book_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id_book);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public         postgres    false    188         �           2606    16667    genre genre_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id_genre);
 :   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
       public         postgres    false    186         �           2606    16675    publisher publisher_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY publisher
    ADD CONSTRAINT publisher_pkey PRIMARY KEY (id_publisher);
 B   ALTER TABLE ONLY public.publisher DROP CONSTRAINT publisher_pkey;
       public         postgres    false    187         �           2606    16707    vote vote_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY vote
    ADD CONSTRAINT vote_pkey PRIMARY KEY (id_vote);
 8   ALTER TABLE ONLY public.vote DROP CONSTRAINT vote_pkey;
       public         postgres    false    189         �           1259    16719    fki_auther_id_book_too_auther    INDEX     Q   CREATE INDEX fki_auther_id_book_too_auther ON book USING btree (author_id_book);
 1   DROP INDEX public.fki_auther_id_book_too_auther;
       public         postgres    false    188         �           1259    16725    fki_genre_id_book_too_id_genre    INDEX     Q   CREATE INDEX fki_genre_id_book_too_id_genre ON book USING btree (genre_id_book);
 2   DROP INDEX public.fki_genre_id_book_too_id_genre;
       public         postgres    false    188         �           1259    16713    fki_id_book_vote_too_id_book    INDEX     N   CREATE INDEX fki_id_book_vote_too_id_book ON vote USING btree (id_book_vote);
 0   DROP INDEX public.fki_id_book_vote_too_id_book;
       public         postgres    false    189         �           1259    16731 &   fki_publisher_id_book_too_id_publisher    INDEX     ]   CREATE INDEX fki_publisher_id_book_too_id_publisher ON book USING btree (publisher_id_book);
 :   DROP INDEX public.fki_publisher_id_book_too_id_publisher;
       public         postgres    false    188         �           2606    16714    book auther_id_book_too_auther    FK CONSTRAINT     ~   ALTER TABLE ONLY book
    ADD CONSTRAINT auther_id_book_too_auther FOREIGN KEY (author_id_book) REFERENCES author(id_author);
 H   ALTER TABLE ONLY public.book DROP CONSTRAINT auther_id_book_too_auther;
       public       postgres    false    2032    185    188         �           2606    16720    book genre_id_book_too_id_genre    FK CONSTRAINT     |   ALTER TABLE ONLY book
    ADD CONSTRAINT genre_id_book_too_id_genre FOREIGN KEY (genre_id_book) REFERENCES genre(id_genre);
 I   ALTER TABLE ONLY public.book DROP CONSTRAINT genre_id_book_too_id_genre;
       public       postgres    false    188    2034    186                     2606    16708    vote id_book_vote_too_id_book    FK CONSTRAINT     w   ALTER TABLE ONLY vote
    ADD CONSTRAINT id_book_vote_too_id_book FOREIGN KEY (id_book_vote) REFERENCES book(id_book);
 G   ALTER TABLE ONLY public.vote DROP CONSTRAINT id_book_vote_too_id_book;
       public       postgres    false    188    189    2038         �           2606    16726 '   book publisher_id_book_too_id_publisher    FK CONSTRAINT     �   ALTER TABLE ONLY book
    ADD CONSTRAINT publisher_id_book_too_id_publisher FOREIGN KEY (publisher_id_book) REFERENCES publisher(id_publisher);
 Q   ALTER TABLE ONLY public.book DROP CONSTRAINT publisher_id_book_too_id_publisher;
       public       postgres    false    2036    188    187                                                                                            2166.dat                                                                                            0000600 0004000 0002000 00000000145 13232611225 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2dcfed	2018-01-25	1
dede	2018-01-17	2
ergerg	2018-01-27	3
dfg	2018-01-12	4
rertert	2018-01-19	5
\.


                                                                                                                                                                                                                                                                                                                                                                                                                           2169.dat                                                                                            0000600 0004000 0002000 00000000165 13232611225 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        ewfwf	wefwefewf	234	fefwefewf	2342	fwefewfwf	2323	23223	1	1	1	1
yukyuk	yukyku	565	yt	5656	5656	565	5656	3	1	1	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                           2167.dat                                                                                            0000600 0004000 0002000 00000000077 13232611225 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        gbrfthrt	23	1
dfgb	5	2
tghrth	4	3
ghlui	6	4
45gtg	45454	5
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                 2168.dat                                                                                            0000600 0004000 0002000 00000000036 13232611225 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        rthrthrt	1
454	2
4545]	3
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  2170.dat                                                                                            0000600 0004000 0002000 00000000005 13232611225 0014233 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000026507 13232611225 0015373 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.4
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.book DROP CONSTRAINT publisher_id_book_too_id_publisher;
ALTER TABLE ONLY public.vote DROP CONSTRAINT id_book_vote_too_id_book;
ALTER TABLE ONLY public.book DROP CONSTRAINT genre_id_book_too_id_genre;
ALTER TABLE ONLY public.book DROP CONSTRAINT auther_id_book_too_auther;
DROP INDEX public.fki_publisher_id_book_too_id_publisher;
DROP INDEX public.fki_id_book_vote_too_id_book;
DROP INDEX public.fki_genre_id_book_too_id_genre;
DROP INDEX public.fki_auther_id_book_too_auther;
ALTER TABLE ONLY public.vote DROP CONSTRAINT vote_pkey;
ALTER TABLE ONLY public.publisher DROP CONSTRAINT publisher_pkey;
ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
ALTER TABLE ONLY public.author DROP CONSTRAINT author_pkey;
ALTER TABLE public.vote ALTER COLUMN id_vote DROP DEFAULT;
ALTER TABLE public.publisher ALTER COLUMN id_publisher DROP DEFAULT;
ALTER TABLE public.genre ALTER COLUMN id_genre DROP DEFAULT;
ALTER TABLE public.book ALTER COLUMN id_book DROP DEFAULT;
ALTER TABLE public.author ALTER COLUMN id_author DROP DEFAULT;
DROP SEQUENCE public.vote_id_vote_seq;
DROP TABLE public.vote;
DROP SEQUENCE public.publisher_id_publisher_seq;
DROP TABLE public.publisher;
DROP SEQUENCE public.genre_id_genre_seq;
DROP TABLE public.genre;
DROP SEQUENCE public.book_id_book_seq;
DROP TABLE public.book;
DROP SEQUENCE public.author_id_author_seq;
DROP TABLE public.author;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: author; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE author (
    fio character varying(300) NOT NULL,
    birthday date NOT NULL,
    id_author integer NOT NULL
);


ALTER TABLE author OWNER TO postgres;

--
-- Name: author_id_author_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE author_id_author_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE author_id_author_seq OWNER TO postgres;

--
-- Name: author_id_author_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE author_id_author_seq OWNED BY author.id_author;


--
-- Name: book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE book (
    name character varying(100),
    content text NOT NULL,
    page_count integer NOT NULL,
    isbn character varying(100) NOT NULL,
    publish_year integer,
    descr character varying(5000),
    rating integer,
    vote_count integer,
    id_book integer NOT NULL,
    author_id_book integer NOT NULL,
    genre_id_book integer NOT NULL,
    publisher_id_book integer NOT NULL
);


ALTER TABLE book OWNER TO postgres;

--
-- Name: book_id_book_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE book_id_book_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE book_id_book_seq OWNER TO postgres;

--
-- Name: book_id_book_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE book_id_book_seq OWNED BY book.id_book;


--
-- Name: genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE genre (
    name character varying(100) NOT NULL,
    parent bigint NOT NULL,
    id_genre integer NOT NULL
);


ALTER TABLE genre OWNER TO postgres;

--
-- Name: genre_id_genre_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE genre_id_genre_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE genre_id_genre_seq OWNER TO postgres;

--
-- Name: genre_id_genre_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE genre_id_genre_seq OWNED BY genre.id_genre;


--
-- Name: publisher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE publisher (
    name character varying(100) NOT NULL,
    id_publisher integer NOT NULL
);


ALTER TABLE publisher OWNER TO postgres;

--
-- Name: publisher_id_publisher_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE publisher_id_publisher_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE publisher_id_publisher_seq OWNER TO postgres;

--
-- Name: publisher_id_publisher_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE publisher_id_publisher_seq OWNED BY publisher.id_publisher;


--
-- Name: vote; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE vote (
    username character varying(100) NOT NULL,
    id_vote integer NOT NULL,
    id_book_vote integer NOT NULL
);


ALTER TABLE vote OWNER TO postgres;

--
-- Name: vote_id_vote_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE vote_id_vote_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vote_id_vote_seq OWNER TO postgres;

--
-- Name: vote_id_vote_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE vote_id_vote_seq OWNED BY vote.id_vote;


--
-- Name: author id_author; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY author ALTER COLUMN id_author SET DEFAULT nextval('author_id_author_seq'::regclass);


--
-- Name: book id_book; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY book ALTER COLUMN id_book SET DEFAULT nextval('book_id_book_seq'::regclass);


--
-- Name: genre id_genre; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY genre ALTER COLUMN id_genre SET DEFAULT nextval('genre_id_genre_seq'::regclass);


--
-- Name: publisher id_publisher; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY publisher ALTER COLUMN id_publisher SET DEFAULT nextval('publisher_id_publisher_seq'::regclass);


--
-- Name: vote id_vote; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vote ALTER COLUMN id_vote SET DEFAULT nextval('vote_id_vote_seq'::regclass);


--
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY author (fio, birthday, id_author) FROM stdin;
\.
COPY author (fio, birthday, id_author) FROM '$$PATH$$/2166.dat';

--
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY book (name, content, page_count, isbn, publish_year, descr, rating, vote_count, id_book, author_id_book, genre_id_book, publisher_id_book) FROM stdin;
\.
COPY book (name, content, page_count, isbn, publish_year, descr, rating, vote_count, id_book, author_id_book, genre_id_book, publisher_id_book) FROM '$$PATH$$/2169.dat';

--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY genre (name, parent, id_genre) FROM stdin;
\.
COPY genre (name, parent, id_genre) FROM '$$PATH$$/2167.dat';

--
-- Data for Name: publisher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY publisher (name, id_publisher) FROM stdin;
\.
COPY publisher (name, id_publisher) FROM '$$PATH$$/2168.dat';

--
-- Data for Name: vote; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY vote (username, id_vote, id_book_vote) FROM stdin;
\.
COPY vote (username, id_vote, id_book_vote) FROM '$$PATH$$/2170.dat';

--
-- Name: author_id_author_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('author_id_author_seq', 5, true);


--
-- Name: book_id_book_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('book_id_book_seq', 3, true);


--
-- Name: genre_id_genre_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('genre_id_genre_seq', 5, true);


--
-- Name: publisher_id_publisher_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('publisher_id_publisher_seq', 3, true);


--
-- Name: vote_id_vote_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('vote_id_vote_seq', 2, true);


--
-- Name: author author_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id_author);


--
-- Name: book book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id_book);


--
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id_genre);


--
-- Name: publisher publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY publisher
    ADD CONSTRAINT publisher_pkey PRIMARY KEY (id_publisher);


--
-- Name: vote vote_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vote
    ADD CONSTRAINT vote_pkey PRIMARY KEY (id_vote);


--
-- Name: fki_auther_id_book_too_auther; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_auther_id_book_too_auther ON book USING btree (author_id_book);


--
-- Name: fki_genre_id_book_too_id_genre; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_genre_id_book_too_id_genre ON book USING btree (genre_id_book);


--
-- Name: fki_id_book_vote_too_id_book; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_book_vote_too_id_book ON vote USING btree (id_book_vote);


--
-- Name: fki_publisher_id_book_too_id_publisher; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_publisher_id_book_too_id_publisher ON book USING btree (publisher_id_book);


--
-- Name: book auther_id_book_too_auther; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY book
    ADD CONSTRAINT auther_id_book_too_auther FOREIGN KEY (author_id_book) REFERENCES author(id_author);


--
-- Name: book genre_id_book_too_id_genre; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY book
    ADD CONSTRAINT genre_id_book_too_id_genre FOREIGN KEY (genre_id_book) REFERENCES genre(id_genre);


--
-- Name: vote id_book_vote_too_id_book; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vote
    ADD CONSTRAINT id_book_vote_too_id_book FOREIGN KEY (id_book_vote) REFERENCES book(id_book);


--
-- Name: book publisher_id_book_too_id_publisher; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY book
    ADD CONSTRAINT publisher_id_book_too_id_publisher FOREIGN KEY (publisher_id_book) REFERENCES publisher(id_publisher);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         