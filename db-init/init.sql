-- Connect to the node-postgres-demo database
\c node-postgres-demo;

-- Create users table
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(80) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Optional: Insert sample data
INSERT INTO users (username, email)
VALUES
    ('demo_user', 'demo_user@example.com'),
    ('test_user', 'test_user@example.com');
