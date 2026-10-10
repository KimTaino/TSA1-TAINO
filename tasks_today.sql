CREATE DATABASE IF NOT EXISTS tasks_today CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE tasks_today;
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS tasks;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'pending',
    task_date DATE NOT NULL,
    created_at DATETIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at DATETIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tasks (title, status, task_date, created_at) VALUES
('Review today''s priorities', 'pending', CURDATE(), NOW()),
('Complete project documentation', 'pending', CURDATE(), NOW()),
('Check team messages', 'done', CURDATE(), NOW()),
('Prepare tomorrow''s task list', 'pending', DATE_ADD(CURDATE(), INTERVAL 1 DAY), NOW()),
('Update the progress tracker', 'done', DATE_ADD(CURDATE(), INTERVAL 1 DAY), NOW()),
('Organize project files', 'pending', DATE_SUB(CURDATE(), INTERVAL 1 DAY), NOW()),
('Review last week''s notes', 'done', DATE_SUB(CURDATE(), INTERVAL 1 DAY), NOW()),
('Plan the next team meeting', 'pending', DATE_SUB(CURDATE(), INTERVAL 2 DAY), NOW());

INSERT INTO users (username, full_name, email, created_at) VALUES
('kim.taino', 'Kim Andrew Taiño', 'kptaino@gmail.com', NOW());
