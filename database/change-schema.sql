--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

-- Started on 2019-09-29 19:51:04

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
-- TOC entry 197 (class 1259 OID 16921)
-- Name: Changes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Changes" (
    "Id" integer NOT NULL,
    "Title" text NOT NULL,
    "SubHeading" text,
    "Body" text NOT NULL,
    "Icon" text,
    "ImageUrl" text
);


ALTER TABLE public."Changes" OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16919)
-- Name: Changes_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Changes_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Changes_Id_seq" OWNER TO postgres;

--
-- TOC entry 2813 (class 0 OID 0)
-- Dependencies: 196
-- Name: Changes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Changes_Id_seq" OWNED BY public."Changes"."Id";


--
-- TOC entry 2686 (class 2604 OID 16924)
-- Name: Changes Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Changes" ALTER COLUMN "Id" SET DEFAULT nextval('public."Changes_Id_seq"'::regclass);


-- Completed on 2019-09-29 19:51:05

--
-- PostgreSQL database dump complete
--

