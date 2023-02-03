--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(100) NOT NULL,
    supermassive_black_hole boolean,
    distance_in_thousand_light_years integer,
    weight_in_thousand_solar_masses integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    shape text NOT NULL,
    radius_in_light_years integer NOT NULL,
    stars_in_billions integer,
    distance_in_million_light_years numeric(6,1)
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
    name character varying(100) NOT NULL,
    size_in_miles numeric(10,1) NOT NULL,
    facts text,
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
    name character varying(100) NOT NULL,
    earth_like_planet boolean NOT NULL,
    size_in_miles numeric(20,1) NOT NULL,
    type character varying(50) NOT NULL,
    average_temperature_in_fahrenheit integer NOT NULL,
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
    name character varying(100) NOT NULL,
    classification character varying(90) NOT NULL,
    age_in_million_years integer,
    galaxy_id integer,
    radius_in_miles integer NOT NULL,
    surface_temperature_in_kelvin integer
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', true, 27, 4000);
INSERT INTO public.black_hole VALUES (2, 'TON 618', true, 10370000, 66000000);
INSERT INTO public.black_hole VALUES (3, 'NGC 6166', true, 490000, 30000000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 52850, 100, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 110000, 1000, 2.5);
INSERT INTO public.galaxy VALUES (3, 'Alcyoneus', 'Elliptical', 16300000, NULL, 3500.0);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Peculiar', 25000, 100, 29.4);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel', 'Spiral', 65000, NULL, 489.2);
INSERT INTO public.galaxy VALUES (6, 'GN-z11', 'Irregular', 4000, NULL, 31960.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1079.6, 'Largest and most massive moon relative to its parent planet in the solar system', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 7.0, 'Irregularly shaped. Named after the Greek god of fear and panic. Ares(Mars) son and twin brother of Deimos.', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 3.9, 'Irregularly shaped. 30 hour orbit. Named after the Greek god of dread and terror.', 4);
INSERT INTO public.moon VALUES (4, 'Europa', 969.8, 'Surface made of water ice.', 5);
INSERT INTO public.moon VALUES (5, 'Ganymede', 1636.8, 'Largest and most massive moon in the solar system.', 5);
INSERT INTO public.moon VALUES (6, 'Io', 1131.9, 'Lowest amount of water of any known object in the solar sytem. Highest density and gravity of any moon', 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 1497.7, 'Largest object in the solar system that is not differentiated', 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 51.9, NULL, 5);
INSERT INTO public.moon VALUES (9, 'Valetudo', 0.6, NULL, 5);
INSERT INTO public.moon VALUES (10, 'Ersa', 1.9, NULL, 5);
INSERT INTO public.moon VALUES (11, 'Titan', 1599.9, 'Only known object other than Earth to have clear bodies of liquid on its surface. Dense atmosphere.', 6);
INSERT INTO public.moon VALUES (12, 'Enceladus', 313.3, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Mimas', 123.2, 'Smallest and inner most moon of Saturn', 6);
INSERT INTO public.moon VALUES (14, 'Dione', 348.9, NULL, 6);
INSERT INTO public.moon VALUES (15, 'Lapetus', 456.4, 'Mysterious ridge on equator result of ancient ring that settle onto surface.', 6);
INSERT INTO public.moon VALUES (16, 'Tethys', 330.0, NULL, 6);
INSERT INTO public.moon VALUES (17, 'Hyperion', 83.9, 'Unexplained sponge-like appearance. Irregular shape and rotation.', 6);
INSERT INTO public.moon VALUES (18, 'Titania', 489.9, 'Largest moon orbiting Uranus. Geologically active.', 7);
INSERT INTO public.moon VALUES (19, 'Umbriel', 363.3, 'Darkest of the Uranus moons.', 7);
INSERT INTO public.moon VALUES (20, 'Triton', 841.0, 'Largest moon orbiting Neptune. Only large moon in the solar system that has a retrograde orbit.', 8);
INSERT INTO public.moon VALUES (21, 'Thalassa', 25.5, 'Unusual disk shape.', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 1516.0, 'rocky', 354, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 3760.4, 'rocky', 847, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 3958.8, 'rocky', 57, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 2106.1, 'rocky', -81, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 43441.0, 'gas giant', -238, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 36184.0, 'gas giant', -285, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 15759.0, 'ice giant', -353, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 15299.0, 'ice giant', -373, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri d', true, 0.0, 'rocky', 188, 5);
INSERT INTO public.planet VALUES (10, 'Gliese 667 Cc', true, 6096.5, 'rocky', 40, NULL);
INSERT INTO public.planet VALUES (12, 'TrES-4b', false, 79917.0, 'gas giant', 2748, NULL);
INSERT INTO public.planet VALUES (13, 'Proxima Centauri b', true, 0.0, 'rocky', -38, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G2V Yellow Dwarf', 4603, 1, 432450, 5778);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'M1-2 la-ab red supergiant', 10, 1, 383400000, 3500);
INSERT INTO public.star VALUES (3, 'Alpheratz', 'A3V blue-white subgiant', 70, 2, 1167210, 13000);
INSERT INTO public.star VALUES (4, 'Methuselah HD 140283', 'metal-poor subgiant', 13500, 1, 605460, 5777);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'M5.5 red dwarf', 4853, 1, 66659, 3042);
INSERT INTO public.star VALUES (6, 'Earendel WHL0137-LS', 'Population III', 12700, NULL, 0, 20000);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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

