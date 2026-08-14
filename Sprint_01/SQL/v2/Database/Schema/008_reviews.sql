CREATE TABLE reviews (

    review_id BIGSERIAL PRIMARY KEY,

    booking_id BIGINT NOT NULL,

    rating INTEGER NOT NULL,

    review TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP,

    CONSTRAINT review_booking_fk
        FOREIGN KEY (booking_id)
        REFERENCES bookings(id)
);