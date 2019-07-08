--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

-- Started on 2019-07-08 22:39:18

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

SET default_with_oids = false;

--
-- TOC entry 198 (class 1259 OID 16506)
-- Name: Admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Admin" (
    "Id_Admin" integer NOT NULL,
    "Admin_Name" character varying(100),
    "Password" character varying(50)
);


ALTER TABLE public."Admin" OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16504)
-- Name: Admin_Id_Admin_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Admin_Id_Admin_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Admin_Id_Admin_seq" OWNER TO postgres;

--
-- TOC entry 2874 (class 0 OID 0)
-- Dependencies: 197
-- Name: Admin_Id_Admin_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Admin_Id_Admin_seq" OWNED BY public."Admin"."Id_Admin";


--
-- TOC entry 206 (class 1259 OID 16538)
-- Name: Complaint; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Complaint" (
    "Id_Complaint" integer NOT NULL,
    "Complain" text,
    "EmployeeId" integer NOT NULL,
    "EmployerId" integer NOT NULL,
    "StatusId" integer NOT NULL
);


ALTER TABLE public."Complaint" OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16536)
-- Name: Complaint_Id_Complaint_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Complaint_Id_Complaint_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Complaint_Id_Complaint_seq" OWNER TO postgres;

--
-- TOC entry 2875 (class 0 OID 0)
-- Dependencies: 205
-- Name: Complaint_Id_Complaint_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Complaint_Id_Complaint_seq" OWNED BY public."Complaint"."Id_Complaint";


--
-- TOC entry 200 (class 1259 OID 16514)
-- Name: Employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Employee" (
    "Id_Employee" integer NOT NULL,
    "Employee_Name" character varying(100),
    "Bu" character varying(50),
    "Password" character varying(100)
);


ALTER TABLE public."Employee" OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16512)
-- Name: Employee_Id_Employee_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Employee_Id_Employee_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Employee_Id_Employee_seq" OWNER TO postgres;

--
-- TOC entry 2876 (class 0 OID 0)
-- Dependencies: 199
-- Name: Employee_Id_Employee_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Employee_Id_Employee_seq" OWNED BY public."Employee"."Id_Employee";


--
-- TOC entry 202 (class 1259 OID 16522)
-- Name: Employer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Employer" (
    "Id_Employer" integer NOT NULL,
    "Employer_Name" character varying(100),
    "Bu" character varying(50),
    "Password" character varying(100)
);


ALTER TABLE public."Employer" OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16520)
-- Name: Employer_Id_Employer_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Employer_Id_Employer_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Employer_Id_Employer_seq" OWNER TO postgres;

--
-- TOC entry 2877 (class 0 OID 0)
-- Dependencies: 201
-- Name: Employer_Id_Employer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Employer_Id_Employer_seq" OWNED BY public."Employer"."Id_Employer";


--
-- TOC entry 204 (class 1259 OID 16530)
-- Name: Status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Status" (
    "Id_Status" integer NOT NULL,
    "Value" character varying(20)
);


ALTER TABLE public."Status" OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16528)
-- Name: Status_Id_Status_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Status_Id_Status_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Status_Id_Status_seq" OWNER TO postgres;

--
-- TOC entry 2878 (class 0 OID 0)
-- Dependencies: 203
-- Name: Status_Id_Status_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Status_Id_Status_seq" OWNED BY public."Status"."Id_Status";


--
-- TOC entry 196 (class 1259 OID 16499)
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO postgres;

--
-- TOC entry 2714 (class 2604 OID 16509)
-- Name: Admin Id_Admin; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Admin" ALTER COLUMN "Id_Admin" SET DEFAULT nextval('public."Admin_Id_Admin_seq"'::regclass);


--
-- TOC entry 2718 (class 2604 OID 16541)
-- Name: Complaint Id_Complaint; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Complaint" ALTER COLUMN "Id_Complaint" SET DEFAULT nextval('public."Complaint_Id_Complaint_seq"'::regclass);


--
-- TOC entry 2715 (class 2604 OID 16517)
-- Name: Employee Id_Employee; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employee" ALTER COLUMN "Id_Employee" SET DEFAULT nextval('public."Employee_Id_Employee_seq"'::regclass);


--
-- TOC entry 2716 (class 2604 OID 16525)
-- Name: Employer Id_Employer; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employer" ALTER COLUMN "Id_Employer" SET DEFAULT nextval('public."Employer_Id_Employer_seq"'::regclass);


--
-- TOC entry 2717 (class 2604 OID 16533)
-- Name: Status Id_Status; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Status" ALTER COLUMN "Id_Status" SET DEFAULT nextval('public."Status_Id_Status_seq"'::regclass);


--
-- TOC entry 2860 (class 0 OID 16506)
-- Dependencies: 198
-- Data for Name: Admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Admin" ("Id_Admin", "Admin_Name", "Password") FROM stdin;
\.


--
-- TOC entry 2868 (class 0 OID 16538)
-- Dependencies: 206
-- Data for Name: Complaint; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Complaint" ("Id_Complaint", "Complain", "EmployeeId", "EmployerId", "StatusId") FROM stdin;
\.


--
-- TOC entry 2862 (class 0 OID 16514)
-- Dependencies: 200
-- Data for Name: Employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Employee" ("Id_Employee", "Employee_Name", "Bu", "Password") FROM stdin;
\.


--
-- TOC entry 2864 (class 0 OID 16522)
-- Dependencies: 202
-- Data for Name: Employer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Employer" ("Id_Employer", "Employer_Name", "Bu", "Password") FROM stdin;
\.


--
-- TOC entry 2866 (class 0 OID 16530)
-- Dependencies: 204
-- Data for Name: Status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Status" ("Id_Status", "Value") FROM stdin;
\.


--
-- TOC entry 2858 (class 0 OID 16499)
-- Dependencies: 196
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
20190708142118_Initial	2.2.4-servicing-10062
\.


--
-- TOC entry 2879 (class 0 OID 0)
-- Dependencies: 197
-- Name: Admin_Id_Admin_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Admin_Id_Admin_seq"', 1, false);


--
-- TOC entry 2880 (class 0 OID 0)
-- Dependencies: 205
-- Name: Complaint_Id_Complaint_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Complaint_Id_Complaint_seq"', 1, false);


--
-- TOC entry 2881 (class 0 OID 0)
-- Dependencies: 199
-- Name: Employee_Id_Employee_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Employee_Id_Employee_seq"', 1, false);


--
-- TOC entry 2882 (class 0 OID 0)
-- Dependencies: 201
-- Name: Employer_Id_Employer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Employer_Id_Employer_seq"', 1, false);


--
-- TOC entry 2883 (class 0 OID 0)
-- Dependencies: 203
-- Name: Status_Id_Status_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Status_Id_Status_seq"', 1, false);


--
-- TOC entry 2722 (class 2606 OID 16511)
-- Name: Admin PK_Admin; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Admin"
    ADD CONSTRAINT "PK_Admin" PRIMARY KEY ("Id_Admin");


--
-- TOC entry 2733 (class 2606 OID 16546)
-- Name: Complaint PK_Complaint; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Complaint"
    ADD CONSTRAINT "PK_Complaint" PRIMARY KEY ("Id_Complaint");


--
-- TOC entry 2724 (class 2606 OID 16519)
-- Name: Employee PK_Employee; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employee"
    ADD CONSTRAINT "PK_Employee" PRIMARY KEY ("Id_Employee");


--
-- TOC entry 2726 (class 2606 OID 16527)
-- Name: Employer PK_Employer; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employer"
    ADD CONSTRAINT "PK_Employer" PRIMARY KEY ("Id_Employer");


--
-- TOC entry 2728 (class 2606 OID 16535)
-- Name: Status PK_Status; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Status"
    ADD CONSTRAINT "PK_Status" PRIMARY KEY ("Id_Status");


--
-- TOC entry 2720 (class 2606 OID 16503)
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- TOC entry 2729 (class 1259 OID 16562)
-- Name: IX_Complaint_EmployeeId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Complaint_EmployeeId" ON public."Complaint" USING btree ("EmployeeId");


--
-- TOC entry 2730 (class 1259 OID 16563)
-- Name: IX_Complaint_EmployerId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Complaint_EmployerId" ON public."Complaint" USING btree ("EmployerId");


--
-- TOC entry 2731 (class 1259 OID 16564)
-- Name: IX_Complaint_StatusId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Complaint_StatusId" ON public."Complaint" USING btree ("StatusId");


--
-- TOC entry 2734 (class 2606 OID 16547)
-- Name: Complaint FK_Complaint_Employee_EmployeeId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Complaint"
    ADD CONSTRAINT "FK_Complaint_Employee_EmployeeId" FOREIGN KEY ("EmployeeId") REFERENCES public."Employee"("Id_Employee") ON DELETE CASCADE;


--
-- TOC entry 2735 (class 2606 OID 16552)
-- Name: Complaint FK_Complaint_Employer_EmployerId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Complaint"
    ADD CONSTRAINT "FK_Complaint_Employer_EmployerId" FOREIGN KEY ("EmployerId") REFERENCES public."Employer"("Id_Employer") ON DELETE CASCADE;


--
-- TOC entry 2736 (class 2606 OID 16557)
-- Name: Complaint FK_Complaint_Status_StatusId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Complaint"
    ADD CONSTRAINT "FK_Complaint_Status_StatusId" FOREIGN KEY ("StatusId") REFERENCES public."Status"("Id_Status") ON DELETE CASCADE;


-- Completed on 2019-07-08 22:39:18

--
-- PostgreSQL database dump complete
--

