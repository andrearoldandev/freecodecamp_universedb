--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    gravity integer,
    galaxy_id integer,
    has_wormhole boolean DEFAULT false NOT NULL,
    name character varying(90)
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(90) NOT NULL,
    dimension integer,
    galaxy_description text,
    galaxy_age numeric(6,2),
    has_life boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(90) NOT NULL,
    color character varying(90) NOT NULL,
    moon_description text,
    moon_age integer,
    dimensions numeric(6,2),
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(90) NOT NULL,
    color character varying(90) NOT NULL,
    dimensions numeric(6,2),
    planet_description text,
    has_life boolean NOT NULL,
    planet_age integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(90) NOT NULL,
    color character varying(90) NOT NULL,
    dimensions numeric(6,2),
    star_description text,
    star_age integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 10, 1, true, NULL);
INSERT INTO public.blackhole VALUES (2, 9, 2, false, NULL);
INSERT INTO public.blackhole VALUES (3, 10, 3, true, NULL);
INSERT INTO public.blackhole VALUES (4, 8, 4, true, NULL);
INSERT INTO public.blackhole VALUES (5, 5, 5, false, NULL);
INSERT INTO public.blackhole VALUES (6, 7, 6, true, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 230, 'Vía Lactea', 1300.50, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220, 'Andrómeda', 2500.70, false);
INSERT INTO public.galaxy VALUES (3, 'Black Eye Galaxy', 210, 'Galaxia Ojo de Gato', 1500.80, false);
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', 150, 'Galaxia de Cigarro', 1800.90, false);
INSERT INTO public.galaxy VALUES (5, 'Fireworks Galaxy', 200, 'Galaxia Fuegos Artificiales', 1100.10, true);
INSERT INTO public.galaxy VALUES (6, 'Sunflower Galaxy', 170, 'Galaxia Girasol', 1400.60, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'White', 'Luna de la Tierra', 220, 1000.12, true, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 'Orange', 'Luna de Marte', 300, 1050.34, false, 2);
INSERT INTO public.moon VALUES (3, 'Buck Moon', 'Red', 'Luna de Marte', 310, 1544.85, false, 2);
INSERT INTO public.moon VALUES (4, 'Amalthea', 'Yellow', 'Luna de Eriksson', 230, 1100.54, true, 3);
INSERT INTO public.moon VALUES (5, 'Flower Moon', 'Red', 'Luna de Eriksson', 250, 1125.54, true, 3);
INSERT INTO public.moon VALUES (6, 'Phobos', 'Orange', 'Luna de Eriksson', 240, 1158.45, true, 3);
INSERT INTO public.moon VALUES (7, 'Ganymede', 'Blue', 'Luna de Faroang', 180, 1200.80, true, 4);
INSERT INTO public.moon VALUES (8, 'Strugeon Moon', 'Blue', 'Luna de Faroang', 190, 1245.58, false, 4);
INSERT INTO public.moon VALUES (9, 'Io', 'Red', 'Luna de Ice Planet', 500, 1300.40, false, 5);
INSERT INTO public.moon VALUES (10, 'Ananke', 'Yellow', 'Luna de Ice Planet', 454, 1345.15, false, 5);
INSERT INTO public.moon VALUES (11, 'Beaver Moon', 'White', 'Luna de Fire Planet', 180, 1400.90, false, 6);
INSERT INTO public.moon VALUES (12, 'Callisto', 'Red', 'Luna de Water Planet', 140, 1500.10, true, 7);
INSERT INTO public.moon VALUES (13, 'Harvest Moon', 'Purple', 'Luna de Eris', 350, 1800.65, true, 8);
INSERT INTO public.moon VALUES (14, 'Mimas', 'Blue', 'Luna de Eris', 354, 1845.63, true, 8);
INSERT INTO public.moon VALUES (15, 'Blood Moon', 'Red', 'Luna de Ceres', 195, 1400.58, false, 9);
INSERT INTO public.moon VALUES (16, 'Atlas', 'Blue', 'Luna de Ceres', 189, 1487.85, true, 9);
INSERT INTO public.moon VALUES (17, 'Adrastea', 'Blue', 'Luna de Tadmor', 230, 1125.35, false, 10);
INSERT INTO public.moon VALUES (18, 'Enceladus', 'Red', 'Luna de Tadmor', 238, 1223.35, false, 10);
INSERT INTO public.moon VALUES (19, 'Deimos', 'White', 'Luna de Dagon', 600, 1900.85, true, 11);
INSERT INTO public.moon VALUES (20, 'Miranda', 'Red', 'Luna de AEgir', 480, 1458.25, true, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Blue', 1000.50, 'Planeta Tierra', true, 230, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Red', 1122.32, 'Marte', false, 280, 1);
INSERT INTO public.planet VALUES (3, 'Eriksson', 'Orange', 1300.25, 'Planeta Eriksson', false, 300, 2);
INSERT INTO public.planet VALUES (4, 'Faroang', 'Blue', 1400.50, 'Planeta Faroang', true, 250, 2);
INSERT INTO public.planet VALUES (5, 'Ice Planet', 'White', 1500.60, 'Planeta de hielo', false, 210, 3);
INSERT INTO public.planet VALUES (6, 'Fire Planet', 'Red', 1600.90, 'Planeta de fuego', false, 200, 3);
INSERT INTO public.planet VALUES (7, 'Water Planet', 'Blue', 1700.10, 'Planeta de agua', true, 190, 4);
INSERT INTO public.planet VALUES (8, 'Eris', 'Purple', 1800.20, 'Planeta Eris', false, 310, 4);
INSERT INTO public.planet VALUES (9, 'Ceres', 'White', 1900.50, 'Planeta Ceres', false, 320, 5);
INSERT INTO public.planet VALUES (10, 'Tadmor', 'Yellow', 1120.35, 'Planeta Tadmor', true, 210, 5);
INSERT INTO public.planet VALUES (11, 'Dagon', 'Red', 1332.58, 'Planeta Dagon', false, 280, 6);
INSERT INTO public.planet VALUES (12, 'AEgir', 'Blue', 1400.58, 'Planeta AEgir', false, 270, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Polaris', 'Blue', 50.00, 'North Star', 1301, 1);
INSERT INTO public.star VALUES (2, 'Alpheratz', 'Red', 100.00, 'Estrella binaria', 2501, 2);
INSERT INTO public.star VALUES (3, 'Messier 64', 'Yellow', 90.00, 'Sleeping Beauty', 1501, 3);
INSERT INTO public.star VALUES (4, 'Messier 82', 'Orange', 70.00, 'NGC 3034', 1801, 4);
INSERT INTO public.star VALUES (5, 'NGC 6946', 'Red', 52.00, 'Cepheus and Cygnus', 1100, 5);
INSERT INTO public.star VALUES (6, 'Messier 63', 'Blue', 80.00, 'Canes Venatici', 1401, 6);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: blackhole fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
