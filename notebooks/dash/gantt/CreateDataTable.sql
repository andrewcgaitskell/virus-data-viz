-- Table: public.data_CovidTrackerGantt

DROP TABLE IF EXISTS public."data_CovidTrackerGantt";

CREATE TABLE IF NOT EXISTS public."data_CovidTrackerGantt"
(
    index bigint,
    "CountryName" text COLLATE pg_catalog."default",
    "CountryCode" text COLLATE pg_catalog."default",
     "Date" date,
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
    next_countrycode text COLLATE pg_catalog."default",
    next_regioncode text COLLATE pg_catalog."default",
    next_date text COLLATE pg_catalog."default",
    datediff text COLLATE pg_catalog."default",
    newtask text COLLATE pg_catalog."default",
    startdate date,
    enddate date
)

TABLESPACE pg_default;

ALTER TABLE public."data_CovidTrackerGantt"
    OWNER to pythonuser;
