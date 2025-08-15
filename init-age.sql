-- Create AGE extension
CREATE EXTENSION IF NOT EXISTS age;

-- Create pgvector extension
CREATE EXTENSION IF NOT EXISTS vector;

-- Load AGE
LOAD 'age';

-- Set search path
SET search_path = ag_catalog, "$user", public;

-- Ensure the lightrag user has proper permissions
GRANT ALL PRIVILEGES ON DATABASE lightrag TO lightrag;
GRANT ALL ON SCHEMA ag_catalog TO lightrag;
GRANT ALL ON SCHEMA public TO lightrag;
