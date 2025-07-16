-- 1. Count of respondents by state (Geographical Distribution)
SELECT state, COUNT(*) AS respondents
FROM respondents
GROUP BY state
ORDER BY respondents DESC;

-- 2. Age group distribution (Demographics)
SELECT
  CASE
    WHEN age BETWEEN 20 AND 29 THEN '20-29'
    WHEN age BETWEEN 30 AND 39 THEN '30-39'
    WHEN age BETWEEN 40 AND 49 THEN '40-49'
    WHEN age BETWEEN 50 AND 59 THEN '50-59'
    ELSE '60+'
  END AS age_group,
  COUNT(*) AS total_respondents
FROM respondents
GROUP BY age_group
ORDER BY age_group;

-- 3. Device preferences for content consumption
SELECT Device, COUNT(*) AS user_count
FROM ContentPreferences
GROUP BY Device
ORDER BY user_count DESC;

-- 4. Preferred OTT streaming platforms
SELECT StreamingPlatform, COUNT(*) AS viewer_count
FROM ContentPreferences
GROUP BY StreamingPlatform
ORDER BY viewer_count DESC;

-- 5. Content discovery methods
SELECT DiscoveryMethod, COUNT(*) AS count
FROM ContentPreferences
GROUP BY DiscoveryMethod
ORDER BY count DESC;

-- 6. Time spent on OTT platforms
SELECT TimeSpentOnOTT, COUNT(*) AS user_count
FROM TimeSpent
GROUP BY TimeSpentOnOTT
ORDER BY user_count DESC;

-- 7. Time spent on TV platforms
SELECT TimeSpentOnTV, COUNT(*) AS user_count
FROM TimeSpent
GROUP BY TimeSpentOnTV
ORDER BY user_count DESC;

-- 8. Advertisement skipping behavior
SELECT SkippingBehavior, COUNT(*) AS viewer_count
FROM AdPreferences
GROUP BY SkippingBehavior
ORDER BY viewer_count DESC;

-- 9. Average age by ad skipping preference (Ad engagement trend)
SELECT SkippingBehavior, ROUND(AVG(r.age), 1) AS avg_age
FROM AdPreferences a
JOIN Respondents r ON a.id = r.id
GROUP BY SkippingBehavior
ORDER BY avg_age;

-- 10. Platform usage trends by age group
SELECT
  CASE
    WHEN r.age BETWEEN 20 AND 29 THEN '20-29'
    WHEN r.age BETWEEN 30 AND 39 THEN '30-39'
    WHEN r.age BETWEEN 40 AND 49 THEN '40-49'
    WHEN r.age BETWEEN 50 AND 59 THEN '50-59'
    ELSE '60+'
  END AS age_group,
  c.StreamingPlatform,
  COUNT(*) AS users
FROM ContentPreferences c
JOIN Respondents r ON c.id = r.id
GROUP BY age_group, c.StreamingPlatform
ORDER BY age_group, users DESC;
