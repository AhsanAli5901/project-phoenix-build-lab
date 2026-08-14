CREATE TABLE payments (

    payment_id BIGSERIAL PRIMARY KEY,

    booking_id BIGINT NOT NULL,

    amount_paid DECIMAL(10,2) NOT NULL,

    discount DECIMAL(10,2) DEFAULT 0,

    payment_method TEXT NOT NULL,

    payment_status TEXT NOT NULL,

    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    transaction_reference TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP,

    deleted_at TIMESTAMP,

    CONSTRAINT booking_fk
        FOREIGN KEY (booking_id)
        REFERENCES bookings(id)

);