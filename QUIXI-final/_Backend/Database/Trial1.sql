-- Create Users Table
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    location VARCHAR(255),
    bio TEXT,
    profile_picture VARCHAR(255)
);

-- Create Preferences Table
CREATE TABLE Preferences (
    preference_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    min_age_preference INT,
    max_age_preference INT,
    preferred_gender ENUM('Male', 'Female', 'Other'),
    preferred_location VARCHAR(255),
    -- Add other preferences as needed
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Create Matches Table
CREATE TABLE Matches (
    match_id INT PRIMARY KEY AUTO_INCREMENT,
    user1_id INT,
    user2_id INT,
    match_score INT,
    matched_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user1_id) REFERENCES Users(user_id),
    FOREIGN KEY (user2_id) REFERENCES Users(user_id)
);

-- Create Messages Table
CREATE TABLE Messages (
    message_id INT PRIMARY KEY AUTO_INCREMENT,
    sender_id INT,
    receiver_id INT,
    message_content TEXT,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sender_id) REFERENCES Users(user_id),
    FOREIGN KEY (receiver_id) REFERENCES Users(user_id)
);

-- Create Block List Table
CREATE TABLE BlockList (
    block_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    blocked_user_id INT,
    blocked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (blocked_user_id) REFERENCES Users(user_id)
);

-- Create Interested in / Hobbies Table
-- Add your interested in / hobbies table schema here
