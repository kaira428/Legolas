use legolas;

-- list all users and associated Learning Track, Modules, Topics and Completion and Certification status
SELECT 
    u.user_id AS 'User ID',
    CONCAT_WS(' ', u.first_name, u.last_name) AS 'Full Name',
    lt.learning_track_name AS 'Learning Track',
    m.module_name AS 'Module',
    tu.fk_topic_id AS 'Topic ID',
    t.topic_name AS 'Topic Name',
    tu.is_completed AS 'Completed?',
    tu.is_certified AS 'Certified?'
FROM
    users u
        LEFT JOIN
    topics_users tu ON u.user_id = tu.fk_user_id
        LEFT JOIN
    topics t ON tu.fk_topic_id = t.topic_id
        LEFT JOIN
    modules m ON t.fk_module_id = m.module_id
        LEFT JOIN
    learning_tracks lt ON m.fk_learning_track_id = lt.learning_track_id
    where lt.learning_track_name is not null
ORDER BY u.user_id, lt.learning_track_name, m.module_name, t.topic_id;

-- select specified user, learning tracks, modules and topics based on user_id
SELECT DISTINCT
    u.user_id AS 'User ID',
    CONCAT_WS(' ', u.first_name, u.last_name) AS 'Full Name',
    lt.learning_track_name AS 'Learning Track',
    m.module_name AS 'Module',
    t.topic_name AS 'Topic',
    tu.is_completed AS 'Completed?',
    tu.is_certified AS 'Certified?'
FROM
    users u
        LEFT JOIN
    learning_tracks_users ltu ON u.user_id = ltu.fk_user_id
        LEFT JOIN
    learning_tracks lt ON ltu.fk_learning_track_id = lt.learning_track_id
        LEFT JOIN
    modules m ON lt.learning_track_id = m.fk_learning_track_id
        LEFT JOIN
    topics t ON m.module_id = t.fk_module_id
        LEFT JOIN
    topics_users tu ON t.topic_id = tu.fk_topic_id
WHERE
    u.user_id = 9
ORDER BY u.user_id , lt.learning_track_name , t.topic_name;

-- update is_completed to true for specified user
UPDATE topics_users 
SET 
    is_completed = true
WHERE
    fk_user_id = 9 AND fk_topic_id = 1001;
    
-- update is_certified to true for specified user
UPDATE topics_users 
SET 
    is_certified = TRUE
WHERE
    fk_user_id = 9 AND fk_topic_id = 1001;
    
-- List users who have completed and certified topics
SELECT 
    u.user_id AS 'User ID',
    CONCAT_WS(' ', u.first_name, u.last_name) AS 'Full Name',
    m.module_name AS 'Module',
    t.topic_name AS 'Topic',
    tu.is_completed AS 'Completed?',
    tu.is_certified AS 'Certified?'
FROM
    users u
        LEFT JOIN
    topics_users tu ON u.user_id = tu.fk_user_id
        LEFT JOIN
    topics t ON tu.fk_topic_id = t.topic_id
        LEFT JOIN
    modules m ON t.fk_module_id = m.module_id
WHERE
    tu.is_completed = TRUE
        AND tu.is_certified = TRUE;

-- list user details and associated roles
SELECT 
    u.user_id AS 'User ID',
    CONCAT_WS(' ', u.first_name, u.last_name) AS 'Full Name',
    u.email AS 'Email',
    u.mobile AS 'Mobile No.',
    u.country AS 'Country',
    u.user_status AS 'Acct Status',
    ur.role AS 'Role'
FROM
    users u
        LEFT JOIN
    users_roles ur ON u.user_id = ur.fk_user_id;

-- list user and associated learning tracks and track status
SELECT 
    u.user_id AS 'User ID',
    CONCAT_WS(' ', u.first_name, u.last_name) AS 'Full Name',
    lt.learning_track_name AS 'Learning Track',
    ltu.user_lt_status AS 'Track Status'
FROM
    users u
        LEFT JOIN
    learning_tracks_users ltu ON u.user_id = ltu.fk_user_id
        LEFT JOIN
    learning_tracks lt ON ltu.fk_learning_track_id = lt.learning_track_id;

-- list users and associated module progress
SELECT 
    u.user_id AS 'User ID',
    CONCAT_WS(' ', u.first_name, u.last_name) AS 'Full Name',
    u.user_status AS 'Acct Status',
    m.module_name AS 'Module',
    mp.module_progress AS 'Progress'
FROM
    users u
        LEFT JOIN
    modules_progress mp ON u.user_id = mp.fk_user_id
        LEFT JOIN
    modules m ON mp.fk_module_id = m.module_id
    where u.user_status = 'Active' && m.module_name is not null;
    
-- List users by batch ID
SELECT 
    u.user_id AS 'User ID',
    CONCAT_WS(' ', u.first_name, u.last_name) AS 'Full Name',
    u.user_status AS 'Acct Status',
    lt.learning_track_name AS 'Learning Track',
    ltu.cohort_id AS 'Cohort No.'
FROM
    users u
        LEFT JOIN
    learning_tracks_users ltu ON u.user_id = ltu.fk_user_id
        LEFT JOIN
    learning_tracks lt ON ltu.fk_learning_track_id = lt.learning_track_id
ORDER BY ltu.cohort_id , u.user_id;

-- List all users asssigned to a specified mentor
SELECT 
    u.user_id AS 'User ID',
    CONCAT_WS(' ', u.first_name, u.last_name) AS 'Full Name',
    lt.learning_track_name AS 'Learning Track',
    ltu.user_lt_start_date AS 'Start Date',
    ltu.user_lt_end_date AS 'End Date',
    (SELECT 
            CONCAT_WS(' ', first_name, last_name)
        FROM
            users
        WHERE
            user_id = 10) AS 'Mentor'
FROM
    users u
        LEFT JOIN
    learning_tracks_users ltu ON u.user_id = ltu.fk_user_id
        LEFT JOIN
    learning_tracks lt ON ltu.fk_learning_track_id = lt.learning_track_id
WHERE
    ltu.mentor_id = 10;
    
-- List users with Role of Mentor
SELECT 
    u.user_id AS 'User ID',
    CONCAT_WS(' ', u.first_name, u.last_name) AS 'Full Name'
FROM
    users u
        JOIN
    users_roles ur ON u.user_id = ur.fk_user_id
WHERE
    ur.role = 'Mentor';
    
-- Count number of modules per learning track
SELECT 
    lt.learning_track_id AS 'Learning Track ID',
    lt.learning_track_name AS 'Learning Track',
    COUNT(m.module_id) AS 'No. of Modules'
FROM
    learning_tracks lt
        LEFT JOIN
    modules m ON lt.learning_track_id = m.fk_learning_track_id
GROUP BY lt.learning_track_id;

-- Count number of topics (including Examination) per module
SELECT 
    m.module_id AS 'Module ID',
    m.module_name AS 'Module',
    COUNT(t.topic_id) AS 'No. of Topics'
FROM
    modules m
        JOIN
    topics t ON m.module_id = t.fk_module_id
GROUP BY m.module_id;

-- Count number of completed topics for a specific user
SELECT 
    tu.fk_user_id AS 'User ID',
    CONCAT_WS(' ', u.first_name, u.last_name) AS 'Full Name',
    m.module_name AS 'Module',
    COUNT(tu.fk_topic_id) AS 'No. Completed Topics'
FROM
    modules m
        LEFT JOIN
    topics t ON m.module_id = t.fk_module_id
        JOIN
    topics_users tu ON t.topic_id = tu.fk_topic_id
        JOIN
    users u ON tu.fk_user_id = u.user_id
WHERE
    tu.is_completed= TRUE AND u.user_id = 9
GROUP BY m.module_id;

-- list users, grouped by learning tracks, and associated average progress
SELECT 
    u.user_id AS 'User ID',
    CONCAT_WS(' ', u.first_name, u.last_name) AS 'Full Name',
    lt.learning_track_name AS 'Learning Track',
    COUNT(m.module_id) AS 'No.of Modules Started',
    ROUND(AVG(mp.module_progress), 2) AS 'Average Progress'
FROM
    learning_tracks lt
        LEFT JOIN
    modules m ON lt.learning_track_id = m.fk_learning_track_id
        LEFT JOIN
    modules_progress mp ON m.module_id = mp.fk_module_id
        LEFT JOIN
    users u ON mp.fk_user_id = u.user_id
WHERE
    mp.module_progress > 0
GROUP BY u.user_id , lt.learning_track_name
ORDER BY lt.learning_track_name , AVG(mp.module_progress) DESC , 'User ID';

-- list specific user, grouped by learning tracks, and associated average progress
SELECT 
    u.user_id AS 'User ID',
    CONCAT_WS(' ', u.first_name, u.last_name) AS 'Full Name',
    lt.learning_track_name AS 'Learning Track',
    COUNT(m.module_id) AS 'No.of Modules Started',
    ROUND(AVG(mp.module_progress), 2) AS 'Average Progress'
FROM
    learning_tracks lt
        LEFT JOIN
    modules m ON lt.learning_track_id = m.fk_learning_track_id
        LEFT JOIN
    modules_progress mp ON m.module_id = mp.fk_module_id
        LEFT JOIN
    users u ON mp.fk_user_id = u.user_id
WHERE
    mp.module_progress > 0 && u.user_id = 9
GROUP BY u.user_id , lt.learning_track_name
ORDER BY lt.learning_track_name , AVG(mp.module_progress) DESC , 'User ID';

select * from modules_progress where fk_user_id = 9;

-- set user's status to 'Active' or 'Suspended'
update users u
set u.user_status = 'Suspended'
where u.user_id = 2;

select * from users where user_status = 'Suspended';

update users u
set u.user_status = 'Active'
where u.user_id = 2;


