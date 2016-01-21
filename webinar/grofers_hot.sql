--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO hot_admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: hot_admin
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO hot_admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hot_admin
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO hot_admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: hot_admin
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO hot_admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hot_admin
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO hot_admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: hot_admin
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO hot_admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hot_admin
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO hot_admin;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO hot_admin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: hot_admin
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO hot_admin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hot_admin
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: hot_admin
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO hot_admin;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hot_admin
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO hot_admin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: hot_admin
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO hot_admin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hot_admin
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO hot_admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: hot_admin
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO hot_admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hot_admin
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO hot_admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: hot_admin
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO hot_admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hot_admin
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO hot_admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: hot_admin
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO hot_admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hot_admin
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO hot_admin;

--
-- Name: gr_address; Type: TABLE; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE TABLE gr_address (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    line1 character varying(64) NOT NULL,
    line2 text NOT NULL,
    landmark text NOT NULL,
    pincode character varying(10) NOT NULL,
    install_ts timestamp with time zone NOT NULL,
    update_ts timestamp with time zone NOT NULL,
    locality_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE gr_address OWNER TO hot_admin;

--
-- Name: gr_address_id_seq; Type: SEQUENCE; Schema: public; Owner: hot_admin
--

CREATE SEQUENCE gr_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE gr_address_id_seq OWNER TO hot_admin;

--
-- Name: gr_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hot_admin
--

ALTER SEQUENCE gr_address_id_seq OWNED BY gr_address.id;


--
-- Name: gr_grade; Type: TABLE; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE TABLE gr_grade (
    id integer NOT NULL,
    name text NOT NULL,
    description text NOT NULL,
    display_names text NOT NULL,
    image_version integer NOT NULL,
    install_ts timestamp with time zone NOT NULL,
    update_ts timestamp with time zone NOT NULL,
    sort_order integer NOT NULL
);


ALTER TABLE gr_grade OWNER TO hot_admin;

--
-- Name: gr_grade_id_seq; Type: SEQUENCE; Schema: public; Owner: hot_admin
--

CREATE SEQUENCE gr_grade_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE gr_grade_id_seq OWNER TO hot_admin;

--
-- Name: gr_grade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hot_admin
--

ALTER SEQUENCE gr_grade_id_seq OWNED BY gr_grade.id;


--
-- Name: gr_grade_product_mapping; Type: TABLE; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE TABLE gr_grade_product_mapping (
    id integer NOT NULL,
    price integer NOT NULL,
    inventory_limit integer NOT NULL,
    enabled_flag boolean NOT NULL,
    install_ts timestamp with time zone NOT NULL,
    update_ts timestamp with time zone NOT NULL,
    grade_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE gr_grade_product_mapping OWNER TO hot_admin;

--
-- Name: gr_grade_product_mapping_id_seq; Type: SEQUENCE; Schema: public; Owner: hot_admin
--

CREATE SEQUENCE gr_grade_product_mapping_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE gr_grade_product_mapping_id_seq OWNER TO hot_admin;

--
-- Name: gr_grade_product_mapping_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hot_admin
--

ALTER SEQUENCE gr_grade_product_mapping_id_seq OWNED BY gr_grade_product_mapping.id;


--
-- Name: gr_locality; Type: TABLE; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE TABLE gr_locality (
    id integer NOT NULL,
    name text NOT NULL,
    install_ts timestamp with time zone NOT NULL,
    update_ts timestamp with time zone NOT NULL
);


ALTER TABLE gr_locality OWNER TO hot_admin;

--
-- Name: gr_locality_id_seq; Type: SEQUENCE; Schema: public; Owner: hot_admin
--

CREATE SEQUENCE gr_locality_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE gr_locality_id_seq OWNER TO hot_admin;

--
-- Name: gr_locality_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hot_admin
--

ALTER SEQUENCE gr_locality_id_seq OWNED BY gr_locality.id;


--
-- Name: gr_product; Type: TABLE; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE TABLE gr_product (
    id integer NOT NULL,
    name text NOT NULL,
    description text NOT NULL,
    unit text NOT NULL,
    brand text NOT NULL,
    inventory_limit integer NOT NULL,
    price integer NOT NULL,
    image_version integer NOT NULL,
    display_names text NOT NULL,
    sort_order text NOT NULL,
    install_ts timestamp with time zone NOT NULL,
    update_ts timestamp with time zone NOT NULL
);


ALTER TABLE gr_product OWNER TO hot_admin;

--
-- Name: gr_product_id_seq; Type: SEQUENCE; Schema: public; Owner: hot_admin
--

CREATE SEQUENCE gr_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE gr_product_id_seq OWNER TO hot_admin;

--
-- Name: gr_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hot_admin
--

ALTER SEQUENCE gr_product_id_seq OWNED BY gr_product.id;


--
-- Name: gr_user; Type: TABLE; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE TABLE gr_user (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    phone character varying(15),
    install_ts timestamp with time zone NOT NULL,
    update_ts timestamp with time zone,
    signup_ts timestamp with time zone,
    verified_flag boolean NOT NULL,
    verify_code text NOT NULL,
    verification_tries integer NOT NULL,
    blocked boolean NOT NULL,
    sign_up_ip character varying(45) NOT NULL
);


ALTER TABLE gr_user OWNER TO hot_admin;

--
-- Name: gr_user_id_seq; Type: SEQUENCE; Schema: public; Owner: hot_admin
--

CREATE SEQUENCE gr_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE gr_user_id_seq OWNER TO hot_admin;

--
-- Name: gr_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hot_admin
--

ALTER SEQUENCE gr_user_id_seq OWNED BY gr_user.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY gr_address ALTER COLUMN id SET DEFAULT nextval('gr_address_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY gr_grade ALTER COLUMN id SET DEFAULT nextval('gr_grade_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY gr_grade_product_mapping ALTER COLUMN id SET DEFAULT nextval('gr_grade_product_mapping_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY gr_locality ALTER COLUMN id SET DEFAULT nextval('gr_locality_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY gr_product ALTER COLUMN id SET DEFAULT nextval('gr_product_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY gr_user ALTER COLUMN id SET DEFAULT nextval('gr_user_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: hot_admin
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hot_admin
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: hot_admin
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hot_admin
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: hot_admin
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add gr grade	7	add_grgrade
20	Can change gr grade	7	change_grgrade
21	Can delete gr grade	7	delete_grgrade
22	Can add gr product	8	add_grproduct
23	Can change gr product	8	change_grproduct
24	Can delete gr product	8	delete_grproduct
25	Can add gr grade product mapping	9	add_grgradeproductmapping
26	Can change gr grade product mapping	9	change_grgradeproductmapping
27	Can delete gr grade product mapping	9	delete_grgradeproductmapping
28	Can add gr locality	10	add_grlocality
29	Can change gr locality	10	change_grlocality
30	Can delete gr locality	10	delete_grlocality
31	Can add gr user	11	add_gruser
32	Can change gr user	11	change_gruser
33	Can delete gr user	11	delete_gruser
34	Can add gr address	12	add_graddress
35	Can change gr address	12	change_graddress
36	Can delete gr address	12	delete_graddress
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hot_admin
--

SELECT pg_catalog.setval('auth_permission_id_seq', 36, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: hot_admin
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: hot_admin
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hot_admin
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hot_admin
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: hot_admin
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hot_admin
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: hot_admin
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hot_admin
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: hot_admin
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	inventory	grgrade
8	inventory	grproduct
9	inventory	grgradeproductmapping
10	account	grlocality
11	account	gruser
12	account	graddress
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hot_admin
--

SELECT pg_catalog.setval('django_content_type_id_seq', 12, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: hot_admin
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	account	0001_initial	2016-01-20 12:12:41.953937+05:30
2	contenttypes	0001_initial	2016-01-20 12:12:41.971248+05:30
3	auth	0001_initial	2016-01-20 12:12:42.044482+05:30
4	admin	0001_initial	2016-01-20 12:12:42.074515+05:30
5	admin	0002_logentry_remove_auto_add	2016-01-20 12:12:42.098809+05:30
6	contenttypes	0002_remove_content_type_name	2016-01-20 12:12:42.173577+05:30
7	auth	0002_alter_permission_name_max_length	2016-01-20 12:12:42.19261+05:30
8	auth	0003_alter_user_email_max_length	2016-01-20 12:12:42.208697+05:30
9	auth	0004_alter_user_username_opts	2016-01-20 12:12:42.224848+05:30
10	auth	0005_alter_user_last_login_null	2016-01-20 12:12:42.243654+05:30
11	auth	0006_require_contenttypes_0002	2016-01-20 12:12:42.246373+05:30
12	auth	0007_alter_validators_add_error_messages	2016-01-20 12:12:42.2616+05:30
13	inventory	0001_initial	2016-01-20 12:12:42.325771+05:30
14	sessions	0001_initial	2016-01-20 12:12:42.338293+05:30
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hot_admin
--

SELECT pg_catalog.setval('django_migrations_id_seq', 14, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: hot_admin
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: gr_address; Type: TABLE DATA; Schema: public; Owner: hot_admin
--

COPY gr_address (id, name, line1, line2, landmark, pincode, install_ts, update_ts, locality_id, user_id) FROM stdin;
\.


--
-- Name: gr_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hot_admin
--

SELECT pg_catalog.setval('gr_address_id_seq', 1, false);


--
-- Data for Name: gr_grade; Type: TABLE DATA; Schema: public; Owner: hot_admin
--

COPY gr_grade (id, name, description, display_names, image_version, install_ts, update_ts, sort_order) FROM stdin;
3	GRADE A	This is best quality	Grade A	1	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30	1
4	GRADE B	This is second best quality	Grade B	1	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30	1
5	GRADE C	This is third class quality	Grade C	1	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30	1
6	packaged	This is third class quality	Pacakaged	1	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30	1
\.


--
-- Name: gr_grade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hot_admin
--

SELECT pg_catalog.setval('gr_grade_id_seq', 6, true);


--
-- Data for Name: gr_grade_product_mapping; Type: TABLE DATA; Schema: public; Owner: hot_admin
--

COPY gr_grade_product_mapping (id, price, inventory_limit, enabled_flag, install_ts, update_ts, grade_id, product_id) FROM stdin;
2	23	5	t	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30	3	1
3	23	5	t	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30	4	1
4	23	5	t	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30	6	1
5	23	5	t	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30	3	2
6	23	5	t	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30	4	2
7	23	5	t	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30	5	2
8	23	5	t	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30	6	2
9	23	5	t	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30	3	3
10	23	5	t	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30	4	3
11	23	5	t	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30	5	3
\.


--
-- Name: gr_grade_product_mapping_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hot_admin
--

SELECT pg_catalog.setval('gr_grade_product_mapping_id_seq', 12, true);


--
-- Data for Name: gr_locality; Type: TABLE DATA; Schema: public; Owner: hot_admin
--

COPY gr_locality (id, name, install_ts, update_ts) FROM stdin;
\.


--
-- Name: gr_locality_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hot_admin
--

SELECT pg_catalog.setval('gr_locality_id_seq', 1, false);


--
-- Data for Name: gr_product; Type: TABLE DATA; Schema: public; Owner: hot_admin
--

COPY gr_product (id, name, description, unit, brand, inventory_limit, price, image_version, display_names, sort_order, install_ts, update_ts) FROM stdin;
1	Apple		1Kg		5	34	1	Apple	1	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30
2	Gauva		1Kg		5	34	1	Gauva	1	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30
3	Orange		1Kg		5	34	1	Orange	1	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30
4	Tomato		1Kg		5	34	1	Tomato	1	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30
5	Potato		1Kg		5	34	1	Potato	1	2015-12-30 00:00:00+05:30	2015-12-30 00:00:00+05:30
\.


--
-- Name: gr_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hot_admin
--

SELECT pg_catalog.setval('gr_product_id_seq', 5, true);


--
-- Data for Name: gr_user; Type: TABLE DATA; Schema: public; Owner: hot_admin
--

COPY gr_user (id, name, email, phone, install_ts, update_ts, signup_ts, verified_flag, verify_code, verification_tries, blocked, sign_up_ip) FROM stdin;
1			9971890081	2016-01-20 12:43:10.328768+05:30	2016-01-20 12:43:10.328887+05:30	2016-01-20 12:44:52.868393+05:30	t	5539	0	f	
\.


--
-- Name: gr_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hot_admin
--

SELECT pg_catalog.setval('gr_user_id_seq', 1, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: gr_address_pkey; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY gr_address
    ADD CONSTRAINT gr_address_pkey PRIMARY KEY (id);


--
-- Name: gr_grade_pkey; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY gr_grade
    ADD CONSTRAINT gr_grade_pkey PRIMARY KEY (id);


--
-- Name: gr_grade_product_mapping_grade_id_3398e2f9_uniq; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY gr_grade_product_mapping
    ADD CONSTRAINT gr_grade_product_mapping_grade_id_3398e2f9_uniq UNIQUE (grade_id, product_id);


--
-- Name: gr_grade_product_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY gr_grade_product_mapping
    ADD CONSTRAINT gr_grade_product_mapping_pkey PRIMARY KEY (id);


--
-- Name: gr_locality_pkey; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY gr_locality
    ADD CONSTRAINT gr_locality_pkey PRIMARY KEY (id);


--
-- Name: gr_product_pkey; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY gr_product
    ADD CONSTRAINT gr_product_pkey PRIMARY KEY (id);


--
-- Name: gr_user_phone_key; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY gr_user
    ADD CONSTRAINT gr_user_phone_key UNIQUE (phone);


--
-- Name: gr_user_pkey; Type: CONSTRAINT; Schema: public; Owner: hot_admin; Tablespace: 
--

ALTER TABLE ONLY gr_user
    ADD CONSTRAINT gr_user_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: gr_address_7e3ea948; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX gr_address_7e3ea948 ON gr_address USING btree (locality_id);


--
-- Name: gr_address_e8701ad4; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX gr_address_e8701ad4 ON gr_address USING btree (user_id);


--
-- Name: gr_grade_product_mapping_5c853be8; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX gr_grade_product_mapping_5c853be8 ON gr_grade_product_mapping USING btree (grade_id);


--
-- Name: gr_grade_product_mapping_9bea82de; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX gr_grade_product_mapping_9bea82de ON gr_grade_product_mapping USING btree (product_id);


--
-- Name: gr_user_phone_c440daf2_like; Type: INDEX; Schema: public; Owner: hot_admin; Tablespace: 
--

CREATE INDEX gr_user_phone_c440daf2_like ON gr_user USING btree (phone varchar_pattern_ops);


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gr_address_locality_id_9ea39d00_fk_gr_locality_id; Type: FK CONSTRAINT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY gr_address
    ADD CONSTRAINT gr_address_locality_id_9ea39d00_fk_gr_locality_id FOREIGN KEY (locality_id) REFERENCES gr_locality(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gr_address_user_id_f77bb50a_fk_gr_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY gr_address
    ADD CONSTRAINT gr_address_user_id_f77bb50a_fk_gr_user_id FOREIGN KEY (user_id) REFERENCES gr_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gr_grade_product_mapping_grade_id_fdea2639_fk_gr_grade_id; Type: FK CONSTRAINT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY gr_grade_product_mapping
    ADD CONSTRAINT gr_grade_product_mapping_grade_id_fdea2639_fk_gr_grade_id FOREIGN KEY (grade_id) REFERENCES gr_grade(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gr_grade_product_mapping_product_id_e3cf8a41_fk_gr_product_id; Type: FK CONSTRAINT; Schema: public; Owner: hot_admin
--

ALTER TABLE ONLY gr_grade_product_mapping
    ADD CONSTRAINT gr_grade_product_mapping_product_id_e3cf8a41_fk_gr_product_id FOREIGN KEY (product_id) REFERENCES gr_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: vinodkumar
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM vinodkumar;
GRANT ALL ON SCHEMA public TO vinodkumar;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

