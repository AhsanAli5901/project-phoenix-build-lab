CREATE TABLE workout_sessions (

    session_id BIGSERIAL PRIMARY KEY,

    booking_id BIGINT NOT NULL,

    slot_id BIGINT NOT NULL,

    session_date DATE NOT NULL,

    status TEXT NOT NULL,

    notes TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP,

    CONSTRAINT workout_booking_fk
        FOREIGN KEY (booking_id)
        REFERENCES bookings(id),

    CONSTRAINT workout_slot_fk
        FOREIGN KEY (slot_id)
        REFERENCES availability_slot(slot_id)
);