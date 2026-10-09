--
-- PostgreSQL database dump
--

\restrict bFVRZgiZhmLaobsKZzFa7bc0geNmLBUIcee8JCpxyd0VzXJVGSpbz9VPdVkvQiX

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-10-09 19:50:33

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
-- TOC entry 221 (class 1259 OID 16442)
-- Name: lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lesson (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    lesson_date timestamp without time zone NOT NULL,
    teacher_id integer NOT NULL
);


ALTER TABLE public.lesson OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16422)
-- Name: subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subject (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.subject OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16429)
-- Name: teacher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teacher (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    phone character varying(20),
    subject_id integer NOT NULL
);


ALTER TABLE public.teacher OWNER TO postgres;

--
-- TOC entry 4919 (class 0 OID 16442)
-- Dependencies: 221
-- Data for Name: lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lesson (id, name, lesson_date, teacher_id) FROM stdin;
1	Интегралы	2026-03-16 13:00:00	1
\.


--
-- TOC entry 4917 (class 0 OID 16422)
-- Dependencies: 219
-- Data for Name: subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subject (id, name) FROM stdin;
1	Математика
2	Физика
3	Информатика
\.


--
-- TOC entry 4918 (class 0 OID 16429)
-- Dependencies: 220
-- Data for Name: teacher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teacher (id, name, phone, subject_id) FROM stdin;
1	Александра	+7 866 555-35-35	1
\.


--
-- TOC entry 4767 (class 2606 OID 16450)
-- Name: lesson lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_pkey PRIMARY KEY (id);


--
-- TOC entry 4763 (class 2606 OID 16428)
-- Name: subject subject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_pkey PRIMARY KEY (id);


--
-- TOC entry 4765 (class 2606 OID 16436)
-- Name: teacher teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (id);


--
-- TOC entry 4769 (class 2606 OID 16451)
-- Name: lesson lesson_teacher_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_teacher_id_fkey FOREIGN KEY (teacher_id) REFERENCES public.teacher(id);


--
-- TOC entry 4768 (class 2606 OID 16437)
-- Name: teacher teacher_subject_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES public.subject(id);


-- Completed on 2026-10-09 19:50:33

--
-- PostgreSQL database dump complete
--

\unrestrict bFVRZgiZhmLaobsKZzFa7bc0geNmLBUIcee8JCpxyd0VzXJVGSpbz9VPdVkvQiX

