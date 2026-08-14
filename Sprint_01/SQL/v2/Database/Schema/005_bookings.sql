CREATE TABLE bookings (

    id BIGSERIAL PRIMARY KEY,

    client_user_id BIGINT NOT NULL,

    trainer_user_id BIGINT NOT NULL,

    package_id BIGINT NOT NULL,

    sessions_per_week INTEGER NOT NULL,

    status TEXT NOT NULL,

    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP,

    CONSTRAINT bookings_client_fk
        FOREIGN KEY (client_user_id)
        REFERENCES users(id),

    CONSTRAINT bookings_trainer_fk
        FOREIGN KEY (trainer_user_id)
        REFERENCES trainer_profile(trainer_id),

    CONSTRAINT bookings_package_fk
        FOREIGN KEY (package_id)
        REFERENCES packages(package_id)
);