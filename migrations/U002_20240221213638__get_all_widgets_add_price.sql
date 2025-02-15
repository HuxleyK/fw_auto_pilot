-- Script generated by Redgate Compare v1.19.6.13134
SET check_function_bodies = false;


DO language plpgsql $$BEGIN RAISE NOTICE 'Dropping public.get_all_widgets()...';END$$;
DROP FUNCTION public.get_all_widgets();


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating public.get_all_widgets()...';END$$;
CREATE FUNCTION public.get_all_widgets()
RETURNS SETOF public.widgets
LANGUAGE sql
AS $_$
	SELECT record_id,
           description 
	FROM widgets
$_$;
ALTER FUNCTION public.get_all_widgets() OWNER TO postgres;

SET check_function_bodies = true;
