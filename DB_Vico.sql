toc.dat                                                                                             0000600 0004000 0002000 00000033014 13510767511 0014446 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           #        	        w            DB_Vico    11.4    11.4 0    7           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         9           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false         :           1262    16498    DB_Vico    DATABASE     �   CREATE DATABASE "DB_Vico" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Indonesian_Indonesia.1252' LC_CTYPE = 'Indonesian_Indonesia.1252';
    DROP DATABASE "DB_Vico";
             postgres    false         �            1259    16506    Admin    TABLE     �   CREATE TABLE public."Admin" (
    "Id_Admin" integer NOT NULL,
    "Admin_Name" character varying(100),
    "Password" character varying(50)
);
    DROP TABLE public."Admin";
       public         postgres    false         �            1259    16504    Admin_Id_Admin_seq    SEQUENCE     �   CREATE SEQUENCE public."Admin_Id_Admin_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Admin_Id_Admin_seq";
       public       postgres    false    198         ;           0    0    Admin_Id_Admin_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Admin_Id_Admin_seq" OWNED BY public."Admin"."Id_Admin";
            public       postgres    false    197         �            1259    16538 	   Complaint    TABLE     �   CREATE TABLE public."Complaint" (
    "Id_Complaint" integer NOT NULL,
    "Complain" text,
    "EmployeeId" integer NOT NULL,
    "EmployerId" integer NOT NULL,
    "StatusId" integer NOT NULL
);
    DROP TABLE public."Complaint";
       public         postgres    false         �            1259    16536    Complaint_Id_Complaint_seq    SEQUENCE     �   CREATE SEQUENCE public."Complaint_Id_Complaint_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Complaint_Id_Complaint_seq";
       public       postgres    false    206         <           0    0    Complaint_Id_Complaint_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."Complaint_Id_Complaint_seq" OWNED BY public."Complaint"."Id_Complaint";
            public       postgres    false    205         �            1259    16514    Employee    TABLE     �   CREATE TABLE public."Employee" (
    "Id_Employee" integer NOT NULL,
    "Employee_Name" character varying(100),
    "Bu" character varying(50),
    "Password" character varying(100)
);
    DROP TABLE public."Employee";
       public         postgres    false         �            1259    16512    Employee_Id_Employee_seq    SEQUENCE     �   CREATE SEQUENCE public."Employee_Id_Employee_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Employee_Id_Employee_seq";
       public       postgres    false    200         =           0    0    Employee_Id_Employee_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Employee_Id_Employee_seq" OWNED BY public."Employee"."Id_Employee";
            public       postgres    false    199         �            1259    16522    Employer    TABLE     �   CREATE TABLE public."Employer" (
    "Id_Employer" integer NOT NULL,
    "Employer_Name" character varying(100),
    "Bu" character varying(50),
    "Password" character varying(100)
);
    DROP TABLE public."Employer";
       public         postgres    false         �            1259    16520    Employer_Id_Employer_seq    SEQUENCE     �   CREATE SEQUENCE public."Employer_Id_Employer_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Employer_Id_Employer_seq";
       public       postgres    false    202         >           0    0    Employer_Id_Employer_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Employer_Id_Employer_seq" OWNED BY public."Employer"."Id_Employer";
            public       postgres    false    201         �            1259    16530    Status    TABLE     f   CREATE TABLE public."Status" (
    "Id_Status" integer NOT NULL,
    "Value" character varying(20)
);
    DROP TABLE public."Status";
       public         postgres    false         �            1259    16528    Status_Id_Status_seq    SEQUENCE     �   CREATE SEQUENCE public."Status_Id_Status_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Status_Id_Status_seq";
       public       postgres    false    204         ?           0    0    Status_Id_Status_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Status_Id_Status_seq" OWNED BY public."Status"."Id_Status";
            public       postgres    false    203         �            1259    16499    __EFMigrationsHistory    TABLE     �   CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);
 +   DROP TABLE public."__EFMigrationsHistory";
       public         postgres    false         �
           2604    16509    Admin Id_Admin    DEFAULT     v   ALTER TABLE ONLY public."Admin" ALTER COLUMN "Id_Admin" SET DEFAULT nextval('public."Admin_Id_Admin_seq"'::regclass);
 A   ALTER TABLE public."Admin" ALTER COLUMN "Id_Admin" DROP DEFAULT;
       public       postgres    false    197    198    198         �
           2604    16541    Complaint Id_Complaint    DEFAULT     �   ALTER TABLE ONLY public."Complaint" ALTER COLUMN "Id_Complaint" SET DEFAULT nextval('public."Complaint_Id_Complaint_seq"'::regclass);
 I   ALTER TABLE public."Complaint" ALTER COLUMN "Id_Complaint" DROP DEFAULT;
       public       postgres    false    205    206    206         �
           2604    16517    Employee Id_Employee    DEFAULT     �   ALTER TABLE ONLY public."Employee" ALTER COLUMN "Id_Employee" SET DEFAULT nextval('public."Employee_Id_Employee_seq"'::regclass);
 G   ALTER TABLE public."Employee" ALTER COLUMN "Id_Employee" DROP DEFAULT;
       public       postgres    false    199    200    200         �
           2604    16525    Employer Id_Employer    DEFAULT     �   ALTER TABLE ONLY public."Employer" ALTER COLUMN "Id_Employer" SET DEFAULT nextval('public."Employer_Id_Employer_seq"'::regclass);
 G   ALTER TABLE public."Employer" ALTER COLUMN "Id_Employer" DROP DEFAULT;
       public       postgres    false    202    201    202         �
           2604    16533    Status Id_Status    DEFAULT     z   ALTER TABLE ONLY public."Status" ALTER COLUMN "Id_Status" SET DEFAULT nextval('public."Status_Id_Status_seq"'::regclass);
 C   ALTER TABLE public."Status" ALTER COLUMN "Id_Status" DROP DEFAULT;
       public       postgres    false    204    203    204         ,          0    16506    Admin 
   TABLE DATA               G   COPY public."Admin" ("Id_Admin", "Admin_Name", "Password") FROM stdin;
    public       postgres    false    198       2860.dat 4          0    16538 	   Complaint 
   TABLE DATA               i   COPY public."Complaint" ("Id_Complaint", "Complain", "EmployeeId", "EmployerId", "StatusId") FROM stdin;
    public       postgres    false    206       2868.dat .          0    16514    Employee 
   TABLE DATA               V   COPY public."Employee" ("Id_Employee", "Employee_Name", "Bu", "Password") FROM stdin;
    public       postgres    false    200       2862.dat 0          0    16522    Employer 
   TABLE DATA               V   COPY public."Employer" ("Id_Employer", "Employer_Name", "Bu", "Password") FROM stdin;
    public       postgres    false    202       2864.dat 2          0    16530    Status 
   TABLE DATA               8   COPY public."Status" ("Id_Status", "Value") FROM stdin;
    public       postgres    false    204       2866.dat *          0    16499    __EFMigrationsHistory 
   TABLE DATA               R   COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
    public       postgres    false    196       2858.dat @           0    0    Admin_Id_Admin_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Admin_Id_Admin_seq"', 1, false);
            public       postgres    false    197         A           0    0    Complaint_Id_Complaint_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Complaint_Id_Complaint_seq"', 1, false);
            public       postgres    false    205         B           0    0    Employee_Id_Employee_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Employee_Id_Employee_seq"', 1, false);
            public       postgres    false    199         C           0    0    Employer_Id_Employer_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Employer_Id_Employer_seq"', 1, false);
            public       postgres    false    201         D           0    0    Status_Id_Status_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Status_Id_Status_seq"', 1, false);
            public       postgres    false    203         �
           2606    16511    Admin PK_Admin 
   CONSTRAINT     X   ALTER TABLE ONLY public."Admin"
    ADD CONSTRAINT "PK_Admin" PRIMARY KEY ("Id_Admin");
 <   ALTER TABLE ONLY public."Admin" DROP CONSTRAINT "PK_Admin";
       public         postgres    false    198         �
           2606    16546    Complaint PK_Complaint 
   CONSTRAINT     d   ALTER TABLE ONLY public."Complaint"
    ADD CONSTRAINT "PK_Complaint" PRIMARY KEY ("Id_Complaint");
 D   ALTER TABLE ONLY public."Complaint" DROP CONSTRAINT "PK_Complaint";
       public         postgres    false    206         �
           2606    16519    Employee PK_Employee 
   CONSTRAINT     a   ALTER TABLE ONLY public."Employee"
    ADD CONSTRAINT "PK_Employee" PRIMARY KEY ("Id_Employee");
 B   ALTER TABLE ONLY public."Employee" DROP CONSTRAINT "PK_Employee";
       public         postgres    false    200         �
           2606    16527    Employer PK_Employer 
   CONSTRAINT     a   ALTER TABLE ONLY public."Employer"
    ADD CONSTRAINT "PK_Employer" PRIMARY KEY ("Id_Employer");
 B   ALTER TABLE ONLY public."Employer" DROP CONSTRAINT "PK_Employer";
       public         postgres    false    202         �
           2606    16535    Status PK_Status 
   CONSTRAINT     [   ALTER TABLE ONLY public."Status"
    ADD CONSTRAINT "PK_Status" PRIMARY KEY ("Id_Status");
 >   ALTER TABLE ONLY public."Status" DROP CONSTRAINT "PK_Status";
       public         postgres    false    204         �
           2606    16503 .   __EFMigrationsHistory PK___EFMigrationsHistory 
   CONSTRAINT     {   ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");
 \   ALTER TABLE ONLY public."__EFMigrationsHistory" DROP CONSTRAINT "PK___EFMigrationsHistory";
       public         postgres    false    196         �
           1259    16562    IX_Complaint_EmployeeId    INDEX     Y   CREATE INDEX "IX_Complaint_EmployeeId" ON public."Complaint" USING btree ("EmployeeId");
 -   DROP INDEX public."IX_Complaint_EmployeeId";
       public         postgres    false    206         �
           1259    16563    IX_Complaint_EmployerId    INDEX     Y   CREATE INDEX "IX_Complaint_EmployerId" ON public."Complaint" USING btree ("EmployerId");
 -   DROP INDEX public."IX_Complaint_EmployerId";
       public         postgres    false    206         �
           1259    16564    IX_Complaint_StatusId    INDEX     U   CREATE INDEX "IX_Complaint_StatusId" ON public."Complaint" USING btree ("StatusId");
 +   DROP INDEX public."IX_Complaint_StatusId";
       public         postgres    false    206         �
           2606    16547 *   Complaint FK_Complaint_Employee_EmployeeId    FK CONSTRAINT     �   ALTER TABLE ONLY public."Complaint"
    ADD CONSTRAINT "FK_Complaint_Employee_EmployeeId" FOREIGN KEY ("EmployeeId") REFERENCES public."Employee"("Id_Employee") ON DELETE CASCADE;
 X   ALTER TABLE ONLY public."Complaint" DROP CONSTRAINT "FK_Complaint_Employee_EmployeeId";
       public       postgres    false    206    2724    200         �
           2606    16552 *   Complaint FK_Complaint_Employer_EmployerId    FK CONSTRAINT     �   ALTER TABLE ONLY public."Complaint"
    ADD CONSTRAINT "FK_Complaint_Employer_EmployerId" FOREIGN KEY ("EmployerId") REFERENCES public."Employer"("Id_Employer") ON DELETE CASCADE;
 X   ALTER TABLE ONLY public."Complaint" DROP CONSTRAINT "FK_Complaint_Employer_EmployerId";
       public       postgres    false    202    2726    206         �
           2606    16557 &   Complaint FK_Complaint_Status_StatusId    FK CONSTRAINT     �   ALTER TABLE ONLY public."Complaint"
    ADD CONSTRAINT "FK_Complaint_Status_StatusId" FOREIGN KEY ("StatusId") REFERENCES public."Status"("Id_Status") ON DELETE CASCADE;
 T   ALTER TABLE ONLY public."Complaint" DROP CONSTRAINT "FK_Complaint_Status_StatusId";
       public       postgres    false    204    206    2728                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            2860.dat                                                                                            0000600 0004000 0002000 00000000005 13510767511 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2868.dat                                                                                            0000600 0004000 0002000 00000000005 13510767511 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2862.dat                                                                                            0000600 0004000 0002000 00000000005 13510767511 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2864.dat                                                                                            0000600 0004000 0002000 00000000005 13510767511 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2866.dat                                                                                            0000600 0004000 0002000 00000000005 13510767511 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2858.dat                                                                                            0000600 0004000 0002000 00000000062 13510767511 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        20190708142118_Initial	2.2.4-servicing-10062
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                              restore.sql                                                                                         0000600 0004000 0002000 00000026442 13510767511 0015402 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

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

DROP DATABASE "DB_Vico";
--
-- Name: DB_Vico; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "DB_Vico" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Indonesian_Indonesia.1252' LC_CTYPE = 'Indonesian_Indonesia.1252';


ALTER DATABASE "DB_Vico" OWNER TO postgres;

\connect "DB_Vico"

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
-- Name: Admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Admin" (
    "Id_Admin" integer NOT NULL,
    "Admin_Name" character varying(100),
    "Password" character varying(50)
);


ALTER TABLE public."Admin" OWNER TO postgres;

--
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
-- Name: Admin_Id_Admin_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Admin_Id_Admin_seq" OWNED BY public."Admin"."Id_Admin";


--
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
-- Name: Complaint_Id_Complaint_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Complaint_Id_Complaint_seq" OWNED BY public."Complaint"."Id_Complaint";


--
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
-- Name: Employee_Id_Employee_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Employee_Id_Employee_seq" OWNED BY public."Employee"."Id_Employee";


--
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
-- Name: Employer_Id_Employer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Employer_Id_Employer_seq" OWNED BY public."Employer"."Id_Employer";


--
-- Name: Status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Status" (
    "Id_Status" integer NOT NULL,
    "Value" character varying(20)
);


ALTER TABLE public."Status" OWNER TO postgres;

--
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
-- Name: Status_Id_Status_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Status_Id_Status_seq" OWNED BY public."Status"."Id_Status";


--
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO postgres;

--
-- Name: Admin Id_Admin; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Admin" ALTER COLUMN "Id_Admin" SET DEFAULT nextval('public."Admin_Id_Admin_seq"'::regclass);


--
-- Name: Complaint Id_Complaint; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Complaint" ALTER COLUMN "Id_Complaint" SET DEFAULT nextval('public."Complaint_Id_Complaint_seq"'::regclass);


--
-- Name: Employee Id_Employee; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employee" ALTER COLUMN "Id_Employee" SET DEFAULT nextval('public."Employee_Id_Employee_seq"'::regclass);


--
-- Name: Employer Id_Employer; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employer" ALTER COLUMN "Id_Employer" SET DEFAULT nextval('public."Employer_Id_Employer_seq"'::regclass);


--
-- Name: Status Id_Status; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Status" ALTER COLUMN "Id_Status" SET DEFAULT nextval('public."Status_Id_Status_seq"'::regclass);


--
-- Data for Name: Admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Admin" ("Id_Admin", "Admin_Name", "Password") FROM stdin;
\.
COPY public."Admin" ("Id_Admin", "Admin_Name", "Password") FROM '$$PATH$$/2860.dat';

--
-- Data for Name: Complaint; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Complaint" ("Id_Complaint", "Complain", "EmployeeId", "EmployerId", "StatusId") FROM stdin;
\.
COPY public."Complaint" ("Id_Complaint", "Complain", "EmployeeId", "EmployerId", "StatusId") FROM '$$PATH$$/2868.dat';

--
-- Data for Name: Employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Employee" ("Id_Employee", "Employee_Name", "Bu", "Password") FROM stdin;
\.
COPY public."Employee" ("Id_Employee", "Employee_Name", "Bu", "Password") FROM '$$PATH$$/2862.dat';

--
-- Data for Name: Employer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Employer" ("Id_Employer", "Employer_Name", "Bu", "Password") FROM stdin;
\.
COPY public."Employer" ("Id_Employer", "Employer_Name", "Bu", "Password") FROM '$$PATH$$/2864.dat';

--
-- Data for Name: Status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Status" ("Id_Status", "Value") FROM stdin;
\.
COPY public."Status" ("Id_Status", "Value") FROM '$$PATH$$/2866.dat';

--
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
\.
COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM '$$PATH$$/2858.dat';

--
-- Name: Admin_Id_Admin_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Admin_Id_Admin_seq"', 1, false);


--
-- Name: Complaint_Id_Complaint_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Complaint_Id_Complaint_seq"', 1, false);


--
-- Name: Employee_Id_Employee_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Employee_Id_Employee_seq"', 1, false);


--
-- Name: Employer_Id_Employer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Employer_Id_Employer_seq"', 1, false);


--
-- Name: Status_Id_Status_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Status_Id_Status_seq"', 1, false);


--
-- Name: Admin PK_Admin; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Admin"
    ADD CONSTRAINT "PK_Admin" PRIMARY KEY ("Id_Admin");


--
-- Name: Complaint PK_Complaint; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Complaint"
    ADD CONSTRAINT "PK_Complaint" PRIMARY KEY ("Id_Complaint");


--
-- Name: Employee PK_Employee; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employee"
    ADD CONSTRAINT "PK_Employee" PRIMARY KEY ("Id_Employee");


--
-- Name: Employer PK_Employer; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employer"
    ADD CONSTRAINT "PK_Employer" PRIMARY KEY ("Id_Employer");


--
-- Name: Status PK_Status; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Status"
    ADD CONSTRAINT "PK_Status" PRIMARY KEY ("Id_Status");


--
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- Name: IX_Complaint_EmployeeId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Complaint_EmployeeId" ON public."Complaint" USING btree ("EmployeeId");


--
-- Name: IX_Complaint_EmployerId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Complaint_EmployerId" ON public."Complaint" USING btree ("EmployerId");


--
-- Name: IX_Complaint_StatusId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Complaint_StatusId" ON public."Complaint" USING btree ("StatusId");


--
-- Name: Complaint FK_Complaint_Employee_EmployeeId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Complaint"
    ADD CONSTRAINT "FK_Complaint_Employee_EmployeeId" FOREIGN KEY ("EmployeeId") REFERENCES public."Employee"("Id_Employee") ON DELETE CASCADE;


--
-- Name: Complaint FK_Complaint_Employer_EmployerId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Complaint"
    ADD CONSTRAINT "FK_Complaint_Employer_EmployerId" FOREIGN KEY ("EmployerId") REFERENCES public."Employer"("Id_Employer") ON DELETE CASCADE;


--
-- Name: Complaint FK_Complaint_Status_StatusId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Complaint"
    ADD CONSTRAINT "FK_Complaint_Status_StatusId" FOREIGN KEY ("StatusId") REFERENCES public."Status"("Id_Status") ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              