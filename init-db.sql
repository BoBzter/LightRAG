CREATE EXTENSION IF NOT EXISTS vector;
CREATE EXTENSION IF NOT EXISTS age CASCADE;

DO $$
BEGIN
    IF current_database() = 'lightrag' THEN
        EXECUTE 'ALTER DATABASE ' || current_database() || ' REFRESH COLLATION VERSION';
        RAISE NOTICE 'Refreshed collation version for database %', current_database();
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RAISE NOTICE 'Collation refresh not needed or already current: %', SQLERRM;
END $$;
