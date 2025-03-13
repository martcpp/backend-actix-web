-- Drop migration script for users table

-- Drop trigger
DROP TRIGGER IF EXISTS update_users_updated_at ON users;

-- Drop function
DROP FUNCTION IF EXISTS update_updated_at_column();

-- Drop indexes
DROP INDEX IF EXISTS idx_users_created_at;
DROP INDEX IF EXISTS idx_users_status;
DROP INDEX IF EXISTS idx_users_auth_provider;
DROP INDEX IF EXISTS idx_users_username;
DROP INDEX IF EXISTS idx_users_email;

-- Drop table
DROP TABLE IF EXISTS users;

-- Drop enum types
DROP TYPE IF EXISTS auth_provider;
DROP TYPE IF EXISTS user_status;
DROP TYPE IF EXISTS user_role;

-- Note: We don't drop the uuid-ossp extension as it might be used by other tables