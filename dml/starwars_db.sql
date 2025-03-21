--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-03-20 23:14:20

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 19441)
-- Name: films; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.films (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    episode_id integer NOT NULL,
    opening_crawl text,
    director character varying(255),
    producer character varying(255),
    release_date date,
    url character varying(255) NOT NULL,
    created timestamp without time zone,
    edited timestamp without time zone
);


ALTER TABLE public.films OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 19614)
-- Name: films_characters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.films_characters (
    film_url character varying(255) NOT NULL,
    character_url character varying(255) NOT NULL
);


ALTER TABLE public.films_characters OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 19440)
-- Name: films_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.films_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.films_id_seq OWNER TO postgres;

--
-- TOC entry 5077 (class 0 OID 0)
-- Dependencies: 219
-- Name: films_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.films_id_seq OWNED BY public.films.id;


--
-- TOC entry 237 (class 1259 OID 19631)
-- Name: films_planets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.films_planets (
    film_url character varying(255) NOT NULL,
    planet_url character varying(255) NOT NULL
);


ALTER TABLE public.films_planets OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 19563)
-- Name: films_species; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.films_species (
    film_url character varying(255) NOT NULL,
    species_url character varying(255) NOT NULL
);


ALTER TABLE public.films_species OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 19580)
-- Name: films_starships; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.films_starships (
    film_url character varying(255) NOT NULL,
    starship_url character varying(255) NOT NULL
);


ALTER TABLE public.films_starships OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 19597)
-- Name: films_vehicles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.films_vehicles (
    film_url character varying(255) NOT NULL,
    vehicle_url character varying(255) NOT NULL
);


ALTER TABLE public.films_vehicles OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 20024)
-- Name: movie_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie_metadata (
    id integer NOT NULL,
    imdb_id text NOT NULL,
    popularity numeric NOT NULL,
    keywords text NOT NULL
);


ALTER TABLE public.movie_metadata OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 19430)
-- Name: people; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.people (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    birth_year character varying(20),
    eye_color character varying(50),
    gender character varying(20),
    hair_color character varying(50),
    height character varying(20),
    mass character varying(20),
    skin_color character varying(50),
    homeworld character varying(255),
    url character varying(255) NOT NULL,
    created timestamp without time zone,
    edited timestamp without time zone
);


ALTER TABLE public.people OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 19495)
-- Name: people_films; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.people_films (
    person_url character varying(255) NOT NULL,
    film_url character varying(255) NOT NULL
);


ALTER TABLE public.people_films OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 19429)
-- Name: people_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.people_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.people_id_seq OWNER TO postgres;

--
-- TOC entry 5078 (class 0 OID 0)
-- Dependencies: 217
-- Name: people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.people_id_seq OWNED BY public.people.id;


--
-- TOC entry 230 (class 1259 OID 19512)
-- Name: people_species; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.people_species (
    person_url character varying(255) NOT NULL,
    species_url character varying(255) NOT NULL
);


ALTER TABLE public.people_species OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 19529)
-- Name: people_starships; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.people_starships (
    person_url character varying(255) NOT NULL,
    starship_url character varying(255) NOT NULL
);


ALTER TABLE public.people_starships OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 19546)
-- Name: people_vehicles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.people_vehicles (
    person_url character varying(255) NOT NULL,
    vehicle_url character varying(255) NOT NULL
);


ALTER TABLE public.people_vehicles OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 19485)
-- Name: planets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planets (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    diameter character varying(50),
    rotation_period character varying(50),
    orbital_period character varying(50),
    gravity character varying(50),
    population character varying(50),
    climate character varying(255),
    terrain character varying(255),
    surface_water character varying(50),
    url character varying(255) NOT NULL,
    created timestamp without time zone,
    edited timestamp without time zone
);


ALTER TABLE public.planets OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 19484)
-- Name: planets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.planets_id_seq OWNER TO postgres;

--
-- TOC entry 5079 (class 0 OID 0)
-- Dependencies: 227
-- Name: planets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planets_id_seq OWNED BY public.planets.id;


--
-- TOC entry 239 (class 1259 OID 19993)
-- Name: rating_providers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rating_providers (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.rating_providers OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 19992)
-- Name: rating_providers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rating_providers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rating_providers_id_seq OWNER TO postgres;

--
-- TOC entry 5080 (class 0 OID 0)
-- Dependencies: 238
-- Name: rating_providers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rating_providers_id_seq OWNED BY public.rating_providers.id;


--
-- TOC entry 242 (class 1259 OID 20005)
-- Name: ratings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ratings (
    id integer NOT NULL,
    film_id integer NOT NULL,
    imdb_id text NOT NULL,
    rating_provider_id integer NOT NULL,
    rating_value text NOT NULL
);


ALTER TABLE public.ratings OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 20004)
-- Name: ratings_film_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ratings_film_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ratings_film_id_seq OWNER TO postgres;

--
-- TOC entry 5081 (class 0 OID 0)
-- Dependencies: 241
-- Name: ratings_film_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ratings_film_id_seq OWNED BY public.ratings.film_id;


--
-- TOC entry 240 (class 1259 OID 20003)
-- Name: ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ratings_id_seq OWNER TO postgres;

--
-- TOC entry 5082 (class 0 OID 0)
-- Dependencies: 240
-- Name: ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;


--
-- TOC entry 226 (class 1259 OID 19474)
-- Name: species; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.species (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    classification character varying(255),
    designation character varying(50),
    average_height character varying(50),
    average_lifespan character varying(50),
    eye_colors character varying(255),
    hair_colors character varying(255),
    skin_colors character varying(255),
    language character varying(255),
    homeworld character varying(255),
    url character varying(255) NOT NULL,
    created timestamp without time zone,
    edited timestamp without time zone
);


ALTER TABLE public.species OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 19473)
-- Name: species_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.species_id_seq OWNER TO postgres;

--
-- TOC entry 5083 (class 0 OID 0)
-- Dependencies: 225
-- Name: species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.species_id_seq OWNED BY public.species.id;


--
-- TOC entry 222 (class 1259 OID 19452)
-- Name: starships; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.starships (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    model character varying(255),
    starship_class character varying(255),
    manufacturer character varying(255),
    cost_in_credits character varying(50),
    length character varying(50),
    crew character varying(50),
    passengers character varying(50),
    max_atmosphering_speed character varying(50),
    hyperdrive_rating character varying(50),
    mglt character varying(50),
    cargo_capacity character varying(50),
    consumables character varying(255),
    url character varying(255) NOT NULL,
    created timestamp without time zone,
    edited timestamp without time zone
);


ALTER TABLE public.starships OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 19451)
-- Name: starships_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.starships_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.starships_id_seq OWNER TO postgres;

--
-- TOC entry 5084 (class 0 OID 0)
-- Dependencies: 221
-- Name: starships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.starships_id_seq OWNED BY public.starships.id;


--
-- TOC entry 224 (class 1259 OID 19463)
-- Name: vehicles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vehicles (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    model character varying(255),
    vehicle_class character varying(255),
    manufacturer character varying(255),
    length character varying(50),
    cost_in_credits character varying(50),
    crew character varying(50),
    passengers character varying(50),
    max_atmosphering_speed character varying(50),
    cargo_capacity character varying(50),
    consumables character varying(255),
    url character varying(255) NOT NULL,
    created timestamp without time zone,
    edited timestamp without time zone
);


ALTER TABLE public.vehicles OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 19462)
-- Name: vehicles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vehicles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vehicles_id_seq OWNER TO postgres;

--
-- TOC entry 5085 (class 0 OID 0)
-- Dependencies: 223
-- Name: vehicles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vehicles_id_seq OWNED BY public.vehicles.id;


--
-- TOC entry 4819 (class 2604 OID 19444)
-- Name: films id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films ALTER COLUMN id SET DEFAULT nextval('public.films_id_seq'::regclass);


--
-- TOC entry 4818 (class 2604 OID 19433)
-- Name: people id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people ALTER COLUMN id SET DEFAULT nextval('public.people_id_seq'::regclass);


--
-- TOC entry 4823 (class 2604 OID 19488)
-- Name: planets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planets ALTER COLUMN id SET DEFAULT nextval('public.planets_id_seq'::regclass);


--
-- TOC entry 4824 (class 2604 OID 19996)
-- Name: rating_providers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating_providers ALTER COLUMN id SET DEFAULT nextval('public.rating_providers_id_seq'::regclass);


--
-- TOC entry 4825 (class 2604 OID 20008)
-- Name: ratings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);


--
-- TOC entry 4826 (class 2604 OID 20009)
-- Name: ratings film_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings ALTER COLUMN film_id SET DEFAULT nextval('public.ratings_film_id_seq'::regclass);


--
-- TOC entry 4822 (class 2604 OID 19477)
-- Name: species id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.species ALTER COLUMN id SET DEFAULT nextval('public.species_id_seq'::regclass);


--
-- TOC entry 4820 (class 2604 OID 19455)
-- Name: starships id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.starships ALTER COLUMN id SET DEFAULT nextval('public.starships_id_seq'::regclass);


--
-- TOC entry 4821 (class 2604 OID 19466)
-- Name: vehicles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicles ALTER COLUMN id SET DEFAULT nextval('public.vehicles_id_seq'::regclass);


--
-- TOC entry 5048 (class 0 OID 19441)
-- Dependencies: 220
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.films (id, title, episode_id, opening_crawl, director, producer, release_date, url, created, edited) FROM stdin;
1	A New Hope	4	It is a period of civil war.\r\nRebel spaceships, striking\r\nfrom a hidden base, have won\r\ntheir first victory against\r\nthe evil Galactic Empire.\r\n\r\nDuring the battle, Rebel\r\nspies managed to steal secret\r\nplans to the Empire's\r\nultimate weapon, the DEATH\r\nSTAR, an armored space\r\nstation with enough power\r\nto destroy an entire planet.\r\n\r\nPursued by the Empire's\r\nsinister agents, Princess\r\nLeia races home aboard her\r\nstarship, custodian of the\r\nstolen plans that can save her\r\npeople and restore\r\nfreedom to the galaxy....	George Lucas	Gary Kurtz, Rick McCallum	1977-05-25	https://swapi.dev/api/films/1/	2014-12-10 14:23:31.88	2014-12-20 19:49:45.256
2	The Empire Strikes Back	5	It is a dark time for the\r\nRebellion. Although the Death\r\nStar has been destroyed,\r\nImperial troops have driven the\r\nRebel forces from their hidden\r\nbase and pursued them across\r\nthe galaxy.\r\n\r\nEvading the dreaded Imperial\r\nStarfleet, a group of freedom\r\nfighters led by Luke Skywalker\r\nhas established a new secret\r\nbase on the remote ice world\r\nof Hoth.\r\n\r\nThe evil lord Darth Vader,\r\nobsessed with finding young\r\nSkywalker, has dispatched\r\nthousands of remote probes into\r\nthe far reaches of space....	Irvin Kershner	Gary Kurtz, Rick McCallum	1980-05-17	https://swapi.dev/api/films/2/	2014-12-12 11:26:24.656	2014-12-15 13:07:53.386
3	Return of the Jedi	6	Luke Skywalker has returned to\r\nhis home planet of Tatooine in\r\nan attempt to rescue his\r\nfriend Han Solo from the\r\nclutches of the vile gangster\r\nJabba the Hutt.\r\n\r\nLittle does Luke know that the\r\nGALACTIC EMPIRE has secretly\r\nbegun construction on a new\r\narmored space station even\r\nmore powerful than the first\r\ndreaded Death Star.\r\n\r\nWhen completed, this ultimate\r\nweapon will spell certain doom\r\nfor the small band of rebels\r\nstruggling to restore freedom\r\nto the galaxy...	Richard Marquand	Howard G. Kazanjian, George Lucas, Rick McCallum	1983-05-25	https://swapi.dev/api/films/3/	2014-12-18 10:39:33.255	2014-12-20 09:48:37.462
4	The Phantom Menace	1	Turmoil has engulfed the\r\nGalactic Republic. The taxation\r\nof trade routes to outlying star\r\nsystems is in dispute.\r\n\r\nHoping to resolve the matter\r\nwith a blockade of deadly\r\nbattleships, the greedy Trade\r\nFederation has stopped all\r\nshipping to the small planet\r\nof Naboo.\r\n\r\nWhile the Congress of the\r\nRepublic endlessly debates\r\nthis alarming chain of events,\r\nthe Supreme Chancellor has\r\nsecretly dispatched two Jedi\r\nKnights, the guardians of\r\npeace and justice in the\r\ngalaxy, to settle the conflict....	George Lucas	Rick McCallum	1999-05-19	https://swapi.dev/api/films/4/	2014-12-19 16:52:55.74	2014-12-20 10:54:07.216
5	Attack of the Clones	2	There is unrest in the Galactic\r\nSenate. Several thousand solar\r\nsystems have declared their\r\nintentions to leave the Republic.\r\n\r\nThis separatist movement,\r\nunder the leadership of the\r\nmysterious Count Dooku, has\r\nmade it difficult for the limited\r\nnumber of Jedi Knights to maintain \r\npeace and order in the galaxy.\r\n\r\nSenator Amidala, the former\r\nQueen of Naboo, is returning\r\nto the Galactic Senate to vote\r\non the critical issue of creating\r\nan ARMY OF THE REPUBLIC\r\nto assist the overwhelmed\r\nJedi....	George Lucas	Rick McCallum	2002-05-16	https://swapi.dev/api/films/5/	2014-12-20 10:57:57.886	2014-12-20 20:18:48.516
6	Revenge of the Sith	3	War! The Republic is crumbling\r\nunder attacks by the ruthless\r\nSith Lord, Count Dooku.\r\nThere are heroes on both sides.\r\nEvil is everywhere.\r\n\r\nIn a stunning move, the\r\nfiendish droid leader, General\r\nGrievous, has swept into the\r\nRepublic capital and kidnapped\r\nChancellor Palpatine, leader of\r\nthe Galactic Senate.\r\n\r\nAs the Separatist Droid Army\r\nattempts to flee the besieged\r\ncapital with their valuable\r\nhostage, two Jedi Knights lead a\r\ndesperate mission to rescue the\r\ncaptive Chancellor....	George Lucas	Rick McCallum	2005-05-19	https://swapi.dev/api/films/6/	2014-12-20 18:49:38.403	2014-12-20 20:47:52.073
\.


--
-- TOC entry 5064 (class 0 OID 19614)
-- Dependencies: 236
-- Data for Name: films_characters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.films_characters (film_url, character_url) FROM stdin;
\.


--
-- TOC entry 5065 (class 0 OID 19631)
-- Dependencies: 237
-- Data for Name: films_planets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.films_planets (film_url, planet_url) FROM stdin;
https://swapi.dev/api/films/1/	https://swapi.dev/api/planets/1/
https://swapi.dev/api/films/1/	https://swapi.dev/api/planets/2/
https://swapi.dev/api/films/1/	https://swapi.dev/api/planets/3/
https://swapi.dev/api/films/2/	https://swapi.dev/api/planets/4/
https://swapi.dev/api/films/2/	https://swapi.dev/api/planets/5/
https://swapi.dev/api/films/2/	https://swapi.dev/api/planets/6/
https://swapi.dev/api/films/2/	https://swapi.dev/api/planets/27/
https://swapi.dev/api/films/3/	https://swapi.dev/api/planets/1/
https://swapi.dev/api/films/3/	https://swapi.dev/api/planets/5/
https://swapi.dev/api/films/3/	https://swapi.dev/api/planets/7/
https://swapi.dev/api/films/3/	https://swapi.dev/api/planets/8/
https://swapi.dev/api/films/3/	https://swapi.dev/api/planets/9/
https://swapi.dev/api/films/4/	https://swapi.dev/api/planets/1/
https://swapi.dev/api/films/4/	https://swapi.dev/api/planets/8/
https://swapi.dev/api/films/4/	https://swapi.dev/api/planets/9/
https://swapi.dev/api/films/5/	https://swapi.dev/api/planets/1/
https://swapi.dev/api/films/5/	https://swapi.dev/api/planets/8/
https://swapi.dev/api/films/5/	https://swapi.dev/api/planets/9/
https://swapi.dev/api/films/5/	https://swapi.dev/api/planets/10/
https://swapi.dev/api/films/5/	https://swapi.dev/api/planets/11/
https://swapi.dev/api/films/6/	https://swapi.dev/api/planets/1/
https://swapi.dev/api/films/6/	https://swapi.dev/api/planets/2/
https://swapi.dev/api/films/6/	https://swapi.dev/api/planets/5/
https://swapi.dev/api/films/6/	https://swapi.dev/api/planets/8/
https://swapi.dev/api/films/6/	https://swapi.dev/api/planets/9/
https://swapi.dev/api/films/6/	https://swapi.dev/api/planets/12/
https://swapi.dev/api/films/6/	https://swapi.dev/api/planets/13/
https://swapi.dev/api/films/6/	https://swapi.dev/api/planets/14/
https://swapi.dev/api/films/6/	https://swapi.dev/api/planets/15/
https://swapi.dev/api/films/6/	https://swapi.dev/api/planets/16/
https://swapi.dev/api/films/6/	https://swapi.dev/api/planets/17/
https://swapi.dev/api/films/6/	https://swapi.dev/api/planets/18/
https://swapi.dev/api/films/6/	https://swapi.dev/api/planets/19/
\.


--
-- TOC entry 5061 (class 0 OID 19563)
-- Dependencies: 233
-- Data for Name: films_species; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.films_species (film_url, species_url) FROM stdin;
https://swapi.dev/api/films/1/	https://swapi.dev/api/species/1/
https://swapi.dev/api/films/1/	https://swapi.dev/api/species/2/
https://swapi.dev/api/films/1/	https://swapi.dev/api/species/3/
https://swapi.dev/api/films/1/	https://swapi.dev/api/species/4/
https://swapi.dev/api/films/1/	https://swapi.dev/api/species/5/
https://swapi.dev/api/films/2/	https://swapi.dev/api/species/1/
https://swapi.dev/api/films/2/	https://swapi.dev/api/species/2/
https://swapi.dev/api/films/2/	https://swapi.dev/api/species/3/
https://swapi.dev/api/films/2/	https://swapi.dev/api/species/6/
https://swapi.dev/api/films/2/	https://swapi.dev/api/species/7/
https://swapi.dev/api/films/3/	https://swapi.dev/api/species/1/
https://swapi.dev/api/films/3/	https://swapi.dev/api/species/2/
https://swapi.dev/api/films/3/	https://swapi.dev/api/species/3/
https://swapi.dev/api/films/3/	https://swapi.dev/api/species/5/
https://swapi.dev/api/films/3/	https://swapi.dev/api/species/6/
https://swapi.dev/api/films/3/	https://swapi.dev/api/species/8/
https://swapi.dev/api/films/3/	https://swapi.dev/api/species/9/
https://swapi.dev/api/films/3/	https://swapi.dev/api/species/10/
https://swapi.dev/api/films/3/	https://swapi.dev/api/species/15/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/1/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/2/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/6/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/11/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/12/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/13/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/14/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/15/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/16/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/17/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/18/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/19/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/20/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/21/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/22/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/23/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/24/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/25/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/26/
https://swapi.dev/api/films/4/	https://swapi.dev/api/species/27/
https://swapi.dev/api/films/5/	https://swapi.dev/api/species/1/
https://swapi.dev/api/films/5/	https://swapi.dev/api/species/2/
https://swapi.dev/api/films/5/	https://swapi.dev/api/species/6/
https://swapi.dev/api/films/5/	https://swapi.dev/api/species/12/
https://swapi.dev/api/films/5/	https://swapi.dev/api/species/13/
https://swapi.dev/api/films/5/	https://swapi.dev/api/species/15/
https://swapi.dev/api/films/5/	https://swapi.dev/api/species/28/
https://swapi.dev/api/films/5/	https://swapi.dev/api/species/29/
https://swapi.dev/api/films/5/	https://swapi.dev/api/species/30/
https://swapi.dev/api/films/5/	https://swapi.dev/api/species/31/
https://swapi.dev/api/films/5/	https://swapi.dev/api/species/32/
https://swapi.dev/api/films/5/	https://swapi.dev/api/species/33/
https://swapi.dev/api/films/5/	https://swapi.dev/api/species/34/
https://swapi.dev/api/films/5/	https://swapi.dev/api/species/35/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/1/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/2/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/3/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/6/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/15/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/19/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/20/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/23/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/24/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/25/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/26/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/27/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/28/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/29/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/30/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/33/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/34/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/35/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/36/
https://swapi.dev/api/films/6/	https://swapi.dev/api/species/37/
\.


--
-- TOC entry 5062 (class 0 OID 19580)
-- Dependencies: 234
-- Data for Name: films_starships; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.films_starships (film_url, starship_url) FROM stdin;
https://swapi.dev/api/films/1/	https://swapi.dev/api/starships/2/
https://swapi.dev/api/films/1/	https://swapi.dev/api/starships/3/
https://swapi.dev/api/films/1/	https://swapi.dev/api/starships/5/
https://swapi.dev/api/films/1/	https://swapi.dev/api/starships/9/
https://swapi.dev/api/films/1/	https://swapi.dev/api/starships/10/
https://swapi.dev/api/films/1/	https://swapi.dev/api/starships/11/
https://swapi.dev/api/films/1/	https://swapi.dev/api/starships/12/
https://swapi.dev/api/films/1/	https://swapi.dev/api/starships/13/
https://swapi.dev/api/films/2/	https://swapi.dev/api/starships/3/
https://swapi.dev/api/films/2/	https://swapi.dev/api/starships/10/
https://swapi.dev/api/films/2/	https://swapi.dev/api/starships/11/
https://swapi.dev/api/films/2/	https://swapi.dev/api/starships/12/
https://swapi.dev/api/films/2/	https://swapi.dev/api/starships/15/
https://swapi.dev/api/films/2/	https://swapi.dev/api/starships/17/
https://swapi.dev/api/films/2/	https://swapi.dev/api/starships/21/
https://swapi.dev/api/films/2/	https://swapi.dev/api/starships/22/
https://swapi.dev/api/films/2/	https://swapi.dev/api/starships/23/
https://swapi.dev/api/films/3/	https://swapi.dev/api/starships/2/
https://swapi.dev/api/films/3/	https://swapi.dev/api/starships/3/
https://swapi.dev/api/films/3/	https://swapi.dev/api/starships/10/
https://swapi.dev/api/films/3/	https://swapi.dev/api/starships/11/
https://swapi.dev/api/films/3/	https://swapi.dev/api/starships/12/
https://swapi.dev/api/films/3/	https://swapi.dev/api/starships/15/
https://swapi.dev/api/films/3/	https://swapi.dev/api/starships/17/
https://swapi.dev/api/films/3/	https://swapi.dev/api/starships/22/
https://swapi.dev/api/films/3/	https://swapi.dev/api/starships/23/
https://swapi.dev/api/films/3/	https://swapi.dev/api/starships/27/
https://swapi.dev/api/films/3/	https://swapi.dev/api/starships/28/
https://swapi.dev/api/films/3/	https://swapi.dev/api/starships/29/
https://swapi.dev/api/films/4/	https://swapi.dev/api/starships/31/
https://swapi.dev/api/films/4/	https://swapi.dev/api/starships/32/
https://swapi.dev/api/films/4/	https://swapi.dev/api/starships/39/
https://swapi.dev/api/films/4/	https://swapi.dev/api/starships/40/
https://swapi.dev/api/films/4/	https://swapi.dev/api/starships/41/
https://swapi.dev/api/films/5/	https://swapi.dev/api/starships/21/
https://swapi.dev/api/films/5/	https://swapi.dev/api/starships/32/
https://swapi.dev/api/films/5/	https://swapi.dev/api/starships/39/
https://swapi.dev/api/films/5/	https://swapi.dev/api/starships/43/
https://swapi.dev/api/films/5/	https://swapi.dev/api/starships/47/
https://swapi.dev/api/films/5/	https://swapi.dev/api/starships/48/
https://swapi.dev/api/films/5/	https://swapi.dev/api/starships/49/
https://swapi.dev/api/films/5/	https://swapi.dev/api/starships/52/
https://swapi.dev/api/films/5/	https://swapi.dev/api/starships/58/
https://swapi.dev/api/films/6/	https://swapi.dev/api/starships/2/
https://swapi.dev/api/films/6/	https://swapi.dev/api/starships/32/
https://swapi.dev/api/films/6/	https://swapi.dev/api/starships/48/
https://swapi.dev/api/films/6/	https://swapi.dev/api/starships/59/
https://swapi.dev/api/films/6/	https://swapi.dev/api/starships/61/
https://swapi.dev/api/films/6/	https://swapi.dev/api/starships/63/
https://swapi.dev/api/films/6/	https://swapi.dev/api/starships/64/
https://swapi.dev/api/films/6/	https://swapi.dev/api/starships/65/
https://swapi.dev/api/films/6/	https://swapi.dev/api/starships/66/
https://swapi.dev/api/films/6/	https://swapi.dev/api/starships/68/
https://swapi.dev/api/films/6/	https://swapi.dev/api/starships/74/
https://swapi.dev/api/films/6/	https://swapi.dev/api/starships/75/
\.


--
-- TOC entry 5063 (class 0 OID 19597)
-- Dependencies: 235
-- Data for Name: films_vehicles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.films_vehicles (film_url, vehicle_url) FROM stdin;
https://swapi.dev/api/films/1/	https://swapi.dev/api/vehicles/4/
https://swapi.dev/api/films/1/	https://swapi.dev/api/vehicles/6/
https://swapi.dev/api/films/1/	https://swapi.dev/api/vehicles/7/
https://swapi.dev/api/films/1/	https://swapi.dev/api/vehicles/8/
https://swapi.dev/api/films/2/	https://swapi.dev/api/vehicles/8/
https://swapi.dev/api/films/2/	https://swapi.dev/api/vehicles/14/
https://swapi.dev/api/films/2/	https://swapi.dev/api/vehicles/16/
https://swapi.dev/api/films/2/	https://swapi.dev/api/vehicles/18/
https://swapi.dev/api/films/2/	https://swapi.dev/api/vehicles/19/
https://swapi.dev/api/films/2/	https://swapi.dev/api/vehicles/20/
https://swapi.dev/api/films/3/	https://swapi.dev/api/vehicles/8/
https://swapi.dev/api/films/3/	https://swapi.dev/api/vehicles/16/
https://swapi.dev/api/films/3/	https://swapi.dev/api/vehicles/18/
https://swapi.dev/api/films/3/	https://swapi.dev/api/vehicles/19/
https://swapi.dev/api/films/3/	https://swapi.dev/api/vehicles/24/
https://swapi.dev/api/films/3/	https://swapi.dev/api/vehicles/25/
https://swapi.dev/api/films/3/	https://swapi.dev/api/vehicles/26/
https://swapi.dev/api/films/3/	https://swapi.dev/api/vehicles/30/
https://swapi.dev/api/films/4/	https://swapi.dev/api/vehicles/33/
https://swapi.dev/api/films/4/	https://swapi.dev/api/vehicles/34/
https://swapi.dev/api/films/4/	https://swapi.dev/api/vehicles/35/
https://swapi.dev/api/films/4/	https://swapi.dev/api/vehicles/36/
https://swapi.dev/api/films/4/	https://swapi.dev/api/vehicles/37/
https://swapi.dev/api/films/4/	https://swapi.dev/api/vehicles/38/
https://swapi.dev/api/films/4/	https://swapi.dev/api/vehicles/42/
https://swapi.dev/api/films/5/	https://swapi.dev/api/vehicles/4/
https://swapi.dev/api/films/5/	https://swapi.dev/api/vehicles/44/
https://swapi.dev/api/films/5/	https://swapi.dev/api/vehicles/45/
https://swapi.dev/api/films/5/	https://swapi.dev/api/vehicles/46/
https://swapi.dev/api/films/5/	https://swapi.dev/api/vehicles/50/
https://swapi.dev/api/films/5/	https://swapi.dev/api/vehicles/51/
https://swapi.dev/api/films/5/	https://swapi.dev/api/vehicles/53/
https://swapi.dev/api/films/5/	https://swapi.dev/api/vehicles/54/
https://swapi.dev/api/films/5/	https://swapi.dev/api/vehicles/55/
https://swapi.dev/api/films/5/	https://swapi.dev/api/vehicles/56/
https://swapi.dev/api/films/5/	https://swapi.dev/api/vehicles/57/
https://swapi.dev/api/films/6/	https://swapi.dev/api/vehicles/33/
https://swapi.dev/api/films/6/	https://swapi.dev/api/vehicles/50/
https://swapi.dev/api/films/6/	https://swapi.dev/api/vehicles/53/
https://swapi.dev/api/films/6/	https://swapi.dev/api/vehicles/56/
https://swapi.dev/api/films/6/	https://swapi.dev/api/vehicles/60/
https://swapi.dev/api/films/6/	https://swapi.dev/api/vehicles/62/
https://swapi.dev/api/films/6/	https://swapi.dev/api/vehicles/67/
https://swapi.dev/api/films/6/	https://swapi.dev/api/vehicles/69/
https://swapi.dev/api/films/6/	https://swapi.dev/api/vehicles/70/
https://swapi.dev/api/films/6/	https://swapi.dev/api/vehicles/71/
https://swapi.dev/api/films/6/	https://swapi.dev/api/vehicles/72/
https://swapi.dev/api/films/6/	https://swapi.dev/api/vehicles/73/
https://swapi.dev/api/films/6/	https://swapi.dev/api/vehicles/76/
\.


--
-- TOC entry 5071 (class 0 OID 20024)
-- Dependencies: 243
-- Data for Name: movie_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie_metadata (id, imdb_id, popularity, keywords) FROM stdin;
1	tt0076759	88.559	empire, galaxy, rebellion, android, hermit, smuggling (contraband), freedom, rebel, rescue mission, space, planet, desert, super power, oppression, space opera, wizard, totalitarianism
2	tt0080684	35.265	rebellion, android, spacecraft, asteroid, rebel, space battle, snowstorm, space colony, swamp, space opera, artic
3	tt0086190	40.104	spacecraft, sibling relationship, rebel, emperor, space battle, matter of life and death, forest, desert, space opera
4	tt0120915	46.845	galaxy, senate, taskmaster, prophecy, queen, apprentice, taxes, space opera
6	tt0121766	41.215	showdown, cult figure, vision, hatred, dream sequence, expectant mother, space opera, chancel
5	tt0121765	42.55	army, laser gun, senate, investigation, cult figure, wedding, kendo, space opera, spaceport, teenage rebellion, good becoming evil, alien race, mechanical hand
\.


--
-- TOC entry 5046 (class 0 OID 19430)
-- Dependencies: 218
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.people (id, name, birth_year, eye_color, gender, hair_color, height, mass, skin_color, homeworld, url, created, edited) FROM stdin;
1	Luke Skywalker	19BBY	blue	male	blond	172	77	fair	https://swapi.dev/api/planets/1/	https://swapi.dev/api/people/1/	2014-12-09 13:50:51.644	2014-12-20 21:17:56.891
2	C-3PO	112BBY	yellow	n/a	n/a	167	75	gold	https://swapi.dev/api/planets/1/	https://swapi.dev/api/people/2/	2014-12-10 15:10:51.357	2014-12-20 21:17:50.309
3	R2-D2	33BBY	red	n/a	n/a	96	32	white, blue	https://swapi.dev/api/planets/8/	https://swapi.dev/api/people/3/	2014-12-10 15:11:50.376	2014-12-20 21:17:50.311
4	Darth Vader	41.9BBY	yellow	male	none	202	136	white	https://swapi.dev/api/planets/1/	https://swapi.dev/api/people/4/	2014-12-10 15:18:20.704	2014-12-20 21:17:50.313
5	Leia Organa	19BBY	brown	female	brown	150	49	light	https://swapi.dev/api/planets/2/	https://swapi.dev/api/people/5/	2014-12-10 15:20:09.791	2014-12-20 21:17:50.315
6	Owen Lars	52BBY	blue	male	brown, grey	178	120	light	https://swapi.dev/api/planets/1/	https://swapi.dev/api/people/6/	2014-12-10 15:52:14.024	2014-12-20 21:17:50.317
7	Beru Whitesun lars	47BBY	blue	female	brown	165	75	light	https://swapi.dev/api/planets/1/	https://swapi.dev/api/people/7/	2014-12-10 15:53:41.121	2014-12-20 21:17:50.319
8	R5-D4	unknown	red	n/a	n/a	97	32	white, red	https://swapi.dev/api/planets/1/	https://swapi.dev/api/people/8/	2014-12-10 15:57:50.959	2014-12-20 21:17:50.321
9	Biggs Darklighter	24BBY	brown	male	black	183	84	light	https://swapi.dev/api/planets/1/	https://swapi.dev/api/people/9/	2014-12-10 15:59:50.509	2014-12-20 21:17:50.323
10	Obi-Wan Kenobi	57BBY	blue-gray	male	auburn, white	182	77	fair	https://swapi.dev/api/planets/20/	https://swapi.dev/api/people/10/	2014-12-10 16:16:29.192	2014-12-20 21:17:50.325
11	Anakin Skywalker	41.9BBY	blue	male	blond	188	84	fair	https://swapi.dev/api/planets/1/	https://swapi.dev/api/people/11/	2014-12-10 16:20:44.31	2014-12-20 21:17:50.327
12	Wilhuff Tarkin	64BBY	blue	male	auburn, grey	180	unknown	fair	https://swapi.dev/api/planets/21/	https://swapi.dev/api/people/12/	2014-12-10 16:26:56.138	2014-12-20 21:17:50.33
13	Chewbacca	200BBY	blue	male	brown	228	112	unknown	https://swapi.dev/api/planets/14/	https://swapi.dev/api/people/13/	2014-12-10 16:42:45.066	2014-12-20 21:17:50.332
14	Han Solo	29BBY	brown	male	brown	180	80	fair	https://swapi.dev/api/planets/22/	https://swapi.dev/api/people/14/	2014-12-10 16:49:14.582	2014-12-20 21:17:50.334
15	Greedo	44BBY	black	male	n/a	173	74	green	https://swapi.dev/api/planets/23/	https://swapi.dev/api/people/15/	2014-12-10 17:03:30.334	2014-12-20 21:17:50.336
16	Jabba Desilijic Tiure	600BBY	orange	hermaphrodite	n/a	175	1,358	green-tan, brown	https://swapi.dev/api/planets/24/	https://swapi.dev/api/people/16/	2014-12-10 17:11:31.638	2014-12-20 21:17:50.338
17	Wedge Antilles	21BBY	hazel	male	brown	170	77	fair	https://swapi.dev/api/planets/22/	https://swapi.dev/api/people/18/	2014-12-12 11:08:06.469	2014-12-20 21:17:50.341
18	Jek Tono Porkins	unknown	blue	male	brown	180	110	fair	https://swapi.dev/api/planets/26/	https://swapi.dev/api/people/19/	2014-12-12 11:16:56.569	2014-12-20 21:17:50.343
19	Yoda	896BBY	brown	male	white	66	17	green	https://swapi.dev/api/planets/28/	https://swapi.dev/api/people/20/	2014-12-15 12:26:01.042	2014-12-20 21:17:50.345
20	Palpatine	82BBY	yellow	male	grey	170	75	pale	https://swapi.dev/api/planets/8/	https://swapi.dev/api/people/21/	2014-12-15 12:48:05.971	2014-12-20 21:17:50.347
21	Boba Fett	31.5BBY	brown	male	black	183	78.2	fair	https://swapi.dev/api/planets/10/	https://swapi.dev/api/people/22/	2014-12-15 12:49:32.457	2014-12-20 21:17:50.349
22	IG-88	15BBY	red	none	none	200	140	metal	https://swapi.dev/api/planets/28/	https://swapi.dev/api/people/23/	2014-12-15 12:51:10.076	2014-12-20 21:17:50.351
23	Bossk	53BBY	red	male	none	190	113	green	https://swapi.dev/api/planets/29/	https://swapi.dev/api/people/24/	2014-12-15 12:53:49.297	2014-12-20 21:17:50.355
24	Lando Calrissian	31BBY	brown	male	black	177	79	dark	https://swapi.dev/api/planets/30/	https://swapi.dev/api/people/25/	2014-12-15 12:56:32.683	2014-12-20 21:17:50.357
25	Lobot	37BBY	blue	male	none	175	79	light	https://swapi.dev/api/planets/6/	https://swapi.dev/api/people/26/	2014-12-15 13:01:57.178	2014-12-20 21:17:50.359
26	Ackbar	41BBY	orange	male	none	180	83	brown mottle	https://swapi.dev/api/planets/31/	https://swapi.dev/api/people/27/	2014-12-18 11:07:50.584	2014-12-20 21:17:50.362
27	Mon Mothma	48BBY	blue	female	auburn	150	unknown	fair	https://swapi.dev/api/planets/32/	https://swapi.dev/api/people/28/	2014-12-18 11:12:38.895	2014-12-20 21:17:50.364
28	Arvel Crynyd	unknown	brown	male	brown	unknown	unknown	fair	https://swapi.dev/api/planets/28/	https://swapi.dev/api/people/29/	2014-12-18 11:16:33.02	2014-12-20 21:17:50.367
29	Wicket Systri Warrick	8BBY	brown	male	brown	88	20	brown	https://swapi.dev/api/planets/7/	https://swapi.dev/api/people/30/	2014-12-18 11:21:58.954	2014-12-20 21:17:50.369
30	Nien Nunb	unknown	black	male	none	160	68	grey	https://swapi.dev/api/planets/33/	https://swapi.dev/api/people/31/	2014-12-18 11:26:18.541	2014-12-20 21:17:50.371
31	Qui-Gon Jinn	92BBY	blue	male	brown	193	89	fair	https://swapi.dev/api/planets/28/	https://swapi.dev/api/people/32/	2014-12-19 16:54:53.618	2014-12-20 21:17:50.375
32	Nute Gunray	unknown	red	male	none	191	90	mottled green	https://swapi.dev/api/planets/18/	https://swapi.dev/api/people/33/	2014-12-19 17:05:57.357	2014-12-20 21:17:50.377
33	Finis Valorum	91BBY	blue	male	blond	170	unknown	fair	https://swapi.dev/api/planets/9/	https://swapi.dev/api/people/34/	2014-12-19 17:21:45.915	2014-12-20 21:17:50.379
34	Padmé Amidala	46BBY	brown	female	brown	185	45	light	https://swapi.dev/api/planets/8/	https://swapi.dev/api/people/35/	2014-12-19 17:28:26.926	2014-12-20 21:17:50.381
35	Jar Jar Binks	52BBY	orange	male	none	196	66	orange	https://swapi.dev/api/planets/8/	https://swapi.dev/api/people/36/	2014-12-19 17:29:32.489	2014-12-20 21:17:50.383
36	Roos Tarpals	unknown	orange	male	none	224	82	grey	https://swapi.dev/api/planets/8/	https://swapi.dev/api/people/37/	2014-12-19 17:32:56.741	2014-12-20 21:17:50.385
37	Rugor Nass	unknown	orange	male	none	206	unknown	green	https://swapi.dev/api/planets/8/	https://swapi.dev/api/people/38/	2014-12-19 17:33:38.909	2014-12-20 21:17:50.388
38	Ric Olié	unknown	blue	male	brown	183	unknown	fair	https://swapi.dev/api/planets/8/	https://swapi.dev/api/people/39/	2014-12-19 17:45:01.522	2014-12-20 21:17:50.392
39	Watto	unknown	yellow	male	black	137	unknown	blue, grey	https://swapi.dev/api/planets/34/	https://swapi.dev/api/people/40/	2014-12-19 17:48:54.647	2014-12-20 21:17:50.395
40	Sebulba	unknown	orange	male	none	112	40	grey, red	https://swapi.dev/api/planets/35/	https://swapi.dev/api/people/41/	2014-12-19 17:53:02.586	2014-12-20 21:17:50.397
41	Quarsh Panaka	62BBY	brown	male	black	183	unknown	dark	https://swapi.dev/api/planets/8/	https://swapi.dev/api/people/42/	2014-12-19 17:55:43.348	2014-12-20 21:17:50.399
42	Shmi Skywalker	72BBY	brown	female	black	163	unknown	fair	https://swapi.dev/api/planets/1/	https://swapi.dev/api/people/43/	2014-12-19 17:57:41.191	2014-12-20 21:17:50.401
43	Darth Maul	54BBY	yellow	male	none	175	80	red	https://swapi.dev/api/planets/36/	https://swapi.dev/api/people/44/	2014-12-19 18:00:41.929	2014-12-20 21:17:50.403
44	Bib Fortuna	unknown	pink	male	none	180	unknown	pale	https://swapi.dev/api/planets/37/	https://swapi.dev/api/people/45/	2014-12-20 09:47:02.512	2014-12-20 21:17:50.407
45	Ayla Secura	48BBY	hazel	female	none	178	55	blue	https://swapi.dev/api/planets/37/	https://swapi.dev/api/people/46/	2014-12-20 09:48:01.172	2014-12-20 21:17:50.409
46	Ratts Tyerel	unknown	unknown	male	none	79	15	grey, blue	https://swapi.dev/api/planets/38/	https://swapi.dev/api/people/47/	2014-12-20 09:53:15.086	2014-12-20 21:17:50.41
47	Dud Bolt	unknown	yellow	male	none	94	45	blue, grey	https://swapi.dev/api/planets/39/	https://swapi.dev/api/people/48/	2014-12-20 09:57:31.858	2014-12-20 21:17:50.414
48	Gasgano	unknown	black	male	none	122	unknown	white, blue	https://swapi.dev/api/planets/40/	https://swapi.dev/api/people/49/	2014-12-20 10:02:12.223	2014-12-20 21:17:50.416
49	Ben Quadinaros	unknown	orange	male	none	163	65	grey, green, yellow	https://swapi.dev/api/planets/41/	https://swapi.dev/api/people/50/	2014-12-20 10:08:33.777	2014-12-20 21:17:50.417
50	Mace Windu	72BBY	brown	male	none	188	84	dark	https://swapi.dev/api/planets/42/	https://swapi.dev/api/people/51/	2014-12-20 10:12:30.846	2014-12-20 21:17:50.42
51	Ki-Adi-Mundi	92BBY	yellow	male	white	198	82	pale	https://swapi.dev/api/planets/43/	https://swapi.dev/api/people/52/	2014-12-20 10:15:32.293	2014-12-20 21:17:50.422
52	Kit Fisto	unknown	black	male	none	196	87	green	https://swapi.dev/api/planets/44/	https://swapi.dev/api/people/53/	2014-12-20 10:18:57.202	2014-12-20 21:17:50.424
53	Eeth Koth	unknown	brown	male	black	171	unknown	brown	https://swapi.dev/api/planets/45/	https://swapi.dev/api/people/54/	2014-12-20 10:26:47.902	2014-12-20 21:17:50.427
54	Adi Gallia	unknown	blue	female	none	184	50	dark	https://swapi.dev/api/planets/9/	https://swapi.dev/api/people/55/	2014-12-20 10:29:11.661	2014-12-20 21:17:50.432
55	Saesee Tiin	unknown	orange	male	none	188	unknown	pale	https://swapi.dev/api/planets/47/	https://swapi.dev/api/people/56/	2014-12-20 10:32:11.669	2014-12-20 21:17:50.434
56	Yarael Poof	unknown	yellow	male	none	264	unknown	white	https://swapi.dev/api/planets/48/	https://swapi.dev/api/people/57/	2014-12-20 10:34:48.725	2014-12-20 21:17:50.437
57	Plo Koon	22BBY	black	male	none	188	80	orange	https://swapi.dev/api/planets/49/	https://swapi.dev/api/people/58/	2014-12-20 10:49:19.859	2014-12-20 21:17:50.439
58	Mas Amedda	unknown	blue	male	none	196	unknown	blue	https://swapi.dev/api/planets/50/	https://swapi.dev/api/people/59/	2014-12-20 10:53:26.457	2014-12-20 21:17:50.442
59	Gregar Typho	unknown	brown	male	black	185	85	dark	https://swapi.dev/api/planets/8/	https://swapi.dev/api/people/60/	2014-12-20 11:10:10.381	2014-12-20 21:17:50.445
60	Cordé	unknown	brown	female	brown	157	unknown	light	https://swapi.dev/api/planets/8/	https://swapi.dev/api/people/61/	2014-12-20 11:11:39.63	2014-12-20 21:17:50.449
61	Cliegg Lars	82BBY	blue	male	brown	183	unknown	fair	https://swapi.dev/api/planets/1/	https://swapi.dev/api/people/62/	2014-12-20 15:59:03.958	2014-12-20 21:17:50.451
62	Poggle the Lesser	unknown	yellow	male	none	183	80	green	https://swapi.dev/api/planets/11/	https://swapi.dev/api/people/63/	2014-12-20 16:40:43.977	2014-12-20 21:17:50.453
63	Luminara Unduli	58BBY	blue	female	black	170	56.2	yellow	https://swapi.dev/api/planets/51/	https://swapi.dev/api/people/64/	2014-12-20 16:45:53.668	2014-12-20 21:17:50.455
64	Barriss Offee	40BBY	blue	female	black	166	50	yellow	https://swapi.dev/api/planets/51/	https://swapi.dev/api/people/65/	2014-12-20 16:46:40.44	2014-12-20 21:17:50.457
65	Dormé	unknown	brown	female	brown	165	unknown	light	https://swapi.dev/api/planets/8/	https://swapi.dev/api/people/66/	2014-12-20 16:49:14.64	2014-12-20 21:17:50.46
66	Dooku	102BBY	brown	male	white	193	80	fair	https://swapi.dev/api/planets/52/	https://swapi.dev/api/people/67/	2014-12-20 16:52:14.726	2014-12-20 21:17:50.462
67	Bail Prestor Organa	67BBY	brown	male	black	191	unknown	tan	https://swapi.dev/api/planets/2/	https://swapi.dev/api/people/68/	2014-12-20 16:53:08.575	2014-12-20 21:17:50.463
68	Jango Fett	66BBY	brown	male	black	183	79	tan	https://swapi.dev/api/planets/53/	https://swapi.dev/api/people/69/	2014-12-20 16:54:41.62	2014-12-20 21:17:50.465
69	Zam Wesell	unknown	yellow	female	blonde	168	55	fair, green, yellow	https://swapi.dev/api/planets/54/	https://swapi.dev/api/people/70/	2014-12-20 16:57:44.471	2014-12-20 21:17:50.468
70	Dexter Jettster	unknown	yellow	male	none	198	102	brown	https://swapi.dev/api/planets/55/	https://swapi.dev/api/people/71/	2014-12-20 17:28:27.248	2014-12-20 21:17:50.47
71	Lama Su	unknown	black	male	none	229	88	grey	https://swapi.dev/api/planets/10/	https://swapi.dev/api/people/72/	2014-12-20 17:30:50.416	2014-12-20 21:17:50.473
72	Taun We	unknown	black	female	none	213	unknown	grey	https://swapi.dev/api/planets/10/	https://swapi.dev/api/people/73/	2014-12-20 17:31:21.195	2014-12-20 21:17:50.474
73	Jocasta Nu	unknown	blue	female	white	167	unknown	fair	https://swapi.dev/api/planets/9/	https://swapi.dev/api/people/74/	2014-12-20 17:32:51.996	2014-12-20 21:17:50.476
74	R4-P17	unknown	red, blue	female	none	96	unknown	silver, red	https://swapi.dev/api/planets/28/	https://swapi.dev/api/people/75/	2014-12-20 17:43:36.409	2014-12-20 21:17:50.478
75	Wat Tambor	unknown	unknown	male	none	193	48	green, grey	https://swapi.dev/api/planets/56/	https://swapi.dev/api/people/76/	2014-12-20 17:53:52.607	2014-12-20 21:17:50.481
76	San Hill	unknown	gold	male	none	191	unknown	grey	https://swapi.dev/api/planets/57/	https://swapi.dev/api/people/77/	2014-12-20 17:58:17.049	2014-12-20 21:17:50.484
77	Shaak Ti	unknown	black	female	none	178	57	red, blue, white	https://swapi.dev/api/planets/58/	https://swapi.dev/api/people/78/	2014-12-20 18:44:01.103	2014-12-20 21:17:50.486
78	Grievous	unknown	green, yellow	male	none	216	159	brown, white	https://swapi.dev/api/planets/59/	https://swapi.dev/api/people/79/	2014-12-20 19:43:53.348	2014-12-20 21:17:50.488
79	Tarfful	unknown	blue	male	brown	234	136	brown	https://swapi.dev/api/planets/14/	https://swapi.dev/api/people/80/	2014-12-20 19:46:34.209	2014-12-20 21:17:50.491
80	Raymus Antilles	unknown	brown	male	brown	188	79	light	https://swapi.dev/api/planets/2/	https://swapi.dev/api/people/81/	2014-12-20 19:49:35.583	2014-12-20 21:17:50.493
81	Sly Moore	unknown	white	female	none	178	48	pale	https://swapi.dev/api/planets/60/	https://swapi.dev/api/people/82/	2014-12-20 20:18:37.619	2014-12-20 21:17:50.496
82	Tion Medon	unknown	black	male	none	206	80	grey	https://swapi.dev/api/planets/12/	https://swapi.dev/api/people/83/	2014-12-20 20:35:04.26	2014-12-20 21:17:50.498
\.


--
-- TOC entry 5057 (class 0 OID 19495)
-- Dependencies: 229
-- Data for Name: people_films; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.people_films (person_url, film_url) FROM stdin;
https://swapi.dev/api/people/1/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/1/	https://swapi.dev/api/films/2/
https://swapi.dev/api/people/1/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/1/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/2/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/2/	https://swapi.dev/api/films/2/
https://swapi.dev/api/people/2/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/2/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/2/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/2/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/3/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/3/	https://swapi.dev/api/films/2/
https://swapi.dev/api/people/3/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/3/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/3/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/3/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/4/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/4/	https://swapi.dev/api/films/2/
https://swapi.dev/api/people/4/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/4/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/5/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/5/	https://swapi.dev/api/films/2/
https://swapi.dev/api/people/5/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/5/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/6/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/6/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/6/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/7/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/7/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/7/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/8/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/9/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/10/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/10/	https://swapi.dev/api/films/2/
https://swapi.dev/api/people/10/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/10/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/10/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/10/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/11/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/11/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/11/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/12/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/12/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/13/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/13/	https://swapi.dev/api/films/2/
https://swapi.dev/api/people/13/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/13/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/14/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/14/	https://swapi.dev/api/films/2/
https://swapi.dev/api/people/14/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/15/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/16/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/16/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/16/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/18/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/18/	https://swapi.dev/api/films/2/
https://swapi.dev/api/people/18/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/19/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/20/	https://swapi.dev/api/films/2/
https://swapi.dev/api/people/20/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/20/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/20/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/20/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/21/	https://swapi.dev/api/films/2/
https://swapi.dev/api/people/21/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/21/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/21/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/21/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/22/	https://swapi.dev/api/films/2/
https://swapi.dev/api/people/22/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/22/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/23/	https://swapi.dev/api/films/2/
https://swapi.dev/api/people/24/	https://swapi.dev/api/films/2/
https://swapi.dev/api/people/25/	https://swapi.dev/api/films/2/
https://swapi.dev/api/people/25/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/26/	https://swapi.dev/api/films/2/
https://swapi.dev/api/people/27/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/28/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/29/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/30/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/31/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/32/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/33/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/33/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/33/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/34/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/35/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/35/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/35/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/36/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/36/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/37/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/38/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/39/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/40/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/40/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/41/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/42/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/43/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/43/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/44/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/45/	https://swapi.dev/api/films/3/
https://swapi.dev/api/people/46/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/46/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/46/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/47/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/48/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/49/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/50/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/51/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/51/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/51/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/52/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/52/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/52/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/53/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/53/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/53/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/54/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/54/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/55/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/55/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/56/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/56/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/57/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/58/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/58/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/58/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/59/	https://swapi.dev/api/films/4/
https://swapi.dev/api/people/59/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/60/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/61/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/62/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/63/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/63/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/64/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/64/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/65/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/66/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/67/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/67/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/68/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/68/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/69/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/70/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/71/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/72/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/73/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/74/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/75/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/75/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/76/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/77/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/78/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/78/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/79/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/80/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/81/	https://swapi.dev/api/films/1/
https://swapi.dev/api/people/81/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/82/	https://swapi.dev/api/films/5/
https://swapi.dev/api/people/82/	https://swapi.dev/api/films/6/
https://swapi.dev/api/people/83/	https://swapi.dev/api/films/6/
\.


--
-- TOC entry 5058 (class 0 OID 19512)
-- Dependencies: 230
-- Data for Name: people_species; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.people_species (person_url, species_url) FROM stdin;
https://swapi.dev/api/people/2/	https://swapi.dev/api/species/2/
https://swapi.dev/api/people/3/	https://swapi.dev/api/species/2/
https://swapi.dev/api/people/8/	https://swapi.dev/api/species/2/
https://swapi.dev/api/people/13/	https://swapi.dev/api/species/3/
https://swapi.dev/api/people/15/	https://swapi.dev/api/species/4/
https://swapi.dev/api/people/16/	https://swapi.dev/api/species/5/
https://swapi.dev/api/people/20/	https://swapi.dev/api/species/6/
https://swapi.dev/api/people/23/	https://swapi.dev/api/species/2/
https://swapi.dev/api/people/24/	https://swapi.dev/api/species/7/
https://swapi.dev/api/people/27/	https://swapi.dev/api/species/8/
https://swapi.dev/api/people/30/	https://swapi.dev/api/species/9/
https://swapi.dev/api/people/31/	https://swapi.dev/api/species/10/
https://swapi.dev/api/people/33/	https://swapi.dev/api/species/11/
https://swapi.dev/api/people/36/	https://swapi.dev/api/species/12/
https://swapi.dev/api/people/37/	https://swapi.dev/api/species/12/
https://swapi.dev/api/people/38/	https://swapi.dev/api/species/12/
https://swapi.dev/api/people/40/	https://swapi.dev/api/species/13/
https://swapi.dev/api/people/41/	https://swapi.dev/api/species/14/
https://swapi.dev/api/people/44/	https://swapi.dev/api/species/22/
https://swapi.dev/api/people/45/	https://swapi.dev/api/species/15/
https://swapi.dev/api/people/46/	https://swapi.dev/api/species/15/
https://swapi.dev/api/people/47/	https://swapi.dev/api/species/16/
https://swapi.dev/api/people/48/	https://swapi.dev/api/species/17/
https://swapi.dev/api/people/49/	https://swapi.dev/api/species/18/
https://swapi.dev/api/people/50/	https://swapi.dev/api/species/19/
https://swapi.dev/api/people/52/	https://swapi.dev/api/species/20/
https://swapi.dev/api/people/53/	https://swapi.dev/api/species/21/
https://swapi.dev/api/people/54/	https://swapi.dev/api/species/22/
https://swapi.dev/api/people/55/	https://swapi.dev/api/species/23/
https://swapi.dev/api/people/56/	https://swapi.dev/api/species/24/
https://swapi.dev/api/people/57/	https://swapi.dev/api/species/25/
https://swapi.dev/api/people/58/	https://swapi.dev/api/species/26/
https://swapi.dev/api/people/59/	https://swapi.dev/api/species/27/
https://swapi.dev/api/people/63/	https://swapi.dev/api/species/28/
https://swapi.dev/api/people/64/	https://swapi.dev/api/species/29/
https://swapi.dev/api/people/65/	https://swapi.dev/api/species/29/
https://swapi.dev/api/people/66/	https://swapi.dev/api/species/1/
https://swapi.dev/api/people/67/	https://swapi.dev/api/species/1/
https://swapi.dev/api/people/68/	https://swapi.dev/api/species/1/
https://swapi.dev/api/people/70/	https://swapi.dev/api/species/30/
https://swapi.dev/api/people/71/	https://swapi.dev/api/species/31/
https://swapi.dev/api/people/72/	https://swapi.dev/api/species/32/
https://swapi.dev/api/people/73/	https://swapi.dev/api/species/32/
https://swapi.dev/api/people/74/	https://swapi.dev/api/species/1/
https://swapi.dev/api/people/76/	https://swapi.dev/api/species/33/
https://swapi.dev/api/people/77/	https://swapi.dev/api/species/34/
https://swapi.dev/api/people/78/	https://swapi.dev/api/species/35/
https://swapi.dev/api/people/79/	https://swapi.dev/api/species/36/
https://swapi.dev/api/people/80/	https://swapi.dev/api/species/3/
https://swapi.dev/api/people/83/	https://swapi.dev/api/species/37/
\.


--
-- TOC entry 5059 (class 0 OID 19529)
-- Dependencies: 231
-- Data for Name: people_starships; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.people_starships (person_url, starship_url) FROM stdin;
https://swapi.dev/api/people/1/	https://swapi.dev/api/starships/12/
https://swapi.dev/api/people/1/	https://swapi.dev/api/starships/22/
https://swapi.dev/api/people/4/	https://swapi.dev/api/starships/13/
https://swapi.dev/api/people/9/	https://swapi.dev/api/starships/12/
https://swapi.dev/api/people/10/	https://swapi.dev/api/starships/48/
https://swapi.dev/api/people/10/	https://swapi.dev/api/starships/59/
https://swapi.dev/api/people/10/	https://swapi.dev/api/starships/64/
https://swapi.dev/api/people/10/	https://swapi.dev/api/starships/65/
https://swapi.dev/api/people/10/	https://swapi.dev/api/starships/74/
https://swapi.dev/api/people/11/	https://swapi.dev/api/starships/39/
https://swapi.dev/api/people/11/	https://swapi.dev/api/starships/59/
https://swapi.dev/api/people/11/	https://swapi.dev/api/starships/65/
https://swapi.dev/api/people/13/	https://swapi.dev/api/starships/10/
https://swapi.dev/api/people/13/	https://swapi.dev/api/starships/22/
https://swapi.dev/api/people/14/	https://swapi.dev/api/starships/10/
https://swapi.dev/api/people/14/	https://swapi.dev/api/starships/22/
https://swapi.dev/api/people/18/	https://swapi.dev/api/starships/12/
https://swapi.dev/api/people/19/	https://swapi.dev/api/starships/12/
https://swapi.dev/api/people/22/	https://swapi.dev/api/starships/21/
https://swapi.dev/api/people/25/	https://swapi.dev/api/starships/10/
https://swapi.dev/api/people/29/	https://swapi.dev/api/starships/28/
https://swapi.dev/api/people/31/	https://swapi.dev/api/starships/10/
https://swapi.dev/api/people/35/	https://swapi.dev/api/starships/39/
https://swapi.dev/api/people/35/	https://swapi.dev/api/starships/49/
https://swapi.dev/api/people/35/	https://swapi.dev/api/starships/64/
https://swapi.dev/api/people/39/	https://swapi.dev/api/starships/40/
https://swapi.dev/api/people/44/	https://swapi.dev/api/starships/41/
https://swapi.dev/api/people/58/	https://swapi.dev/api/starships/48/
https://swapi.dev/api/people/60/	https://swapi.dev/api/starships/39/
https://swapi.dev/api/people/79/	https://swapi.dev/api/starships/74/
\.


--
-- TOC entry 5060 (class 0 OID 19546)
-- Dependencies: 232
-- Data for Name: people_vehicles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.people_vehicles (person_url, vehicle_url) FROM stdin;
https://swapi.dev/api/people/1/	https://swapi.dev/api/vehicles/14/
https://swapi.dev/api/people/1/	https://swapi.dev/api/vehicles/30/
https://swapi.dev/api/people/5/	https://swapi.dev/api/vehicles/30/
https://swapi.dev/api/people/10/	https://swapi.dev/api/vehicles/38/
https://swapi.dev/api/people/11/	https://swapi.dev/api/vehicles/44/
https://swapi.dev/api/people/11/	https://swapi.dev/api/vehicles/46/
https://swapi.dev/api/people/13/	https://swapi.dev/api/vehicles/19/
https://swapi.dev/api/people/18/	https://swapi.dev/api/vehicles/14/
https://swapi.dev/api/people/32/	https://swapi.dev/api/vehicles/38/
https://swapi.dev/api/people/44/	https://swapi.dev/api/vehicles/42/
https://swapi.dev/api/people/67/	https://swapi.dev/api/vehicles/55/
https://swapi.dev/api/people/70/	https://swapi.dev/api/vehicles/45/
https://swapi.dev/api/people/79/	https://swapi.dev/api/vehicles/60/
\.


--
-- TOC entry 5056 (class 0 OID 19485)
-- Dependencies: 228
-- Data for Name: planets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.planets (id, name, diameter, rotation_period, orbital_period, gravity, population, climate, terrain, surface_water, url, created, edited) FROM stdin;
1	Tatooine	10465	23	304	1 standard	200000	arid	desert	1	https://swapi.dev/api/planets/1/	2014-12-09 13:50:49.641	2014-12-20 20:58:18.411
2	Alderaan	12500	24	364	1 standard	2000000000	temperate	grasslands, mountains	40	https://swapi.dev/api/planets/2/	2014-12-10 11:35:48.479	2014-12-20 20:58:18.42
3	Yavin IV	10200	24	4818	1 standard	1000	temperate, tropical	jungle, rainforests	8	https://swapi.dev/api/planets/3/	2014-12-10 11:37:19.144	2014-12-20 20:58:18.421
4	Hoth	7200	23	549	1.1 standard	unknown	frozen	tundra, ice caves, mountain ranges	100	https://swapi.dev/api/planets/4/	2014-12-10 11:39:13.934	2014-12-20 20:58:18.423
5	Dagobah	8900	23	341	N/A	unknown	murky	swamp, jungles	8	https://swapi.dev/api/planets/5/	2014-12-10 11:42:22.59	2014-12-20 20:58:18.425
6	Bespin	118000	12	5110	1.5 (surface), 1 standard (Cloud City)	6000000	temperate	gas giant	0	https://swapi.dev/api/planets/6/	2014-12-10 11:43:55.24	2014-12-20 20:58:18.427
7	Endor	4900	18	402	0.85 standard	30000000	temperate	forests, mountains, lakes	8	https://swapi.dev/api/planets/7/	2014-12-10 11:50:29.349	2014-12-20 20:58:18.429
8	Naboo	12120	26	312	1 standard	4500000000	temperate	grassy hills, swamps, forests, mountains	12	https://swapi.dev/api/planets/8/	2014-12-10 11:52:31.066	2014-12-20 20:58:18.43
9	Coruscant	12240	24	368	1 standard	1000000000000	temperate	cityscape, mountains	unknown	https://swapi.dev/api/planets/9/	2014-12-10 11:54:13.921	2014-12-20 20:58:18.432
10	Kamino	19720	27	463	1 standard	1000000000	temperate	ocean	100	https://swapi.dev/api/planets/10/	2014-12-10 12:45:06.577	2014-12-20 20:58:18.434
11	Geonosis	11370	30	256	0.9 standard	100000000000	temperate, arid	rock, desert, mountain, barren	5	https://swapi.dev/api/planets/11/	2014-12-10 12:47:22.35	2014-12-20 20:58:18.437
12	Utapau	12900	27	351	1 standard	95000000	temperate, arid, windy	scrublands, savanna, canyons, sinkholes	0.9	https://swapi.dev/api/planets/12/	2014-12-10 12:49:01.491	2014-12-20 20:58:18.439
13	Mustafar	4200	36	412	1 standard	20000	hot	volcanoes, lava rivers, mountains, caves	0	https://swapi.dev/api/planets/13/	2014-12-10 12:50:16.526	2014-12-20 20:58:18.44
14	Kashyyyk	12765	26	381	1 standard	45000000	tropical	jungle, forests, lakes, rivers	60	https://swapi.dev/api/planets/14/	2014-12-10 13:32:00.124	2014-12-20 20:58:18.442
15	Polis Massa	0	24	590	0.56 standard	1000000	artificial temperate 	airless asteroid	0	https://swapi.dev/api/planets/15/	2014-12-10 13:33:46.405	2014-12-20 20:58:18.444
16	Mygeeto	10088	12	167	1 standard	19000000	frigid	glaciers, mountains, ice canyons	unknown	https://swapi.dev/api/planets/16/	2014-12-10 13:43:39.139	2014-12-20 20:58:18.446
17	Felucia	9100	34	231	0.75 standard	8500000	hot, humid	fungus forests	unknown	https://swapi.dev/api/planets/17/	2014-12-10 13:44:50.397	2014-12-20 20:58:18.447
18	Cato Neimoidia	0	25	278	1 standard	10000000	temperate, moist	mountains, fields, forests, rock arches	unknown	https://swapi.dev/api/planets/18/	2014-12-10 13:46:28.704	2014-12-20 20:58:18.449
19	Saleucami	14920	26	392	unknown	1400000000	hot	caves, desert, mountains, volcanoes	unknown	https://swapi.dev/api/planets/19/	2014-12-10 13:47:46.874	2014-12-20 20:58:18.45
20	Stewjon	0	unknown	unknown	1 standard	unknown	temperate	grass	unknown	https://swapi.dev/api/planets/20/	2014-12-10 16:16:26.566	2014-12-20 20:58:18.452
21	Eriadu	13490	24	360	1 standard	22000000000	polluted	cityscape	unknown	https://swapi.dev/api/planets/21/	2014-12-10 16:26:54.384	2014-12-20 20:58:18.454
22	Corellia	11000	25	329	1 standard	3000000000	temperate	plains, urban, hills, forests	70	https://swapi.dev/api/planets/22/	2014-12-10 16:49:12.453	2014-12-20 20:58:18.456
23	Rodia	7549	29	305	1 standard	1300000000	hot	jungles, oceans, urban, swamps	60	https://swapi.dev/api/planets/23/	2014-12-10 17:03:28.11	2014-12-20 20:58:18.458
24	Nal Hutta	12150	87	413	1 standard	7000000000	temperate	urban, oceans, swamps, bogs	unknown	https://swapi.dev/api/planets/24/	2014-12-10 17:11:29.452	2014-12-20 20:58:18.46
25	Dantooine	9830	25	378	1 standard	1000	temperate	oceans, savannas, mountains, grasslands	unknown	https://swapi.dev/api/planets/25/	2014-12-10 17:23:29.896	2014-12-20 20:58:18.461
26	Bestine IV	6400	26	680	unknown	62000000	temperate	rocky islands, oceans	98	https://swapi.dev/api/planets/26/	2014-12-12 11:16:55.078	2014-12-20 20:58:18.463
27	Ord Mantell	14050	26	334	1 standard	4000000000	temperate	plains, seas, mesas	10	https://swapi.dev/api/planets/27/	2014-12-15 12:23:41.661	2014-12-20 20:58:18.464
28	unknown	0	0	0	unknown	unknown	unknown	unknown	unknown	https://swapi.dev/api/planets/28/	2014-12-15 12:25:59.569	2014-12-20 20:58:18.466
29	Trandosha	0	25	371	0.62 standard	42000000	arid	mountains, seas, grasslands, deserts	unknown	https://swapi.dev/api/planets/29/	2014-12-15 12:53:47.695	2014-12-20 20:58:18.468
30	Socorro	0	20	326	1 standard	300000000	arid	deserts, mountains	unknown	https://swapi.dev/api/planets/30/	2014-12-15 12:56:31.121	2014-12-20 20:58:18.469
31	Mon Cala	11030	21	398	1	27000000000	temperate	oceans, reefs, islands	100	https://swapi.dev/api/planets/31/	2014-12-18 11:07:01.792	2014-12-20 20:58:18.471
32	Chandrila	13500	20	368	1	1200000000	temperate	plains, forests	40	https://swapi.dev/api/planets/32/	2014-12-18 11:11:51.872	2014-12-20 20:58:18.472
33	Sullust	12780	20	263	1	18500000000	superheated	mountains, volcanoes, rocky deserts	5	https://swapi.dev/api/planets/33/	2014-12-18 11:25:40.243	2014-12-20 20:58:18.474
34	Toydaria	7900	21	184	1	11000000	temperate	swamps, lakes	unknown	https://swapi.dev/api/planets/34/	2014-12-19 17:47:54.403	2014-12-20 20:58:18.476
35	Malastare	18880	26	201	1.56	2000000000	arid, temperate, tropical	swamps, deserts, jungles, mountains	unknown	https://swapi.dev/api/planets/35/	2014-12-19 17:52:13.106	2014-12-20 20:58:18.478
36	Dathomir	10480	24	491	0.9	5200	temperate	forests, deserts, savannas	unknown	https://swapi.dev/api/planets/36/	2014-12-19 18:00:40.142	2014-12-20 20:58:18.48
37	Ryloth	10600	30	305	1	1500000000	temperate, arid, subartic	mountains, valleys, deserts, tundra	5	https://swapi.dev/api/planets/37/	2014-12-20 09:46:25.74	2014-12-20 20:58:18.481
38	Aleen Minor	unknown	unknown	unknown	unknown	unknown	unknown	unknown	unknown	https://swapi.dev/api/planets/38/	2014-12-20 09:52:23.452	2014-12-20 20:58:18.483
39	Vulpter	14900	22	391	1	421000000	temperate, artic	urban, barren	unknown	https://swapi.dev/api/planets/39/	2014-12-20 09:56:58.874	2014-12-20 20:58:18.485
40	Troiken	unknown	unknown	unknown	unknown	unknown	unknown	desert, tundra, rainforests, mountains	unknown	https://swapi.dev/api/planets/40/	2014-12-20 10:01:37.395	2014-12-20 20:58:18.487
41	Tund	12190	48	1770	unknown	0	unknown	barren, ash	unknown	https://swapi.dev/api/planets/41/	2014-12-20 10:07:29.578	2014-12-20 20:58:18.489
42	Haruun Kal	10120	25	383	0.98	705300	temperate	toxic cloudsea, plateaus, volcanoes	unknown	https://swapi.dev/api/planets/42/	2014-12-20 10:12:28.98	2014-12-20 20:58:18.491
43	Cerea	unknown	27	386	1	450000000	temperate	verdant	20	https://swapi.dev/api/planets/43/	2014-12-20 10:14:48.178	2014-12-20 20:58:18.493
44	Glee Anselm	15600	33	206	1	500000000	tropical, temperate	lakes, islands, swamps, seas	80	https://swapi.dev/api/planets/44/	2014-12-20 10:18:26.11	2014-12-20 20:58:18.495
45	Iridonia	unknown	29	413	unknown	unknown	unknown	rocky canyons, acid pools	unknown	https://swapi.dev/api/planets/45/	2014-12-20 10:26:05.788	2014-12-20 20:58:18.497
46	Tholoth	unknown	unknown	unknown	unknown	unknown	unknown	unknown	unknown	https://swapi.dev/api/planets/46/	2014-12-20 10:28:31.117	2014-12-20 20:58:18.498
47	Iktotch	unknown	22	481	1	unknown	arid, rocky, windy	rocky	unknown	https://swapi.dev/api/planets/47/	2014-12-20 10:31:32.413	2014-12-20 20:58:18.5
48	Quermia	unknown	unknown	unknown	unknown	unknown	unknown	unknown	unknown	https://swapi.dev/api/planets/48/	2014-12-20 10:34:08.249	2014-12-20 20:58:18.502
49	Dorin	13400	22	409	1	unknown	temperate	unknown	unknown	https://swapi.dev/api/planets/49/	2014-12-20 10:48:36.141	2014-12-20 20:58:18.504
50	Champala	unknown	27	318	1	3500000000	temperate	oceans, rainforests, plateaus	unknown	https://swapi.dev/api/planets/50/	2014-12-20 10:52:51.524	2014-12-20 20:58:18.506
51	Mirial	unknown	unknown	unknown	unknown	unknown	unknown	deserts	unknown	https://swapi.dev/api/planets/51/	2014-12-20 16:44:46.318	2014-12-20 20:58:18.508
52	Serenno	unknown	unknown	unknown	unknown	unknown	unknown	rainforests, rivers, mountains	unknown	https://swapi.dev/api/planets/52/	2014-12-20 16:52:13.357	2014-12-20 20:58:18.51
53	Concord Dawn	unknown	unknown	unknown	unknown	unknown	unknown	jungles, forests, deserts	unknown	https://swapi.dev/api/planets/53/	2014-12-20 16:54:39.909	2014-12-20 20:58:18.512
54	Zolan	unknown	unknown	unknown	unknown	unknown	unknown	unknown	unknown	https://swapi.dev/api/planets/54/	2014-12-20 16:56:37.25	2014-12-20 20:58:18.514
55	Ojom	unknown	unknown	unknown	unknown	500000000	frigid	oceans, glaciers	100	https://swapi.dev/api/planets/55/	2014-12-20 17:27:41.286	2014-12-20 20:58:18.516
56	Skako	unknown	27	384	1	500000000000	temperate	urban, vines	unknown	https://swapi.dev/api/planets/56/	2014-12-20 17:50:47.864	2014-12-20 20:58:18.517
57	Muunilinst	13800	28	412	1	5000000000	temperate	plains, forests, hills, mountains	25	https://swapi.dev/api/planets/57/	2014-12-20 17:57:47.42	2014-12-20 20:58:18.519
58	Shili	unknown	unknown	unknown	1	unknown	temperate	cities, savannahs, seas, plains	unknown	https://swapi.dev/api/planets/58/	2014-12-20 18:43:14.049	2014-12-20 20:58:18.521
59	Kalee	13850	23	378	1	4000000000	arid, temperate, tropical	rainforests, cliffs, canyons, seas	unknown	https://swapi.dev/api/planets/59/	2014-12-20 19:43:51.278	2014-12-20 20:58:18.523
60	Umbara	unknown	unknown	unknown	unknown	unknown	unknown	unknown	unknown	https://swapi.dev/api/planets/60/	2014-12-20 20:18:36.256	2014-12-20 20:58:18.525
\.


--
-- TOC entry 5067 (class 0 OID 19993)
-- Dependencies: 239
-- Data for Name: rating_providers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rating_providers (id, name) FROM stdin;
1	Internet Movie Database
2	Rotten Tomatoes
3	Metacritic
\.


--
-- TOC entry 5070 (class 0 OID 20005)
-- Dependencies: 242
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ratings (id, film_id, imdb_id, rating_provider_id, rating_value) FROM stdin;
1	1	tt0076759	1	8.6/10
2	1	tt0076759	2	93%
3	1	tt0076759	3	90/100
4	2	tt0080684	1	8.7/10
5	2	tt0080684	2	95%
6	2	tt0080684	3	82/100
7	3	tt0086190	1	8.3/10
8	3	tt0086190	2	82%
9	3	tt0086190	3	58/100
10	4	tt0120915	1	6.5/10
11	4	tt0120915	2	53%
12	4	tt0120915	3	51/100
13	5	tt0121765	1	6.6/10
14	5	tt0121765	2	65%
15	5	tt0121765	3	54/100
16	6	tt0121766	1	7.6/10
17	6	tt0121766	2	80%
18	6	tt0121766	3	68/100
\.


--
-- TOC entry 5054 (class 0 OID 19474)
-- Dependencies: 226
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.species (id, name, classification, designation, average_height, average_lifespan, eye_colors, hair_colors, skin_colors, language, homeworld, url, created, edited) FROM stdin;
1	Human	mammal	sentient	180	120	brown, blue, green, hazel, grey, amber	blonde, brown, black, red	caucasian, black, asian, hispanic	Galactic Basic	https://swapi.dev/api/planets/9/	https://swapi.dev/api/species/1/	2014-12-10 13:52:11.567	2014-12-20 21:36:42.136
2	Droid	artificial	sentient	n/a	indefinite	n/a	n/a	n/a	n/a	\N	https://swapi.dev/api/species/2/	2014-12-10 15:16:16.259	2014-12-20 21:36:42.139
3	Wookie	mammal	sentient	210	400	blue, green, yellow, brown, golden, red	black, brown	gray	Shyriiwook	https://swapi.dev/api/planets/14/	https://swapi.dev/api/species/3/	2014-12-10 16:44:31.486	2014-12-20 21:36:42.142
4	Rodian	sentient	reptilian	170	unknown	black	n/a	green, blue	Galatic Basic	https://swapi.dev/api/planets/23/	https://swapi.dev/api/species/4/	2014-12-10 17:05:26.471	2014-12-20 21:36:42.144
5	Hutt	gastropod	sentient	300	1000	yellow, red	n/a	green, brown, tan	Huttese	https://swapi.dev/api/planets/24/	https://swapi.dev/api/species/5/	2014-12-10 17:12:50.41	2014-12-20 21:36:42.146
6	Yoda's species	mammal	sentient	66	900	brown, green, yellow	brown, white	green, yellow	Galactic basic	https://swapi.dev/api/planets/28/	https://swapi.dev/api/species/6/	2014-12-15 12:27:22.877	2014-12-20 21:36:42.148
7	Trandoshan	reptile	sentient	200	unknown	yellow, orange	none	brown, green	Dosh	https://swapi.dev/api/planets/29/	https://swapi.dev/api/species/7/	2014-12-15 13:07:47.704	2014-12-20 21:36:42.151
8	Mon Calamari	amphibian	sentient	160	unknown	yellow	none	red, blue, brown, magenta	Mon Calamarian	https://swapi.dev/api/planets/31/	https://swapi.dev/api/species/8/	2014-12-18 11:09:52.263	2014-12-20 21:36:42.153
9	Ewok	mammal	sentient	100	unknown	orange, brown	white, brown, black	brown	Ewokese	https://swapi.dev/api/planets/7/	https://swapi.dev/api/species/9/	2014-12-18 11:22:00.285	2014-12-20 21:36:42.155
10	Sullustan	mammal	sentient	180	unknown	black	none	pale	Sullutese	https://swapi.dev/api/planets/33/	https://swapi.dev/api/species/10/	2014-12-18 11:26:20.103	2014-12-20 21:36:42.157
11	Neimodian	unknown	sentient	180	unknown	red, pink	none	grey, green	Neimoidia	https://swapi.dev/api/planets/18/	https://swapi.dev/api/species/11/	2014-12-19 17:07:31.319	2014-12-20 21:36:42.16
12	Gungan	amphibian	sentient	190	unknown	orange	none	brown, green	Gungan basic	https://swapi.dev/api/planets/8/	https://swapi.dev/api/species/12/	2014-12-19 17:30:37.341	2014-12-20 21:36:42.163
13	Toydarian	mammal	sentient	120	91	yellow	none	blue, green, grey	Toydarian	https://swapi.dev/api/planets/34/	https://swapi.dev/api/species/13/	2014-12-19 17:48:56.893	2014-12-20 21:36:42.165
14	Dug	mammal	sentient	100	unknown	yellow, blue	none	brown, purple, grey, red	Dugese	https://swapi.dev/api/planets/35/	https://swapi.dev/api/species/14/	2014-12-19 17:53:11.214	2014-12-20 21:36:42.167
15	Twi'lek	mammals	sentient	200	unknown	blue, brown, orange, pink	none	orange, yellow, blue, green, pink, purple, tan	Twi'leki	https://swapi.dev/api/planets/37/	https://swapi.dev/api/species/15/	2014-12-20 09:48:02.406	2014-12-20 21:36:42.169
16	Aleena	reptile	sentient	80	79	unknown	none	blue, gray	Aleena	https://swapi.dev/api/planets/38/	https://swapi.dev/api/species/16/	2014-12-20 09:53:16.481	2014-12-20 21:36:42.171
17	Vulptereen	unknown	sentient	100	unknown	yellow	none	grey	vulpterish	https://swapi.dev/api/planets/39/	https://swapi.dev/api/species/17/	2014-12-20 09:57:33.128	2014-12-20 21:36:42.173
18	Xexto	unknown	sentient	125	unknown	black	none	grey, yellow, purple	Xextese	https://swapi.dev/api/planets/40/	https://swapi.dev/api/species/18/	2014-12-20 10:02:13.915	2014-12-20 21:36:42.175
19	Toong	unknown	sentient	200	unknown	orange	none	grey, green, yellow	Tundan	https://swapi.dev/api/planets/41/	https://swapi.dev/api/species/19/	2014-12-20 10:08:36.795	2014-12-20 21:36:42.177
20	Cerean	mammal	sentient	200	unknown	hazel	red, blond, black, white	pale pink	Cerean	https://swapi.dev/api/planets/43/	https://swapi.dev/api/species/20/	2014-12-20 10:15:33.765	2014-12-20 21:36:42.179
21	Nautolan	amphibian	sentient	180	70	black	none	green, blue, brown, red	Nautila	https://swapi.dev/api/planets/44/	https://swapi.dev/api/species/21/	2014-12-20 10:18:58.61	2014-12-20 21:36:42.181
22	Zabrak	mammal	sentient	180	unknown	brown, orange	black	pale, brown, red, orange, yellow	Zabraki	https://swapi.dev/api/planets/45/	https://swapi.dev/api/species/22/	2014-12-20 10:26:59.894	2014-12-20 21:36:42.183
23	Tholothian	mammal	sentient	unknown	unknown	blue, indigo	unknown	dark	unknown	https://swapi.dev/api/planets/46/	https://swapi.dev/api/species/23/	2014-12-20 10:29:13.798	2014-12-20 21:36:42.186
24	Iktotchi	unknown	sentient	180	unknown	orange	none	pink	Iktotchese	https://swapi.dev/api/planets/47/	https://swapi.dev/api/species/24/	2014-12-20 10:32:13.046	2014-12-20 21:36:42.188
25	Quermian	mammal	sentient	240	86	yellow	none	white	Quermian	https://swapi.dev/api/planets/48/	https://swapi.dev/api/species/25/	2014-12-20 10:34:50.827	2014-12-20 21:36:42.189
26	Kel Dor	unknown	sentient	180	70	black, silver	none	peach, orange, red	Kel Dor	https://swapi.dev/api/planets/49/	https://swapi.dev/api/species/26/	2014-12-20 10:49:21.692	2014-12-20 21:36:42.191
27	Chagrian	amphibian	sentient	190	unknown	blue	none	blue	Chagria	https://swapi.dev/api/planets/50/	https://swapi.dev/api/species/27/	2014-12-20 10:53:28.795	2014-12-20 21:36:42.193
28	Geonosian	insectoid	sentient	178	unknown	green, hazel	none	green, brown	Geonosian	https://swapi.dev/api/planets/11/	https://swapi.dev/api/species/28/	2014-12-20 16:40:45.618	2014-12-20 21:36:42.195
29	Mirialan	mammal	sentient	180	unknown	blue, green, red, yellow, brown, orange	black, brown	yellow, green	Mirialan	https://swapi.dev/api/planets/51/	https://swapi.dev/api/species/29/	2014-12-20 16:46:48.29	2014-12-20 21:36:42.197
30	Clawdite	reptilian	sentient	180	70	yellow	none	green, yellow	Clawdite	https://swapi.dev/api/planets/54/	https://swapi.dev/api/species/30/	2014-12-20 16:57:46.171	2014-12-20 21:36:42.199
31	Besalisk	amphibian	sentient	178	75	yellow	none	brown	besalisk	https://swapi.dev/api/planets/55/	https://swapi.dev/api/species/31/	2014-12-20 17:28:28.821	2014-12-20 21:36:42.2
32	Kaminoan	amphibian	sentient	220	80	black	none	grey, blue	Kaminoan	https://swapi.dev/api/planets/10/	https://swapi.dev/api/species/32/	2014-12-20 17:31:24.838	2014-12-20 21:36:42.202
33	Skakoan	mammal	sentient	unknown	unknown	unknown	none	grey, green	Skakoan	https://swapi.dev/api/planets/56/	https://swapi.dev/api/species/33/	2014-12-20 17:53:54.515	2014-12-20 21:36:42.204
34	Muun	mammal	sentient	190	100	black	none	grey, white	Muun	https://swapi.dev/api/planets/57/	https://swapi.dev/api/species/34/	2014-12-20 17:58:19.088	2014-12-20 21:36:42.207
35	Togruta	mammal	sentient	180	94	red, orange, yellow, green, blue, black	none	red, white, orange, yellow, green, blue	Togruti	https://swapi.dev/api/planets/58/	https://swapi.dev/api/species/35/	2014-12-20 18:44:03.246	2014-12-20 21:36:42.209
36	Kaleesh	reptile	sentient	170	80	yellow	none	brown, orange, tan	Kaleesh	https://swapi.dev/api/planets/59/	https://swapi.dev/api/species/36/	2014-12-20 19:45:42.537	2014-12-20 21:36:42.21
37	Pau'an	mammal	sentient	190	700	black	none	grey	Utapese	https://swapi.dev/api/planets/12/	https://swapi.dev/api/species/37/	2014-12-20 20:35:06.777	2014-12-20 21:36:42.212
\.


--
-- TOC entry 5050 (class 0 OID 19452)
-- Dependencies: 222
-- Data for Name: starships; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.starships (id, name, model, starship_class, manufacturer, cost_in_credits, length, crew, passengers, max_atmosphering_speed, hyperdrive_rating, mglt, cargo_capacity, consumables, url, created, edited) FROM stdin;
1	CR90 corvette	CR90 corvette	corvette	Corellian Engineering Corporation	3500000	150	30-165	600	950	2.0	60	3000000	1 year	https://swapi.dev/api/starships/2/	2014-12-10 14:20:33.369	2014-12-20 21:23:49.867
2	Star Destroyer	Imperial I-class Star Destroyer	Star Destroyer	Kuat Drive Yards	150000000	1,600	47,060	n/a	975	2.0	60	36000000	2 years	https://swapi.dev/api/starships/3/	2014-12-10 15:08:19.848	2014-12-20 21:23:49.87
3	Sentinel-class landing craft	Sentinel-class landing craft	landing craft	Sienar Fleet Systems, Cyngus Spaceworks	240000	38	5	75	1000	1.0	70	180000	1 month	https://swapi.dev/api/starships/5/	2014-12-10 15:48:00.586	2014-12-20 21:23:49.873
4	Death Star	DS-1 Orbital Battle Station	Deep Space Mobile Battlestation	Imperial Department of Military Research, Sienar Fleet Systems	1000000000000	120000	342,953	843,342	n/a	4.0	10	1000000000000	3 years	https://swapi.dev/api/starships/9/	2014-12-10 16:36:50.509	2014-12-20 21:26:24.783
5	Millennium Falcon	YT-1300 light freighter	Light freighter	Corellian Engineering Corporation	100000	34.37	4	6	1050	0.5	75	100000	2 months	https://swapi.dev/api/starships/10/	2014-12-10 16:59:45.094	2014-12-20 21:23:49.88
6	Y-wing	BTL Y-wing	assault starfighter	Koensayr Manufacturing	134999	14	2	0	1000km	1.0	80	110	1 week	https://swapi.dev/api/starships/11/	2014-12-12 11:00:39.817	2014-12-20 21:23:49.883
7	X-wing	T-65 X-wing	Starfighter	Incom Corporation	149999	12.5	1	0	1050	1.0	100	110	1 week	https://swapi.dev/api/starships/12/	2014-12-12 11:19:05.34	2014-12-20 21:23:49.886
8	TIE Advanced x1	Twin Ion Engine Advanced x1	Starfighter	Sienar Fleet Systems	unknown	9.2	1	0	1200	1.0	105	150	5 days	https://swapi.dev/api/starships/13/	2014-12-12 11:21:32.991	2014-12-20 21:23:49.889
9	Executor	Executor-class star dreadnought	Star dreadnought	Kuat Drive Yards, Fondor Shipyards	1143350000	19000	279,144	38000	n/a	2.0	40	250000000	6 years	https://swapi.dev/api/starships/15/	2014-12-15 12:31:42.547	2014-12-20 21:23:49.893
10	Rebel transport	GR-75 medium transport	Medium transport	Gallofree Yards, Inc.	unknown	90	6	90	650	4.0	20	19000000	6 months	https://swapi.dev/api/starships/17/	2014-12-15 12:34:52.264	2014-12-20 21:23:49.895
11	Slave 1	Firespray-31-class patrol and attack	Patrol craft	Kuat Systems Engineering	unknown	21.5	1	6	1000	3.0	70	70000	1 month	https://swapi.dev/api/starships/21/	2014-12-15 13:00:56.332	2014-12-20 21:23:49.897
12	Imperial shuttle	Lambda-class T-4a shuttle	Armed government transport	Sienar Fleet Systems	240000	20	6	20	850	1.0	50	80000	2 months	https://swapi.dev/api/starships/22/	2014-12-15 13:04:47.235	2014-12-20 21:23:49.9
13	EF76 Nebulon-B escort frigate	EF76 Nebulon-B escort frigate	Escort ship	Kuat Drive Yards	8500000	300	854	75	800	2.0	40	6000000	2 years	https://swapi.dev/api/starships/23/	2014-12-15 13:06:30.813	2014-12-20 21:23:49.902
14	Calamari Cruiser	MC80 Liberty type Star Cruiser	Star Cruiser	Mon Calamari shipyards	104000000	1200	5400	1200	n/a	1.0	60	unknown	2 years	https://swapi.dev/api/starships/27/	2014-12-18 10:54:57.804	2014-12-20 21:23:49.904
15	A-wing	RZ-1 A-wing Interceptor	Starfighter	Alliance Underground Engineering, Incom Corporation	175000	9.6	1	0	1300	1.0	120	40	1 week	https://swapi.dev/api/starships/28/	2014-12-18 11:16:34.542	2014-12-20 21:23:49.907
16	B-wing	A/SF-01 B-wing starfighter	Assault Starfighter	Slayn & Korpil	220000	16.9	1	0	950	2.0	91	45	1 week	https://swapi.dev/api/starships/29/	2014-12-18 11:18:04.763	2014-12-20 21:23:49.909
17	Republic Cruiser	Consular-class cruiser	Space cruiser	Corellian Engineering Corporation	unknown	115	9	16	900	2.0	unknown	unknown	unknown	https://swapi.dev/api/starships/31/	2014-12-19 17:01:31.488	2014-12-20 21:23:49.912
18	Droid control ship	Lucrehulk-class Droid Control Ship	Droid control ship	Hoersch-Kessel Drive, Inc.	unknown	3170	175	139000	n/a	2.0	unknown	4000000000	500 days	https://swapi.dev/api/starships/32/	2014-12-19 17:04:06.323	2014-12-20 21:23:49.915
19	Naboo fighter	N-1 starfighter	Starfighter	Theed Palace Space Vessel Engineering Corps	200000	11	1	0	1100	1.0	unknown	65	7 days	https://swapi.dev/api/starships/39/	2014-12-19 17:39:17.582	2014-12-20 21:23:49.917
20	Naboo Royal Starship	J-type 327 Nubian royal starship	yacht	Theed Palace Space Vessel Engineering Corps, Nubia Star Drives	unknown	76	8	unknown	920	1.8	unknown	unknown	unknown	https://swapi.dev/api/starships/40/	2014-12-19 17:45:03.506	2014-12-20 21:23:49.919
21	Scimitar	Star Courier	Space Transport	Republic Sienar Systems	55000000	26.5	1	6	1180	1.5	unknown	2500000	30 days	https://swapi.dev/api/starships/41/	2014-12-20 09:39:56.116	2014-12-20 21:23:49.922
22	J-type diplomatic barge	J-type diplomatic barge	Diplomatic barge	Theed Palace Space Vessel Engineering Corps, Nubia Star Drives	2000000	39	5	10	2000	0.7	unknown	unknown	1 year	https://swapi.dev/api/starships/43/	2014-12-20 11:05:51.237	2014-12-20 21:23:49.925
23	AA-9 Coruscant freighter	Botajef AA-9 Freighter-Liner	freighter	Botajef Shipyards	unknown	390	unknown	30000	unknown	unknown	unknown	unknown	unknown	https://swapi.dev/api/starships/47/	2014-12-20 17:24:23.509	2014-12-20 21:23:49.928
24	Jedi starfighter	Delta-7 Aethersprite-class interceptor	Starfighter	Kuat Systems Engineering	180000	8	1	0	1150	1.0	unknown	60	7 days	https://swapi.dev/api/starships/48/	2014-12-20 17:35:23.906	2014-12-20 21:23:49.93
25	H-type Nubian yacht	H-type Nubian yacht	yacht	Theed Palace Space Vessel Engineering Corps	unknown	47.9	4	unknown	8000	0.9	unknown	unknown	unknown	https://swapi.dev/api/starships/49/	2014-12-20 17:46:46.847	2014-12-20 21:23:49.932
26	Republic Assault ship	Acclamator I-class assault ship	assault ship	Rothana Heavy Engineering	unknown	752	700	16000	unknown	0.6	unknown	11250000	2 years	https://swapi.dev/api/starships/52/	2014-12-20 18:08:42.926	2014-12-20 21:23:49.935
27	Solar Sailer	Punworcca 116-class interstellar sloop	yacht	Huppla Pasa Tisc Shipwrights Collective	35700	15.2	3	11	1600	1.5	unknown	240	7 days	https://swapi.dev/api/starships/58/	2014-12-20 18:37:56.969	2014-12-20 21:23:49.937
28	Trade Federation cruiser	Providence-class carrier/destroyer	capital ship	Rendili StarDrive, Free Dac Volunteers Engineering corps.	125000000	1088	600	48247	1050	1.5	unknown	50000000	4 years	https://swapi.dev/api/starships/59/	2014-12-20 19:40:21.902	2014-12-20 21:23:49.941
29	Theta-class T-2c shuttle	Theta-class T-2c shuttle	transport	Cygnus Spaceworks	1000000	18.5	5	16	2000	1.0	unknown	50000	56 days	https://swapi.dev/api/starships/61/	2014-12-20 19:48:40.409	2014-12-20 21:23:49.944
30	Republic attack cruiser	Senator-class Star Destroyer	star destroyer	Kuat Drive Yards, Allanteen Six shipyards	59000000	1137	7400	2000	975	1.0	unknown	20000000	2 years	https://swapi.dev/api/starships/63/	2014-12-20 19:52:56.232	2014-12-20 21:23:49.946
31	Naboo star skiff	J-type star skiff	yacht	Theed Palace Space Vessel Engineering Corps/Nubia Star Drives, Incorporated	unknown	29.2	3	3	1050	0.5	unknown	unknown	unknown	https://swapi.dev/api/starships/64/	2014-12-20 19:55:15.396	2014-12-20 21:23:49.948
32	Jedi Interceptor	Eta-2 Actis-class light interceptor	starfighter	Kuat Systems Engineering	320000	5.47	1	0	1500	1.0	unknown	60	2 days	https://swapi.dev/api/starships/65/	2014-12-20 19:56:57.468	2014-12-20 21:23:49.951
33	arc-170	Aggressive Reconnaissance-170 starfighte	starfighter	Incom Corporation, Subpro Corporation	155000	14.5	3	0	1000	1.0	100	110	5 days	https://swapi.dev/api/starships/66/	2014-12-20 20:03:48.603	2014-12-20 21:23:49.953
34	Banking clan frigte	Munificent-class star frigate	cruiser	Hoersch-Kessel Drive, Inc, Gwori Revolutionary Industries	57000000	825	200	unknown	unknown	1.0	unknown	40000000	2 years	https://swapi.dev/api/starships/68/	2014-12-20 20:07:11.538	2014-12-20 21:23:49.956
35	Belbullab-22 starfighter	Belbullab-22 starfighter	starfighter	Feethan Ottraw Scalable Assemblies	168000	6.71	1	0	1100	6	unknown	140	7 days	https://swapi.dev/api/starships/74/	2014-12-20 20:38:05.031	2014-12-20 21:23:49.959
36	V-wing	Alpha-3 Nimbus-class V-wing starfighter	starfighter	Kuat Systems Engineering	102500	7.9	1	0	1050	1.0	unknown	60	15 hours	https://swapi.dev/api/starships/75/	2014-12-20 20:43:04.349	2014-12-20 21:23:49.961
\.


--
-- TOC entry 5052 (class 0 OID 19463)
-- Dependencies: 224
-- Data for Name: vehicles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vehicles (id, name, model, vehicle_class, manufacturer, length, cost_in_credits, crew, passengers, max_atmosphering_speed, cargo_capacity, consumables, url, created, edited) FROM stdin;
1	Sand Crawler	Digger Crawler	wheeled	Corellia Mining Corporation	36.8 	150000	46	30	30	50000	2 months	https://swapi.dev/api/vehicles/4/	2014-12-10 15:36:25.724	2014-12-20 21:30:21.661
2	T-16 skyhopper	T-16 skyhopper	repulsorcraft	Incom Corporation	10.4 	14500	1	1	1200	50	0	https://swapi.dev/api/vehicles/6/	2014-12-10 16:01:52.434	2014-12-20 21:30:21.665
3	X-34 landspeeder	X-34 landspeeder	repulsorcraft	SoroSuub Corporation	3.4 	10550	1	1	250	5	unknown	https://swapi.dev/api/vehicles/7/	2014-12-10 16:13:52.586	2014-12-20 21:30:21.668
4	TIE/LN starfighter	Twin Ion Engine/Ln Starfighter	starfighter	Sienar Fleet Systems	6.4	unknown	1	0	1200	65	2 days	https://swapi.dev/api/vehicles/8/	2014-12-10 16:33:52.86	2014-12-20 21:30:21.67
5	Snowspeeder	t-47 airspeeder	airspeeder	Incom corporation	4.5	unknown	2	0	650	10	none	https://swapi.dev/api/vehicles/14/	2014-12-15 12:22:12	2014-12-20 21:30:21.672
6	TIE bomber	TIE/sa bomber	space/planetary bomber	Sienar Fleet Systems	7.8	unknown	1	0	850	none	2 days	https://swapi.dev/api/vehicles/16/	2014-12-15 12:33:15.838	2014-12-20 21:30:21.675
7	AT-AT	All Terrain Armored Transport	assault walker	Kuat Drive Yards, Imperial Department of Military Research	20	unknown	5	40	60	1000	unknown	https://swapi.dev/api/vehicles/18/	2014-12-15 12:38:25.937	2014-12-20 21:30:21.677
8	AT-ST	All Terrain Scout Transport	walker	Kuat Drive Yards, Imperial Department of Military Research	2	unknown	2	0	90	200	none	https://swapi.dev/api/vehicles/19/	2014-12-15 12:46:42.384	2014-12-20 21:30:21.679
9	Storm IV Twin-Pod cloud car	Storm IV Twin-Pod	repulsorcraft	Bespin Motors	7	75000	2	0	1500	10	1 day	https://swapi.dev/api/vehicles/20/	2014-12-15 12:58:50.53	2014-12-20 21:30:21.681
10	Sail barge	Modified Luxury Sail Barge	sail barge	Ubrikkian Industries Custom Vehicle Division	30	285000	26	500	100	2000000	Live food tanks	https://swapi.dev/api/vehicles/24/	2014-12-18 10:44:14.217	2014-12-20 21:30:21.684
11	Bantha-II cargo skiff	Bantha-II	repulsorcraft cargo skiff	Ubrikkian Industries	9.5	8000	5	16	250	135000	1 day	https://swapi.dev/api/vehicles/25/	2014-12-18 10:48:03.208	2014-12-20 21:30:21.688
12	TIE/IN interceptor	Twin Ion Engine Interceptor	starfighter	Sienar Fleet Systems	9.6	unknown	1	0	1250	75	2 days	https://swapi.dev/api/vehicles/26/	2014-12-18 10:50:28.225	2014-12-20 21:30:21.691
13	Imperial Speeder Bike	74-Z speeder bike	speeder	Aratech Repulsor Company	3	8000	1	1	360	4	1 day	https://swapi.dev/api/vehicles/30/	2014-12-18 11:20:04.625	2014-12-20 21:30:21.693
14	Vulture Droid	Vulture-class droid starfighter	starfighter	Haor Chall Engineering, Baktoid Armor Workshop	3.5	unknown	0	0	1200	0	none	https://swapi.dev/api/vehicles/33/	2014-12-19 17:09:53.584	2014-12-20 21:30:21.697
15	Multi-Troop Transport	Multi-Troop Transport	repulsorcraft	Baktoid Armor Workshop	31	138000	4	112	35	12000	unknown	https://swapi.dev/api/vehicles/34/	2014-12-19 17:12:04.4	2014-12-20 21:30:21.7
16	Armored Assault Tank	Armoured Assault Tank	repulsorcraft	Baktoid Armor Workshop	9.75	unknown	4	6	55	unknown	unknown	https://swapi.dev/api/vehicles/35/	2014-12-19 17:13:29.799	2014-12-20 21:30:21.703
17	Single Trooper Aerial Platform	Single Trooper Aerial Platform	repulsorcraft	Baktoid Armor Workshop	2	2500	1	0	400	none	none	https://swapi.dev/api/vehicles/36/	2014-12-19 17:15:09.511	2014-12-20 21:30:21.705
18	C-9979 landing craft	C-9979 landing craft	landing craft	Haor Chall Engineering	210	200000	140	284	587	1800000	1 day	https://swapi.dev/api/vehicles/37/	2014-12-19 17:20:36.373	2014-12-20 21:30:21.707
19	Tribubble bongo	Tribubble bongo	submarine	Otoh Gunga Bongameken Cooperative	15	unknown	1	2	85	1600	unknown	https://swapi.dev/api/vehicles/38/	2014-12-19 17:37:37.924	2014-12-20 21:30:21.71
20	Sith speeder	FC-20 speeder bike	speeder	Razalon	1.5	4000	1	0	180	2	unknown	https://swapi.dev/api/vehicles/42/	2014-12-20 10:09:56.095	2014-12-20 21:30:21.712
21	Zephyr-G swoop bike	Zephyr-G swoop bike	repulsorcraft	Mobquet Swoops and Speeders	3.68	5750	1	1	350	200	none	https://swapi.dev/api/vehicles/44/	2014-12-20 16:24:16.026	2014-12-20 21:30:21.714
22	Koro-2 Exodrive airspeeder	Koro-2 Exodrive airspeeder	airspeeder	Desler Gizh Outworld Mobility Corporation	6.6	unknown	1	1	800	80	unknown	https://swapi.dev/api/vehicles/45/	2014-12-20 17:17:33.526	2014-12-20 21:30:21.716
23	XJ-6 airspeeder	XJ-6 airspeeder	airspeeder	Narglatch AirTech prefabricated kit	6.23	unknown	1	1	720	unknown	unknown	https://swapi.dev/api/vehicles/46/	2014-12-20 17:19:19.991	2014-12-20 21:30:21.719
24	LAAT/i	Low Altitude Assault Transport/infrantry	gunship	Rothana Heavy Engineering	17.4	unknown	6	30	620	170	unknown	https://swapi.dev/api/vehicles/50/	2014-12-20 18:01:21.014	2014-12-20 21:30:21.723
25	LAAT/c	Low Altitude Assault Transport/carrier	gunship	Rothana Heavy Engineering	28.82	unknown	1	0	620	40000	unknown	https://swapi.dev/api/vehicles/51/	2014-12-20 18:02:46.802	2014-12-20 21:30:21.725
26	AT-TE	All Terrain Tactical Enforcer	walker	Rothana Heavy Engineering, Kuat Drive Yards	13.2	unknown	6	36	60	10000	21 days	https://swapi.dev/api/vehicles/53/	2014-12-20 18:10:07.56	2014-12-20 21:30:21.728
27	SPHA	Self-Propelled Heavy Artillery	walker	Rothana Heavy Engineering	140	unknown	25	30	35	500	7 days	https://swapi.dev/api/vehicles/54/	2014-12-20 18:12:32.315	2014-12-20 21:30:21.731
28	Flitknot speeder	Flitknot speeder	speeder	Huppla Pasa Tisc Shipwrights Collective	2	8000	1	0	634	unknown	unknown	https://swapi.dev/api/vehicles/55/	2014-12-20 18:15:20.312	2014-12-20 21:30:21.735
29	Neimoidian shuttle	Sheathipede-class transport shuttle	transport	Haor Chall Engineering	20	unknown	2	6	880	1000	7 days	https://swapi.dev/api/vehicles/56/	2014-12-20 18:25:44.912	2014-12-20 21:30:21.739
30	Geonosian starfighter	Nantex-class territorial defense	starfighter	Huppla Pasa Tisc Shipwrights Collective	9.8	unknown	1	0	20000	unknown	unknown	https://swapi.dev/api/vehicles/57/	2014-12-20 18:34:12.541	2014-12-20 21:30:21.742
31	Tsmeu-6 personal wheel bike	Tsmeu-6 personal wheel bike	wheeled walker	Z-Gomot Ternbuell Guppat Corporation	3.5	15000	1	1	330	10	none	https://swapi.dev/api/vehicles/60/	2014-12-20 19:43:54.87	2014-12-20 21:30:21.745
32	Emergency Firespeeder	Fire suppression speeder	fire suppression ship	unknown	unknown	unknown	2	unknown	unknown	unknown	unknown	https://swapi.dev/api/vehicles/62/	2014-12-20 19:50:58.559	2014-12-20 21:30:21.749
33	Droid tri-fighter	tri-fighter	droid starfighter	Colla Designs, Phlac-Arphocc Automata Industries	5.4	20000	1	0	1180	0	none	https://swapi.dev/api/vehicles/67/	2014-12-20 20:05:19.992	2014-12-20 21:30:21.752
34	Oevvaor jet catamaran	Oevvaor jet catamaran	airspeeder	Appazanna Engineering Works	15.1	12125	2	2	420	50	3 days	https://swapi.dev/api/vehicles/69/	2014-12-20 20:20:53.931	2014-12-20 21:30:21.756
35	Raddaugh Gnasp fluttercraft	Raddaugh Gnasp fluttercraft	air speeder	Appazanna Engineering Works	7	14750	2	0	310	20	none	https://swapi.dev/api/vehicles/70/	2014-12-20 20:21:55.648	2014-12-20 21:30:21.759
36	Clone turbo tank	HAVw A6 Juggernaut	wheeled walker	Kuat Drive Yards	49.4	350000	20	300	160	30000	20 days	https://swapi.dev/api/vehicles/71/	2014-12-20 20:24:45.587	2014-12-20 21:30:21.762
37	Corporate Alliance tank droid	NR-N99 Persuader-class droid enforcer	droid tank	Techno Union	10.96	49000	0	4	100	none	none	https://swapi.dev/api/vehicles/72/	2014-12-20 20:26:55.522	2014-12-20 21:30:21.765
38	Droid gunship	HMP droid gunship	airspeeder	Baktoid Fleet Ordnance, Haor Chall Engineering	12.3	60000	0	0	820	0	none	https://swapi.dev/api/vehicles/73/	2014-12-20 20:32:05.687	2014-12-20 21:30:21.768
39	AT-RT	All Terrain Recon Transport	walker	Kuat Drive Yards	3.2	40000	1	0	90	20	1 day	https://swapi.dev/api/vehicles/76/	2014-12-20 20:47:49.189	2014-12-20 21:30:21.772
\.


--
-- TOC entry 5086 (class 0 OID 0)
-- Dependencies: 219
-- Name: films_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.films_id_seq', 6, true);


--
-- TOC entry 5087 (class 0 OID 0)
-- Dependencies: 217
-- Name: people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.people_id_seq', 82, true);


--
-- TOC entry 5088 (class 0 OID 0)
-- Dependencies: 227
-- Name: planets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planets_id_seq', 60, true);


--
-- TOC entry 5089 (class 0 OID 0)
-- Dependencies: 238
-- Name: rating_providers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rating_providers_id_seq', 3, true);


--
-- TOC entry 5090 (class 0 OID 0)
-- Dependencies: 241
-- Name: ratings_film_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ratings_film_id_seq', 1, false);


--
-- TOC entry 5091 (class 0 OID 0)
-- Dependencies: 240
-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ratings_id_seq', 18, true);


--
-- TOC entry 5092 (class 0 OID 0)
-- Dependencies: 225
-- Name: species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.species_id_seq', 37, true);


--
-- TOC entry 5093 (class 0 OID 0)
-- Dependencies: 221
-- Name: starships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.starships_id_seq', 36, true);


--
-- TOC entry 5094 (class 0 OID 0)
-- Dependencies: 223
-- Name: vehicles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vehicles_id_seq', 39, true);


--
-- TOC entry 4866 (class 2606 OID 19620)
-- Name: films_characters films_characters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films_characters
    ADD CONSTRAINT films_characters_pkey PRIMARY KEY (film_url, character_url);


--
-- TOC entry 4832 (class 2606 OID 19448)
-- Name: films films_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_pkey PRIMARY KEY (id);


--
-- TOC entry 4868 (class 2606 OID 19637)
-- Name: films_planets films_planets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films_planets
    ADD CONSTRAINT films_planets_pkey PRIMARY KEY (film_url, planet_url);


--
-- TOC entry 4860 (class 2606 OID 19569)
-- Name: films_species films_species_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films_species
    ADD CONSTRAINT films_species_pkey PRIMARY KEY (film_url, species_url);


--
-- TOC entry 4862 (class 2606 OID 19586)
-- Name: films_starships films_starships_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films_starships
    ADD CONSTRAINT films_starships_pkey PRIMARY KEY (film_url, starship_url);


--
-- TOC entry 4834 (class 2606 OID 19450)
-- Name: films films_url_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_url_key UNIQUE (url);


--
-- TOC entry 4864 (class 2606 OID 19603)
-- Name: films_vehicles films_vehicles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films_vehicles
    ADD CONSTRAINT films_vehicles_pkey PRIMARY KEY (film_url, vehicle_url);


--
-- TOC entry 4876 (class 2606 OID 20032)
-- Name: movie_metadata movie_metadata_imdb_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_metadata
    ADD CONSTRAINT movie_metadata_imdb_id_key UNIQUE (imdb_id);


--
-- TOC entry 4878 (class 2606 OID 20030)
-- Name: movie_metadata movie_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_metadata
    ADD CONSTRAINT movie_metadata_pkey PRIMARY KEY (id);


--
-- TOC entry 4852 (class 2606 OID 19501)
-- Name: people_films people_films_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_films
    ADD CONSTRAINT people_films_pkey PRIMARY KEY (person_url, film_url);


--
-- TOC entry 4828 (class 2606 OID 19437)
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);


--
-- TOC entry 4854 (class 2606 OID 19518)
-- Name: people_species people_species_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_species
    ADD CONSTRAINT people_species_pkey PRIMARY KEY (person_url, species_url);


--
-- TOC entry 4856 (class 2606 OID 19535)
-- Name: people_starships people_starships_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_starships
    ADD CONSTRAINT people_starships_pkey PRIMARY KEY (person_url, starship_url);


--
-- TOC entry 4830 (class 2606 OID 19439)
-- Name: people people_url_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_url_key UNIQUE (url);


--
-- TOC entry 4858 (class 2606 OID 19552)
-- Name: people_vehicles people_vehicles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_vehicles
    ADD CONSTRAINT people_vehicles_pkey PRIMARY KEY (person_url, vehicle_url);


--
-- TOC entry 4848 (class 2606 OID 19492)
-- Name: planets planets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planets
    ADD CONSTRAINT planets_pkey PRIMARY KEY (id);


--
-- TOC entry 4850 (class 2606 OID 19494)
-- Name: planets planets_url_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planets
    ADD CONSTRAINT planets_url_key UNIQUE (url);


--
-- TOC entry 4870 (class 2606 OID 20002)
-- Name: rating_providers rating_providers_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating_providers
    ADD CONSTRAINT rating_providers_name_key UNIQUE (name);


--
-- TOC entry 4872 (class 2606 OID 20000)
-- Name: rating_providers rating_providers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating_providers
    ADD CONSTRAINT rating_providers_pkey PRIMARY KEY (id);


--
-- TOC entry 4874 (class 2606 OID 20013)
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);


--
-- TOC entry 4844 (class 2606 OID 19481)
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (id);


--
-- TOC entry 4846 (class 2606 OID 19483)
-- Name: species species_url_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_url_key UNIQUE (url);


--
-- TOC entry 4836 (class 2606 OID 19459)
-- Name: starships starships_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.starships
    ADD CONSTRAINT starships_pkey PRIMARY KEY (id);


--
-- TOC entry 4838 (class 2606 OID 19461)
-- Name: starships starships_url_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.starships
    ADD CONSTRAINT starships_url_key UNIQUE (url);


--
-- TOC entry 4840 (class 2606 OID 19470)
-- Name: vehicles vehicles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicles
    ADD CONSTRAINT vehicles_pkey PRIMARY KEY (id);


--
-- TOC entry 4842 (class 2606 OID 19472)
-- Name: vehicles vehicles_url_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicles
    ADD CONSTRAINT vehicles_url_key UNIQUE (url);


--
-- TOC entry 4893 (class 2606 OID 19626)
-- Name: films_characters films_characters_character_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films_characters
    ADD CONSTRAINT films_characters_character_url_fkey FOREIGN KEY (character_url) REFERENCES public.people(url) ON DELETE CASCADE;


--
-- TOC entry 4894 (class 2606 OID 19621)
-- Name: films_characters films_characters_film_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films_characters
    ADD CONSTRAINT films_characters_film_url_fkey FOREIGN KEY (film_url) REFERENCES public.films(url) ON DELETE CASCADE;


--
-- TOC entry 4895 (class 2606 OID 19638)
-- Name: films_planets films_planets_film_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films_planets
    ADD CONSTRAINT films_planets_film_url_fkey FOREIGN KEY (film_url) REFERENCES public.films(url) ON DELETE CASCADE;


--
-- TOC entry 4896 (class 2606 OID 19643)
-- Name: films_planets films_planets_planet_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films_planets
    ADD CONSTRAINT films_planets_planet_url_fkey FOREIGN KEY (planet_url) REFERENCES public.planets(url) ON DELETE CASCADE;


--
-- TOC entry 4887 (class 2606 OID 19570)
-- Name: films_species films_species_film_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films_species
    ADD CONSTRAINT films_species_film_url_fkey FOREIGN KEY (film_url) REFERENCES public.films(url) ON DELETE CASCADE;


--
-- TOC entry 4888 (class 2606 OID 19575)
-- Name: films_species films_species_species_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films_species
    ADD CONSTRAINT films_species_species_url_fkey FOREIGN KEY (species_url) REFERENCES public.species(url) ON DELETE CASCADE;


--
-- TOC entry 4889 (class 2606 OID 19587)
-- Name: films_starships films_starships_film_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films_starships
    ADD CONSTRAINT films_starships_film_url_fkey FOREIGN KEY (film_url) REFERENCES public.films(url) ON DELETE CASCADE;


--
-- TOC entry 4890 (class 2606 OID 19592)
-- Name: films_starships films_starships_starship_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films_starships
    ADD CONSTRAINT films_starships_starship_url_fkey FOREIGN KEY (starship_url) REFERENCES public.starships(url) ON DELETE CASCADE;


--
-- TOC entry 4891 (class 2606 OID 19604)
-- Name: films_vehicles films_vehicles_film_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films_vehicles
    ADD CONSTRAINT films_vehicles_film_url_fkey FOREIGN KEY (film_url) REFERENCES public.films(url) ON DELETE CASCADE;


--
-- TOC entry 4892 (class 2606 OID 19609)
-- Name: films_vehicles films_vehicles_vehicle_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films_vehicles
    ADD CONSTRAINT films_vehicles_vehicle_url_fkey FOREIGN KEY (vehicle_url) REFERENCES public.vehicles(url) ON DELETE CASCADE;


--
-- TOC entry 4899 (class 2606 OID 20033)
-- Name: movie_metadata movie_metadata_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_metadata
    ADD CONSTRAINT movie_metadata_id_fkey FOREIGN KEY (id) REFERENCES public.films(id) ON DELETE CASCADE;


--
-- TOC entry 4879 (class 2606 OID 19507)
-- Name: people_films people_films_film_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_films
    ADD CONSTRAINT people_films_film_url_fkey FOREIGN KEY (film_url) REFERENCES public.films(url) ON DELETE CASCADE;


--
-- TOC entry 4880 (class 2606 OID 19502)
-- Name: people_films people_films_person_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_films
    ADD CONSTRAINT people_films_person_url_fkey FOREIGN KEY (person_url) REFERENCES public.people(url) ON DELETE CASCADE;


--
-- TOC entry 4881 (class 2606 OID 19519)
-- Name: people_species people_species_person_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_species
    ADD CONSTRAINT people_species_person_url_fkey FOREIGN KEY (person_url) REFERENCES public.people(url) ON DELETE CASCADE;


--
-- TOC entry 4882 (class 2606 OID 19524)
-- Name: people_species people_species_species_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_species
    ADD CONSTRAINT people_species_species_url_fkey FOREIGN KEY (species_url) REFERENCES public.species(url) ON DELETE CASCADE;


--
-- TOC entry 4883 (class 2606 OID 19536)
-- Name: people_starships people_starships_person_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_starships
    ADD CONSTRAINT people_starships_person_url_fkey FOREIGN KEY (person_url) REFERENCES public.people(url) ON DELETE CASCADE;


--
-- TOC entry 4884 (class 2606 OID 19541)
-- Name: people_starships people_starships_starship_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_starships
    ADD CONSTRAINT people_starships_starship_url_fkey FOREIGN KEY (starship_url) REFERENCES public.starships(url) ON DELETE CASCADE;


--
-- TOC entry 4885 (class 2606 OID 19553)
-- Name: people_vehicles people_vehicles_person_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_vehicles
    ADD CONSTRAINT people_vehicles_person_url_fkey FOREIGN KEY (person_url) REFERENCES public.people(url) ON DELETE CASCADE;


--
-- TOC entry 4886 (class 2606 OID 19558)
-- Name: people_vehicles people_vehicles_vehicle_url_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people_vehicles
    ADD CONSTRAINT people_vehicles_vehicle_url_fkey FOREIGN KEY (vehicle_url) REFERENCES public.vehicles(url) ON DELETE CASCADE;


--
-- TOC entry 4897 (class 2606 OID 20019)
-- Name: ratings ratings_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.films(id) ON DELETE CASCADE;


--
-- TOC entry 4898 (class 2606 OID 20014)
-- Name: ratings ratings_rating_provider_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_rating_provider_id_fkey FOREIGN KEY (rating_provider_id) REFERENCES public.rating_providers(id) ON DELETE CASCADE;


-- Completed on 2025-03-20 23:14:20

--
-- PostgreSQL database dump complete
--

