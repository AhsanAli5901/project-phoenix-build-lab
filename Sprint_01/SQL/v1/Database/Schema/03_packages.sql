CREATE TABLE packages (

    package_id BIGSERIAL PRIMARY KEY,

    package_name TEXT NOT NULL,

    package_price DECIMAL(10,2) NOT NULL,

    package_duration_weeks INTEGER NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP,

    deleted_at TIMESTAMP

);