-- FUNCTION: public.is_valid_date(text)

-- DROP FUNCTION public.is_valid_date(text);

CREATE OR REPLACE FUNCTION public.is_valid_date(
	text)
    RETURNS boolean
    LANGUAGE 'plpgsql'

    COST 100
    IMMUTABLE 
AS $BODY$
begin
  return case when $1::date is null then false else true end;
exception when others then
  return false;
end;$BODY$;

ALTER FUNCTION public.is_valid_date(text)
    OWNER TO pythonuser;
   
-- Table: public.raw_CovidTrackerGantt

DROP TABLE IF EXISTS public."raw_CovidTrackerGantt";

CREATE TABLE public."raw_CovidTrackerGantt"
(
    index bigint,
    "CountryName" text COLLATE pg_catalog."default",
    "CountryCode" text COLLATE pg_catalog."default",
    "Date" text COLLATE pg_catalog."default",
    "RegionName" text COLLATE pg_catalog."default",
    "RegionCode" text COLLATE pg_catalog."default",
    "Jurisdiction" text COLLATE pg_catalog."default",
    "Name" text COLLATE pg_catalog."default",
    "Category" text COLLATE pg_catalog."default",
    "UniqueActivity" text COLLATE pg_catalog."default",
    "ShortCode" text COLLATE pg_catalog."default",
    "Activity" text COLLATE pg_catalog."default",
    "BarLabel" text COLLATE pg_catalog."default",
    "Color" text COLLATE pg_catalog."default",
    "ActivityGroup" text COLLATE pg_catalog."default",
    "next_UniqueActivity" text COLLATE pg_catalog."default",
    "next_countrycode" text COLLATE pg_catalog."default", 
    next_regioncode text COLLATE pg_catalog."default",
    next_date text COLLATE pg_catalog."default",
    datediff text COLLATE pg_catalog."default",
    newtask text COLLATE pg_catalog."default",
    startdate text COLLATE pg_catalog."default",
    enddate text COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."raw_CovidTrackerGantt"
    OWNER to pythonuser;

