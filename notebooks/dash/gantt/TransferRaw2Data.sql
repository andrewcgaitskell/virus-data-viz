do $$
declare
   countryofinterest char(100); 
begin
   -- select the number of actors from the actor table
   SELECT distinct "CountryCode" into countryofinterest
	FROM public."raw_CovidTrackerGantt";

   -- show the number of actors
   raise notice 'country of interest: %', countryofinterest;
   
   -- delete CSV header
   delete from public."raw_CovidTrackerGantt"
   where "CountryCode" = 'CountryCode';
   
   -- delete old country data
   delete from public."data_CovidTrackerGantt"
   where "CountryCode" = countryofinterest;
   
   -- insert new data - this allows data validation
   insert into public."data_CovidTrackerGantt"
   select
	index,
	"CountryName",
	"CountryCode",
	case when public.is_valid_date("Date") then "Date"::date else Null end "Date",
	"RegionName",
	"RegionCode",
	"Jurisdiction",
	"Name",
	"Category",
	"UniqueActivity",
	"ShortCode",
	"Activity",
	"BarLabel",
        "Color",
	"ActivityGroup",
	"next_UniqueActivity",
	next_countrycode,
	next_regioncode,
	case when is_valid_date(next_date) then "next_date"::date else Null end next_date,
	datediff,
	newtask,
	case when is_valid_date(startdate) then "startdate"::date else Null end startdate,
	case when is_valid_date(enddate) then "enddate"::date else Null end enddate
	FROM public."raw_CovidTrackerGantt";	
   
end; $$
