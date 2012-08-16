--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.4
-- Dumped by pg_dump version 9.1.0
-- Started on 2012-08-16 17:50:04 CEST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 190 (class 3079 OID 11906)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2277 (class 0 OID 0)
-- Dependencies: 190
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 161 (class 1259 OID 34551)
-- Dependencies: 6
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: michi; Tablespace: 
--

CREATE TABLE active_admin_comments (
    id integer NOT NULL,
    resource_id character varying(255) NOT NULL,
    resource_type character varying(255) NOT NULL,
    author_id integer,
    author_type character varying(255),
    body text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    namespace character varying(255)
);


ALTER TABLE public.active_admin_comments OWNER TO michi;

--
-- TOC entry 162 (class 1259 OID 34557)
-- Dependencies: 6 161
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: michi
--

CREATE SEQUENCE active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_admin_comments_id_seq OWNER TO michi;

--
-- TOC entry 2278 (class 0 OID 0)
-- Dependencies: 162
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: michi
--

ALTER SEQUENCE active_admin_comments_id_seq OWNED BY active_admin_comments.id;


--
-- TOC entry 2279 (class 0 OID 0)
-- Dependencies: 162
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: michi
--

SELECT pg_catalog.setval('active_admin_comments_id_seq', 1, false);


--
-- TOC entry 163 (class 1259 OID 34559)
-- Dependencies: 2196 2197 2198 6
-- Name: admin_users; Type: TABLE; Schema: public; Owner: michi; Tablespace: 
--

CREATE TABLE admin_users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.admin_users OWNER TO michi;

--
-- TOC entry 164 (class 1259 OID 34568)
-- Dependencies: 163 6
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: michi
--

CREATE SEQUENCE admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO michi;

--
-- TOC entry 2280 (class 0 OID 0)
-- Dependencies: 164
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: michi
--

ALTER SEQUENCE admin_users_id_seq OWNED BY admin_users.id;


--
-- TOC entry 2281 (class 0 OID 0)
-- Dependencies: 164
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: michi
--

SELECT pg_catalog.setval('admin_users_id_seq', 1, true);


--
-- TOC entry 181 (class 1259 OID 34672)
-- Dependencies: 6
-- Name: companies; Type: TABLE; Schema: public; Owner: michi; Tablespace: 
--

CREATE TABLE companies (
    id integer NOT NULL,
    name character varying(255),
    street character varying(255),
    zip character varying(255),
    city character varying(255),
    phone character varying(255),
    email character varying(255),
    web character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.companies OWNER TO michi;

--
-- TOC entry 180 (class 1259 OID 34670)
-- Dependencies: 181 6
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: michi
--

CREATE SEQUENCE companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_id_seq OWNER TO michi;

--
-- TOC entry 2282 (class 0 OID 0)
-- Dependencies: 180
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: michi
--

ALTER SEQUENCE companies_id_seq OWNED BY companies.id;


--
-- TOC entry 2283 (class 0 OID 0)
-- Dependencies: 180
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: michi
--

SELECT pg_catalog.setval('companies_id_seq', 1, true);


--
-- TOC entry 189 (class 1259 OID 34718)
-- Dependencies: 6
-- Name: company_description_detail_translations; Type: TABLE; Schema: public; Owner: michi; Tablespace: 
--

CREATE TABLE company_description_detail_translations (
    id integer NOT NULL,
    company_description_detail_id integer,
    locale character varying(255),
    title character varying(255),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.company_description_detail_translations OWNER TO michi;

--
-- TOC entry 188 (class 1259 OID 34716)
-- Dependencies: 189 6
-- Name: company_description_detail_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: michi
--

CREATE SEQUENCE company_description_detail_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_description_detail_translations_id_seq OWNER TO michi;

--
-- TOC entry 2284 (class 0 OID 0)
-- Dependencies: 188
-- Name: company_description_detail_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: michi
--

ALTER SEQUENCE company_description_detail_translations_id_seq OWNED BY company_description_detail_translations.id;


--
-- TOC entry 2285 (class 0 OID 0)
-- Dependencies: 188
-- Name: company_description_detail_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: michi
--

SELECT pg_catalog.setval('company_description_detail_translations_id_seq', 5, true);


--
-- TOC entry 185 (class 1259 OID 34694)
-- Dependencies: 6
-- Name: company_description_details; Type: TABLE; Schema: public; Owner: michi; Tablespace: 
--

CREATE TABLE company_description_details (
    id integer NOT NULL,
    company_description_id integer,
    title character varying(255),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.company_description_details OWNER TO michi;

--
-- TOC entry 184 (class 1259 OID 34692)
-- Dependencies: 185 6
-- Name: company_description_details_id_seq; Type: SEQUENCE; Schema: public; Owner: michi
--

CREATE SEQUENCE company_description_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_description_details_id_seq OWNER TO michi;

--
-- TOC entry 2286 (class 0 OID 0)
-- Dependencies: 184
-- Name: company_description_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: michi
--

ALTER SEQUENCE company_description_details_id_seq OWNED BY company_description_details.id;


--
-- TOC entry 2287 (class 0 OID 0)
-- Dependencies: 184
-- Name: company_description_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: michi
--

SELECT pg_catalog.setval('company_description_details_id_seq', 10, true);


--
-- TOC entry 187 (class 1259 OID 34705)
-- Dependencies: 6
-- Name: company_description_translations; Type: TABLE; Schema: public; Owner: michi; Tablespace: 
--

CREATE TABLE company_description_translations (
    id integer NOT NULL,
    company_description_id integer,
    locale character varying(255),
    title character varying(255),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.company_description_translations OWNER TO michi;

--
-- TOC entry 186 (class 1259 OID 34703)
-- Dependencies: 6 187
-- Name: company_description_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: michi
--

CREATE SEQUENCE company_description_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_description_translations_id_seq OWNER TO michi;

--
-- TOC entry 2288 (class 0 OID 0)
-- Dependencies: 186
-- Name: company_description_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: michi
--

ALTER SEQUENCE company_description_translations_id_seq OWNED BY company_description_translations.id;


--
-- TOC entry 2289 (class 0 OID 0)
-- Dependencies: 186
-- Name: company_description_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: michi
--

SELECT pg_catalog.setval('company_description_translations_id_seq', 3, true);


--
-- TOC entry 183 (class 1259 OID 34683)
-- Dependencies: 6
-- Name: company_descriptions; Type: TABLE; Schema: public; Owner: michi; Tablespace: 
--

CREATE TABLE company_descriptions (
    id integer NOT NULL,
    company_id integer,
    title character varying(255),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.company_descriptions OWNER TO michi;

--
-- TOC entry 182 (class 1259 OID 34681)
-- Dependencies: 6 183
-- Name: company_descriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: michi
--

CREATE SEQUENCE company_descriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_descriptions_id_seq OWNER TO michi;

--
-- TOC entry 2290 (class 0 OID 0)
-- Dependencies: 182
-- Name: company_descriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: michi
--

ALTER SEQUENCE company_descriptions_id_seq OWNED BY company_descriptions.id;


--
-- TOC entry 2291 (class 0 OID 0)
-- Dependencies: 182
-- Name: company_descriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: michi
--

SELECT pg_catalog.setval('company_descriptions_id_seq', 8, true);


--
-- TOC entry 179 (class 1259 OID 34661)
-- Dependencies: 6
-- Name: customers; Type: TABLE; Schema: public; Owner: michi; Tablespace: 
--

CREATE TABLE customers (
    id integer NOT NULL,
    name character varying(255),
    link character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.customers OWNER TO michi;

--
-- TOC entry 178 (class 1259 OID 34659)
-- Dependencies: 179 6
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: michi
--

CREATE SEQUENCE customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO michi;

--
-- TOC entry 2292 (class 0 OID 0)
-- Dependencies: 178
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: michi
--

ALTER SEQUENCE customers_id_seq OWNED BY customers.id;


--
-- TOC entry 2293 (class 0 OID 0)
-- Dependencies: 178
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: michi
--

SELECT pg_catalog.setval('customers_id_seq', 27, true);


--
-- TOC entry 173 (class 1259 OID 34623)
-- Dependencies: 6
-- Name: image_translations; Type: TABLE; Schema: public; Owner: michi; Tablespace: 
--

CREATE TABLE image_translations (
    id integer NOT NULL,
    image_id integer,
    locale character varying(255),
    label character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.image_translations OWNER TO michi;

--
-- TOC entry 172 (class 1259 OID 34621)
-- Dependencies: 6 173
-- Name: image_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: michi
--

CREATE SEQUENCE image_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.image_translations_id_seq OWNER TO michi;

--
-- TOC entry 2294 (class 0 OID 0)
-- Dependencies: 172
-- Name: image_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: michi
--

ALTER SEQUENCE image_translations_id_seq OWNED BY image_translations.id;


--
-- TOC entry 2295 (class 0 OID 0)
-- Dependencies: 172
-- Name: image_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: michi
--

SELECT pg_catalog.setval('image_translations_id_seq', 95, true);


--
-- TOC entry 165 (class 1259 OID 34570)
-- Dependencies: 6
-- Name: images; Type: TABLE; Schema: public; Owner: michi; Tablespace: 
--

CREATE TABLE images (
    id integer NOT NULL,
    image character varying(255),
    imageable_id integer,
    imageable_type character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    label character varying(255)
);


ALTER TABLE public.images OWNER TO michi;

--
-- TOC entry 166 (class 1259 OID 34576)
-- Dependencies: 165 6
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: michi
--

CREATE SEQUENCE images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO michi;

--
-- TOC entry 2296 (class 0 OID 0)
-- Dependencies: 166
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: michi
--

ALTER SEQUENCE images_id_seq OWNED BY images.id;


--
-- TOC entry 2297 (class 0 OID 0)
-- Dependencies: 166
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: michi
--

SELECT pg_catalog.setval('images_id_seq', 98, true);


--
-- TOC entry 171 (class 1259 OID 34610)
-- Dependencies: 6
-- Name: maneuver_translations; Type: TABLE; Schema: public; Owner: michi; Tablespace: 
--

CREATE TABLE maneuver_translations (
    id integer NOT NULL,
    maneuver_id integer,
    locale character varying(255),
    description text,
    services character varying(255),
    tagline character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.maneuver_translations OWNER TO michi;

--
-- TOC entry 170 (class 1259 OID 34608)
-- Dependencies: 171 6
-- Name: maneuver_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: michi
--

CREATE SEQUENCE maneuver_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.maneuver_translations_id_seq OWNER TO michi;

--
-- TOC entry 2298 (class 0 OID 0)
-- Dependencies: 170
-- Name: maneuver_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: michi
--

ALTER SEQUENCE maneuver_translations_id_seq OWNED BY maneuver_translations.id;


--
-- TOC entry 2299 (class 0 OID 0)
-- Dependencies: 170
-- Name: maneuver_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: michi
--

SELECT pg_catalog.setval('maneuver_translations_id_seq', 13, true);


--
-- TOC entry 167 (class 1259 OID 34578)
-- Dependencies: 6
-- Name: maneuvers; Type: TABLE; Schema: public; Owner: michi; Tablespace: 
--

CREATE TABLE maneuvers (
    id integer NOT NULL,
    name character varying(255),
    tagline character varying(255),
    year character varying(255),
    customer character varying(255),
    link character varying(255),
    services character varying(255),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.maneuvers OWNER TO michi;

--
-- TOC entry 168 (class 1259 OID 34584)
-- Dependencies: 167 6
-- Name: maneuvers_id_seq; Type: SEQUENCE; Schema: public; Owner: michi
--

CREATE SEQUENCE maneuvers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.maneuvers_id_seq OWNER TO michi;

--
-- TOC entry 2300 (class 0 OID 0)
-- Dependencies: 168
-- Name: maneuvers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: michi
--

ALTER SEQUENCE maneuvers_id_seq OWNED BY maneuvers.id;


--
-- TOC entry 2301 (class 0 OID 0)
-- Dependencies: 168
-- Name: maneuvers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: michi
--

SELECT pg_catalog.setval('maneuvers_id_seq', 13, true);


--
-- TOC entry 175 (class 1259 OID 34636)
-- Dependencies: 6
-- Name: people; Type: TABLE; Schema: public; Owner: michi; Tablespace: 
--

CREATE TABLE people (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    email character varying(255),
    mobile character varying(255),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.people OWNER TO michi;

--
-- TOC entry 174 (class 1259 OID 34634)
-- Dependencies: 175 6
-- Name: people_id_seq; Type: SEQUENCE; Schema: public; Owner: michi
--

CREATE SEQUENCE people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_id_seq OWNER TO michi;

--
-- TOC entry 2302 (class 0 OID 0)
-- Dependencies: 174
-- Name: people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: michi
--

ALTER SEQUENCE people_id_seq OWNED BY people.id;


--
-- TOC entry 2303 (class 0 OID 0)
-- Dependencies: 174
-- Name: people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: michi
--

SELECT pg_catalog.setval('people_id_seq', 3, true);


--
-- TOC entry 177 (class 1259 OID 34647)
-- Dependencies: 6
-- Name: person_translations; Type: TABLE; Schema: public; Owner: michi; Tablespace: 
--

CREATE TABLE person_translations (
    id integer NOT NULL,
    person_id integer,
    locale character varying(255),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.person_translations OWNER TO michi;

--
-- TOC entry 176 (class 1259 OID 34645)
-- Dependencies: 6 177
-- Name: person_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: michi
--

CREATE SEQUENCE person_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_translations_id_seq OWNER TO michi;

--
-- TOC entry 2304 (class 0 OID 0)
-- Dependencies: 176
-- Name: person_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: michi
--

ALTER SEQUENCE person_translations_id_seq OWNED BY person_translations.id;


--
-- TOC entry 2305 (class 0 OID 0)
-- Dependencies: 176
-- Name: person_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: michi
--

SELECT pg_catalog.setval('person_translations_id_seq', 6, true);


--
-- TOC entry 169 (class 1259 OID 34586)
-- Dependencies: 6
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: michi; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO michi;

--
-- TOC entry 2195 (class 2604 OID 34589)
-- Dependencies: 162 161
-- Name: id; Type: DEFAULT; Schema: public; Owner: michi
--

ALTER TABLE active_admin_comments ALTER COLUMN id SET DEFAULT nextval('active_admin_comments_id_seq'::regclass);


--
-- TOC entry 2199 (class 2604 OID 34590)
-- Dependencies: 164 163
-- Name: id; Type: DEFAULT; Schema: public; Owner: michi
--

ALTER TABLE admin_users ALTER COLUMN id SET DEFAULT nextval('admin_users_id_seq'::regclass);


--
-- TOC entry 2207 (class 2604 OID 34675)
-- Dependencies: 181 180 181
-- Name: id; Type: DEFAULT; Schema: public; Owner: michi
--

ALTER TABLE companies ALTER COLUMN id SET DEFAULT nextval('companies_id_seq'::regclass);


--
-- TOC entry 2211 (class 2604 OID 34721)
-- Dependencies: 189 188 189
-- Name: id; Type: DEFAULT; Schema: public; Owner: michi
--

ALTER TABLE company_description_detail_translations ALTER COLUMN id SET DEFAULT nextval('company_description_detail_translations_id_seq'::regclass);


--
-- TOC entry 2209 (class 2604 OID 34697)
-- Dependencies: 185 184 185
-- Name: id; Type: DEFAULT; Schema: public; Owner: michi
--

ALTER TABLE company_description_details ALTER COLUMN id SET DEFAULT nextval('company_description_details_id_seq'::regclass);


--
-- TOC entry 2210 (class 2604 OID 34708)
-- Dependencies: 187 186 187
-- Name: id; Type: DEFAULT; Schema: public; Owner: michi
--

ALTER TABLE company_description_translations ALTER COLUMN id SET DEFAULT nextval('company_description_translations_id_seq'::regclass);


--
-- TOC entry 2208 (class 2604 OID 34686)
-- Dependencies: 183 182 183
-- Name: id; Type: DEFAULT; Schema: public; Owner: michi
--

ALTER TABLE company_descriptions ALTER COLUMN id SET DEFAULT nextval('company_descriptions_id_seq'::regclass);


--
-- TOC entry 2206 (class 2604 OID 34664)
-- Dependencies: 178 179 179
-- Name: id; Type: DEFAULT; Schema: public; Owner: michi
--

ALTER TABLE customers ALTER COLUMN id SET DEFAULT nextval('customers_id_seq'::regclass);


--
-- TOC entry 2203 (class 2604 OID 34626)
-- Dependencies: 172 173 173
-- Name: id; Type: DEFAULT; Schema: public; Owner: michi
--

ALTER TABLE image_translations ALTER COLUMN id SET DEFAULT nextval('image_translations_id_seq'::regclass);


--
-- TOC entry 2200 (class 2604 OID 34591)
-- Dependencies: 166 165
-- Name: id; Type: DEFAULT; Schema: public; Owner: michi
--

ALTER TABLE images ALTER COLUMN id SET DEFAULT nextval('images_id_seq'::regclass);


--
-- TOC entry 2202 (class 2604 OID 34613)
-- Dependencies: 170 171 171
-- Name: id; Type: DEFAULT; Schema: public; Owner: michi
--

ALTER TABLE maneuver_translations ALTER COLUMN id SET DEFAULT nextval('maneuver_translations_id_seq'::regclass);


--
-- TOC entry 2201 (class 2604 OID 34592)
-- Dependencies: 168 167
-- Name: id; Type: DEFAULT; Schema: public; Owner: michi
--

ALTER TABLE maneuvers ALTER COLUMN id SET DEFAULT nextval('maneuvers_id_seq'::regclass);


--
-- TOC entry 2204 (class 2604 OID 34639)
-- Dependencies: 175 174 175
-- Name: id; Type: DEFAULT; Schema: public; Owner: michi
--

ALTER TABLE people ALTER COLUMN id SET DEFAULT nextval('people_id_seq'::regclass);


--
-- TOC entry 2205 (class 2604 OID 34650)
-- Dependencies: 177 176 177
-- Name: id; Type: DEFAULT; Schema: public; Owner: michi
--

ALTER TABLE person_translations ALTER COLUMN id SET DEFAULT nextval('person_translations_id_seq'::regclass);


--
-- TOC entry 2257 (class 0 OID 34551)
-- Dependencies: 161
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: michi
--

COPY active_admin_comments (id, resource_id, resource_type, author_id, author_type, body, created_at, updated_at, namespace) FROM stdin;
\.


--
-- TOC entry 2258 (class 0 OID 34559)
-- Dependencies: 163
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: michi
--

COPY admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
1	michi@netzpiraten.ch	$2a$10$8wRXWjn7DZ1JXb/DoupaneRurvz2HSdcHF.KEfwDsHsRM/fG3SojK	\N	\N	\N	4	2012-08-15 15:29:57.155167	2012-08-14 19:28:45.272855	127.0.0.1	127.0.0.1	2012-08-14 17:28:04.278833	2012-08-15 15:29:57.156095
\.


--
-- TOC entry 2267 (class 0 OID 34672)
-- Dependencies: 181
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: michi
--

COPY companies (id, name, street, zip, city, phone, email, web, created_at, updated_at) FROM stdin;
1	Varese Corridor	Zurlindenstrasse 134	8003	Zürich	41 (0) 44 450 22 11	entrata@varese-corridor.ch	http://www.varese-corridor.ch	2012-08-16 14:43:01.015914	2012-08-16 14:43:01.015914
\.


--
-- TOC entry 2271 (class 0 OID 34718)
-- Dependencies: 189
-- Data for Name: company_description_detail_translations; Type: TABLE DATA; Schema: public; Owner: michi
--

COPY company_description_detail_translations (id, company_description_detail_id, locale, title, description, created_at, updated_at) FROM stdin;
1	6	de	Marke	Ausgangspunkt und Mittelpunkt für alle Entscheidungen, die das Unternehmen betreffen. Marke und Strategie schaffen den Orientierungsrahmen, der den Beliebigkeitsspielraum situativer Einzelmaßnahmen eingrenzt. Voraussetzung für den Erfolg sämtlicher Handlungen ist immer eine klare Übereinstimmung von Inhalt und Form.	2012-08-16 15:44:41.222814	2012-08-16 15:44:41.222814
2	7	de	Ich/Unternehmer	Ambition und klare Strategie. Durch Einzelgespräche, Workshops, Roundtables gilt es die Ambition und die Ziele des Unternehmers/Unternehmen herauszufinden und festzuhalten, damit Strategien nachhaltig verankert werden können.	2012-08-16 15:44:41.224889	2012-08-16 15:44:41.224889
3	8	de	Identität	Auftreten, Handeln und Denken definieren die Persönlichkeit. Durch Identitätsprogramme oder Einzelmassnahmen werden authentische Werte, Leistungen, Verhalten und Kommunikation prozesshaft aufgebaut oder geschärft und dadurch Unternehmensstrategie und -persönlichkeit manifestiert: Positionierung, Strategien sowie Analyse, Optimierung und Neuentwicklung von Marken, Markengeschichten, Markenberührungspunkten und Markenführung.	2012-08-16 15:44:41.226266	2012-08-16 15:44:41.226266
4	9	de	Ideen	Treiber für Veränderung und Innovation. Durch Auseinandersetzung mit etablierten Sichtweisen, mit iterativem Prozess und durch multidisziplinäres Denken unter Einbezug des eigenen Netzwerks werden überraschende Ideen für Marken und Unternehmen entwickelt: Markeninnovationen, Produkt- und Dienstleistungsinnovationen, Produkt-und Markeneinführungen, Angebotserweiterungen, Kommunikationsmedien und -kanäle, Markenberührungspunkte, Kundenbindung, Neukundengewinnung, Zielgruppenerweiterung, Imagetransfer, Imageförderung, Verkaufsförderung, Unternehmensdarstellung, interne Kommunikation, Unternehmenskultur, Public Relations, Sponsoring	2012-08-16 15:44:41.22769	2012-08-16 15:44:41.22769
5	10	de	Initiativen	Kurzfristige Aktionen oder langfristige Programme für das Vermitteln der zentralen und inhaltlichen Botschaften. Ausgehend von der Situation und Ambition des Unternehmers oder der Marke oder abgeleitet von der etablierten Identität und je nach definierter Idee werden relevante Initiativen erarbeitet und durchgeführt: Promotionen, Kampagnen, Magazine, Events, Infopavillons, Road-Shows, Ausstellungen, Schulungen, Trainings, Aufbau Innovationskultur, Externe Partnerschaften, Förderprogramme.	2012-08-16 15:44:41.22912	2012-08-16 15:44:41.22912
\.


--
-- TOC entry 2269 (class 0 OID 34694)
-- Dependencies: 185
-- Data for Name: company_description_details; Type: TABLE DATA; Schema: public; Owner: michi
--

COPY company_description_details (id, company_description_id, title, description, created_at, updated_at) FROM stdin;
6	3	Marke	Ausgangspunkt und Mittelpunkt für alle Entscheidungen, die das Unternehmen betreffen. Marke und Strategie schaffen den Orientierungsrahmen, der den Beliebigkeitsspielraum situativer Einzelmaßnahmen eingrenzt. Voraussetzung für den Erfolg sämtlicher Handlungen ist immer eine klare Übereinstimmung von Inhalt und Form.	2012-08-16 15:34:41.756942	2012-08-16 15:35:11.790092
7	3	Ich/Unternehmer	Ambition und klare Strategie. Durch Einzelgespräche, Workshops, Roundtables gilt es die Ambition und die Ziele des Unternehmers/Unternehmen herauszufinden und festzuhalten, damit Strategien nachhaltig verankert werden können.	2012-08-16 15:35:43.426863	2012-08-16 15:35:43.426863
8	3	Identität	Auftreten, Handeln und Denken definieren die Persönlichkeit. Durch Identitätsprogramme oder Einzelmassnahmen werden authentische Werte, Leistungen, Verhalten und Kommunikation prozesshaft aufgebaut oder geschärft und dadurch Unternehmensstrategie und -persönlichkeit manifestiert: Positionierung, Strategien sowie Analyse, Optimierung und Neuentwicklung von Marken, Markengeschichten, Markenberührungspunkten und Markenführung.	2012-08-16 15:35:43.427914	2012-08-16 15:35:43.427914
9	3	Ideen	Treiber für Veränderung und Innovation. Durch Auseinandersetzung mit etablierten Sichtweisen, mit iterativem Prozess und durch multidisziplinäres Denken unter Einbezug des eigenen Netzwerks werden überraschende Ideen für Marken und Unternehmen entwickelt: Markeninnovationen, Produkt- und Dienstleistungsinnovationen, Produkt-und Markeneinführungen, Angebotserweiterungen, Kommunikationsmedien und -kanäle, Markenberührungspunkte, Kundenbindung, Neukundengewinnung, Zielgruppenerweiterung, Imagetransfer, Imageförderung, Verkaufsförderung, Unternehmensdarstellung, interne Kommunikation, Unternehmenskultur, Public Relations, Sponsoring	2012-08-16 15:36:19.969902	2012-08-16 15:36:19.969902
10	3	Initiativen	Kurzfristige Aktionen oder langfristige Programme für das Vermitteln der zentralen und inhaltlichen Botschaften. Ausgehend von der Situation und Ambition des Unternehmers oder der Marke oder abgeleitet von der etablierten Identität und je nach definierter Idee werden relevante Initiativen erarbeitet und durchgeführt: Promotionen, Kampagnen, Magazine, Events, Infopavillons, Road-Shows, Ausstellungen, Schulungen, Trainings, Aufbau Innovationskultur, Externe Partnerschaften, Förderprogramme.	2012-08-16 15:36:19.971297	2012-08-16 15:36:19.971297
\.


--
-- TOC entry 2270 (class 0 OID 34705)
-- Dependencies: 187
-- Data for Name: company_description_translations; Type: TABLE DATA; Schema: public; Owner: michi
--

COPY company_description_translations (id, company_description_id, locale, title, description, created_at, updated_at) FROM stdin;
1	1	de	Descrizione	# Situational Brand Maneuvres\r\n\r\nVarese Corridor beschreibt ein Feld von Ideen, Aktivitäten und Ambitionen zur Profilierung und Positionierung von Marken und ihren Produkten. Mittels Analyse und persönlicher Auseinandersetzung unterstützen wir Unternehmen und Institutionen bei der strategischen Ausrichtung ihrer Identität und konstruieren Bezugssysteme für eine zielgerichtete Ideenfindung. Ausgehend von einer geschärften Markenessenz initiieren wir situationsbedingte, markenrelevante Umgangsformen und Interventionen welche den Charakter einer Unternehmung in angemessener Weise artikulieren. Der Motor unserer Tätigkeit sind vielfältige, schöpferische Partnerschaften welche die Grenzen des konventionellen Dienstleistungsverständnis sprengen. Unsere Arbeitsweise kennt keine reproduzierenden Rezepte, sondern sucht stetig nach eigenständigen Prozessen und Perspektiven, die uns gemeinsam auf neuartige Wege führen. Der Varese Corridor muss situationsbedingt immer wieder aufs Neue errichtet werden.\r\n\r\nThe Varese Corridor does not exist.\r\nThe Varese Corridor must be built.	2012-08-16 15:44:41.184129	2012-08-16 15:44:41.184129
2	2	de	Leistungsfelder	Varese Corridor bietet Unternehmern, Marken und Kommunikationsverantwortlichen, an erster Stelle Kreativität, die Differenzierung im Wettbewerb ermöglicht.\r\n\r\nDer Arbeitsfokus liegt auf Konzeption und Kommunikationsaufbau, das heisst auf Produktion von Ideen für die Entwicklung von Unternehmen, Institutionen, Marken, Dienstleistungen und Produkten.\r\n\r\nJe nach Kundensituation erbringt Varese Corridor reine Beratungsdienstleistungen, entwickelt kommunikative und visuelle Gesamtsysteme oder erarbeitet massgeschneiderte Einzelmassnahmen. Umgesetzt in klassischen und digitalen Medien oder im Raum.\r\n\r\nMarke\r\nIdentität\r\nText\r\nNaming\r\nTypografie\r\nFotografie\r\nIllustration\r\nEditorial\r\nBuch\r\nPrint\r\nMotion\r\nSound\r\nDigitale Medien\r\nWebsite\r\nProdukt\r\nVerpackung\r\nEvent\r\nAusstellung\r\nMesse\r\nLeitsystem\r\nGebäudekennzeichnung	2012-08-16 15:44:41.190166	2012-08-16 15:44:41.190166
3	3	de	Leistungsmodel	Marke, Markt und Unternehmen sind dynamische und komplexe Gebilde. In diesem Spannungsfeld von Innovation und Kontinuität, von Veränderung und Stabilität ist Varese Corridor Ideentreiber für Marken oder Unternehmer.\r\n\r\nMit den Leistungsfeldern und dem eigenen Leistungsmodell begleitet Varese Corridor Unternehmen, Institutionen und Marken partnerschaftlich und ist an ihrem langfristigen Erfolg interessiert.\r\n\r\nIn der Zusammenarbeit werden Werte, Verhalten, Dienstleistungen, Produkte und Kommunikation, die ein Unternehmen oder eine Marke bewegen und in Zukunft differenzieren, prozesshaft aufgebaut oder verdeutlicht.	2012-08-16 15:44:41.19148	2012-08-16 15:44:41.19148
\.


--
-- TOC entry 2268 (class 0 OID 34683)
-- Dependencies: 183
-- Data for Name: company_descriptions; Type: TABLE DATA; Schema: public; Owner: michi
--

COPY company_descriptions (id, company_id, title, description, created_at, updated_at) FROM stdin;
1	1	Descrizione	# Situational Brand Maneuvres\r\n\r\nVarese Corridor beschreibt ein Feld von Ideen, Aktivitäten und Ambitionen zur Profilierung und Positionierung von Marken und ihren Produkten. Mittels Analyse und persönlicher Auseinandersetzung unterstützen wir Unternehmen und Institutionen bei der strategischen Ausrichtung ihrer Identität und konstruieren Bezugssysteme für eine zielgerichtete Ideenfindung. Ausgehend von einer geschärften Markenessenz initiieren wir situationsbedingte, markenrelevante Umgangsformen und Interventionen welche den Charakter einer Unternehmung in angemessener Weise artikulieren. Der Motor unserer Tätigkeit sind vielfältige, schöpferische Partnerschaften welche die Grenzen des konventionellen Dienstleistungsverständnis sprengen. Unsere Arbeitsweise kennt keine reproduzierenden Rezepte, sondern sucht stetig nach eigenständigen Prozessen und Perspektiven, die uns gemeinsam auf neuartige Wege führen. Der Varese Corridor muss situationsbedingt immer wieder aufs Neue errichtet werden.\r\n\r\nThe Varese Corridor does not exist.\r\nThe Varese Corridor must be built.	2012-08-16 15:16:10.932573	2012-08-16 15:16:10.932573
2	1	Leistungsfelder	Varese Corridor bietet Unternehmern, Marken und Kommunikationsverantwortlichen, an erster Stelle Kreativität, die Differenzierung im Wettbewerb ermöglicht.\r\n\r\nDer Arbeitsfokus liegt auf Konzeption und Kommunikationsaufbau, das heisst auf Produktion von Ideen für die Entwicklung von Unternehmen, Institutionen, Marken, Dienstleistungen und Produkten.\r\n\r\nJe nach Kundensituation erbringt Varese Corridor reine Beratungsdienstleistungen, entwickelt kommunikative und visuelle Gesamtsysteme oder erarbeitet massgeschneiderte Einzelmassnahmen. Umgesetzt in klassischen und digitalen Medien oder im Raum.\r\n\r\nMarke\r\nIdentität\r\nText\r\nNaming\r\nTypografie\r\nFotografie\r\nIllustration\r\nEditorial\r\nBuch\r\nPrint\r\nMotion\r\nSound\r\nDigitale Medien\r\nWebsite\r\nProdukt\r\nVerpackung\r\nEvent\r\nAusstellung\r\nMesse\r\nLeitsystem\r\nGebäudekennzeichnung	2012-08-16 15:16:32.157073	2012-08-16 15:16:32.157073
3	1	Leistungsmodel	Marke, Markt und Unternehmen sind dynamische und komplexe Gebilde. In diesem Spannungsfeld von Innovation und Kontinuität, von Veränderung und Stabilität ist Varese Corridor Ideentreiber für Marken oder Unternehmer.\r\n\r\nMit den Leistungsfeldern und dem eigenen Leistungsmodell begleitet Varese Corridor Unternehmen, Institutionen und Marken partnerschaftlich und ist an ihrem langfristigen Erfolg interessiert.\r\n\r\nIn der Zusammenarbeit werden Werte, Verhalten, Dienstleistungen, Produkte und Kommunikation, die ein Unternehmen oder eine Marke bewegen und in Zukunft differenzieren, prozesshaft aufgebaut oder verdeutlicht.	2012-08-16 15:18:37.053175	2012-08-16 15:18:37.053175
\.


--
-- TOC entry 2266 (class 0 OID 34661)
-- Dependencies: 179
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: michi
--

COPY customers (id, name, link, created_at, updated_at) FROM stdin;
1	Bayer (Schweiz) AG		2012-08-16 13:47:48.321007	2012-08-16 13:47:48.321007
2	BFI—British Film Institute		2012-08-16 13:48:00.456706	2012-08-16 13:48:00.456706
3	BLS		2012-08-16 13:54:28.661726	2012-08-16 13:54:28.661726
4	Bruderschaft vom Osterlamm		2012-08-16 13:55:04.886783	2012-08-16 13:55:04.886783
5	Brunner Strategy		2012-08-16 13:55:12.872485	2012-08-16 13:55:12.872485
6	Chocolat Frey AG		2012-08-16 13:55:21.129582	2012-08-16 13:55:21.129582
7	Daniel Bütler Textmanufaktur		2012-08-16 13:55:29.308824	2012-08-16 13:55:29.308824
8	Ebony Powder		2012-08-16 13:55:38.185671	2012-08-16 13:55:38.185671
9	F+F Schule für Kunst und Mediendesign		2012-08-16 13:55:46.678408	2012-08-16 13:55:46.678408
10	Fondsmesse Schweiz		2012-08-16 13:56:05.556781	2012-08-16 13:56:05.556781
11	Franke Artemis Group		2012-08-16 13:56:13.556124	2012-08-16 13:56:13.556124
12	Franke Coffee Systems		2012-08-16 13:56:23.41101	2012-08-16 13:56:23.41101
13	Frey Orthopädie-Bedarf AG		2012-08-16 13:56:32.118596	2012-08-16 13:56:32.118596
14	GMUND		2012-08-16 13:56:39.554776	2012-08-16 13:56:39.554776
15	ICM—Independent Capital Management AG		2012-08-16 13:56:47.530702	2012-08-16 13:56:47.530702
16	Jennifer Gassmann Galerie		2012-08-16 13:56:55.697891	2012-08-16 13:56:55.697891
17	KABC—Business & Care		2012-08-16 13:57:03.056049	2012-08-16 13:57:03.056049
18	Naturalstyle.ch		2012-08-16 13:57:09.963161	2012-08-16 13:57:09.963161
19	Orthopartner AG		2012-08-16 13:57:18.412328	2012-08-16 13:57:18.412328
20	Outlyne		2012-08-16 13:57:24.981982	2012-08-16 13:57:24.981982
21	Premotion		2012-08-16 13:57:32.699336	2012-08-16 13:57:32.699336
22	Reflexx		2012-08-16 13:57:39.067937	2012-08-16 13:57:39.067937
23	Restaurant St. Georg, Ernen		2012-08-16 13:57:51.003898	2012-08-16 13:57:51.003898
24	Restaurant Mühle, Geschinen		2012-08-16 13:58:00.914772	2012-08-16 13:58:00.914772
25	Robert Sulzer Forrer Stiftung		2012-08-16 13:58:07.372055	2012-08-16 13:58:07.372055
26	Roger Stüssi		2012-08-16 13:58:16.136352	2012-08-16 13:58:16.136352
27	W.I.R.E.		2012-08-16 13:58:24.686714	2012-08-16 13:58:24.686714
\.


--
-- TOC entry 2263 (class 0 OID 34623)
-- Dependencies: 173
-- Data for Name: image_translations; Type: TABLE DATA; Schema: public; Owner: michi
--

COPY image_translations (id, image_id, locale, label, created_at, updated_at) FROM stdin;
1	4	de	\N	2012-08-16 13:41:29.226406	2012-08-16 13:41:29.226406
2	5	de	\N	2012-08-16 13:41:29.228382	2012-08-16 13:41:29.228382
3	6	de	\N	2012-08-16 13:41:29.229675	2012-08-16 13:41:29.229675
4	7	de	\N	2012-08-16 13:41:29.231002	2012-08-16 13:41:29.231002
5	8	de	\N	2012-08-16 13:41:29.2323	2012-08-16 13:41:29.2323
6	9	de	\N	2012-08-16 13:41:29.233595	2012-08-16 13:41:29.233595
7	10	de	\N	2012-08-16 13:41:29.23503	2012-08-16 13:41:29.23503
8	11	de	\N	2012-08-16 13:41:29.236367	2012-08-16 13:41:29.236367
9	12	de	\N	2012-08-16 13:41:29.237666	2012-08-16 13:41:29.237666
10	13	de	\N	2012-08-16 13:41:29.239104	2012-08-16 13:41:29.239104
11	14	de	\N	2012-08-16 13:41:29.240506	2012-08-16 13:41:29.240506
12	15	de	\N	2012-08-16 13:41:29.241883	2012-08-16 13:41:29.241883
13	16	de	\N	2012-08-16 13:41:29.243212	2012-08-16 13:41:29.243212
14	17	de	\N	2012-08-16 13:41:29.244574	2012-08-16 13:41:29.244574
15	18	de	\N	2012-08-16 13:41:29.245927	2012-08-16 13:41:29.245927
16	19	de	\N	2012-08-16 13:41:29.247295	2012-08-16 13:41:29.247295
17	20	de	\N	2012-08-16 13:41:29.248689	2012-08-16 13:41:29.248689
18	21	de	\N	2012-08-16 13:41:29.250017	2012-08-16 13:41:29.250017
19	22	de	\N	2012-08-16 13:41:29.251355	2012-08-16 13:41:29.251355
20	23	de		2012-08-16 13:41:29.252662	2012-08-16 13:41:29.252662
21	24	de		2012-08-16 13:41:29.254024	2012-08-16 13:41:29.254024
22	25	de		2012-08-16 13:41:29.25538	2012-08-16 13:41:29.25538
23	26	de		2012-08-16 13:41:29.256714	2012-08-16 13:41:29.256714
24	27	de		2012-08-16 13:41:29.258051	2012-08-16 13:41:29.258051
25	28	de		2012-08-16 13:41:29.259407	2012-08-16 13:41:29.259407
26	29	de		2012-08-16 13:41:29.260901	2012-08-16 13:41:29.260901
27	30	de		2012-08-16 13:41:29.262474	2012-08-16 13:41:29.262474
28	31	de		2012-08-16 13:41:29.263971	2012-08-16 13:41:29.263971
29	32	de		2012-08-16 13:41:29.265391	2012-08-16 13:41:29.265391
30	33	de		2012-08-16 13:41:29.266753	2012-08-16 13:41:29.266753
31	34	de		2012-08-16 13:41:29.26815	2012-08-16 13:41:29.26815
32	35	de		2012-08-16 13:41:29.269774	2012-08-16 13:41:29.269774
33	36	de		2012-08-16 13:41:29.271329	2012-08-16 13:41:29.271329
34	37	de		2012-08-16 13:41:29.272643	2012-08-16 13:41:29.272643
35	38	de		2012-08-16 13:41:29.274085	2012-08-16 13:41:29.274085
36	39	de		2012-08-16 13:41:29.27543	2012-08-16 13:41:29.27543
37	40	de		2012-08-16 13:41:29.276735	2012-08-16 13:41:29.276735
38	41	de		2012-08-16 13:41:29.278133	2012-08-16 13:41:29.278133
39	42	de		2012-08-16 13:41:29.279422	2012-08-16 13:41:29.279422
40	43	de		2012-08-16 13:41:29.280711	2012-08-16 13:41:29.280711
41	44	de		2012-08-16 13:41:29.282087	2012-08-16 13:41:29.282087
42	45	de		2012-08-16 13:41:29.283462	2012-08-16 13:41:29.283462
43	46	de		2012-08-16 13:41:29.284814	2012-08-16 13:41:29.284814
44	47	de		2012-08-16 13:41:29.286161	2012-08-16 13:41:29.286161
45	48	de		2012-08-16 13:41:29.287487	2012-08-16 13:41:29.287487
46	49	de		2012-08-16 13:41:29.288853	2012-08-16 13:41:29.288853
47	50	de		2012-08-16 13:41:29.290236	2012-08-16 13:41:29.290236
48	51	de		2012-08-16 13:41:29.291612	2012-08-16 13:41:29.291612
49	52	de		2012-08-16 13:41:29.293052	2012-08-16 13:41:29.293052
50	53	de		2012-08-16 13:41:29.294413	2012-08-16 13:41:29.294413
51	54	de		2012-08-16 13:41:29.295818	2012-08-16 13:41:29.295818
52	55	de		2012-08-16 13:41:29.297179	2012-08-16 13:41:29.297179
53	56	de		2012-08-16 13:41:29.298541	2012-08-16 13:41:29.298541
54	57	de		2012-08-16 13:41:29.299907	2012-08-16 13:41:29.299907
55	58	de		2012-08-16 13:41:29.301267	2012-08-16 13:41:29.301267
56	59	de		2012-08-16 13:41:29.302555	2012-08-16 13:41:29.302555
57	60	de		2012-08-16 13:41:29.303831	2012-08-16 13:41:29.303831
58	61	de		2012-08-16 13:41:29.305155	2012-08-16 13:41:29.305155
59	62	de		2012-08-16 13:41:29.306454	2012-08-16 13:41:29.306454
60	63	de		2012-08-16 13:41:29.307798	2012-08-16 13:41:29.307798
61	64	de		2012-08-16 13:41:29.30916	2012-08-16 13:41:29.30916
62	65	de		2012-08-16 13:41:29.31052	2012-08-16 13:41:29.31052
63	66	de		2012-08-16 13:41:29.311847	2012-08-16 13:41:29.311847
64	67	de		2012-08-16 13:41:29.313149	2012-08-16 13:41:29.313149
65	68	de		2012-08-16 13:41:29.314434	2012-08-16 13:41:29.314434
66	69	de		2012-08-16 13:41:29.315734	2012-08-16 13:41:29.315734
67	70	de		2012-08-16 13:41:29.317029	2012-08-16 13:41:29.317029
68	71	de		2012-08-16 13:41:29.318751	2012-08-16 13:41:29.318751
69	72	de		2012-08-16 13:41:29.320466	2012-08-16 13:41:29.320466
70	73	de		2012-08-16 13:41:29.322079	2012-08-16 13:41:29.322079
71	74	de		2012-08-16 13:41:29.32352	2012-08-16 13:41:29.32352
72	75	de		2012-08-16 13:41:29.324852	2012-08-16 13:41:29.324852
73	76	de		2012-08-16 13:41:29.326197	2012-08-16 13:41:29.326197
74	77	de		2012-08-16 13:41:29.32756	2012-08-16 13:41:29.32756
75	78	de		2012-08-16 13:41:29.329044	2012-08-16 13:41:29.329044
76	79	de		2012-08-16 13:41:29.33033	2012-08-16 13:41:29.33033
77	80	de		2012-08-16 13:41:29.331712	2012-08-16 13:41:29.331712
78	81	de		2012-08-16 13:41:29.333046	2012-08-16 13:41:29.333046
79	82	de		2012-08-16 13:41:29.334427	2012-08-16 13:41:29.334427
80	83	de		2012-08-16 13:41:29.335774	2012-08-16 13:41:29.335774
81	84	de		2012-08-16 13:41:29.337087	2012-08-16 13:41:29.337087
82	85	de		2012-08-16 13:41:29.338453	2012-08-16 13:41:29.338453
83	86	de		2012-08-16 13:41:29.339766	2012-08-16 13:41:29.339766
84	87	de		2012-08-16 13:41:29.341076	2012-08-16 13:41:29.341076
85	88	de		2012-08-16 13:41:29.34243	2012-08-16 13:41:29.34243
86	89	de		2012-08-16 13:41:29.343766	2012-08-16 13:41:29.343766
87	90	de		2012-08-16 13:41:29.345081	2012-08-16 13:41:29.345081
88	91	de		2012-08-16 13:41:29.346364	2012-08-16 13:41:29.346364
89	92	de		2012-08-16 13:41:29.347669	2012-08-16 13:41:29.347669
90	93	de		2012-08-16 13:41:29.34895	2012-08-16 13:41:29.34895
91	94	de		2012-08-16 13:41:29.350429	2012-08-16 13:41:29.350429
92	95	de		2012-08-16 13:41:29.35178	2012-08-16 13:41:29.35178
93	96	de		2012-08-16 13:41:29.353186	2012-08-16 13:41:29.353186
94	97	de		2012-08-16 13:41:29.354479	2012-08-16 13:41:29.354479
95	98	de		2012-08-16 13:41:29.355803	2012-08-16 13:41:29.355803
\.


--
-- TOC entry 2259 (class 0 OID 34570)
-- Dependencies: 165
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: michi
--

COPY images (id, image, imageable_id, imageable_type, created_at, updated_at, label) FROM stdin;
88	rsfs_1.jpeg	12	Maneuver	2012-08-15 21:14:47.097077	2012-08-15 21:14:47.097077	
4	HM_1.jpeg	1	Maneuver	2012-08-15 19:29:39.401637	2012-08-15 19:29:39.401637	\N
5	HM_2.jpeg	1	Maneuver	2012-08-15 19:29:39.954505	2012-08-15 19:29:39.954505	\N
6	HM_3.jpeg	1	Maneuver	2012-08-15 19:29:40.482856	2012-08-15 19:29:40.482856	\N
7	HM_4.jpeg	1	Maneuver	2012-08-15 19:29:41.079856	2012-08-15 19:29:41.079856	\N
8	HM_5.jpeg	1	Maneuver	2012-08-15 19:29:41.629979	2012-08-15 19:29:41.629979	\N
9	HM_6.jpeg	1	Maneuver	2012-08-15 19:29:42.164867	2012-08-15 19:29:42.164867	\N
10	HM_7.jpeg	1	Maneuver	2012-08-15 19:29:42.71705	2012-08-15 19:29:42.71705	\N
11	PR_1.jpeg	2	Maneuver	2012-08-15 19:37:42.52417	2012-08-15 19:37:42.52417	\N
12	PR_2.jpeg	2	Maneuver	2012-08-15 19:38:34.817837	2012-08-15 19:38:34.817837	\N
13	PR_3.jpeg	2	Maneuver	2012-08-15 19:38:35.765233	2012-08-15 19:38:35.765233	\N
14	PR_4.jpeg	2	Maneuver	2012-08-15 19:38:36.257397	2012-08-15 19:38:36.257397	\N
15	PR_5.jpeg	2	Maneuver	2012-08-15 19:38:36.751905	2012-08-15 19:38:36.751905	\N
16	PR_6.jpeg	2	Maneuver	2012-08-15 19:38:37.265091	2012-08-15 19:38:37.265091	\N
17	PR_7.jpeg	2	Maneuver	2012-08-15 19:38:37.748315	2012-08-15 19:38:37.748315	\N
18	1207125_PR_Web.jpeg	2	Maneuver	2012-08-15 19:38:38.243744	2012-08-15 19:38:38.243744	\N
19	BL_1.jpeg	3	Maneuver	2012-08-15 19:44:16.001911	2012-08-15 19:44:16.001911	\N
20	BL_2.jpeg	3	Maneuver	2012-08-15 19:44:16.59145	2012-08-15 19:44:16.59145	\N
21	BL_3.jpeg	3	Maneuver	2012-08-15 19:44:17.233582	2012-08-15 19:44:17.233582	\N
22	BL_4.jpeg	3	Maneuver	2012-08-15 19:44:17.75402	2012-08-15 19:44:17.75402	\N
23	Stuessi_1.jpeg	4	Maneuver	2012-08-15 20:15:40.723022	2012-08-15 20:15:40.723022	
24	Milking_stool.jpeg	4	Maneuver	2012-08-15 20:15:41.427153	2012-08-15 20:15:41.427153	
25	Stuessi_2.jpeg	4	Maneuver	2012-08-15 20:15:41.900295	2012-08-15 20:15:41.900295	
26	Stuessi_6.jpeg	4	Maneuver	2012-08-15 20:15:42.365513	2012-08-15 20:15:42.365513	
27	Stuessi_5.jpeg	4	Maneuver	2012-08-15 20:15:42.867999	2012-08-15 20:15:42.867999	
28	Stuessi_4.jpeg	4	Maneuver	2012-08-15 20:15:43.360587	2012-08-15 20:15:43.360587	
29	120711_RS_Web.jpeg	4	Maneuver	2012-08-15 20:15:43.858348	2012-08-15 20:15:43.858348	
30	Showroom_02.jpeg	4	Maneuver	2012-08-15 20:16:48.590361	2012-08-15 20:16:48.590361	
31	Imengi_01.jpeg	4	Maneuver	2012-08-15 20:16:49.421341	2012-08-15 20:16:49.421341	
32	Idromi_02.jpeg	4	Maneuver	2012-08-15 20:16:49.889799	2012-08-15 20:16:49.889799	
33	Idromi_01.jpeg	4	Maneuver	2012-08-15 20:16:50.35369	2012-08-15 20:16:50.35369	
34	Imseti_01.jpeg	4	Maneuver	2012-08-15 20:16:50.851224	2012-08-15 20:16:50.851224	
35	Imengi_02.jpeg	4	Maneuver	2012-08-15 20:16:51.304609	2012-08-15 20:16:51.304609	
36	Showroom_01.jpeg	4	Maneuver	2012-08-15 20:16:51.787676	2012-08-15 20:16:51.787676	
37	BS_O_Logo.jpeg	5	Maneuver	2012-08-15 20:32:26.752383	2012-08-15 20:32:26.752383	
38	BS_1_IPAD_.jpeg	5	Maneuver	2012-08-15 20:32:27.375238	2012-08-15 20:32:27.375238	
39	BS_4_Brief.jpeg	5	Maneuver	2012-08-15 20:32:27.842453	2012-08-15 20:32:27.842453	
40	BS_2_Briefschaften.jpeg	5	Maneuver	2012-08-15 20:32:28.321218	2012-08-15 20:32:28.321218	
41	StG_5.jpeg	6	Maneuver	2012-08-15 20:41:45.113189	2012-08-15 20:41:54.511478	
42	StG_6_Klaus.jpeg	6	Maneuver	2012-08-15 20:54:23.85913	2012-08-15 20:54:23.85913	
43	StG_2.jpeg	6	Maneuver	2012-08-15 20:54:24.429726	2012-08-15 20:54:24.429726	
44	StG_1.jpeg	6	Maneuver	2012-08-15 20:54:24.891028	2012-08-15 20:54:24.891028	
45	StG_6_Haus.jpeg	6	Maneuver	2012-08-15 20:54:25.376904	2012-08-15 20:54:25.376904	
46	120711_SG_Web.jpeg	6	Maneuver	2012-08-15 20:54:25.932504	2012-08-15 20:54:25.932504	
47	StG_3.jpeg	6	Maneuver	2012-08-15 20:54:26.421609	2012-08-15 20:54:26.421609	
48	StG_4.jpeg	6	Maneuver	2012-08-15 20:54:26.907598	2012-08-15 20:54:26.907598	
49	StG_6_Speise.jpeg	6	Maneuver	2012-08-15 20:54:27.373622	2012-08-15 20:54:27.373622	
50	Abstract_1.jpeg	7	Maneuver	2012-08-15 20:58:11.837145	2012-08-15 20:58:11.837145	
51	Abstract_2.jpeg	7	Maneuver	2012-08-15 20:58:12.389786	2012-08-15 20:58:12.389786	
52	Abstract_3.jpeg	7	Maneuver	2012-08-15 20:58:12.954537	2012-08-15 20:58:12.954537	
53	Abstract_4.jpeg	7	Maneuver	2012-08-15 20:58:13.480414	2012-08-15 20:58:13.480414	
54	Abstract_5.jpeg	7	Maneuver	2012-08-15 20:58:13.995721	2012-08-15 20:58:13.995721	
55	Abstract_6.jpeg	7	Maneuver	2012-08-15 20:58:14.525069	2012-08-15 20:58:14.525069	
56	Abstract_7.jpeg	7	Maneuver	2012-08-15 20:58:15.044262	2012-08-15 20:58:15.044262	
57	110921_F12_LOGO.jpeg	8	Maneuver	2012-08-15 21:01:20.492099	2012-08-15 21:01:20.492099	
58	_MG_3291_Kopie.jpeg	8	Maneuver	2012-08-15 21:01:21.075925	2012-08-15 21:01:21.075925	
59	F12_2.jpeg	8	Maneuver	2012-08-15 21:01:21.71248	2012-08-15 21:01:21.71248	
60	F12_7.jpeg	8	Maneuver	2012-08-15 21:01:22.294309	2012-08-15 21:01:22.294309	
61	F12_1.jpeg	8	Maneuver	2012-08-15 21:01:22.807626	2012-08-15 21:01:22.807626	
62	F12_4.jpeg	8	Maneuver	2012-08-15 21:01:23.35797	2012-08-15 21:01:23.35797	
63	APPLE_IMAC_21_2010.jpeg	8	Maneuver	2012-08-15 21:01:24.003442	2012-08-15 21:01:24.003442	
64	_MG_2362_KOPIE.jpeg	8	Maneuver	2012-08-15 21:01:24.505961	2012-08-15 21:01:24.505961	
65	_MG_2704_Kopie.jpeg	8	Maneuver	2012-08-15 21:01:25.105764	2012-08-15 21:01:25.105764	
66	_MG_2317_Kopie.jpeg	8	Maneuver	2012-08-15 21:01:25.650494	2012-08-15 21:01:25.650494	
67	franke_1.jpeg	9	Maneuver	2012-08-15 21:07:29.941907	2012-08-15 21:07:29.941907	
68	franke_2.jpeg	9	Maneuver	2012-08-15 21:07:30.406905	2012-08-15 21:07:30.406905	
69	franke_3.jpeg	9	Maneuver	2012-08-15 21:07:30.87113	2012-08-15 21:07:30.87113	
70	franke_4.jpeg	9	Maneuver	2012-08-15 21:07:31.367728	2012-08-15 21:07:31.367728	
71	franke_5.jpeg	9	Maneuver	2012-08-15 21:07:31.836328	2012-08-15 21:07:31.836328	
72	franke_6.jpeg	9	Maneuver	2012-08-15 21:07:32.348302	2012-08-15 21:07:32.348302	
73	franke_9.jpeg	9	Maneuver	2012-08-15 21:07:32.838545	2012-08-15 21:07:32.838545	
74	franke_7.jpeg	9	Maneuver	2012-08-15 21:07:33.273152	2012-08-15 21:07:33.273152	
75	franke_10.jpeg	9	Maneuver	2012-08-15 21:07:33.783823	2012-08-15 21:07:33.783823	
76	franke_11.jpeg	9	Maneuver	2012-08-15 21:07:34.272809	2012-08-15 21:07:34.272809	
77	franke_8.jpeg	9	Maneuver	2012-08-15 21:07:34.724455	2012-08-15 21:07:34.724455	
78	frankeC_1.jpeg	10	Maneuver	2012-08-15 21:10:00.484112	2012-08-15 21:10:00.484112	
79	frankeC_3.jpeg	10	Maneuver	2012-08-15 21:10:01.00743	2012-08-15 21:10:01.00743	
80	frankeC_2.jpeg	10	Maneuver	2012-08-15 21:10:01.430497	2012-08-15 21:10:01.430497	
81	frankeC_4.jpeg	10	Maneuver	2012-08-15 21:10:01.923809	2012-08-15 21:10:01.923809	
82	frankeC_5.jpeg	10	Maneuver	2012-08-15 21:10:02.402698	2012-08-15 21:10:02.402698	
83	hurenkind_1.jpeg	11	Maneuver	2012-08-15 21:12:34.332817	2012-08-15 21:12:34.332817	
84	hurenkind_2.jpeg	11	Maneuver	2012-08-15 21:12:34.832423	2012-08-15 21:12:34.832423	
85	hurenkind_3.jpeg	11	Maneuver	2012-08-15 21:12:35.260773	2012-08-15 21:12:35.260773	
86	hurenkind_4.jpeg	11	Maneuver	2012-08-15 21:12:35.771631	2012-08-15 21:12:35.771631	
87	hurenkind_5.jpeg	11	Maneuver	2012-08-15 21:12:36.184064	2012-08-15 21:12:36.184064	
89	rsfs_2.jpeg	12	Maneuver	2012-08-15 21:14:47.557744	2012-08-15 21:14:47.557744	
90	rsfs_4.jpeg	12	Maneuver	2012-08-15 21:14:47.989996	2012-08-15 21:14:47.989996	
91	rsfs_3.jpeg	12	Maneuver	2012-08-15 21:14:48.409864	2012-08-15 21:14:48.409864	
92	rsfs_5.jpeg	12	Maneuver	2012-08-15 21:14:48.845768	2012-08-15 21:14:48.845768	
93	dbt_1.jpeg	13	Maneuver	2012-08-15 21:20:13.972735	2012-08-15 21:20:13.972735	
94	dbt_2.jpeg	13	Maneuver	2012-08-15 21:20:14.459387	2012-08-15 21:20:14.459387	
95	dbt_3.jpeg	13	Maneuver	2012-08-15 21:20:14.87397	2012-08-15 21:20:14.87397	
96	120711_DB_Web.jpeg	13	Maneuver	2012-08-15 21:20:15.356047	2012-08-15 21:20:15.356047	
97	dbt_4.jpeg	13	Maneuver	2012-08-15 21:20:15.91909	2012-08-15 21:20:15.91909	
98	dbt_5.jpeg	13	Maneuver	2012-08-15 21:20:16.337363	2012-08-15 21:20:16.337363	
\.


--
-- TOC entry 2262 (class 0 OID 34610)
-- Dependencies: 171
-- Data for Name: maneuver_translations; Type: TABLE DATA; Schema: public; Owner: michi
--

COPY maneuver_translations (id, maneuver_id, locale, description, services, tagline, created_at, updated_at) FROM stdin;
1	1	de	Priorin ist eine Produktemarke von Bayer und das bekannteste Haarwuchsmittel in der Schweiz. Der Kunde wollte die Ansprechgruppe Pharmaassisteninnen und Drogistinnen emotional stärker an die Marke Priorin binden, um ihr Empfehlungsverhalten in der Apotheke zu fördern. In Zusammenarbeit mit Daniel Bütler Textmanufaktur hat Varese Corridor ein Magazin erarbeitet, welches mittels unterhaltsamer Wissensvermittlung und Lifestyle-Artikeln rund ums Thema Haare die Marke auf lockere und smypathische Weise dem Fachpublikum näherbringt. Basierend auf der Produktepositionierung wurden Inhaltskonzept, Rubrizierung und Layout entwickelt. Die Gestaltung in sanfter Anlehnung an das Corporate Design von Priorin garantiert Wiedererkennung und lässt genügend Spielraum, um als journalistisch glaubwürdige Publikation aufzutreten.	Naming, Editorial, Illustration, Fotoregie, Print	Ein Community-Magazin von Priorin	2012-08-16 13:41:29.133684	2012-08-16 13:41:29.133684
2	2	de	Premotion ist eine Marketing- und Eventagentur die seit zehn Jahren erfolgreich für nationale und international Unternehmen tätig ist. Der Kunde hatte das Bedürfnis die angepasste Unternehmensstrategie und die Ausweitung des Leistungsangebots im Rahmen einer neuen Website und einem neuen Firmenportrait darzustellen. Varese Corridor hat in enger Zusammenarbeit mit Premotion eine Imagebroschüre mit Momentaufnahmen von Projekten aus den vergangenen zehn Jahren entwickelt. Die Bildstrecken sind auf den Innenseiten der Doppelbögen «versteckt», um den textlichen Inhalten mehr Gewicht zu geben und somit die Beratungskompetenz in den Vordergrund zu stellen. Die Website wurde im Stil eines Blogs neu konzipiert, mit dem Ziel eine dynamische und grosszügige Anmutung der Homepage zu erreichen.	Identität, Print, Website	Zehn Jahre und kein bisschen leise	2012-08-16 13:41:29.14004	2012-08-16 13:41:29.14004
3	3	de	Lakepaper, ein Tochterunternehmen der renommierten Papierfabrik Gmund hat für die Vermarktung ihres neusten, blickdichten Naturpapiers «Blocker» einen Wettbewerb für ein Poster ausgeschrieben. Der Kunde hat sich aus einer Vielzahl von Vorschlägen aus aller Welt für eine Lösung von Varese Corridor entschieden, welche die Thematik Blickdichte mittels der Analogie «Blinde Kuh» transportiert. Das Faltposter welches als Beilage des Grafikmagazins «Novum» vertrieben wurde, beinhaltet eine kurze Anleitung des Kinderspiels und eine Augenbinde in Form einer Brille, mit der die Blickdichte des Papiers auf scherzhafte Weise getestet werden kann.	Wording, Text, Typografie, Print, Illustration	Ein spielerischer Auftritt für eine neuartige Papierqualität	2012-08-16 13:41:29.141495	2012-08-16 13:41:29.141495
4	4	de	Roger Stüssi ist ein konzeptorientierter Innenarchitekt und Gestalter, der seit mehr als zehn Jahren erfolgreich sein Atelier ‘Soius’ führt. Im Rahmen des Salone internazionale del Mobile 2012 präsentierte er erstmals eine eigene Möbelkollektion unter seinem Namen. In enger Zusammenarbeit mit dem Kunden hat Varese Corridor eine neue Marke entwickelt, die im Sinne eines Absenders eingesetzt wird. Im Vordergrund steht jeweils das Erscheinungsbild des aktuellen Projekts. So besteht der Kern der Marke primär aus Typografie und einem definierten Materialvokabular, welche die Dualität Handwerk versus Industrie zum Ausdruck bringen. Die Inszenierung der aktuellen Kollektion umfasste alle kommunikativen Komponenten von der Namensgebung des Projekts und der einzelnen Produkte, Textredaktion und Beschriftungen im Showroom bis hin zur Betreuung der Pressearbeit.	Marke, Identität, Naming, Text, Typografie, Print, Website, Ausstellung	A vo sü, a vo gió - eine neue Marke an der Möbelmesse Mailand	2012-08-16 13:41:29.142971	2012-08-16 13:41:29.142971
5	5	de	Erwin Brunner ist seit 2001 unabhängiger Strategie- und Sparring-partner von Unternehmern und Führungskräften. Mit dem Credo «Value Creation for Leaders and Brands» hilft er Menschen und Marken ihr wahres Potenzial zu entfalten und so den eigenen Weg an die Spitze zu finden. Brunner Strategy fördert nachhaltig erfolgreiches Unternehmertum durch eine von Werten und Ideen geleitete Entwicklung von Unternehmen und Marken. Gleichzeitig mit dem neuen Namenszusatz «Strategy» hat Varese Corridor einen Auftritt entwickelt, der die Wertigkeit eines strategisch denkenden und konsequent handelnden Beraters und Begleiters von Unternehmen unterstreicht. Namen und Erscheinungsbild bringen die wertvolle Erfahrung und Expertise wie auch die persönliche Note seines Engagements zum Ausdruck.	Naming, Marke, Print, Website	Wertschaffung durch Wertschätzung	2012-08-16 13:41:29.144453	2012-08-16 13:41:29.144453
6	6	de	Klaus Leuenberger schwingt seit Ende der neunziger Jahre im historischen Restaurant St.Georg in Ernen erfolgreich die Kelle. Er verwöhnt seine Gäste mit eigenwilliger Terroir- Küche in einer Konsequenz, die Gault-Millau mit 14 Punkten belohnt hat. Im Rahmen der Übernahme eines zweiten Lokals wurde klar, dass beide Restaurants einen neuen Auftritt benötigen. Einserseits musste der gemeinsame Absender in Worten aber auch durch eine formale Verwandtschaft artikuliert werden. Andererseits sollte der individuelle Charakter beider Häuser inklusive deren Namen gewahrt bleiben. Varese Corridor hat zwei Marken entwickelt, die sich nur mittels Logo, Farbgebung und Namen der Restaurants unterscheiden. Ergänzt werden diese mit einer zurückhaltenden Absendermarke mit der Bezeichnung «Klaus Leuenberger Speisewerk». Typografie, Materialwahl sowie die Wortmarken in Folienprägung repräsentieren die Gratwanderung zwischen rustikaler Tradition und moderner Raffinesse und widerspiegeln die Küchenphilosophie von Klaus Leuenberger.	Marke, Identität, Naming, Text, Typografie, Print, Website	Zwei Restaurants, ein Chef de Cuisine  und ein gemeinsamer Auftritt mit Nuancen	2012-08-16 13:41:29.145844	2012-08-16 13:41:29.145844
7	7	de	Abstract ist das regelmässig erscheinende Magazin von W.I.R.E. - einem unabhängigen Schweizer Think Tank, der sich mit globalen Entwicklungen in Wirtschaft, Gesellschaft und den Life Sciences beschäftigt, getragen durch die Bank Sarasin und dem Collegium Helveticum der ETH und Universität Zürich. Varese Corridor hat in Zusammenarbeit mit der Redaktion und den Fotografen Luxwerk einen visuellen Essay, gepaart mit Lyrik aus vier Jahrhunderten zum Heftthema ‚Was bleibt?’ erarbeitet. Entstanden sind sechs Bildcollagen welche sich kritisch mit dem Wesen des Souvenirs bzw. der Authentizität von Erinnerungen auseinandersetzen. Kommerzielle Erinnerungstücke wie z.B. die Akropolis in Miniatur werden kontrastiert durch Momentaufnahmen von persönlichen Erinnerungen. Die Bildstrecke zielt – anhand des Beispiels Tourismus – auf die Frage, zu welchem Teil persönliche ‚Souvenirs’ von gesellschaftlichen Klischees geprägt sind, und somit auf die Frage nach dem Wert des Bleibenden.\r\n	Konzept, Textrecherche, Fotoshooting, Editorial	Souvenir -  ein visueller Essay zum Thema «Was bleibt?»	2012-08-16 13:41:29.147272	2012-08-16 13:41:29.147272
8	8	de	Fonds’12, die grösste Schweizer Finanzmesse, suchte für die kommenden Ausgaben neue Impulse. Die Aufgabe war, die inhaltliche Ausrichtung «Marktplatz des Fondswissens» zu kommunizieren und die Finanzbranche publikumsnah zu präsentieren. Varese Corridor schlug als Marke ein prägnantes Zeichen vor, das durch die formale Nähe zum Diamanten auf die Wertsteigerung der Finanzanlagen hinweist. Zur Erhöhung der Aufmerksamkeit der Werbemittel tritt das Element «Kursband» in der Farbe Mint (engl. für «Münze», «Münzanstalt») hinzu. Um die lebendige Stimmung der Messe zu vermitteln, werden grosszügige Bilder verwendet, die vom Fotografenteam Luxwerk aufgenommen wurden. Das recycelte Naturpapier bringt Zurückhaltung und professionelle Sachlichkeit zum Ausdruck. 	Marke, Identität, Fotografie, Print, Website	Ein neuer publikumsnaher Auftritt für die grösste Finanzmesse der Schweiz	2012-08-16 13:41:29.148676	2012-08-16 13:41:29.148676
9	9	de	Franke ist eine global tätige Schweizer Unternehmensgruppe mit 70 Gesellschaften und rund 11‘000 Mitarbeitern. Sie versteht ihre erfolgreiche Geschichte als Fundament und als Verpflichtung für die Zukunft. Zum 100-Jahr-Jubiläum wollte der Konzern seine spannende Geschichte als roten Faden der Kommunikation bei all seinen Feierlichkeiten einsetzen. Varese Corridor recherchierte im Bildarchiv und entwickelte zusammen mit Brunner & Partner die Idee einer Dokumentationsform, die als Grundlage aller Jubiläumsaktivitäten einsetzbar ist. Entstanden ist ein durch Varese Corridor gestaltetes, umfassendes Franke-Geschichtsbuch, das crossmedial inszeniert wurde: In Buchform als Jubiläumsgeschenk, in Auszügen als Ausstellung im Museum, als Webspecial online und in Form von Moodbildern während der Hauptfeier im KKL-Luzern. 	Buch, Illustration, Typografie, Ausstellung	100 Jahre Firmengeschichte -  «Spirit of Franke»	2012-08-16 13:41:29.177979	2012-08-16 13:41:29.177979
10	10	de	Franke Coffee Systems präsentiert mit der «Spectra Foam Master» eine Kaffeemaschine, die höchste Ansprüche an Geschmack, Ästhetik und Leistung erfüllt. Mit Hilfe eines neuartigen Milchsystems will Franke Coffee Systems die Zielgruppe der professionellen Gastronomiebetriebe ansprechen. Varese Corridor wurde beauftragt, innerhalb einer Woche eine Location zu finden, ein Model inklusive Statisten zu casten und ein Fotoshooting umzusetzen. Dabei sollte das Gefühl von Stil, gutem Geschmack und Atmosphäre im Bild festgehalten werden. Varese Corridor suchte das Metropol in Zürich aus, wo Gäste aus aller Welt im Ambiente des einstigen Grand Cafés von 1894 Cappuccini oder Drinks geniessen. Als Fotograf wählten wir Nico Schärer.	Fotografie	«In the Mood for Coffee» ein Fotoshooting  für eine neue Zielgruppe	2012-08-16 13:41:29.179878	2012-08-16 13:41:29.179878
11	11	de	Typografie, Fotografie und Grafikdesign sind im Kontext der Neuen Medien zu einem vielschichtigen visuellen System zusammengewachsen. Typografie ist die Anwendung der materiellen Druckerschwärze mit Zeichen, Buchstaben und Satz. Diese wurde um substanzlose Licht- und Schattenspiele am Bildschirm erweitert. Gerade deshalb ist es wichtig, den ursprünglichen Sinn der Typografie zu verstehen und zu vermitteln. Die Broschüre ist in Zusammenarbeit mit der F+F Schule für Kunst und Mediendesign, Zürich, entstanden und wird als Lehrmittel für Studenten des Grundkurses eingesetzt. 	Typografie, Buch	Ein typografischer Streifzug mit  Eric, Jan und Adrian 	2012-08-16 13:41:29.181325	2012-08-16 13:41:29.181325
12	12	de	Die Robert Sulzer-Forrer-Stiftung fördert die Naturwissenschaften in der Schweiz, insbesondere auf dem Gebiet der Mineralogie und Palaentologie. Ihren Zweck erfüllt sie unter anderem durch Unterstützung von gemeinnützigen Institutionen sowie  Leihgaben. Bei der Konzeption des neuen Stiftungszeichens stellte Varese Corridor die spezifischen Charakteristika der Institution in den Vordergrund: Der Name des Stifters sitzt prominent und wird durch Grösse und Dicke der Schrift herausgehoben. Die Mehrsprachigkeit verweist auf die Tätigkeit in der ganzen Schweiz. Das durch geometrische Formen zusammengesetzte Zeichen kann einerseits als «feste innere Gesteinsstruktur» und andererseits als «Zusammenhalt» gelesen werden. Alle drei Elemente, Zeichen, Balken und Name, fügen sich zu einer eigenständigen Marke, die auch bei Co-Auftritten mit anderen Institutionen klar erkennbar und memorierbar ist. \r\n	Marke, Print	Im Zeichen der Förderung  der Naturwissenschaften	2012-08-16 13:41:29.182768	2012-08-16 13:41:29.182768
13	13	de	Daniel Bütler ist selbstständiger Journalist und Texter. Er schreibt für verschiedene Schweizer Zeitungen und Magazine, aber auch für die Publikationen namhafter Unternehmen. Dabei zeichnet er sich nicht nur durch inhaltlichen Tiefgang und sprachliche Raffinesse, sondern auch durch einen gewissen Witz aus. Der Auftritt vermittelt dies mit einer sachlichen, schlichten Typografie und einer Signetreihe. Diese Serie von Symbol-Wort-Paaren bringt die Kernaufgabe der Textredaktion in Sinne der Semiotik zum Ausdruck: nämlich als Spiel von Bezeichnung und Inhalt. Die Auswahl der Objekte steht für die Reduktion auf das Wesentliche, die inhaltliche Diversität aber auch für ein gewisses Augenzwinkern, das für Daniel Bütlers Arbeit charakteristisch ist.	Marke, Identität, Print, Website	Textkompetenz mit einem  Augenzwinkern	2012-08-16 13:41:29.184258	2012-08-16 13:41:29.184258
\.


--
-- TOC entry 2260 (class 0 OID 34578)
-- Dependencies: 167
-- Data for Name: maneuvers; Type: TABLE DATA; Schema: public; Owner: michi
--

COPY maneuvers (id, name, tagline, year, customer, link, services, description, created_at, updated_at) FROM stdin;
1	HairMail	Ein Community-Magazin von Priorin	2012	Bayer (Schweiz) AG	http://www.priorin.ch	Naming, Editorial, Illustration, Fotoregie, Print	Priorin ist eine Produktemarke von Bayer und das bekannteste Haarwuchsmittel in der Schweiz. Der Kunde wollte die Ansprechgruppe Pharmaassisteninnen und Drogistinnen emotional stärker an die Marke Priorin binden, um ihr Empfehlungsverhalten in der Apotheke zu fördern. In Zusammenarbeit mit Daniel Bütler Textmanufaktur hat Varese Corridor ein Magazin erarbeitet, welches mittels unterhaltsamer Wissensvermittlung und Lifestyle-Artikeln rund ums Thema Haare die Marke auf lockere und smypathische Weise dem Fachpublikum näherbringt. Basierend auf der Produktepositionierung wurden Inhaltskonzept, Rubrizierung und Layout entwickelt. Die Gestaltung in sanfter Anlehnung an das Corporate Design von Priorin garantiert Wiedererkennung und lässt genügend Spielraum, um als journalistisch glaubwürdige Publikation aufzutreten.	2012-08-15 15:31:15.588054	2012-08-15 17:46:28.643922
2	Premotion	Zehn Jahre und kein bisschen leise	2012	Premotion	http://www.premotion.ch	Identität, Print, Website	Premotion ist eine Marketing- und Eventagentur die seit zehn Jahren erfolgreich für nationale und international Unternehmen tätig ist. Der Kunde hatte das Bedürfnis die angepasste Unternehmensstrategie und die Ausweitung des Leistungsangebots im Rahmen einer neuen Website und einem neuen Firmenportrait darzustellen. Varese Corridor hat in enger Zusammenarbeit mit Premotion eine Imagebroschüre mit Momentaufnahmen von Projekten aus den vergangenen zehn Jahren entwickelt. Die Bildstrecken sind auf den Innenseiten der Doppelbögen «versteckt», um den textlichen Inhalten mehr Gewicht zu geben und somit die Beratungskompetenz in den Vordergrund zu stellen. Die Website wurde im Stil eines Blogs neu konzipiert, mit dem Ziel eine dynamische und grosszügige Anmutung der Homepage zu erreichen.	2012-08-15 19:37:42.521313	2012-08-15 19:37:42.521313
3	Lakepaper Blocker	Ein spielerischer Auftritt für eine neuartige Papierqualität	2012	Büttenpapierfabrik Gmund	http://www.lakepaper.com	Wording, Text, Typografie, Print, Illustration	Lakepaper, ein Tochterunternehmen der renommierten Papierfabrik Gmund hat für die Vermarktung ihres neusten, blickdichten Naturpapiers «Blocker» einen Wettbewerb für ein Poster ausgeschrieben. Der Kunde hat sich aus einer Vielzahl von Vorschlägen aus aller Welt für eine Lösung von Varese Corridor entschieden, welche die Thematik Blickdichte mittels der Analogie «Blinde Kuh» transportiert. Das Faltposter welches als Beilage des Grafikmagazins «Novum» vertrieben wurde, beinhaltet eine kurze Anleitung des Kinderspiels und eine Augenbinde in Form einer Brille, mit der die Blickdichte des Papiers auf scherzhafte Weise getestet werden kann.	2012-08-15 19:43:10.962211	2012-08-15 19:43:10.962211
4	Roger Stüssi	A vo sü, a vo gió - eine neue Marke an der Möbelmesse Mailand	2012	Roger Stüssi	http://www.roger-stuessi.ch	Marke, Identität, Naming, Text, Typografie, Print, Website, Ausstellung	Roger Stüssi ist ein konzeptorientierter Innenarchitekt und Gestalter, der seit mehr als zehn Jahren erfolgreich sein Atelier ‘Soius’ führt. Im Rahmen des Salone internazionale del Mobile 2012 präsentierte er erstmals eine eigene Möbelkollektion unter seinem Namen. In enger Zusammenarbeit mit dem Kunden hat Varese Corridor eine neue Marke entwickelt, die im Sinne eines Absenders eingesetzt wird. Im Vordergrund steht jeweils das Erscheinungsbild des aktuellen Projekts. So besteht der Kern der Marke primär aus Typografie und einem definierten Materialvokabular, welche die Dualität Handwerk versus Industrie zum Ausdruck bringen. Die Inszenierung der aktuellen Kollektion umfasste alle kommunikativen Komponenten von der Namensgebung des Projekts und der einzelnen Produkte, Textredaktion und Beschriftungen im Showroom bis hin zur Betreuung der Pressearbeit.	2012-08-15 19:45:38.953058	2012-08-15 19:45:38.953058
5	Brunner Strategy	Wertschaffung durch Wertschätzung	2012	Brunner Strategy	http://www.brunnerstrategy.ch/	Naming, Marke, Print, Website	Erwin Brunner ist seit 2001 unabhängiger Strategie- und Sparring-partner von Unternehmern und Führungskräften. Mit dem Credo «Value Creation for Leaders and Brands» hilft er Menschen und Marken ihr wahres Potenzial zu entfalten und so den eigenen Weg an die Spitze zu finden. Brunner Strategy fördert nachhaltig erfolgreiches Unternehmertum durch eine von Werten und Ideen geleitete Entwicklung von Unternehmen und Marken. Gleichzeitig mit dem neuen Namenszusatz «Strategy» hat Varese Corridor einen Auftritt entwickelt, der die Wertigkeit eines strategisch denkenden und konsequent handelnden Beraters und Begleiters von Unternehmen unterstreicht. Namen und Erscheinungsbild bringen die wertvolle Erfahrung und Expertise wie auch die persönliche Note seines Engagements zum Ausdruck.	2012-08-15 20:31:56.356753	2012-08-15 20:31:56.356753
6	St. Georg & Mühle	Zwei Restaurants, ein Chef de Cuisine  und ein gemeinsamer Auftritt mit Nuancen	2012	Klaus Leuenberger Speisewerk	http://www.stgeorg-ernen.ch/	Marke, Identität, Naming, Text, Typografie, Print, Website	Klaus Leuenberger schwingt seit Ende der neunziger Jahre im historischen Restaurant St.Georg in Ernen erfolgreich die Kelle. Er verwöhnt seine Gäste mit eigenwilliger Terroir- Küche in einer Konsequenz, die Gault-Millau mit 14 Punkten belohnt hat. Im Rahmen der Übernahme eines zweiten Lokals wurde klar, dass beide Restaurants einen neuen Auftritt benötigen. Einserseits musste der gemeinsame Absender in Worten aber auch durch eine formale Verwandtschaft artikuliert werden. Andererseits sollte der individuelle Charakter beider Häuser inklusive deren Namen gewahrt bleiben. Varese Corridor hat zwei Marken entwickelt, die sich nur mittels Logo, Farbgebung und Namen der Restaurants unterscheiden. Ergänzt werden diese mit einer zurückhaltenden Absendermarke mit der Bezeichnung «Klaus Leuenberger Speisewerk». Typografie, Materialwahl sowie die Wortmarken in Folienprägung repräsentieren die Gratwanderung zwischen rustikaler Tradition und moderner Raffinesse und widerspiegeln die Küchenphilosophie von Klaus Leuenberger.	2012-08-15 20:34:04.847443	2012-08-15 20:34:04.847443
7	Abstract No 6	Souvenir -  ein visueller Essay zum Thema «Was bleibt?»	2011	W.I.R.E. - Web for Interdisciplinary Research & Expertise	http://www.thewire.ch	Konzept, Textrecherche, Fotoshooting, Editorial	Abstract ist das regelmässig erscheinende Magazin von W.I.R.E. - einem unabhängigen Schweizer Think Tank, der sich mit globalen Entwicklungen in Wirtschaft, Gesellschaft und den Life Sciences beschäftigt, getragen durch die Bank Sarasin und dem Collegium Helveticum der ETH und Universität Zürich. Varese Corridor hat in Zusammenarbeit mit der Redaktion und den Fotografen Luxwerk einen visuellen Essay, gepaart mit Lyrik aus vier Jahrhunderten zum Heftthema ‚Was bleibt?’ erarbeitet. Entstanden sind sechs Bildcollagen welche sich kritisch mit dem Wesen des Souvenirs bzw. der Authentizität von Erinnerungen auseinandersetzen. Kommerzielle Erinnerungstücke wie z.B. die Akropolis in Miniatur werden kontrastiert durch Momentaufnahmen von persönlichen Erinnerungen. Die Bildstrecke zielt – anhand des Beispiels Tourismus – auf die Frage, zu welchem Teil persönliche ‚Souvenirs’ von gesellschaftlichen Klischees geprägt sind, und somit auf die Frage nach dem Wert des Bleibenden.\r\n	2012-08-15 20:58:11.835792	2012-08-15 20:58:11.835792
8	Fonds 12	Ein neuer publikumsnaher Auftritt für die grösste Finanzmesse der Schweiz	2011	Fondsmesse Schweiz	http://www.fondsmesse.ch	Marke, Identität, Fotografie, Print, Website	Fonds’12, die grösste Schweizer Finanzmesse, suchte für die kommenden Ausgaben neue Impulse. Die Aufgabe war, die inhaltliche Ausrichtung «Marktplatz des Fondswissens» zu kommunizieren und die Finanzbranche publikumsnah zu präsentieren. Varese Corridor schlug als Marke ein prägnantes Zeichen vor, das durch die formale Nähe zum Diamanten auf die Wertsteigerung der Finanzanlagen hinweist. Zur Erhöhung der Aufmerksamkeit der Werbemittel tritt das Element «Kursband» in der Farbe Mint (engl. für «Münze», «Münzanstalt») hinzu. Um die lebendige Stimmung der Messe zu vermitteln, werden grosszügige Bilder verwendet, die vom Fotografenteam Luxwerk aufgenommen wurden. Das recycelte Naturpapier bringt Zurückhaltung und professionelle Sachlichkeit zum Ausdruck. 	2012-08-15 21:01:20.490875	2012-08-15 21:01:20.490875
9	Franke	100 Jahre Firmengeschichte -  «Spirit of Franke»	2011	Franke Artemis Holding AG	http://www.franke.com	Buch, Illustration, Typografie, Ausstellung	Franke ist eine global tätige Schweizer Unternehmensgruppe mit 70 Gesellschaften und rund 11‘000 Mitarbeitern. Sie versteht ihre erfolgreiche Geschichte als Fundament und als Verpflichtung für die Zukunft. Zum 100-Jahr-Jubiläum wollte der Konzern seine spannende Geschichte als roten Faden der Kommunikation bei all seinen Feierlichkeiten einsetzen. Varese Corridor recherchierte im Bildarchiv und entwickelte zusammen mit Brunner & Partner die Idee einer Dokumentationsform, die als Grundlage aller Jubiläumsaktivitäten einsetzbar ist. Entstanden ist ein durch Varese Corridor gestaltetes, umfassendes Franke-Geschichtsbuch, das crossmedial inszeniert wurde: In Buchform als Jubiläumsgeschenk, in Auszügen als Ausstellung im Museum, als Webspecial online und in Form von Moodbildern während der Hauptfeier im KKL-Luzern. 	2012-08-15 21:07:29.940808	2012-08-15 21:07:29.940808
10	Franke Coffee Systems	«In the Mood for Coffee» ein Fotoshooting  für eine neue Zielgruppe	2011	Franke Coffee Systems	http://www.franke.com	Fotografie	Franke Coffee Systems präsentiert mit der «Spectra Foam Master» eine Kaffeemaschine, die höchste Ansprüche an Geschmack, Ästhetik und Leistung erfüllt. Mit Hilfe eines neuartigen Milchsystems will Franke Coffee Systems die Zielgruppe der professionellen Gastronomiebetriebe ansprechen. Varese Corridor wurde beauftragt, innerhalb einer Woche eine Location zu finden, ein Model inklusive Statisten zu casten und ein Fotoshooting umzusetzen. Dabei sollte das Gefühl von Stil, gutem Geschmack und Atmosphäre im Bild festgehalten werden. Varese Corridor suchte das Metropol in Zürich aus, wo Gäste aus aller Welt im Ambiente des einstigen Grand Cafés von 1894 Cappuccini oder Drinks geniessen. Als Fotograf wählten wir Nico Schärer.	2012-08-15 21:10:00.482717	2012-08-15 21:10:00.482717
11	Hurenkind	Ein typografischer Streifzug mit  Eric, Jan und Adrian 	2008	F+F Schule für Kunst und Mediendesign		Typografie, Buch	Typografie, Fotografie und Grafikdesign sind im Kontext der Neuen Medien zu einem vielschichtigen visuellen System zusammengewachsen. Typografie ist die Anwendung der materiellen Druckerschwärze mit Zeichen, Buchstaben und Satz. Diese wurde um substanzlose Licht- und Schattenspiele am Bildschirm erweitert. Gerade deshalb ist es wichtig, den ursprünglichen Sinn der Typografie zu verstehen und zu vermitteln. Die Broschüre ist in Zusammenarbeit mit der F+F Schule für Kunst und Mediendesign, Zürich, entstanden und wird als Lehrmittel für Studenten des Grundkurses eingesetzt. 	2012-08-15 21:12:34.331151	2012-08-15 21:12:34.331151
12	Robert Sulzer Forrer Striftung	Im Zeichen der Förderung  der Naturwissenschaften	2011	Robert Sulzer-Forrer-Stiftung		Marke, Print	Die Robert Sulzer-Forrer-Stiftung fördert die Naturwissenschaften in der Schweiz, insbesondere auf dem Gebiet der Mineralogie und Palaentologie. Ihren Zweck erfüllt sie unter anderem durch Unterstützung von gemeinnützigen Institutionen sowie  Leihgaben. Bei der Konzeption des neuen Stiftungszeichens stellte Varese Corridor die spezifischen Charakteristika der Institution in den Vordergrund: Der Name des Stifters sitzt prominent und wird durch Grösse und Dicke der Schrift herausgehoben. Die Mehrsprachigkeit verweist auf die Tätigkeit in der ganzen Schweiz. Das durch geometrische Formen zusammengesetzte Zeichen kann einerseits als «feste innere Gesteinsstruktur» und andererseits als «Zusammenhalt» gelesen werden. Alle drei Elemente, Zeichen, Balken und Name, fügen sich zu einer eigenständigen Marke, die auch bei Co-Auftritten mit anderen Institutionen klar erkennbar und memorierbar ist. \r\n	2012-08-15 21:14:47.095989	2012-08-15 21:14:47.095989
13	Daniel Bütler	Textkompetenz mit einem  Augenzwinkern	2011	Daniel Bütler	www.danielbuetler.ch	Marke, Identität, Print, Website	Daniel Bütler ist selbstständiger Journalist und Texter. Er schreibt für verschiedene Schweizer Zeitungen und Magazine, aber auch für die Publikationen namhafter Unternehmen. Dabei zeichnet er sich nicht nur durch inhaltlichen Tiefgang und sprachliche Raffinesse, sondern auch durch einen gewissen Witz aus. Der Auftritt vermittelt dies mit einer sachlichen, schlichten Typografie und einer Signetreihe. Diese Serie von Symbol-Wort-Paaren bringt die Kernaufgabe der Textredaktion in Sinne der Semiotik zum Ausdruck: nämlich als Spiel von Bezeichnung und Inhalt. Die Auswahl der Objekte steht für die Reduktion auf das Wesentliche, die inhaltliche Diversität aber auch für ein gewisses Augenzwinkern, das für Daniel Bütlers Arbeit charakteristisch ist.	2012-08-15 21:20:13.971066	2012-08-15 21:20:13.971066
\.


--
-- TOC entry 2264 (class 0 OID 34636)
-- Dependencies: 175
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: michi
--

COPY people (id, firstname, lastname, email, mobile, description, created_at, updated_at) FROM stdin;
1	Roman	Imhof	ri@varese-corridor.ch	079 341 50 12		2012-08-16 13:43:01.70678	2012-08-16 13:43:01.70678
2	Alexandra	Lauper	al@varese-corridor.ch	079 658 86 44		2012-08-16 13:43:49.977461	2012-08-16 13:43:49.977461
3	Dino	Piccolo	dp@varese-corridor.ch	079 697 61 30		2012-08-16 13:44:25.255666	2012-08-16 13:44:25.255666
\.


--
-- TOC entry 2265 (class 0 OID 34647)
-- Dependencies: 177
-- Data for Name: person_translations; Type: TABLE DATA; Schema: public; Owner: michi
--

COPY person_translations (id, person_id, locale, description, created_at, updated_at) FROM stdin;
1	1	de	Gründer und geschäftsführender Gesellschafter\r\n\r\n11 Jahre Art Direction und Konzept bei Hotz & Hotz für Forbo, Franke, Felchlin, OC Oerlikon, EWL Luzern, Losinger-Marazzi, CS Real Estate, Halter Immobilien, Gysi Chocolatiers, Flughafen Zürich\r\n\r\n2 Jahre Design und Konzept bei Nick Bell Design, für Tate Modern, Eye Magazine, Universität St.Gallen, British Council, Taschen Verlag, Oxford University Press, John Lyall Architects\r\n\r\nBA Hons, Typographic Design, London College of Printing (University of the Arts, London)	2012-08-16 13:43:01.708656	2012-08-16 13:43:01.708656
2	1	en		2012-08-16 13:43:01.71014	2012-08-16 13:43:01.71014
3	2	de	Gründerin und geschäftsführende Gesellschafterin Seit 2005 selbständig und 2011 Zusammenschluss mit Varese Corridor\r\n\r\n6 Jahre Design und Markentechnik bei Interbrand Zintzmeyer & Lux für MINI, BMW, Deutsche Telekom, Schindler, Roche\r\n\r\n2 Jahre Studiografik für Kunst und Film bei Arsen als Partnerin\r\n\r\nKunststudium an der F+F, Schule für Kunst und Mediendesign, Zürich	2012-08-16 13:43:49.978823	2012-08-16 13:43:49.978823
4	2	en		2012-08-16 13:43:49.979727	2012-08-16 13:43:49.979727
5	3	de	Gründer und geschäftsführender Gesellschafter\r\n\r\n4 Jahre Beratung bei Hotz & Hotz für Forbo, Franke, Felchlin, Mobility, Le Vieux Manoir, Walter Meier, Gysi Chocolatiers\r\n\r\n6 Jahre Beratung und Markentechnik bei Interbrand Zintzmeyer & Lux für Swissair, Loewe, T-Online, Swissbau, Wacker Chemie\r\n\r\nlic. phil. I, Kunstgeschichte, Archäologie, Marketing, Universität Basel	2012-08-16 13:44:25.25672	2012-08-16 13:44:25.25672
6	3	en		2012-08-16 13:44:25.257417	2012-08-16 13:44:25.257417
\.


--
-- TOC entry 2261 (class 0 OID 34586)
-- Dependencies: 169
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: michi
--

COPY schema_migrations (version) FROM stdin;
20120814172747
20120814192749
20120814192750
20120815152837
20120815163014
20120815165508
20120815200153
20120816081755
20120816103046
20120816112746
20120816134542
20120816140736
20120816143717
20120816143829
20120816153838
\.


--
-- TOC entry 2213 (class 2606 OID 34594)
-- Dependencies: 161 161
-- Name: admin_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: michi; Tablespace: 
--

ALTER TABLE ONLY active_admin_comments
    ADD CONSTRAINT admin_notes_pkey PRIMARY KEY (id);


--
-- TOC entry 2218 (class 2606 OID 34596)
-- Dependencies: 163 163
-- Name: admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: michi; Tablespace: 
--

ALTER TABLE ONLY admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- TOC entry 2244 (class 2606 OID 34680)
-- Dependencies: 181 181
-- Name: companies_pkey; Type: CONSTRAINT; Schema: public; Owner: michi; Tablespace: 
--

ALTER TABLE ONLY companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- TOC entry 2254 (class 2606 OID 34726)
-- Dependencies: 189 189
-- Name: company_description_detail_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: michi; Tablespace: 
--

ALTER TABLE ONLY company_description_detail_translations
    ADD CONSTRAINT company_description_detail_translations_pkey PRIMARY KEY (id);


--
-- TOC entry 2248 (class 2606 OID 34702)
-- Dependencies: 185 185
-- Name: company_description_details_pkey; Type: CONSTRAINT; Schema: public; Owner: michi; Tablespace: 
--

ALTER TABLE ONLY company_description_details
    ADD CONSTRAINT company_description_details_pkey PRIMARY KEY (id);


--
-- TOC entry 2250 (class 2606 OID 34713)
-- Dependencies: 187 187
-- Name: company_description_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: michi; Tablespace: 
--

ALTER TABLE ONLY company_description_translations
    ADD CONSTRAINT company_description_translations_pkey PRIMARY KEY (id);


--
-- TOC entry 2246 (class 2606 OID 34691)
-- Dependencies: 183 183
-- Name: company_descriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: michi; Tablespace: 
--

ALTER TABLE ONLY company_descriptions
    ADD CONSTRAINT company_descriptions_pkey PRIMARY KEY (id);


--
-- TOC entry 2242 (class 2606 OID 34669)
-- Dependencies: 179 179
-- Name: customers_pkey; Type: CONSTRAINT; Schema: public; Owner: michi; Tablespace: 
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 2232 (class 2606 OID 34631)
-- Dependencies: 173 173
-- Name: image_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: michi; Tablespace: 
--

ALTER TABLE ONLY image_translations
    ADD CONSTRAINT image_translations_pkey PRIMARY KEY (id);


--
-- TOC entry 2222 (class 2606 OID 34598)
-- Dependencies: 165 165
-- Name: images_pkey; Type: CONSTRAINT; Schema: public; Owner: michi; Tablespace: 
--

ALTER TABLE ONLY images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- TOC entry 2230 (class 2606 OID 34618)
-- Dependencies: 171 171
-- Name: maneuver_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: michi; Tablespace: 
--

ALTER TABLE ONLY maneuver_translations
    ADD CONSTRAINT maneuver_translations_pkey PRIMARY KEY (id);


--
-- TOC entry 2225 (class 2606 OID 34600)
-- Dependencies: 167 167
-- Name: maneuvers_pkey; Type: CONSTRAINT; Schema: public; Owner: michi; Tablespace: 
--

ALTER TABLE ONLY maneuvers
    ADD CONSTRAINT maneuvers_pkey PRIMARY KEY (id);


--
-- TOC entry 2236 (class 2606 OID 34644)
-- Dependencies: 175 175
-- Name: people_pkey; Type: CONSTRAINT; Schema: public; Owner: michi; Tablespace: 
--

ALTER TABLE ONLY people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);


--
-- TOC entry 2240 (class 2606 OID 34655)
-- Dependencies: 177 177
-- Name: person_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: michi; Tablespace: 
--

ALTER TABLE ONLY person_translations
    ADD CONSTRAINT person_translations_pkey PRIMARY KEY (id);


--
-- TOC entry 2255 (class 1259 OID 34727)
-- Dependencies: 189
-- Name: index_54f89f0a3c16786b8b5d32ab0ad757a15462e3ec; Type: INDEX; Schema: public; Owner: michi; Tablespace: 
--

CREATE INDEX index_54f89f0a3c16786b8b5d32ab0ad757a15462e3ec ON company_description_detail_translations USING btree (company_description_detail_id);


--
-- TOC entry 2251 (class 1259 OID 34714)
-- Dependencies: 187
-- Name: index_59bb7a4ae8fb92924ff6dccff67f97a7071d7f90; Type: INDEX; Schema: public; Owner: michi; Tablespace: 
--

CREATE INDEX index_59bb7a4ae8fb92924ff6dccff67f97a7071d7f90 ON company_description_translations USING btree (company_description_id);


--
-- TOC entry 2214 (class 1259 OID 34601)
-- Dependencies: 161 161
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: michi; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON active_admin_comments USING btree (author_type, author_id);


--
-- TOC entry 2215 (class 1259 OID 34602)
-- Dependencies: 161
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: michi; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_namespace ON active_admin_comments USING btree (namespace);


--
-- TOC entry 2216 (class 1259 OID 34603)
-- Dependencies: 161 161
-- Name: index_admin_notes_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: michi; Tablespace: 
--

CREATE INDEX index_admin_notes_on_resource_type_and_resource_id ON active_admin_comments USING btree (resource_type, resource_id);


--
-- TOC entry 2219 (class 1259 OID 34604)
-- Dependencies: 163
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: michi; Tablespace: 
--

CREATE UNIQUE INDEX index_admin_users_on_email ON admin_users USING btree (email);


--
-- TOC entry 2220 (class 1259 OID 34605)
-- Dependencies: 163
-- Name: index_admin_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: michi; Tablespace: 
--

CREATE UNIQUE INDEX index_admin_users_on_reset_password_token ON admin_users USING btree (reset_password_token);


--
-- TOC entry 2256 (class 1259 OID 34728)
-- Dependencies: 189
-- Name: index_company_description_detail_translations_on_locale; Type: INDEX; Schema: public; Owner: michi; Tablespace: 
--

CREATE INDEX index_company_description_detail_translations_on_locale ON company_description_detail_translations USING btree (locale);


--
-- TOC entry 2252 (class 1259 OID 34715)
-- Dependencies: 187
-- Name: index_company_description_translations_on_locale; Type: INDEX; Schema: public; Owner: michi; Tablespace: 
--

CREATE INDEX index_company_description_translations_on_locale ON company_description_translations USING btree (locale);


--
-- TOC entry 2233 (class 1259 OID 34632)
-- Dependencies: 173
-- Name: index_image_translations_on_image_id; Type: INDEX; Schema: public; Owner: michi; Tablespace: 
--

CREATE INDEX index_image_translations_on_image_id ON image_translations USING btree (image_id);


--
-- TOC entry 2234 (class 1259 OID 34633)
-- Dependencies: 173
-- Name: index_image_translations_on_locale; Type: INDEX; Schema: public; Owner: michi; Tablespace: 
--

CREATE INDEX index_image_translations_on_locale ON image_translations USING btree (locale);


--
-- TOC entry 2227 (class 1259 OID 34620)
-- Dependencies: 171
-- Name: index_maneuver_translations_on_locale; Type: INDEX; Schema: public; Owner: michi; Tablespace: 
--

CREATE INDEX index_maneuver_translations_on_locale ON maneuver_translations USING btree (locale);


--
-- TOC entry 2228 (class 1259 OID 34619)
-- Dependencies: 171
-- Name: index_maneuver_translations_on_maneuver_id; Type: INDEX; Schema: public; Owner: michi; Tablespace: 
--

CREATE INDEX index_maneuver_translations_on_maneuver_id ON maneuver_translations USING btree (maneuver_id);


--
-- TOC entry 2223 (class 1259 OID 34606)
-- Dependencies: 167
-- Name: index_maneuvers_on_name; Type: INDEX; Schema: public; Owner: michi; Tablespace: 
--

CREATE UNIQUE INDEX index_maneuvers_on_name ON maneuvers USING btree (name);


--
-- TOC entry 2237 (class 1259 OID 34657)
-- Dependencies: 177
-- Name: index_person_translations_on_locale; Type: INDEX; Schema: public; Owner: michi; Tablespace: 
--

CREATE INDEX index_person_translations_on_locale ON person_translations USING btree (locale);


--
-- TOC entry 2238 (class 1259 OID 34656)
-- Dependencies: 177
-- Name: index_person_translations_on_person_id; Type: INDEX; Schema: public; Owner: michi; Tablespace: 
--

CREATE INDEX index_person_translations_on_person_id ON person_translations USING btree (person_id);


--
-- TOC entry 2226 (class 1259 OID 34607)
-- Dependencies: 169
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: michi; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- TOC entry 2276 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: michi
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM michi;
GRANT ALL ON SCHEMA public TO michi;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2012-08-16 17:50:04 CEST

--
-- PostgreSQL database dump complete
--

