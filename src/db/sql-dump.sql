--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8
-- Dumped by pg_dump version 14.8

-- Started on 2023-07-11 18:09:02

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'WIN1252';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 212 (class 1259 OID 24584)
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients (
    id integer NOT NULL,
    name character varying(50),
    alias character varying(50),
    phone character varying(50)
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 24583)
-- Name: clients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clients_id_seq OWNER TO postgres;

--
-- TOC entry 3316 (class 0 OID 0)
-- Dependencies: 211
-- Name: clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;


--
-- TOC entry 3167 (class 2604 OID 24587)
-- Name: clients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);


--
-- TOC entry 3310 (class 0 OID 24584)
-- Dependencies: 212
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clients (id, name, alias, phone) FROM stdin;
26	Abeni Chiamaka	Active Starlight	+1 202-918-2132
27	Faraji Chifuniro	Lonely Watchman	+355 68 867 1015
28	Pili Hawa	Sad Dancer	+244 958 357 034
29	Thoko Kwasi	Bad Ghost	+54 675-107-7142
30	Shabani Tendai	Cruel Luna	+229 40 47 91 92
31	Izem Mawuli	Firm Dragon	+229 42 45 30 39
32	Olufemi Danai	Chief Tower	+1 246-522-0984
33	Simisola Nnamdi	Stalking Sandstorm	+372 8103 8469
34	Uche Tidir	Dapper Angel	+7 919 386-38-95
35	Mosi Souleymane	Hard Oak	+7 937 490-19-11
\.


--
-- TOC entry 3317 (class 0 OID 0)
-- Dependencies: 211
-- Name: clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clients_id_seq', 35, true);


--
-- TOC entry 3169 (class 2606 OID 24589)
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);


-- Completed on 2023-07-11 18:09:03

--
-- PostgreSQL database dump complete
--

