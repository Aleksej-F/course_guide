--
-- PostgreSQL database dump
--

-- Dumped from database version 12.7
-- Dumped by pg_dump version 12.7

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
-- Name: comment_photo; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.comment_photo (
    id integer NOT NULL,
    body text,
    owner_id integer NOT NULL,
    creature_at character varying(255) NOT NULL,
    photo_id integer NOT NULL
);


ALTER TABLE public.comment_photo OWNER TO test_user;

--
-- Name: comment_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.comment_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment_photo_id_seq OWNER TO test_user;

--
-- Name: comment_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.comment_photo_id_seq OWNED BY public.comment_photo.id;


--
-- Name: completed_works; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.completed_works (
    id integer NOT NULL,
    executor_user_id integer NOT NULL,
    consumer_user_id integer NOT NULL,
    services_id integer NOT NULL,
    status_id integer NOT NULL,
    creature_at character varying(255) NOT NULL
);


ALTER TABLE public.completed_works OWNER TO test_user;

--
-- Name: completed_works_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.completed_works_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.completed_works_id_seq OWNER TO test_user;

--
-- Name: completed_works_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.completed_works_id_seq OWNED BY public.completed_works.id;


--
-- Name: like_photo; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.like_photo (
    id integer NOT NULL,
    photo_id integer NOT NULL,
    owner_id integer NOT NULL,
    creature_at character varying(255) NOT NULL
);


ALTER TABLE public.like_photo OWNER TO test_user;

--
-- Name: like_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.like_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.like_photo_id_seq OWNER TO test_user;

--
-- Name: like_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.like_photo_id_seq OWNED BY public.like_photo.id;


--
-- Name: photo; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.photo (
    id integer NOT NULL,
    url character varying(250) NOT NULL,
    owner_id integer NOT NULL,
    description character varying(250) NOT NULL,
    uploaded_at timestamp without time zone NOT NULL,
    size integer NOT NULL
);


ALTER TABLE public.photo OWNER TO test_user;

--
-- Name: photo_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photo_id_seq OWNER TO test_user;

--
-- Name: photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.photo_id_seq OWNED BY public.photo.id;


--
-- Name: profiles; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.profiles (
    id integer NOT NULL,
    user_id integer,
    main_photo_id integer,
    editing character varying(255),
    role_id integer
);


ALTER TABLE public.profiles OWNER TO test_user;

--
-- Name: profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.profiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profiles_id_seq OWNER TO test_user;

--
-- Name: profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.reviews (
    id integer NOT NULL,
    from_user_id integer NOT NULL,
    to_user_id integer NOT NULL,
    body text,
    created_at character varying(255)
);


ALTER TABLE public.reviews OWNER TO test_user;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO test_user;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.roles OWNER TO test_user;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO test_user;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.services (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    price integer NOT NULL,
    time_to_work character varying(255)
);


ALTER TABLE public.services OWNER TO test_user;

--
-- Name: services_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_id_seq OWNER TO test_user;

--
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.services_id_seq OWNED BY public.services.id;


--
-- Name: statuses_works; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.statuses_works (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.statuses_works OWNER TO test_user;

--
-- Name: statuses_works_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.statuses_works_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statuses_works_id_seq OWNER TO test_user;

--
-- Name: statuses_works_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.statuses_works_id_seq OWNED BY public.statuses_works.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(120) NOT NULL,
    phone character varying(15),
    password character varying(50) NOT NULL,
    created_at character varying(255)
);


ALTER TABLE public.users OWNER TO test_user;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO test_user;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: comment_photo id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.comment_photo ALTER COLUMN id SET DEFAULT nextval('public.comment_photo_id_seq'::regclass);


--
-- Name: completed_works id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.completed_works ALTER COLUMN id SET DEFAULT nextval('public.completed_works_id_seq'::regclass);


--
-- Name: like_photo id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.like_photo ALTER COLUMN id SET DEFAULT nextval('public.like_photo_id_seq'::regclass);


--
-- Name: photo id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.photo ALTER COLUMN id SET DEFAULT nextval('public.photo_id_seq'::regclass);


--
-- Name: profiles id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: services id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.services ALTER COLUMN id SET DEFAULT nextval('public.services_id_seq'::regclass);


--
-- Name: statuses_works id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.statuses_works ALTER COLUMN id SET DEFAULT nextval('public.statuses_works_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: comment_photo; Type: TABLE DATA; Schema: public; Owner: test_user
--

INSERT INTO public.comment_photo VALUES (1, 'blandit. Nam', 34, 'Feb 24, 2022', 41);
INSERT INTO public.comment_photo VALUES (2, 'rutrum non, hendrerit id, ante. Nunc mauris', 37, 'Feb 18, 2023', 87);
INSERT INTO public.comment_photo VALUES (3, 'felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem,', 90, 'Dec 29, 2022', 50);
INSERT INTO public.comment_photo VALUES (4, 'in sodales elit erat vitae', 50, 'Dec 22, 2022', 58);
INSERT INTO public.comment_photo VALUES (5, 'ipsum', 2, 'Feb 9, 2023', 79);
INSERT INTO public.comment_photo VALUES (6, 'Donec non justo. Proin non massa', 21, 'Feb 2, 2023', 2);
INSERT INTO public.comment_photo VALUES (7, 'mus. Proin vel nisl. Quisque fringilla euismod enim.', 41, 'Oct 29, 2021', 61);
INSERT INTO public.comment_photo VALUES (8, 'nunc id enim. Curabitur massa. Vestibulum accumsan neque et', 26, 'Jan 3, 2022', 42);
INSERT INTO public.comment_photo VALUES (9, 'nibh. Aliquam ornare,', 62, 'Nov 6, 2022', 49);
INSERT INTO public.comment_photo VALUES (10, 'imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus.', 8, 'Jun 3, 2022', 71);
INSERT INTO public.comment_photo VALUES (11, 'ipsum porta elit, a feugiat tellus lorem', 60, 'Dec 17, 2021', 51);
INSERT INTO public.comment_photo VALUES (12, 'pretium aliquet, metus urna convallis', 15, 'Oct 11, 2022', 63);
INSERT INTO public.comment_photo VALUES (13, 'consectetuer adipiscing', 20, 'Dec 26, 2022', 18);
INSERT INTO public.comment_photo VALUES (14, 'consectetuer adipiscing elit.', 76, 'Apr 8, 2022', 20);
INSERT INTO public.comment_photo VALUES (15, 'In faucibus. Morbi vehicula. Pellentesque tincidunt', 64, 'Nov 23, 2022', 92);
INSERT INTO public.comment_photo VALUES (16, 'ut ipsum ac mi eleifend', 41, 'May 6, 2021', 21);
INSERT INTO public.comment_photo VALUES (17, 'non', 44, 'Jul 24, 2021', 71);
INSERT INTO public.comment_photo VALUES (18, 'amet luctus vulputate,', 70, 'May 26, 2021', 43);
INSERT INTO public.comment_photo VALUES (19, 'mauris elit, dictum eu, eleifend nec, malesuada', 77, 'Feb 1, 2022', 73);
INSERT INTO public.comment_photo VALUES (20, 'aliquam, enim', 47, 'Jul 14, 2021', 66);
INSERT INTO public.comment_photo VALUES (21, 'sit amet massa.', 97, 'Dec 5, 2021', 84);
INSERT INTO public.comment_photo VALUES (22, 'lectus quis massa. Mauris vestibulum, neque', 73, 'Oct 2, 2022', 52);
INSERT INTO public.comment_photo VALUES (23, 'Duis mi enim, condimentum eget, volutpat', 42, 'Jan 27, 2022', 92);
INSERT INTO public.comment_photo VALUES (24, 'faucibus id, libero. Donec consectetuer mauris id sapien.', 80, 'Jun 28, 2021', 4);
INSERT INTO public.comment_photo VALUES (25, 'sodales. Mauris blandit', 9, 'Dec 21, 2021', 56);
INSERT INTO public.comment_photo VALUES (26, 'fermentum arcu.', 35, 'Jan 7, 2023', 50);
INSERT INTO public.comment_photo VALUES (27, 'nibh. Donec est', 27, 'Sep 26, 2022', 4);
INSERT INTO public.comment_photo VALUES (28, 'molestie. Sed id risus', 45, 'Dec 2, 2021', 70);
INSERT INTO public.comment_photo VALUES (29, 'semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque', 55, 'Aug 27, 2021', 29);
INSERT INTO public.comment_photo VALUES (30, 'vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie', 42, 'Sep 3, 2021', 46);
INSERT INTO public.comment_photo VALUES (31, 'eu sem. Pellentesque ut', 17, 'Mar 5, 2022', 42);
INSERT INTO public.comment_photo VALUES (32, 'amet diam', 36, 'Oct 30, 2022', 5);
INSERT INTO public.comment_photo VALUES (33, 'accumsan neque', 68, 'Mar 29, 2023', 88);
INSERT INTO public.comment_photo VALUES (34, 'accumsan laoreet', 59, 'Dec 14, 2022', 5);
INSERT INTO public.comment_photo VALUES (35, 'Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum', 69, 'Dec 19, 2021', 25);
INSERT INTO public.comment_photo VALUES (36, 'scelerisque scelerisque dui.', 29, 'Jan 14, 2023', 97);
INSERT INTO public.comment_photo VALUES (37, 'arcu. Vestibulum ut', 48, 'Oct 12, 2022', 75);
INSERT INTO public.comment_photo VALUES (38, 'facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec', 62, 'Dec 8, 2022', 57);
INSERT INTO public.comment_photo VALUES (39, 'egestas hendrerit neque.', 71, 'Nov 18, 2021', 30);
INSERT INTO public.comment_photo VALUES (40, 'aliquet. Phasellus fermentum convallis ligula.', 44, 'May 1, 2021', 12);
INSERT INTO public.comment_photo VALUES (41, 'enim, gravida sit amet, dapibus', 43, 'Feb 3, 2022', 82);
INSERT INTO public.comment_photo VALUES (42, 'odio a purus. Duis', 42, 'Jan 2, 2023', 50);
INSERT INTO public.comment_photo VALUES (43, 'Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo,', 64, 'Jul 16, 2022', 64);
INSERT INTO public.comment_photo VALUES (44, 'cursus purus.', 32, 'Dec 19, 2022', 46);
INSERT INTO public.comment_photo VALUES (45, 'pede. Suspendisse dui. Fusce diam nunc,', 28, 'Jul 14, 2022', 94);
INSERT INTO public.comment_photo VALUES (46, 'netus et', 60, 'May 16, 2021', 2);
INSERT INTO public.comment_photo VALUES (47, 'vitae velit egestas lacinia.', 96, 'Jan 7, 2023', 81);
INSERT INTO public.comment_photo VALUES (48, 'tempor, est ac mattis', 40, 'Apr 19, 2022', 66);
INSERT INTO public.comment_photo VALUES (49, 'turpis. Aliquam adipiscing lobortis', 55, 'Aug 7, 2022', 52);
INSERT INTO public.comment_photo VALUES (50, 'Etiam bibendum fermentum metus.', 67, 'Jun 23, 2022', 41);
INSERT INTO public.comment_photo VALUES (51, 'Aliquam gravida mauris ut mi. Duis', 14, 'Oct 6, 2021', 45);
INSERT INTO public.comment_photo VALUES (52, 'nibh lacinia orci, consectetuer euismod est arcu ac', 80, 'May 24, 2021', 64);
INSERT INTO public.comment_photo VALUES (53, 'tellus. Nunc lectus pede, ultrices a, auctor non, feugiat', 80, 'May 21, 2021', 48);
INSERT INTO public.comment_photo VALUES (54, 'orci, in consequat enim diam vel', 36, 'May 13, 2021', 86);
INSERT INTO public.comment_photo VALUES (55, 'tempor arcu. Vestibulum ut eros non enim', 1, 'Oct 20, 2021', 33);
INSERT INTO public.comment_photo VALUES (56, 'ligula consectetuer rhoncus. Nullam velit', 90, 'Dec 22, 2021', 7);
INSERT INTO public.comment_photo VALUES (57, 'ligula. Aliquam erat', 24, 'Mar 5, 2023', 40);
INSERT INTO public.comment_photo VALUES (58, 'ut nisi', 66, 'Sep 28, 2021', 79);
INSERT INTO public.comment_photo VALUES (59, 'et pede. Nunc sed orci lobortis', 21, 'Dec 4, 2022', 6);
INSERT INTO public.comment_photo VALUES (60, 'condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin', 34, 'Nov 11, 2021', 80);
INSERT INTO public.comment_photo VALUES (61, 'Nunc mauris elit, dictum eu, eleifend', 45, 'May 21, 2022', 83);
INSERT INTO public.comment_photo VALUES (62, 'Curabitur consequat, lectus sit amet luctus vulputate, nisi', 84, 'Jun 19, 2021', 95);
INSERT INTO public.comment_photo VALUES (63, 'Curabitur sed tortor. Integer aliquam', 73, 'Sep 12, 2021', 57);
INSERT INTO public.comment_photo VALUES (64, 'habitant morbi tristique senectus', 18, 'Dec 29, 2022', 29);
INSERT INTO public.comment_photo VALUES (65, 'felis orci,', 76, 'Mar 18, 2022', 15);
INSERT INTO public.comment_photo VALUES (66, 'Ut semper pretium neque.', 43, 'Mar 27, 2023', 32);
INSERT INTO public.comment_photo VALUES (67, 'pellentesque eget, dictum', 85, 'Oct 22, 2022', 72);
INSERT INTO public.comment_photo VALUES (68, 'Phasellus elit pede, malesuada', 46, 'Jul 29, 2021', 55);
INSERT INTO public.comment_photo VALUES (69, 'primis', 19, 'Sep 24, 2021', 34);
INSERT INTO public.comment_photo VALUES (70, 'orci luctus', 30, 'Jul 20, 2022', 72);
INSERT INTO public.comment_photo VALUES (71, 'enim non', 61, 'Sep 24, 2022', 77);
INSERT INTO public.comment_photo VALUES (72, 'egestas, urna justo faucibus lectus, a sollicitudin orci', 12, 'Dec 28, 2021', 34);
INSERT INTO public.comment_photo VALUES (73, 'urna, nec luctus felis purus ac tellus. Suspendisse sed', 49, 'Jan 29, 2022', 82);
INSERT INTO public.comment_photo VALUES (74, 'vehicula et, rutrum eu, ultrices sit amet, risus. Donec', 11, 'Jul 10, 2022', 91);
INSERT INTO public.comment_photo VALUES (75, 'orci. Ut', 67, 'Oct 19, 2022', 30);
INSERT INTO public.comment_photo VALUES (76, 'Aliquam nisl. Nulla eu neque', 92, 'Jun 11, 2022', 73);
INSERT INTO public.comment_photo VALUES (77, 'sem magna nec quam. Curabitur vel lectus. Cum sociis', 13, 'Jan 14, 2023', 78);
INSERT INTO public.comment_photo VALUES (78, 'luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie.', 5, 'Jan 24, 2022', 37);
INSERT INTO public.comment_photo VALUES (79, 'lacinia orci, consectetuer euismod est arcu', 5, 'Jun 6, 2022', 62);
INSERT INTO public.comment_photo VALUES (80, 'rhoncus. Nullam velit dui, semper et,', 2, 'May 27, 2021', 8);
INSERT INTO public.comment_photo VALUES (81, 'dolor', 16, 'Mar 18, 2023', 24);
INSERT INTO public.comment_photo VALUES (82, 'sit amet risus. Donec egestas. Aliquam', 72, 'Dec 11, 2021', 32);
INSERT INTO public.comment_photo VALUES (83, 'leo elementum sem,', 46, 'May 13, 2021', 22);
INSERT INTO public.comment_photo VALUES (84, 'urna justo faucibus lectus, a sollicitudin', 98, 'Jan 15, 2022', 81);
INSERT INTO public.comment_photo VALUES (85, 'semper', 92, 'Mar 6, 2023', 27);
INSERT INTO public.comment_photo VALUES (86, 'Sed molestie. Sed id risus quis diam luctus', 49, 'Jan 24, 2022', 14);
INSERT INTO public.comment_photo VALUES (87, 'Class aptent taciti sociosqu ad litora torquent per', 5, 'Oct 26, 2022', 51);
INSERT INTO public.comment_photo VALUES (88, 'at, nisi. Cum sociis natoque', 87, 'Mar 3, 2022', 40);
INSERT INTO public.comment_photo VALUES (89, 'ac mi eleifend egestas. Sed pharetra, felis eget varius', 67, 'Apr 21, 2021', 83);
INSERT INTO public.comment_photo VALUES (90, 'Nunc', 70, 'Jun 10, 2021', 17);
INSERT INTO public.comment_photo VALUES (91, 'id magna et ipsum cursus vestibulum. Mauris', 44, 'Feb 25, 2022', 24);
INSERT INTO public.comment_photo VALUES (92, 'Phasellus', 21, 'Nov 7, 2021', 23);
INSERT INTO public.comment_photo VALUES (93, 'venenatis vel, faucibus id, libero. Donec consectetuer mauris id', 34, 'May 12, 2022', 19);
INSERT INTO public.comment_photo VALUES (94, 'tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et,', 26, 'Jul 5, 2022', 22);
INSERT INTO public.comment_photo VALUES (95, 'scelerisque neque. Nullam nisl. Maecenas malesuada fringilla', 36, 'Oct 18, 2022', 68);
INSERT INTO public.comment_photo VALUES (96, 'fringilla', 77, 'Mar 25, 2022', 3);
INSERT INTO public.comment_photo VALUES (97, 'fringilla est. Mauris eu', 76, 'May 25, 2022', 15);
INSERT INTO public.comment_photo VALUES (98, 'gravida non, sollicitudin a,', 67, 'Feb 8, 2023', 93);
INSERT INTO public.comment_photo VALUES (99, 'condimentum. Donec', 68, 'Apr 9, 2022', 12);
INSERT INTO public.comment_photo VALUES (100, 'enim, gravida sit amet, dapibus id, blandit at,', 98, 'Aug 26, 2021', 89);


--
-- Data for Name: completed_works; Type: TABLE DATA; Schema: public; Owner: test_user
--

INSERT INTO public.completed_works VALUES (1, 80, 93, 2, 5, 'Mar 16, 2023');
INSERT INTO public.completed_works VALUES (2, 78, 60, 10, 2, 'Mar 7, 2023');
INSERT INTO public.completed_works VALUES (3, 70, 61, 8, 3, 'Jun 6, 2022');
INSERT INTO public.completed_works VALUES (4, 30, 34, 6, 2, 'Oct 24, 2021');
INSERT INTO public.completed_works VALUES (5, 50, 62, 4, 2, 'May 7, 2021');
INSERT INTO public.completed_works VALUES (6, 72, 76, 7, 2, 'Aug 4, 2021');
INSERT INTO public.completed_works VALUES (7, 15, 29, 7, 4, 'Jun 27, 2021');
INSERT INTO public.completed_works VALUES (8, 15, 27, 6, 4, 'Feb 28, 2023');
INSERT INTO public.completed_works VALUES (9, 89, 79, 9, 3, 'Jul 19, 2022');
INSERT INTO public.completed_works VALUES (10, 75, 50, 9, 3, 'Mar 20, 2023');
INSERT INTO public.completed_works VALUES (11, 14, 29, 10, 4, 'Dec 10, 2021');
INSERT INTO public.completed_works VALUES (12, 93, 47, 9, 3, 'Feb 20, 2023');
INSERT INTO public.completed_works VALUES (13, 17, 23, 3, 2, 'Feb 20, 2022');
INSERT INTO public.completed_works VALUES (14, 60, 48, 8, 3, 'Dec 19, 2021');
INSERT INTO public.completed_works VALUES (15, 62, 61, 6, 5, 'Nov 6, 2022');
INSERT INTO public.completed_works VALUES (16, 3, 24, 9, 5, 'Sep 24, 2022');
INSERT INTO public.completed_works VALUES (17, 41, 6, 7, 4, 'Apr 27, 2022');
INSERT INTO public.completed_works VALUES (18, 87, 19, 9, 3, 'Aug 6, 2022');
INSERT INTO public.completed_works VALUES (19, 82, 81, 9, 4, 'Jul 25, 2022');
INSERT INTO public.completed_works VALUES (20, 92, 88, 3, 3, 'Apr 14, 2023');
INSERT INTO public.completed_works VALUES (21, 69, 13, 8, 5, 'Dec 27, 2022');
INSERT INTO public.completed_works VALUES (22, 92, 98, 9, 3, 'Aug 26, 2022');
INSERT INTO public.completed_works VALUES (23, 70, 93, 2, 4, 'Jan 15, 2023');
INSERT INTO public.completed_works VALUES (24, 59, 31, 1, 4, 'Sep 23, 2021');
INSERT INTO public.completed_works VALUES (25, 81, 9, 9, 5, 'Jul 23, 2021');
INSERT INTO public.completed_works VALUES (26, 6, 5, 4, 3, 'Jul 3, 2022');
INSERT INTO public.completed_works VALUES (27, 81, 63, 8, 5, 'Mar 3, 2022');
INSERT INTO public.completed_works VALUES (28, 74, 69, 5, 4, 'Aug 8, 2021');
INSERT INTO public.completed_works VALUES (29, 26, 45, 7, 2, 'Dec 31, 2021');
INSERT INTO public.completed_works VALUES (30, 11, 18, 4, 2, 'Jul 31, 2022');
INSERT INTO public.completed_works VALUES (31, 18, 96, 8, 4, 'Apr 25, 2021');
INSERT INTO public.completed_works VALUES (32, 66, 62, 10, 1, 'Jan 9, 2023');
INSERT INTO public.completed_works VALUES (33, 40, 75, 7, 3, 'Feb 3, 2023');
INSERT INTO public.completed_works VALUES (34, 44, 42, 10, 3, 'Mar 30, 2023');
INSERT INTO public.completed_works VALUES (35, 36, 36, 10, 3, 'Sep 22, 2022');
INSERT INTO public.completed_works VALUES (36, 9, 19, 7, 5, 'Dec 22, 2022');
INSERT INTO public.completed_works VALUES (37, 75, 81, 3, 5, 'Sep 9, 2022');
INSERT INTO public.completed_works VALUES (38, 73, 31, 4, 2, 'Jun 1, 2022');
INSERT INTO public.completed_works VALUES (39, 37, 5, 1, 4, 'Nov 14, 2022');
INSERT INTO public.completed_works VALUES (40, 25, 12, 3, 3, 'Aug 10, 2021');
INSERT INTO public.completed_works VALUES (41, 45, 85, 8, 3, 'Aug 14, 2022');
INSERT INTO public.completed_works VALUES (42, 94, 79, 8, 3, 'Apr 4, 2023');
INSERT INTO public.completed_works VALUES (43, 12, 87, 3, 3, 'Mar 4, 2022');
INSERT INTO public.completed_works VALUES (44, 34, 3, 3, 2, 'Aug 15, 2022');
INSERT INTO public.completed_works VALUES (45, 39, 82, 7, 1, 'Sep 26, 2021');
INSERT INTO public.completed_works VALUES (46, 6, 40, 7, 4, 'Sep 25, 2022');
INSERT INTO public.completed_works VALUES (47, 9, 25, 6, 2, 'Dec 5, 2022');
INSERT INTO public.completed_works VALUES (48, 91, 32, 8, 2, 'Aug 15, 2021');
INSERT INTO public.completed_works VALUES (49, 12, 10, 6, 5, 'Oct 19, 2021');
INSERT INTO public.completed_works VALUES (50, 81, 5, 8, 5, 'Jun 8, 2021');
INSERT INTO public.completed_works VALUES (51, 24, 41, 5, 2, 'Apr 1, 2022');
INSERT INTO public.completed_works VALUES (52, 72, 29, 10, 4, 'Apr 1, 2023');
INSERT INTO public.completed_works VALUES (53, 15, 57, 5, 3, 'Sep 20, 2021');
INSERT INTO public.completed_works VALUES (54, 34, 4, 9, 3, 'Nov 23, 2022');
INSERT INTO public.completed_works VALUES (55, 70, 52, 2, 2, 'Nov 16, 2021');
INSERT INTO public.completed_works VALUES (56, 57, 66, 3, 1, 'Nov 6, 2022');
INSERT INTO public.completed_works VALUES (57, 62, 47, 10, 4, 'Dec 19, 2022');
INSERT INTO public.completed_works VALUES (58, 24, 47, 3, 2, 'Jul 26, 2022');
INSERT INTO public.completed_works VALUES (59, 89, 59, 7, 1, 'Feb 11, 2022');
INSERT INTO public.completed_works VALUES (60, 85, 33, 5, 5, 'Sep 13, 2021');
INSERT INTO public.completed_works VALUES (61, 30, 43, 5, 3, 'Oct 1, 2022');
INSERT INTO public.completed_works VALUES (62, 16, 44, 9, 3, 'Nov 25, 2022');
INSERT INTO public.completed_works VALUES (63, 95, 4, 8, 1, 'Sep 16, 2022');
INSERT INTO public.completed_works VALUES (64, 69, 7, 2, 2, 'Apr 6, 2022');
INSERT INTO public.completed_works VALUES (65, 57, 47, 6, 3, 'Jul 7, 2022');
INSERT INTO public.completed_works VALUES (66, 65, 30, 6, 2, 'Aug 30, 2022');
INSERT INTO public.completed_works VALUES (67, 57, 49, 6, 5, 'May 27, 2021');
INSERT INTO public.completed_works VALUES (68, 87, 52, 4, 4, 'Jun 15, 2022');
INSERT INTO public.completed_works VALUES (69, 62, 77, 9, 2, 'Oct 11, 2022');
INSERT INTO public.completed_works VALUES (70, 56, 40, 6, 5, 'Oct 13, 2021');
INSERT INTO public.completed_works VALUES (71, 36, 88, 2, 1, 'Aug 2, 2021');
INSERT INTO public.completed_works VALUES (72, 94, 65, 3, 1, 'Oct 4, 2021');
INSERT INTO public.completed_works VALUES (73, 41, 4, 1, 3, 'Dec 18, 2021');
INSERT INTO public.completed_works VALUES (74, 23, 99, 8, 3, 'Sep 21, 2022');
INSERT INTO public.completed_works VALUES (75, 70, 8, 6, 1, 'Feb 13, 2022');
INSERT INTO public.completed_works VALUES (76, 43, 38, 7, 3, 'Jan 19, 2022');
INSERT INTO public.completed_works VALUES (77, 87, 67, 8, 3, 'Feb 14, 2023');
INSERT INTO public.completed_works VALUES (78, 68, 68, 2, 3, 'Aug 15, 2021');
INSERT INTO public.completed_works VALUES (79, 84, 57, 6, 5, 'May 30, 2022');
INSERT INTO public.completed_works VALUES (80, 22, 49, 3, 4, 'Mar 24, 2023');
INSERT INTO public.completed_works VALUES (81, 67, 42, 10, 5, 'Sep 19, 2021');
INSERT INTO public.completed_works VALUES (82, 19, 25, 6, 3, 'Mar 5, 2022');
INSERT INTO public.completed_works VALUES (83, 25, 70, 9, 5, 'Jul 10, 2021');
INSERT INTO public.completed_works VALUES (84, 99, 62, 6, 4, 'Oct 22, 2021');
INSERT INTO public.completed_works VALUES (85, 26, 13, 6, 3, 'Nov 6, 2022');
INSERT INTO public.completed_works VALUES (86, 90, 41, 3, 2, 'Jul 15, 2021');
INSERT INTO public.completed_works VALUES (87, 41, 79, 3, 4, 'Dec 22, 2021');
INSERT INTO public.completed_works VALUES (88, 7, 50, 1, 4, 'Apr 27, 2022');
INSERT INTO public.completed_works VALUES (89, 79, 20, 8, 3, 'Feb 2, 2022');
INSERT INTO public.completed_works VALUES (90, 63, 32, 3, 2, 'Sep 5, 2022');
INSERT INTO public.completed_works VALUES (91, 81, 59, 7, 3, 'Nov 22, 2022');
INSERT INTO public.completed_works VALUES (92, 21, 93, 7, 3, 'May 12, 2021');
INSERT INTO public.completed_works VALUES (93, 74, 95, 8, 4, 'May 28, 2022');
INSERT INTO public.completed_works VALUES (94, 85, 48, 9, 2, 'Jun 24, 2022');
INSERT INTO public.completed_works VALUES (95, 29, 17, 3, 3, 'Dec 29, 2022');
INSERT INTO public.completed_works VALUES (96, 16, 23, 4, 4, 'Jun 7, 2022');
INSERT INTO public.completed_works VALUES (97, 66, 46, 8, 4, 'Feb 20, 2023');
INSERT INTO public.completed_works VALUES (98, 82, 79, 6, 4, 'Jun 24, 2021');
INSERT INTO public.completed_works VALUES (99, 86, 65, 8, 3, 'Mar 31, 2023');
INSERT INTO public.completed_works VALUES (100, 87, 99, 9, 4, 'Jul 5, 2022');


--
-- Data for Name: like_photo; Type: TABLE DATA; Schema: public; Owner: test_user
--

INSERT INTO public.like_photo VALUES (1, 38, 67, 'Dec 29, 2022');
INSERT INTO public.like_photo VALUES (2, 17, 61, 'Nov 29, 2022');
INSERT INTO public.like_photo VALUES (3, 42, 73, 'Nov 26, 2021');
INSERT INTO public.like_photo VALUES (4, 20, 16, 'Jan 16, 2023');
INSERT INTO public.like_photo VALUES (5, 65, 34, 'Jun 10, 2022');
INSERT INTO public.like_photo VALUES (6, 67, 93, 'Jul 5, 2022');
INSERT INTO public.like_photo VALUES (7, 18, 24, 'Dec 4, 2021');
INSERT INTO public.like_photo VALUES (8, 49, 14, 'Mar 12, 2022');
INSERT INTO public.like_photo VALUES (9, 61, 48, 'Feb 2, 2023');
INSERT INTO public.like_photo VALUES (10, 22, 5, 'May 23, 2021');
INSERT INTO public.like_photo VALUES (11, 16, 17, 'Aug 7, 2021');
INSERT INTO public.like_photo VALUES (12, 8, 68, 'Nov 20, 2021');
INSERT INTO public.like_photo VALUES (13, 70, 5, 'Sep 21, 2021');
INSERT INTO public.like_photo VALUES (14, 90, 60, 'Jan 16, 2022');
INSERT INTO public.like_photo VALUES (15, 26, 77, 'Mar 14, 2022');
INSERT INTO public.like_photo VALUES (16, 43, 12, 'Aug 9, 2021');
INSERT INTO public.like_photo VALUES (17, 76, 4, 'Dec 12, 2022');
INSERT INTO public.like_photo VALUES (18, 14, 75, 'Aug 31, 2021');
INSERT INTO public.like_photo VALUES (19, 84, 61, 'Feb 12, 2023');
INSERT INTO public.like_photo VALUES (20, 75, 93, 'Nov 11, 2021');
INSERT INTO public.like_photo VALUES (21, 50, 48, 'Jun 22, 2022');
INSERT INTO public.like_photo VALUES (22, 48, 74, 'Jan 7, 2022');
INSERT INTO public.like_photo VALUES (23, 19, 76, 'May 2, 2021');
INSERT INTO public.like_photo VALUES (24, 97, 5, 'Jul 18, 2022');
INSERT INTO public.like_photo VALUES (25, 94, 85, 'Sep 6, 2022');
INSERT INTO public.like_photo VALUES (26, 45, 19, 'May 4, 2022');
INSERT INTO public.like_photo VALUES (27, 93, 5, 'Jun 22, 2021');
INSERT INTO public.like_photo VALUES (28, 51, 73, 'Aug 15, 2022');
INSERT INTO public.like_photo VALUES (29, 34, 88, 'Aug 26, 2021');
INSERT INTO public.like_photo VALUES (30, 90, 38, 'Sep 14, 2021');
INSERT INTO public.like_photo VALUES (31, 33, 92, 'Jun 22, 2022');
INSERT INTO public.like_photo VALUES (32, 61, 97, 'Oct 19, 2022');
INSERT INTO public.like_photo VALUES (33, 20, 52, 'Dec 12, 2022');
INSERT INTO public.like_photo VALUES (34, 63, 24, 'Apr 29, 2022');
INSERT INTO public.like_photo VALUES (35, 34, 42, 'Oct 23, 2022');
INSERT INTO public.like_photo VALUES (36, 98, 4, 'Jul 1, 2021');
INSERT INTO public.like_photo VALUES (37, 53, 47, 'Feb 12, 2023');
INSERT INTO public.like_photo VALUES (38, 42, 46, 'Oct 8, 2021');
INSERT INTO public.like_photo VALUES (39, 48, 4, 'Aug 25, 2022');
INSERT INTO public.like_photo VALUES (40, 78, 37, 'Jul 30, 2021');
INSERT INTO public.like_photo VALUES (41, 38, 8, 'May 28, 2021');
INSERT INTO public.like_photo VALUES (42, 47, 57, 'Aug 5, 2021');
INSERT INTO public.like_photo VALUES (43, 7, 58, 'Jun 10, 2021');
INSERT INTO public.like_photo VALUES (44, 32, 57, 'Aug 21, 2021');
INSERT INTO public.like_photo VALUES (45, 7, 41, 'Jan 7, 2022');
INSERT INTO public.like_photo VALUES (46, 67, 34, 'Jul 9, 2021');
INSERT INTO public.like_photo VALUES (47, 24, 2, 'Jun 11, 2022');
INSERT INTO public.like_photo VALUES (48, 51, 60, 'Sep 2, 2021');
INSERT INTO public.like_photo VALUES (49, 39, 51, 'Mar 30, 2023');
INSERT INTO public.like_photo VALUES (50, 58, 94, 'Nov 15, 2021');
INSERT INTO public.like_photo VALUES (51, 24, 35, 'Mar 12, 2022');
INSERT INTO public.like_photo VALUES (52, 40, 67, 'Dec 14, 2022');
INSERT INTO public.like_photo VALUES (53, 69, 25, 'Jan 8, 2022');
INSERT INTO public.like_photo VALUES (54, 15, 9, 'Sep 19, 2022');
INSERT INTO public.like_photo VALUES (55, 17, 58, 'Oct 9, 2022');
INSERT INTO public.like_photo VALUES (56, 62, 7, 'Nov 15, 2021');
INSERT INTO public.like_photo VALUES (57, 6, 31, 'May 1, 2021');
INSERT INTO public.like_photo VALUES (58, 77, 1, 'Mar 25, 2022');
INSERT INTO public.like_photo VALUES (59, 25, 60, 'Feb 3, 2022');
INSERT INTO public.like_photo VALUES (60, 92, 71, 'Sep 5, 2021');
INSERT INTO public.like_photo VALUES (61, 82, 7, 'Nov 3, 2021');
INSERT INTO public.like_photo VALUES (62, 96, 91, 'Jan 10, 2022');
INSERT INTO public.like_photo VALUES (63, 51, 66, 'Dec 1, 2021');
INSERT INTO public.like_photo VALUES (64, 86, 46, 'Feb 17, 2023');
INSERT INTO public.like_photo VALUES (65, 48, 39, 'Mar 28, 2022');
INSERT INTO public.like_photo VALUES (66, 12, 22, 'Feb 13, 2022');
INSERT INTO public.like_photo VALUES (67, 80, 32, 'May 30, 2021');
INSERT INTO public.like_photo VALUES (68, 65, 66, 'Apr 17, 2022');
INSERT INTO public.like_photo VALUES (69, 58, 45, 'May 11, 2022');
INSERT INTO public.like_photo VALUES (70, 67, 66, 'Oct 12, 2022');
INSERT INTO public.like_photo VALUES (71, 17, 12, 'Aug 17, 2021');
INSERT INTO public.like_photo VALUES (72, 81, 29, 'Apr 19, 2022');
INSERT INTO public.like_photo VALUES (73, 97, 77, 'May 8, 2022');
INSERT INTO public.like_photo VALUES (74, 64, 1, 'Sep 24, 2021');
INSERT INTO public.like_photo VALUES (75, 20, 50, 'Dec 5, 2021');
INSERT INTO public.like_photo VALUES (76, 90, 73, 'Sep 3, 2021');
INSERT INTO public.like_photo VALUES (77, 88, 8, 'Nov 26, 2021');
INSERT INTO public.like_photo VALUES (78, 34, 46, 'May 13, 2021');
INSERT INTO public.like_photo VALUES (79, 56, 70, 'Dec 30, 2021');
INSERT INTO public.like_photo VALUES (80, 66, 11, 'Feb 18, 2023');
INSERT INTO public.like_photo VALUES (81, 61, 54, 'Jan 15, 2023');
INSERT INTO public.like_photo VALUES (82, 77, 91, 'Jun 25, 2022');
INSERT INTO public.like_photo VALUES (83, 49, 42, 'Feb 18, 2022');
INSERT INTO public.like_photo VALUES (84, 95, 51, 'Nov 14, 2021');
INSERT INTO public.like_photo VALUES (85, 28, 19, 'Jun 26, 2021');
INSERT INTO public.like_photo VALUES (86, 9, 4, 'Jan 9, 2022');
INSERT INTO public.like_photo VALUES (87, 89, 41, 'May 14, 2022');
INSERT INTO public.like_photo VALUES (88, 77, 55, 'Oct 29, 2022');
INSERT INTO public.like_photo VALUES (89, 16, 81, 'Jul 16, 2021');
INSERT INTO public.like_photo VALUES (90, 22, 12, 'Oct 1, 2022');
INSERT INTO public.like_photo VALUES (91, 24, 2, 'Oct 21, 2021');
INSERT INTO public.like_photo VALUES (92, 12, 9, 'Jan 17, 2022');
INSERT INTO public.like_photo VALUES (93, 15, 66, 'Mar 12, 2023');
INSERT INTO public.like_photo VALUES (94, 55, 15, 'Mar 26, 2022');
INSERT INTO public.like_photo VALUES (95, 54, 34, 'Sep 22, 2021');
INSERT INTO public.like_photo VALUES (96, 47, 82, 'Oct 22, 2021');
INSERT INTO public.like_photo VALUES (97, 79, 79, 'Nov 10, 2022');
INSERT INTO public.like_photo VALUES (98, 85, 16, 'Sep 30, 2021');
INSERT INTO public.like_photo VALUES (99, 8, 69, 'Mar 5, 2023');
INSERT INTO public.like_photo VALUES (100, 53, 84, 'Dec 22, 2021');


--
-- Data for Name: photo; Type: TABLE DATA; Schema: public; Owner: test_user
--

INSERT INTO public.photo VALUES (1, 'https://guardian.co.uk/sub', 45, 'sed, facilisis vitae, orci. Phasellus dapibus', '2021-10-23 21:49:29', 88);
INSERT INTO public.photo VALUES (2, 'https://naver.com/sub', 98, 'est, vitae sodales nisi magna sed', '2021-10-31 16:53:40', 86);
INSERT INTO public.photo VALUES (3, 'https://youtube.com/sub', 85, 'libero et tristique pellentesque, tellus sem', '2021-05-28 18:21:58', 43);
INSERT INTO public.photo VALUES (4, 'https://baidu.com/sub', 16, 'tellus id nunc interdum feugiat. Sed', '2022-04-12 15:45:50', 45);
INSERT INTO public.photo VALUES (5, 'https://instagram.com/sub/cars', 64, 'ridiculus mus. Proin vel arcu eu', '2022-05-07 11:42:22', 39);
INSERT INTO public.photo VALUES (6, 'http://google.com/user/110', 81, 'mi lacinia mattis. Integer eu lacus.', '2023-01-15 08:54:05', 65);
INSERT INTO public.photo VALUES (7, 'http://guardian.co.uk/user/110', 68, 'Nunc mauris elit, dictum eu, eleifend', '2022-10-13 21:01:59', 32);
INSERT INTO public.photo VALUES (8, 'http://twitter.com/en-ca', 96, 'rhoncus. Nullam velit dui, semper et,', '2022-11-08 10:02:20', 62);
INSERT INTO public.photo VALUES (9, 'https://pinterest.com/fr', 68, 'elit erat vitae risus. Duis a', '2021-05-13 22:26:47', 96);
INSERT INTO public.photo VALUES (10, 'http://bbc.co.uk/one', 24, 'auctor vitae, aliquet nec, imperdiet nec,', '2022-04-14 05:43:27', 35);
INSERT INTO public.photo VALUES (11, 'http://bbc.co.uk/en-us', 91, 'imperdiet, erat nonummy ultricies ornare, elit', '2022-02-20 04:52:38', 90);
INSERT INTO public.photo VALUES (12, 'https://walmart.com/en-us', 14, 'venenatis lacus. Etiam bibendum fermentum metus.', '2021-08-07 14:53:45', 84);
INSERT INTO public.photo VALUES (13, 'https://ebay.com/fr', 15, 'habitant morbi tristique senectus et netus', '2022-10-18 05:26:52', 35);
INSERT INTO public.photo VALUES (14, 'http://twitter.com/sub/cars', 84, 'Maecenas ornare egestas ligula. Nullam feugiat', '2021-09-10 11:33:28', 33);
INSERT INTO public.photo VALUES (15, 'https://pinterest.com/site', 98, 'ante ipsum primis in faucibus orci', '2022-05-02 03:31:35', 86);
INSERT INTO public.photo VALUES (16, 'https://google.com/settings', 44, 'vel quam dignissim pharetra. Nam ac', '2022-09-02 14:20:32', 71);
INSERT INTO public.photo VALUES (17, 'https://naver1.com/en-us', 75, 'ornare, facilisis eget, ipsum. Donec sollicitudin', '2022-02-12 03:35:36', 43);
INSERT INTO public.photo VALUES (18, 'http://yahoo.com/group/9', 60, 'dui, semper et, lacinia vitae, sodales', '2023-03-09 20:18:28', 91);
INSERT INTO public.photo VALUES (19, 'http://ebay1.com/fr', 97, 'aliquam iaculis, lacus pede sagittis augue,', '2021-10-25 20:32:33', 43);
INSERT INTO public.photo VALUES (20, 'http://walmart.com/site', 19, 'Integer id magna et ipsum cursus', '2022-02-16 10:58:39', 68);
INSERT INTO public.photo VALUES (21, 'https://naver3.com/en-us', 18, 'ut lacus. Nulla tincidunt, neque vitae', '2021-10-14 00:46:01', 87);
INSERT INTO public.photo VALUES (22, 'https://google.com/en-ca', 4, 'ac arcu. Nunc mauris. Morbi non', '2022-09-01 18:17:12', 37);
INSERT INTO public.photo VALUES (23, 'http://reddit.com/fr', 89, 'purus sapien, gravida non, sollicitudin a,', '2022-04-03 10:36:54', 81);
INSERT INTO public.photo VALUES (24, 'http://naver5.com/group/9', 77, 'eu arcu. Morbi sit amet massa.', '2022-08-08 20:19:45', 34);
INSERT INTO public.photo VALUES (25, 'https://yahoo.com/sub/cars', 19, 'Integer vulputate, risus a ultricies adipiscing,', '2021-04-12 07:39:01', 82);
INSERT INTO public.photo VALUES (26, 'https://nytimes.com/one', 54, 'Fusce dolor quam, elementum at, egestas', '2022-05-28 22:04:25', 89);
INSERT INTO public.photo VALUES (27, 'http://cnn.com/settings', 100, 'neque. Sed eget lacus. Mauris non', '2021-07-07 16:27:02', 91);
INSERT INTO public.photo VALUES (28, 'http://netflix.com/group/9', 48, 'Pellentesque habitant morbi tristique senectus et', '2022-05-16 03:40:46', 68);
INSERT INTO public.photo VALUES (29, 'http://google.com/site', 50, 'felis, adipiscing fringilla, porttitor vulputate, posuere', '2021-10-06 02:59:54', 49);
INSERT INTO public.photo VALUES (30, 'https://google.com/sub/cars', 78, 'feugiat non, lobortis quis, pede. Suspendisse', '2022-09-25 20:42:32', 33);
INSERT INTO public.photo VALUES (31, 'https://ebay.com/en-us', 55, 'tempor diam dictum sapien. Aenean massa.', '2022-05-17 11:06:05', 61);
INSERT INTO public.photo VALUES (32, 'https://pinterest.com/en-ca', 23, 'sit amet diam eu dolor egestas', '2022-03-04 13:10:02', 47);
INSERT INTO public.photo VALUES (33, 'http://bbc.co.uk/settings', 94, 'consectetuer mauris id sapien. Cras dolor', '2023-02-02 10:10:22', 43);
INSERT INTO public.photo VALUES (34, 'https://baidu.com/fr', 32, 'purus sapien, gravida non, sollicitudin a,', '2022-12-17 22:20:54', 54);
INSERT INTO public.photo VALUES (35, 'http://ebay.com/en-us', 81, 'lorem, auctor quis, tristique ac, eleifend', '2021-11-16 12:16:13', 34);
INSERT INTO public.photo VALUES (36, 'http://zoom.us/group/9', 21, 'sit amet ultricies sem magna nec', '2022-11-07 06:42:09', 81);
INSERT INTO public.photo VALUES (37, 'http://bbc.co.uk/sub', 60, 'consectetuer euismod est arcu ac orci.', '2023-03-05 16:38:26', 42);
INSERT INTO public.photo VALUES (38, 'http://guardian.co.uk/sub/cars', 33, 'et, commodo at, libero. Morbi accumsan', '2022-09-28 22:52:15', 81);
INSERT INTO public.photo VALUES (39, 'http://walmart.com/sub/cars', 42, 'at arcu. Vestibulum ante ipsum primis', '2021-09-02 22:15:42', 50);
INSERT INTO public.photo VALUES (40, 'http://zoom.us/sub', 54, 'ac mattis semper, dui lectus rutrum', '2021-05-06 02:33:08', 83);
INSERT INTO public.photo VALUES (41, 'http://youtube.com/site', 7, 'turpis vitae purus gravida sagittis. Duis', '2021-11-18 07:34:50', 77);
INSERT INTO public.photo VALUES (42, 'https://guardian.co.uk/en-us', 84, 'ut mi. Duis risus odio, auctor', '2022-11-26 16:26:34', 62);
INSERT INTO public.photo VALUES (43, 'https://facebook.com/en-ca', 72, 'eget varius ultrices, mauris ipsum porta', '2022-05-31 05:02:53', 39);
INSERT INTO public.photo VALUES (44, 'https://reddit.com/sub/cars', 37, 'ligula. Aenean gravida nunc sed pede.', '2022-07-13 17:05:13', 38);
INSERT INTO public.photo VALUES (45, 'http://pinterest.com/en-us', 27, 'Nulla eget metus eu erat semper', '2021-04-28 15:55:02', 61);
INSERT INTO public.photo VALUES (46, 'http://reddit.com/en-us', 92, 'sem elit, pharetra ut, pharetra sed,', '2021-04-15 20:08:59', 53);
INSERT INTO public.photo VALUES (47, 'http://wikipedia.org/one', 29, 'ligula. Aenean euismod mauris eu elit.', '2022-01-25 09:58:52', 35);
INSERT INTO public.photo VALUES (48, 'https://netflix.com/sub', 67, 'malesuada vel, venenatis vel, faucibus id,', '2023-02-28 12:33:52', 63);
INSERT INTO public.photo VALUES (49, 'http://google.com/sub/cars', 22, 'diam nunc, ullamcorper eu, euismod ac,', '2022-02-19 13:10:54', 87);
INSERT INTO public.photo VALUES (50, 'https://ebay6.com/fr', 24, 'sem ut dolor dapibus gravida. Aliquam', '2022-01-19 16:25:50', 50);
INSERT INTO public.photo VALUES (51, 'http://ebay.com/group/9', 31, 'quis urna. Nunc quis arcu vel', '2021-10-14 05:33:28', 70);
INSERT INTO public.photo VALUES (52, 'https://ebay.com/user/110', 3, 'dui augue eu tellus. Phasellus elit', '2023-02-17 04:11:22', 61);
INSERT INTO public.photo VALUES (53, 'http://pinterest.com/site', 79, 'sed dictum eleifend, nunc risus varius', '2021-05-06 09:36:02', 54);
INSERT INTO public.photo VALUES (54, 'http://naver.com/one', 63, 'malesuada malesuada. Integer id magna et', '2021-08-24 09:44:50', 47);
INSERT INTO public.photo VALUES (55, 'https://bbc.co.uk/one', 40, 'sed turpis nec mauris blandit mattis.', '2022-03-26 05:19:20', 71);
INSERT INTO public.photo VALUES (56, 'https://guardian.co.uk/fr', 36, 'ut mi. Duis risus odio, auctor', '2022-07-21 21:54:04', 33);
INSERT INTO public.photo VALUES (57, 'http://twitter6.com/sub/cars', 20, 'aliquet, sem ut cursus luctus, ipsum', '2022-09-11 18:34:11', 48);
INSERT INTO public.photo VALUES (58, 'http://naver7.com/user/110', 88, 'ligula. Aenean gravida nunc sed pede.', '2022-10-08 09:42:35', 59);
INSERT INTO public.photo VALUES (59, 'https://naver10.com/en-us', 13, 'nec, cursus a, enim. Suspendisse aliquet,', '2021-11-01 22:09:53', 75);
INSERT INTO public.photo VALUES (60, 'http://walmart.com/settings', 44, 'ac, fermentum vel, mauris. Integer sem', '2021-07-30 10:11:54', 74);
INSERT INTO public.photo VALUES (61, 'http://pinterest.com/fr', 78, 'Duis volutpat nunc sit amet metus.', '2022-07-13 04:49:37', 96);
INSERT INTO public.photo VALUES (62, 'http://nytimes.com/group/9', 52, 'luctus felis purus ac tellus. Suspendisse', '2023-02-13 23:43:22', 52);
INSERT INTO public.photo VALUES (63, 'http://guardian.co.uk/sub', 40, 'ornare, libero at auctor ullamcorper, nisl', '2021-05-20 02:57:25', 51);
INSERT INTO public.photo VALUES (64, 'https://google.com/fr', 59, 'suscipit nonummy. Fusce fermentum fermentum arcu.', '2023-02-08 14:21:49', 78);
INSERT INTO public.photo VALUES (65, 'http://nytimes.com/en-ca', 73, 'Suspendisse tristique neque venenatis lacus. Etiam', '2021-03-28 04:38:08', 80);
INSERT INTO public.photo VALUES (66, 'https://reddit.com/sub/cars1', 21, 'lobortis. Class aptent taciti sociosqu ad', '2022-11-24 03:45:53', 76);
INSERT INTO public.photo VALUES (67, 'http://yahoo.com/fr', 4, 'eu neque pellentesque massa lobortis ultrices.', '2022-08-30 21:33:44', 89);
INSERT INTO public.photo VALUES (68, 'http://walmart.com/en-us', 74, 'sit amet metus. Aliquam erat volutpat.', '2022-07-17 10:46:38', 47);
INSERT INTO public.photo VALUES (69, 'https://reddit.com/one', 14, 'tellus. Suspendisse sed dolor. Fusce mi', '2021-12-14 02:08:05', 82);
INSERT INTO public.photo VALUES (70, 'https://netflix.com/user/110', 13, 'Aenean eget metus. In nec orci.', '2021-05-11 21:43:51', 70);
INSERT INTO public.photo VALUES (71, 'http://cnn.com/settings1', 82, 'at risus. Nunc ac sem ut', '2022-04-01 23:54:52', 69);
INSERT INTO public.photo VALUES (72, 'https://yahoo.com/one', 39, 'posuere, enim nisl elementum purus, accumsan', '2021-12-24 10:10:03', 66);
INSERT INTO public.photo VALUES (73, 'https://whatsapp.com/settings', 16, 'facilisis facilisis, magna tellus faucibus leo,', '2023-02-04 11:08:36', 76);
INSERT INTO public.photo VALUES (74, 'https://naver.com/group/9', 25, 'lobortis tellus justo sit amet nulla.', '2021-06-23 01:12:11', 56);
INSERT INTO public.photo VALUES (75, 'https://baidu.com/sub3', 97, 'non, vestibulum nec, euismod in, dolor.', '2021-07-17 19:33:13', 34);
INSERT INTO public.photo VALUES (76, 'https://walmart.com/settings', 25, 'eget magna. Suspendisse tristique neque venenatis', '2021-08-20 07:28:31', 72);
INSERT INTO public.photo VALUES (77, 'http://naver.com/fr', 57, 'Donec feugiat metus sit amet ante.', '2021-07-15 12:12:51', 55);
INSERT INTO public.photo VALUES (78, 'http://netflix.com/one', 95, 'sed, hendrerit a, arcu. Sed et', '2022-12-13 22:15:34', 60);
INSERT INTO public.photo VALUES (79, 'https://yahoo.com/sub/cars5', 98, 'enim commodo hendrerit. Donec porttitor tellus', '2022-10-14 07:13:35', 48);
INSERT INTO public.photo VALUES (80, 'https://baidu.com/site', 41, 'penatibus et magnis dis parturient montes,', '2022-03-05 01:13:30', 57);
INSERT INTO public.photo VALUES (81, 'http://cnn.com/en-ca', 51, 'Aliquam erat volutpat. Nulla facilisis. Suspendisse', '2022-05-23 10:53:00', 72);
INSERT INTO public.photo VALUES (82, 'http://cnn.com/en-us', 91, 'libero lacus, varius et, euismod et,', '2021-10-06 16:05:12', 77);
INSERT INTO public.photo VALUES (83, 'https://ebay.com/settings', 41, 'a, scelerisque sed, sapien. Nunc pulvinar', '2021-05-26 19:27:47', 85);
INSERT INTO public.photo VALUES (84, 'http://zoom.us/sub/cars', 86, 'id enim. Curabitur massa. Vestibulum accumsan', '2022-05-03 02:24:34', 91);
INSERT INTO public.photo VALUES (85, 'http://twitter.com/one', 28, 'non arcu. Vivamus sit amet risus.', '2021-07-12 19:05:47', 64);
INSERT INTO public.photo VALUES (86, 'https://twitter.com/sub/cars', 44, 'Nullam feugiat placerat velit. Quisque varius.', '2021-10-22 14:36:54', 54);
INSERT INTO public.photo VALUES (87, 'http://whatsapp.com/settings', 21, 'venenatis a, magna. Lorem ipsum dolor', '2021-05-27 13:50:37', 40);
INSERT INTO public.photo VALUES (88, 'https://facebook.com/settings', 68, 'egestas. Aliquam nec enim. Nunc ut', '2022-05-27 06:28:11', 96);
INSERT INTO public.photo VALUES (89, 'https://reddit.com/site', 79, 'ligula elit, pretium et, rutrum non,', '2022-07-29 12:15:03', 85);
INSERT INTO public.photo VALUES (90, 'https://cnn.com/site', 24, 'pede. Suspendisse dui. Fusce diam nunc,', '2022-05-16 22:32:54', 70);
INSERT INTO public.photo VALUES (91, 'https://bbc.co.uk/fr', 3, 'ullamcorper viverra. Maecenas iaculis aliquet diam.', '2021-10-18 17:42:56', 66);
INSERT INTO public.photo VALUES (92, 'https://facebook.com/en-ca6', 37, 'interdum enim non nisi. Aenean eget', '2022-01-20 09:40:16', 66);
INSERT INTO public.photo VALUES (93, 'https://yahoo.com/fr', 25, 'mollis. Duis sit amet diam eu', '2021-06-19 05:04:04', 84);
INSERT INTO public.photo VALUES (94, 'https://wikipedia.org/fr', 41, 'mus. Aenean eget magna. Suspendisse tristique', '2022-01-27 08:27:03', 83);
INSERT INTO public.photo VALUES (95, 'http://whatsapp.com/en-ca', 58, 'interdum enim non nisi. Aenean eget', '2021-04-29 06:37:31', 78);
INSERT INTO public.photo VALUES (96, 'http://google.com/sub', 93, 'eu nulla at sem molestie sodales.', '2021-07-26 02:21:40', 79);
INSERT INTO public.photo VALUES (97, 'https://zoom.us/site', 39, 'tortor. Integer aliquam adipiscing lacus. Ut', '2023-03-10 18:01:18', 61);
INSERT INTO public.photo VALUES (98, 'http://netflix.com/en-ca', 2, 'lorem eu metus. In lorem. Donec', '2023-03-08 03:47:31', 85);
INSERT INTO public.photo VALUES (99, 'http://facebook.com/sub', 42, 'morbi tristique senectus et netus et', '2021-09-15 09:47:13', 54);
INSERT INTO public.photo VALUES (100, 'http://guardian.co.uk/sub/cars7', 75, 'In faucibus. Morbi vehicula. Pellentesque tincidunt', '2021-12-19 08:32:26', 34);


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: test_user
--



--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: test_user
--

INSERT INTO public.reviews VALUES (1, 86, 2, 'amet diam eu dolor egestas rhoncus. Proin', 'Jan 6, 2023');
INSERT INTO public.reviews VALUES (2, 33, 27, 'neque. Nullam nisl.', 'Oct 4, 2022');
INSERT INTO public.reviews VALUES (3, 3, 70, 'semper erat, in', 'Mar 11, 2022');
INSERT INTO public.reviews VALUES (4, 70, 88, 'velit in aliquet lobortis, nisi nibh lacinia', 'Aug 28, 2021');
INSERT INTO public.reviews VALUES (5, 75, 64, 'magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed,', 'May 20, 2021');
INSERT INTO public.reviews VALUES (6, 7, 22, 'ipsum dolor sit amet, consectetuer', 'Apr 17, 2021');
INSERT INTO public.reviews VALUES (7, 52, 51, 'quam. Curabitur vel lectus. Cum sociis', 'Aug 19, 2021');
INSERT INTO public.reviews VALUES (8, 13, 44, 'non sapien molestie', 'Jan 13, 2023');
INSERT INTO public.reviews VALUES (9, 94, 30, 'pellentesque massa lobortis ultrices. Vivamus rhoncus.', 'Apr 30, 2021');
INSERT INTO public.reviews VALUES (10, 8, 31, 'faucibus id, libero. Donec consectetuer mauris id sapien. Cras', 'Oct 3, 2021');
INSERT INTO public.reviews VALUES (11, 85, 93, 'sociosqu', 'Jul 20, 2021');
INSERT INTO public.reviews VALUES (12, 38, 6, 'dui. Cras pellentesque. Sed dictum. Proin eget odio.', 'Aug 3, 2022');
INSERT INTO public.reviews VALUES (13, 74, 66, 'scelerisque, lorem ipsum sodales purus, in molestie tortor nibh', 'Aug 26, 2022');
INSERT INTO public.reviews VALUES (14, 33, 97, 'eu neque pellentesque massa lobortis ultrices. Vivamus', 'Nov 19, 2021');
INSERT INTO public.reviews VALUES (15, 48, 92, 'aliquam eros turpis non', 'Feb 25, 2022');
INSERT INTO public.reviews VALUES (16, 19, 64, 'lacus. Mauris non dui nec urna suscipit nonummy. Fusce', 'Aug 17, 2021');
INSERT INTO public.reviews VALUES (17, 11, 32, 'libero lacus, varius et, euismod et, commodo', 'Jan 30, 2023');
INSERT INTO public.reviews VALUES (18, 85, 36, 'Aliquam adipiscing lobortis risus. In mi pede, nonummy ut,', 'May 3, 2021');
INSERT INTO public.reviews VALUES (19, 78, 80, 'tincidunt, nunc ac mattis', 'Jan 27, 2023');
INSERT INTO public.reviews VALUES (20, 46, 90, 'Curabitur egestas nunc sed libero. Proin', 'Jun 17, 2022');
INSERT INTO public.reviews VALUES (21, 77, 75, 'ipsum dolor sit amet, consectetuer adipiscing elit.', 'Feb 14, 2022');
INSERT INTO public.reviews VALUES (22, 28, 75, 'dolor, nonummy ac,', 'Feb 12, 2022');
INSERT INTO public.reviews VALUES (23, 77, 62, 'nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque', 'Aug 4, 2021');
INSERT INTO public.reviews VALUES (24, 48, 54, 'In ornare sagittis', 'Oct 20, 2022');
INSERT INTO public.reviews VALUES (25, 32, 17, 'interdum. Nunc sollicitudin commodo ipsum. Suspendisse', 'Jul 19, 2022');
INSERT INTO public.reviews VALUES (26, 74, 88, 'pharetra nibh. Aliquam ornare,', 'May 16, 2021');
INSERT INTO public.reviews VALUES (27, 82, 77, 'eros non enim', 'Jun 13, 2021');
INSERT INTO public.reviews VALUES (28, 53, 98, 'consequat purus. Maecenas libero est, congue a, aliquet vel,', 'Apr 2, 2023');
INSERT INTO public.reviews VALUES (29, 54, 63, 'nec, malesuada ut,', 'Mar 18, 2023');
INSERT INTO public.reviews VALUES (30, 80, 48, 'risus odio, auctor vitae, aliquet nec, imperdiet nec,', 'Nov 11, 2021');
INSERT INTO public.reviews VALUES (31, 55, 21, 'amet, consectetuer adipiscing elit. Etiam laoreet, libero', 'Aug 4, 2021');
INSERT INTO public.reviews VALUES (32, 25, 31, 'id enim. Curabitur massa. Vestibulum accumsan neque et nunc.', 'Jun 18, 2021');
INSERT INTO public.reviews VALUES (33, 90, 90, 'ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 'Sep 3, 2022');
INSERT INTO public.reviews VALUES (34, 45, 53, 'odio semper', 'May 15, 2022');
INSERT INTO public.reviews VALUES (35, 66, 7, 'tortor. Integer aliquam adipiscing lacus. Ut nec urna', 'Aug 12, 2022');
INSERT INTO public.reviews VALUES (36, 76, 60, 'gravida mauris ut mi. Duis risus odio, auctor vitae,', 'Jan 26, 2023');
INSERT INTO public.reviews VALUES (37, 70, 75, 'nunc. Quisque ornare tortor at risus.', 'Aug 11, 2021');
INSERT INTO public.reviews VALUES (38, 25, 5, 'nulla at sem molestie sodales. Mauris blandit enim', 'Dec 13, 2022');
INSERT INTO public.reviews VALUES (39, 83, 41, 'Donec vitae erat vel pede blandit congue. In', 'Nov 30, 2022');
INSERT INTO public.reviews VALUES (40, 53, 4, 'Vivamus nisi. Mauris nulla.', 'Jan 17, 2023');
INSERT INTO public.reviews VALUES (41, 13, 21, 'non,', 'Oct 15, 2022');
INSERT INTO public.reviews VALUES (42, 11, 60, 'sem molestie sodales. Mauris blandit enim', 'Jul 7, 2022');
INSERT INTO public.reviews VALUES (43, 90, 89, 'magnis dis parturient montes, nascetur ridiculus mus.', 'Aug 25, 2022');
INSERT INTO public.reviews VALUES (44, 40, 30, 'at auctor', 'Dec 16, 2022');
INSERT INTO public.reviews VALUES (45, 91, 15, 'tristique senectus et netus et', 'Sep 7, 2021');
INSERT INTO public.reviews VALUES (46, 7, 72, 'a felis ullamcorper viverra. Maecenas iaculis aliquet diam.', 'May 14, 2021');
INSERT INTO public.reviews VALUES (47, 16, 99, 'Aliquam', 'Dec 12, 2021');
INSERT INTO public.reviews VALUES (48, 32, 10, 'quam dignissim pharetra. Nam ac nulla. In tincidunt', 'Aug 13, 2022');
INSERT INTO public.reviews VALUES (49, 36, 8, 'rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero.', 'May 15, 2021');
INSERT INTO public.reviews VALUES (50, 45, 81, 'commodo ipsum. Suspendisse non', 'Sep 29, 2022');
INSERT INTO public.reviews VALUES (51, 19, 81, 'semper tellus id nunc interdum feugiat. Sed nec', 'Aug 15, 2021');
INSERT INTO public.reviews VALUES (52, 77, 70, 'eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean', 'Aug 29, 2022');
INSERT INTO public.reviews VALUES (53, 43, 19, 'a purus. Duis', 'Dec 5, 2021');
INSERT INTO public.reviews VALUES (54, 20, 57, 'natoque penatibus et magnis dis parturient montes, nascetur', 'Jul 23, 2021');
INSERT INTO public.reviews VALUES (55, 53, 31, 'Curae Phasellus ornare. Fusce mollis. Duis sit amet', 'Jul 11, 2022');
INSERT INTO public.reviews VALUES (56, 33, 77, 'convallis', 'Jul 12, 2021');
INSERT INTO public.reviews VALUES (57, 16, 79, 'eros nec tellus. Nunc lectus pede, ultrices', 'Nov 29, 2021');
INSERT INTO public.reviews VALUES (58, 96, 32, 'nulla at', 'Jan 3, 2023');
INSERT INTO public.reviews VALUES (59, 66, 85, 'ornare. Fusce mollis. Duis sit amet diam', 'Apr 10, 2022');
INSERT INTO public.reviews VALUES (60, 86, 47, 'lacus pede sagittis augue, eu tempor erat', 'Nov 2, 2021');
INSERT INTO public.reviews VALUES (61, 85, 34, 'eget ipsum. Suspendisse sagittis. Nullam vitae diam.', 'Sep 29, 2021');
INSERT INTO public.reviews VALUES (62, 88, 14, 'Duis cursus, diam at pretium aliquet, metus urna', 'Mar 28, 2023');
INSERT INTO public.reviews VALUES (63, 71, 9, 'a felis ullamcorper viverra. Maecenas iaculis aliquet diam.', 'Sep 26, 2021');
INSERT INTO public.reviews VALUES (64, 58, 76, 'Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu', 'Dec 14, 2021');
INSERT INTO public.reviews VALUES (65, 85, 6, 'pretium aliquet, metus urna convallis erat, eget tincidunt dui augue', 'Jul 17, 2022');
INSERT INTO public.reviews VALUES (66, 66, 13, 'libero. Proin sed', 'Jun 2, 2022');
INSERT INTO public.reviews VALUES (67, 33, 72, 'dolor, tempus', 'Sep 13, 2021');
INSERT INTO public.reviews VALUES (68, 64, 31, 'egestas. Sed pharetra,', 'Aug 30, 2022');
INSERT INTO public.reviews VALUES (69, 56, 51, 'dictum', 'Sep 3, 2021');
INSERT INTO public.reviews VALUES (70, 44, 60, 'facilisis. Suspendisse commodo tincidunt nibh.', 'Mar 23, 2022');
INSERT INTO public.reviews VALUES (71, 96, 1, 'egestas lacinia. Sed congue,', 'Aug 1, 2021');
INSERT INTO public.reviews VALUES (72, 92, 48, 'eget odio. Aliquam vulputate ullamcorper magna.', 'Jan 7, 2022');
INSERT INTO public.reviews VALUES (73, 51, 59, 'venenatis a, magna. Lorem ipsum dolor', 'Dec 19, 2021');
INSERT INTO public.reviews VALUES (74, 37, 7, 'sit amet risus. Donec', 'May 18, 2021');
INSERT INTO public.reviews VALUES (75, 99, 37, 'ante. Vivamus non lorem vitae odio sagittis', 'Nov 22, 2021');
INSERT INTO public.reviews VALUES (76, 26, 40, 'velit justo nec ante. Maecenas mi felis, adipiscing', 'Jun 28, 2021');
INSERT INTO public.reviews VALUES (77, 77, 67, 'at, libero. Morbi accumsan laoreet ipsum. Curabitur', 'May 9, 2021');
INSERT INTO public.reviews VALUES (78, 4, 13, 'Proin', 'Dec 23, 2022');
INSERT INTO public.reviews VALUES (79, 94, 74, 'fringilla mi lacinia mattis.', 'Oct 3, 2022');
INSERT INTO public.reviews VALUES (80, 42, 71, 'cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada', 'Dec 5, 2022');
INSERT INTO public.reviews VALUES (81, 33, 86, 'faucibus orci luctus et ultrices posuere', 'Jan 2, 2023');
INSERT INTO public.reviews VALUES (82, 77, 95, 'eleifend, nunc risus varius orci, in consequat enim diam', 'Dec 19, 2021');
INSERT INTO public.reviews VALUES (83, 89, 60, 'posuere, enim nisl elementum purus, accumsan interdum', 'Aug 30, 2021');
INSERT INTO public.reviews VALUES (84, 39, 75, 'taciti sociosqu ad litora torquent per conubia nostra, per', 'Aug 20, 2022');
INSERT INTO public.reviews VALUES (85, 86, 8, 'vitae dolor. Donec fringilla. Donec feugiat', 'Apr 1, 2023');
INSERT INTO public.reviews VALUES (86, 26, 34, 'tristique aliquet. Phasellus', 'May 20, 2021');
INSERT INTO public.reviews VALUES (87, 17, 90, 'ligula consectetuer rhoncus. Nullam velit dui, semper et,', 'Aug 27, 2022');
INSERT INTO public.reviews VALUES (88, 83, 68, 'nisl. Quisque fringilla euismod enim. Etiam gravida molestie', 'Sep 13, 2021');
INSERT INTO public.reviews VALUES (89, 47, 98, 'dignissim tempor arcu. Vestibulum ut', 'Nov 8, 2022');
INSERT INTO public.reviews VALUES (90, 55, 79, 'non lorem vitae odio', 'Dec 17, 2022');
INSERT INTO public.reviews VALUES (91, 58, 55, 'Fusce aliquet magna a neque. Nullam ut', 'Jan 5, 2023');
INSERT INTO public.reviews VALUES (92, 52, 22, 'sed libero. Proin sed turpis nec mauris blandit', 'Jul 17, 2021');
INSERT INTO public.reviews VALUES (93, 55, 31, 'metus. In nec', 'Jul 27, 2021');
INSERT INTO public.reviews VALUES (94, 12, 71, 'consectetuer rhoncus. Nullam velit dui, semper et, lacinia', 'Jan 25, 2022');
INSERT INTO public.reviews VALUES (95, 87, 89, 'Sed eu eros.', 'Mar 18, 2023');
INSERT INTO public.reviews VALUES (96, 43, 16, 'adipiscing non, luctus sit amet, faucibus ut, nulla.', 'Jan 23, 2022');
INSERT INTO public.reviews VALUES (97, 95, 28, 'risus a', 'Oct 2, 2021');
INSERT INTO public.reviews VALUES (98, 5, 23, 'in consectetuer ipsum nunc id enim. Curabitur', 'May 10, 2021');
INSERT INTO public.reviews VALUES (99, 1, 57, 'et magnis dis parturient', 'Feb 7, 2023');
INSERT INTO public.reviews VALUES (100, 69, 9, 'luctus lobortis.', 'Aug 22, 2022');


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: test_user
--

INSERT INTO public.roles VALUES (1, 'исполнитель');
INSERT INTO public.roles VALUES (2, 'клиент');
INSERT INTO public.roles VALUES (3, 'работник');


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: test_user
--

INSERT INTO public.services VALUES (1, 'libero nec', 1166, '1:36 AM');
INSERT INTO public.services VALUES (2, 'non, vestibulum', 1319, '1:59 AM');
INSERT INTO public.services VALUES (3, 'Donec egestas.', 1377, '2:39 AM');
INSERT INTO public.services VALUES (4, 'eleifend vitae,', 1100, '12:20 AM');
INSERT INTO public.services VALUES (5, 'commodo at,', 1296, '1:25 AM');
INSERT INTO public.services VALUES (6, 'Suspendisse aliquet,', 1146, '12:28 AM');
INSERT INTO public.services VALUES (7, 'Duis dignissim', 1256, '1:34 AM');
INSERT INTO public.services VALUES (8, 'nisl. Maecenas', 1221, '1:45 AM');
INSERT INTO public.services VALUES (9, 'eu, odio.', 970, '2:37 AM');
INSERT INTO public.services VALUES (10, 'odio. Aliquam', 1318, '12:28 AM');


--
-- Data for Name: statuses_works; Type: TABLE DATA; Schema: public; Owner: test_user
--

INSERT INTO public.statuses_works VALUES (1, 'записан');
INSERT INTO public.statuses_works VALUES (2, 'выполнен');
INSERT INTO public.statuses_works VALUES (3, 'перенесен');
INSERT INTO public.statuses_works VALUES (4, 'отменен');
INSERT INTO public.statuses_works VALUES (5, 'опоздал');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: test_user
--

INSERT INTO public.users VALUES (1, 'Dennis', 'Fatima', 'rutrum.eu.ultrices@yahoo.com', '1-882-438-3042', 'arcu.', '06/07/2021');
INSERT INTO public.users VALUES (2, 'Avram', 'Brielle', 'vitae.risus@hotmail.com', '1-131-537-8162', 'mauris,', '12/03/2023');
INSERT INTO public.users VALUES (3, 'Malachi', 'Risa', 'arcu@hotmail.com', '1-532-778-0926', 'Ut', '07/08/2021');
INSERT INTO public.users VALUES (4, 'Scott', 'Ivory', 'imperdiet.ullamcorper@protonmail.net', '1-967-621-1236', 'facilisi.', '28/10/2022');
INSERT INTO public.users VALUES (5, 'Ferdinand', 'Oprah', 'nunc@hotmail.ca', '1-183-518-0339', 'montes,', '08/03/2022');
INSERT INTO public.users VALUES (6, 'Kareem', 'Astra', 'aenean.eget.metus@outlook.ca', '1-285-426-6466', 'eu', '14/10/2021');
INSERT INTO public.users VALUES (7, 'Walker', 'Dara', 'suspendisse@google.ca', '1-804-202-8597', 'at', '08/02/2023');
INSERT INTO public.users VALUES (8, 'Curran', 'Shay', 'facilisis.magna@yahoo.couk', '1-245-844-7606', 'sem', '18/07/2022');
INSERT INTO public.users VALUES (9, 'Anthony', 'Rowan', 'malesuada.vel@google.com', '1-555-625-8623', 'Nullam', '14/08/2021');
INSERT INTO public.users VALUES (10, 'Lee', 'Alexis', 'sed.facilisis@yahoo.org', '1-703-585-2883', 'lacus.', '04/04/2021');
INSERT INTO public.users VALUES (11, 'Alden', 'Xandra', 'ante.lectus@hotmail.edu', '1-546-347-2872', 'ut,', '10/07/2022');
INSERT INTO public.users VALUES (12, 'Rogan', 'Vivian', 'vestibulum.mauris.magna@google.com', '1-416-675-5713', 'luctus', '21/11/2022');
INSERT INTO public.users VALUES (13, 'Burton', 'Adrienne', 'consequat.auctor@outlook.com', '1-160-866-7186', 'aliquet,', '16/03/2022');
INSERT INTO public.users VALUES (14, 'Drake', 'Daria', 'cursus.non@google.net', '1-672-864-3563', 'Duis', '07/03/2022');
INSERT INTO public.users VALUES (15, 'Raymond', 'Irene', 'dolor.nulla@icloud.org', '1-221-317-6747', 'cursus', '02/04/2021');
INSERT INTO public.users VALUES (16, 'Graiden', 'Skyler', 'dis.parturient.montes@outlook.couk', '1-723-965-2576', 'varius', '23/09/2021');
INSERT INTO public.users VALUES (17, 'Dale', 'Halla', 'non.hendrerit@protonmail.ca', '1-987-725-1357', 'aliquam', '02/10/2021');
INSERT INTO public.users VALUES (18, 'Edward', 'Yen', 'laoreet.libero@protonmail.net', '1-211-375-2586', 'Vivamus', '15/07/2022');
INSERT INTO public.users VALUES (19, 'Ciaran', 'Candice', 'risus.varius.orci@google.couk', '1-514-543-2626', 'et', '06/09/2022');
INSERT INTO public.users VALUES (20, 'Malcolm', 'Sacha', 'dolor@google.ca', '1-360-381-3277', 'ac', '10/11/2021');
INSERT INTO public.users VALUES (21, 'Jermaine', 'Helen', 'massa.lobortis.ultrices@outlook.com', '1-468-384-8756', 'urna', '23/02/2023');
INSERT INTO public.users VALUES (22, 'Nolan', 'Breanna', 'laoreet.lectus@outlook.org', '1-664-961-8520', 'porttitor', '10/09/2022');
INSERT INTO public.users VALUES (23, 'Jonas', 'Leandra', 'eu.nulla@outlook.edu', '1-573-235-7112', 'sit', '29/12/2021');
INSERT INTO public.users VALUES (24, 'Carl', 'Sharon', 'in.sodales.elit@aol.org', '1-224-948-4682', 'Sed', '14/08/2022');
INSERT INTO public.users VALUES (25, 'Hector', 'Leah', 'sed.libero@hotmail.couk', '1-216-671-2407', 'felis,', '15/06/2022');
INSERT INTO public.users VALUES (26, 'Vernon', 'Christine', 'bibendum@icloud.org', '1-541-259-8814', 'Sed', '17/10/2021');
INSERT INTO public.users VALUES (27, 'Arthur', 'Odessa', 'mauris.integer@outlook.couk', '1-437-147-5287', 'arcu.', '10/06/2022');
INSERT INTO public.users VALUES (28, 'Harlan', 'Heidi', 'erat.sed@google.com', '1-423-882-8415', 'pede.', '19/01/2023');
INSERT INTO public.users VALUES (29, 'Herman', 'Kyla', 'nam.nulla@aol.edu', '1-213-471-4926', 'eget', '10/01/2023');
INSERT INTO public.users VALUES (30, 'Colin', 'Lani', 'fermentum.arcu@icloud.net', '1-574-667-3581', 'egestas', '10/07/2021');
INSERT INTO public.users VALUES (31, 'Quamar', 'Odessa', 'sed.orci@aol.couk', '1-995-852-6810', 'vulputate', '11/03/2023');
INSERT INTO public.users VALUES (32, 'Gil', 'Deborah', 'cursus.et.magna@outlook.edu', '1-841-460-2379', 'ut', '09/02/2023');
INSERT INTO public.users VALUES (33, 'Macon', 'Madeline', 'mauris.ut.quam@protonmail.com', '1-541-415-6771', 'dui', '19/11/2022');
INSERT INTO public.users VALUES (34, 'Chase', 'Alexa', 'amet@aol.ca', '1-984-615-5363', 'in,', '20/02/2022');
INSERT INTO public.users VALUES (35, 'Lance', 'Montana', 'cum@yahoo.couk', '1-777-374-7941', 'Duis', '12/01/2023');
INSERT INTO public.users VALUES (36, 'Kaseem', 'Ignacia', 'nascetur.ridiculus@protonmail.couk', '1-809-744-5736', 'nunc', '25/11/2021');
INSERT INTO public.users VALUES (37, 'Lev', 'Amy', 'sociis.natoque.penatibus@hotmail.com', '1-600-816-5381', 'vitae,', '01/12/2022');
INSERT INTO public.users VALUES (38, 'Todd', 'Josephine', 'etiam.imperdiet@protonmail.couk', '1-788-385-4301', 'fames', '20/06/2022');
INSERT INTO public.users VALUES (39, 'Dustin', 'Nora', 'ullamcorper@outlook.org', '1-729-255-6145', 'sociis', '27/06/2022');
INSERT INTO public.users VALUES (40, 'Samson', 'Nadine', 'fusce.aliquam@aol.edu', '1-215-227-4224', 'cursus', '10/02/2023');
INSERT INTO public.users VALUES (41, 'Hilel', 'Jenette', 'amet.metus@hotmail.com', '1-398-424-3813', 'eros', '10/12/2021');
INSERT INTO public.users VALUES (42, 'Rogan', 'Audrey', 'penatibus.et@protonmail.org', '1-524-935-3360', 'massa.', '20/12/2022');
INSERT INTO public.users VALUES (43, 'Kuame', 'Darryl', 'semper.pretium@hotmail.net', '1-403-935-3821', 'Integer', '15/08/2021');
INSERT INTO public.users VALUES (44, 'Honorato', 'Candace', 'suspendisse.commodo@outlook.org', '1-678-475-1343', 'netus', '06/01/2023');
INSERT INTO public.users VALUES (45, 'Oliver', 'Aiko', 'metus@icloud.edu', '1-340-512-8453', 'nunc', '11/01/2023');
INSERT INTO public.users VALUES (46, 'Hoyt', 'Jada', 'risus.duis@icloud.ca', '1-435-701-4355', 'Integer', '26/10/2022');
INSERT INTO public.users VALUES (47, 'Marshall', 'Quinn', 'vestibulum.ante@outlook.couk', '1-978-856-7410', 'blandit', '07/07/2022');
INSERT INTO public.users VALUES (48, 'Wallace', 'Galena', 'velit.eu@icloud.org', '1-789-351-8315', 'Duis', '17/01/2023');
INSERT INTO public.users VALUES (49, 'Kasimir', 'Galena', 'accumsan@yahoo.net', '1-345-260-7278', 'consectetuer', '28/06/2022');
INSERT INTO public.users VALUES (50, 'Philip', 'Hadley', 'amet.consectetuer.adipiscing@aol.ca', '1-334-527-7666', 'lacus', '06/06/2022');
INSERT INTO public.users VALUES (51, 'Martin', 'Martha', 'ad.litora.torquent@icloud.couk', '1-926-217-5597', 'Duis', '16/06/2022');
INSERT INTO public.users VALUES (52, 'Nero', 'Idola', 'gravida.aliquam.tincidunt@protonmail.org', '1-436-873-7719', 'eu,', '24/02/2023');
INSERT INTO public.users VALUES (53, 'Paul', 'Moana', 'egestas@outlook.ca', '1-857-835-7715', 'felis.', '08/11/2022');
INSERT INTO public.users VALUES (54, 'Bert', 'Sybill', 'et.nunc@icloud.ca', '1-777-137-1302', 'est', '16/05/2021');
INSERT INTO public.users VALUES (55, 'Dale', 'Hayfa', 'sed.dictum.eleifend@protonmail.org', '1-993-347-2686', 'magnis', '29/12/2022');
INSERT INTO public.users VALUES (56, 'Holmes', 'Urielle', 'sed.libero.proin@yahoo.net', '1-426-224-8776', 'sapien', '02/01/2023');
INSERT INTO public.users VALUES (57, 'Robert', 'Gillian', 'ac.mattis@outlook.org', '1-352-575-4437', 'adipiscing', '22/07/2021');
INSERT INTO public.users VALUES (58, 'Galvin', 'Eve', 'sed@protonmail.org', '1-794-468-7220', 'lectus', '01/09/2021');
INSERT INTO public.users VALUES (59, 'Driscoll', 'Shaeleigh', 'cras@hotmail.com', '1-427-897-9173', 'pretium', '23/10/2022');
INSERT INTO public.users VALUES (60, 'Clarke', 'Regina', 'vitae.nibh@icloud.org', '1-859-426-0620', 'Cras', '07/09/2022');
INSERT INTO public.users VALUES (61, 'Flynn', 'Irene', 'duis@aol.edu', '1-436-458-2323', 'eleifend', '23/03/2023');
INSERT INTO public.users VALUES (62, 'Francis', 'Ella', 'mattis.ornare@google.net', '1-388-458-6718', 'lorem', '04/05/2022');
INSERT INTO public.users VALUES (63, 'Timon', 'Halee', 'aliquam.ultrices@protonmail.org', '1-989-427-7816', 'sem.', '19/01/2023');
INSERT INTO public.users VALUES (64, 'Hakeem', 'Iona', 'sed.dolor@outlook.couk', '1-475-613-3987', 'est', '29/08/2021');
INSERT INTO public.users VALUES (65, 'Ira', 'Josephine', 'eget@hotmail.edu', '1-305-844-7481', 'tincidunt', '05/01/2022');
INSERT INTO public.users VALUES (66, 'Phillip', 'Desirae', 'lorem.eget.mollis@protonmail.edu', '1-431-438-6665', 'iaculis', '08/03/2022');
INSERT INTO public.users VALUES (67, 'Louis', 'Lydia', 'imperdiet.ornare@yahoo.couk', '1-263-538-9067', 'nibh.', '19/10/2022');
INSERT INTO public.users VALUES (68, 'Barrett', 'Kylie', 'non@aol.org', '1-377-240-4368', 'cursus', '27/10/2021');
INSERT INTO public.users VALUES (69, 'Yoshio', 'Regan', 'sapien@icloud.couk', '1-866-848-5508', 'diam', '25/02/2023');
INSERT INTO public.users VALUES (70, 'Salvador', 'Winter', 'ut.pellentesque.eget@yahoo.ca', '1-767-560-1137', 'eget', '06/04/2022');
INSERT INTO public.users VALUES (71, 'Mohammad', 'Sasha', 'semper.auctor.mauris@icloud.couk', '1-385-234-8451', 'penatibus', '27/10/2021');
INSERT INTO public.users VALUES (72, 'Carl', 'Liberty', 'ultrices.iaculis@icloud.ca', '1-448-119-5275', 'nunc', '12/09/2021');
INSERT INTO public.users VALUES (73, 'Garth', 'Carolyn', 'pulvinar.arcu.et@yahoo.couk', '1-146-650-1675', 'orci', '31/08/2021');
INSERT INTO public.users VALUES (74, 'Todd', 'Tatyana', 'feugiat.tellus.lorem@outlook.ca', '1-243-642-6130', 'ipsum', '27/03/2022');
INSERT INTO public.users VALUES (75, 'Dieter', 'Meredith', 'felis.eget@aol.ca', '1-805-613-4214', 'Maecenas', '14/11/2022');
INSERT INTO public.users VALUES (76, 'Bert', 'Priscilla', 'dolor.tempus@google.edu', '1-983-657-9408', 'dictum.', '20/11/2021');
INSERT INTO public.users VALUES (77, 'Nicholas', 'Faith', 'primis.in.faucibus@outlook.org', '1-542-259-7821', 'Ut', '18/08/2021');
INSERT INTO public.users VALUES (78, 'Benjamin', 'Grace', 'venenatis@google.net', '1-322-777-2552', 'libero.', '23/06/2022');
INSERT INTO public.users VALUES (79, 'Sean', 'Desiree', 'arcu.vel@protonmail.org', '1-470-453-9993', 'Integer', '01/04/2022');
INSERT INTO public.users VALUES (80, 'Walker', 'Ora', 'malesuada@hotmail.net', '1-492-312-3625', 'tempor', '24/02/2022');
INSERT INTO public.users VALUES (81, 'Todd', 'Blythe', 'mauris.id@icloud.ca', '1-717-611-7385', 'consectetuer,', '23/11/2021');
INSERT INTO public.users VALUES (82, 'Ulysses', 'Fay', 'mauris@aol.ca', '1-731-869-8757', 'Nulla', '25/11/2022');
INSERT INTO public.users VALUES (83, 'Cullen', 'Sylvia', 'ac.mi@icloud.net', '1-719-691-8224', 'senectus', '08/03/2023');
INSERT INTO public.users VALUES (84, 'Price', 'Lynn', 'integer.urna.vivamus@aol.edu', '1-447-616-1368', 'auctor', '13/06/2021');
INSERT INTO public.users VALUES (85, 'Kuame', 'Sonia', 'dis.parturient@hotmail.org', '1-145-587-1211', 'in,', '17/10/2022');
INSERT INTO public.users VALUES (86, 'Hyatt', 'Maggie', 'sed.consequat@outlook.org', '1-739-642-6782', 'imperdiet', '18/01/2023');
INSERT INTO public.users VALUES (87, 'Merritt', 'Nell', 'dapibus.ligula@protonmail.com', '1-423-387-4017', 'Vestibulum', '24/08/2021');
INSERT INTO public.users VALUES (88, 'Macaulay', 'Shelley', 'pharetra@hotmail.edu', '1-725-619-4591', 'Pellentesque', '30/07/2022');
INSERT INTO public.users VALUES (89, 'Stuart', 'Ifeoma', 'sed.pede.cum@hotmail.net', '1-563-753-9175', 'ligula', '23/03/2023');
INSERT INTO public.users VALUES (90, 'Vernon', 'Cailin', 'sed@outlook.net', '1-107-737-9511', 'odio.', '25/12/2022');
INSERT INTO public.users VALUES (91, 'Lucas', 'Camilla', 'malesuada.vel@icloud.com', '1-401-700-7198', 'leo.', '25/08/2021');
INSERT INTO public.users VALUES (92, 'Hiram', 'Althea', 'hendrerit@yahoo.com', '1-811-412-6272', 'Class', '20/01/2022');
INSERT INTO public.users VALUES (93, 'Demetrius', 'Ramona', 'ligula@protonmail.com', '1-125-311-8633', 'Nunc', '04/04/2022');
INSERT INTO public.users VALUES (94, 'David', 'Robin', 'metus.aenean@protonmail.net', '1-432-919-6882', 'odio', '30/08/2022');
INSERT INTO public.users VALUES (95, 'Odysseus', 'Deanna', 'diam.sed@hotmail.com', '1-585-258-5927', 'vulputate,', '24/10/2022');
INSERT INTO public.users VALUES (96, 'Rudyard', 'Hillary', 'suspendisse@outlook.ca', '1-830-882-3679', 'Duis', '12/02/2023');
INSERT INTO public.users VALUES (97, 'Harrison', 'Marny', 'auctor.ullamcorper@protonmail.net', '1-421-162-3262', 'aliquet', '29/08/2021');
INSERT INTO public.users VALUES (98, 'Tobias', 'Dana', 'quis.massa@google.com', '1-674-705-3987', 'egestas.', '14/02/2022');
INSERT INTO public.users VALUES (99, 'Sylvester', 'Irene', 'etiam@protonmail.org', '1-748-510-5507', 'dolor', '22/01/2023');
INSERT INTO public.users VALUES (100, 'Thor', 'Leigh', 'sed@hotmail.com', '1-982-701-7105', 'diam.', '23/04/2021');


--
-- Name: comment_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.comment_photo_id_seq', 1, false);


--
-- Name: completed_works_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.completed_works_id_seq', 1, false);


--
-- Name: like_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.like_photo_id_seq', 1, false);


--
-- Name: photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.photo_id_seq', 1, false);


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.profiles_id_seq', 1, false);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.reviews_id_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.services_id_seq', 1, false);


--
-- Name: statuses_works_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.statuses_works_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: comment_photo comment_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.comment_photo
    ADD CONSTRAINT comment_photo_pkey PRIMARY KEY (id);


--
-- Name: completed_works completed_works_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.completed_works
    ADD CONSTRAINT completed_works_pkey PRIMARY KEY (id);


--
-- Name: like_photo like_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.like_photo
    ADD CONSTRAINT like_photo_pkey PRIMARY KEY (id);


--
-- Name: photo photo_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_pkey PRIMARY KEY (id);


--
-- Name: photo photo_url_key; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_url_key UNIQUE (url);


--
-- Name: profiles profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- Name: statuses_works statuses_works_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.statuses_works
    ADD CONSTRAINT statuses_works_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_phone_key; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: comment_photo comment_photo_owner_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.comment_photo
    ADD CONSTRAINT comment_photo_owner_id_fk FOREIGN KEY (owner_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: comment_photo comment_photo_photo_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.comment_photo
    ADD CONSTRAINT comment_photo_photo_id_fk FOREIGN KEY (owner_id) REFERENCES public.photo(id) ON DELETE CASCADE;


--
-- Name: completed_works completed_works_consumer_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.completed_works
    ADD CONSTRAINT completed_works_consumer_user_id_fk FOREIGN KEY (consumer_user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: completed_works completed_works_executor_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.completed_works
    ADD CONSTRAINT completed_works_executor_user_id_fk FOREIGN KEY (executor_user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: completed_works completed_works_services_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.completed_works
    ADD CONSTRAINT completed_works_services_id_fk FOREIGN KEY (services_id) REFERENCES public.services(id) ON DELETE CASCADE;


--
-- Name: completed_works completed_works_status_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.completed_works
    ADD CONSTRAINT completed_works_status_id_fk FOREIGN KEY (status_id) REFERENCES public.statuses_works(id) ON DELETE CASCADE;


--
-- Name: like_photo like_photo_owner_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.like_photo
    ADD CONSTRAINT like_photo_owner_id_fk FOREIGN KEY (owner_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: like_photo liket_photo_photo_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.like_photo
    ADD CONSTRAINT liket_photo_photo_id_fk FOREIGN KEY (photo_id) REFERENCES public.photo(id) ON DELETE CASCADE;


--
-- Name: photo photo_owner_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_owner_id_fk FOREIGN KEY (owner_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: profiles profiles_role_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_role_id_fk FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: profiles profiles_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: reviews reviews_from_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_from_user_id_fk FOREIGN KEY (from_user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: reviews reviews_from_user_idd_fk; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_from_user_idd_fk FOREIGN KEY (from_user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: reviews reviews_to_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_to_user_id_fk FOREIGN KEY (to_user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

