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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age_in_millions_of_years integer,
    shape character varying(30),
    is_merging boolean
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
    name character varying(60) NOT NULL,
    distance_from_planet_in_km numeric,
    has_atmosphere boolean,
    description text,
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
    name character varying(60) NOT NULL,
    number_of_moon integer,
    has_life boolean,
    description text,
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
-- Name: resource; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.resource (
    resource_id integer NOT NULL,
    name character varying(30) NOT NULL,
    composition character varying(30)
);


ALTER TABLE public.resource OWNER TO freecodecamp;

--
-- Name: resource_resource_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.resource_resource_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resource_resource_id_seq OWNER TO freecodecamp;

--
-- Name: resource_resource_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.resource_resource_id_seq OWNED BY public.resource.resource_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer NOT NULL,
    current_life_cycle character varying(30),
    mass_in_kg numeric,
    age_in_millions_of_years numeric
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
-- Name: resource resource_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.resource ALTER COLUMN resource_id SET DEFAULT nextval('public.resource_resource_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 50000, 'ellipse', false);
INSERT INTO public.galaxy VALUES (2, 'IO34', 50000, 'ellipse', false);
INSERT INTO public.galaxy VALUES (3, 'IO35', 50000, 'ellipse', true);
INSERT INTO public.galaxy VALUES (4, 'IO36', 50000, 'ellipse', true);
INSERT INTO public.galaxy VALUES (5, 'IO37', 50000, 'ellipse', true);
INSERT INTO public.galaxy VALUES (6, 'IO38', 90000, 'ellipse', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'valhalla', 4000, NULL, 'unknown', 1);
INSERT INTO public.moon VALUES (2, 'YU-0', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (3, 'YU-1', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (4, 'YU-2', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (5, 'YU-3', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (6, 'YU-4', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (7, 'YU-5', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (8, 'YU-6', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (9, 'YU-7', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (10, 'YU-8', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (11, 'YU-9', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (12, 'YU-91', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (13, 'YU-92', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (14, 'YU-93', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (15, 'YU-94', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (16, 'YU-95', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (17, 'YU-96', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (18, 'YU-97', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (19, 'YU-98', 300000, false, 'freezing', 1);
INSERT INTO public.moon VALUES (20, 'YU-99', 300000, false, 'freezing', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Eurka', 12, false, 'no details', 1);
INSERT INTO public.planet VALUES (3, 'Elzy', 3, true, 'Ocean', 1);
INSERT INTO public.planet VALUES (4, 'AE-10', 3, true, 'Fire', 1);
INSERT INTO public.planet VALUES (5, 'IE-10', 3, true, 'Fire', 1);
INSERT INTO public.planet VALUES (6, 'IE-100', 7, true, 'Fire', 1);
INSERT INTO public.planet VALUES (7, 'IE-100', 7, true, 'Forest', 1);
INSERT INTO public.planet VALUES (8, 'LVE-10', 0, true, 'Lava', 1);
INSERT INTO public.planet VALUES (9, 'LVE-11', 0, false, 'Frozen', 1);
INSERT INTO public.planet VALUES (10, 'IRT-11', 0, false, 'Acedic', 1);
INSERT INTO public.planet VALUES (11, 'Plution', 0, false, 'Lost', 1);
INSERT INTO public.planet VALUES (12, 'Krypton', 1, false, 'Fictional', 1);
INSERT INTO public.planet VALUES (13, 'Batcave', 1, true, 'Fictional', 1);
INSERT INTO public.planet VALUES (14, 'Aruthra', 100, true, 'Fictional', 1);


--
-- Data for Name: resource; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.resource VALUES (1, 'water', 'H2O');
INSERT INTO public.resource VALUES (2, 'wood', 'C2');
INSERT INTO public.resource VALUES (3, 'magnetite', 'FE3O2');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'LTR-1', 1, 'nebula', 300000, 400000);
INSERT INTO public.star VALUES (2, 'RG-1', 2, 'nebula', 4000000, 20000);
INSERT INTO public.star VALUES (3, 'RG-2', 2, 'nebula', 4000000, 20000);
INSERT INTO public.star VALUES (4, 'RG-3', 2, 'nebula', 4000000, 20000);
INSERT INTO public.star VALUES (5, 'RG-4', 2, 'nebula', 4000000, 20000);
INSERT INTO public.star VALUES (6, 'RG-5', 2, 'nebula', 4000000, 20000);
INSERT INTO public.star VALUES (7, 'RG-6', 2, 'nebula', 4000000, 20000);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: resource_resource_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.resource_resource_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: resource resource_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.resource
    ADD CONSTRAINT resource_name_key UNIQUE (name);


--
-- Name: resource resource_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.resource
    ADD CONSTRAINT resource_pkey PRIMARY KEY (resource_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
