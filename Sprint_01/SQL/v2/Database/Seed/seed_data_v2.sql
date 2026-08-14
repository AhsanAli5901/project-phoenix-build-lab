INSERT INTO users (
    first_name,
    last_name,
    email,
    phone_number,
    password,
    role
)
VALUES
('Ahsan', 'Ali', 'ahsan@gmail.com', 923001111111, 'password123', 'admin'),
('Fatima', 'Khan', 'fatima@gmail.com', 923002222222, 'password123', 'trainer'),
('Sara', 'Ahmed', 'sara@gmail.com', 923003333333, 'password123', 'trainer'),
('Ali', 'Raza', 'ali@gmail.com', 923004444444, 'password123', 'client'),
('Hassan', 'Malik', 'hassan@gmail.com', 923005555555, 'password123', 'client');



INSERT INTO trainer_profile (
    trainer_id,
    trainer_experience,
    trainer_bio
)
VALUES
(2, 5, 'Certified personal trainer specializing in weight loss.'),
(3, 8, 'Strength and mobility coach with 8 years experience.');


INSERT INTO packages (
    package_name,
    package_price,
    package_duration_weeks
)
VALUES
('Solo', 250.00, 12),
('Duo', 180.00, 8),
('Trio', 150.00, 8);


INSERT INTO availability_slot (
    trainer_id,
    day_of_week,
    start_time,
    end_time
)
VALUES
(2, 'Monday', '10:00', '11:00'),
(2, 'Wednesday', '15:00', '16:00'),
(2, 'Friday', '18:00', '19:00'),
(3, 'Tuesday', '09:00', '10:00'),
(3, 'Thursday', '14:00', '15:00');


INSERT INTO bookings (
    client_user_id,
    trainer_user_id,
    package_id,
    sessions_per_week,
    status
)
VALUES
(4, 2, 1, 3, 'Scheduled'),
(5, 3, 2, 2, 'Completed');



INSERT INTO workout_sessions (
    booking_id,
    slot_id,
    session_date,
    status,
    notes
)
VALUES
(2, 1, '2026-08-10', 'Scheduled', NULL),
(2, 2, '2026-08-12', 'Scheduled', NULL),
(2, 3, '2026-08-14', 'Scheduled', NULL),
(3, 4, '2026-08-11', 'Completed', 'Excellent progress'),
(3, 5, '2026-08-13', 'Completed', 'Good mobility');


INSERT INTO payments (
    booking_id,
    amount_paid,
    discount,
    payment_method,
    payment_status,
    transaction_reference
)
VALUES
(2, 250.00, 0.00, 'Card', 'Paid', 'TXN_001'),
(3, 150.00, 30.00, 'Cash', 'Paid', 'TXN_002');


INSERT INTO reviews (
    booking_id,
    rating,
    review
)
VALUES
(3, 5, 'Amazing trainer. Highly recommended!');


