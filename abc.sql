select*from mytable;


/*1.	Average Sleep Duration by Gender:
o	What is the average sleep duration (in hours) for males and females separately?*/
select gender,avg("Sleep Duration")as avg_sleep_duration from mytable group by gender;

/*2.	Top Stress Levels by Occupation:
o	Which occupation has the highest average stress level (based on the provided scale of 1-10)?*/
select occupation,avg("Physical Activity Level")as avg_activity_level from mytable group by occupation limit 1;

/*3.	Physical Activity and Sleep Quality:
o	Is there any correlation between physical activity level (minutes/day) and sleep quality (rating on a scale of 1-10)?*/
select
    avg("Physical Activity Level") as Avg_Physical_Activity,
    avg("Quality of Sleep") as Avg_Sleep_Quality
from mytable;

/*4.	BMI Category Distribution:
o	How many individuals fall into each BMI category (Underweight, Normal, Overweight)?*/
select "BMI Category",count("BMI Category") from mytable group by "BMI Category";

/*5.	Heart Rate Trends by Age Group:
o	Group individuals by age (e.g., 20-30, 31-40, etc.). Calculate the average heart rate for each age group.*/
select
   case
        WHEN Age BETWEEN 20 AND 30 THEN '20-30'
        WHEN Age BETWEEN 31 AND 40 THEN '31-40'
        WHEN Age BETWEEN 41 AND 50 THEN '41-50'
        ELSE '50+'
    END AS Age_Group,
    AVG("Heart Rate") AS Avg_Heart_Rate
FROM
    mytable
GROUP BY
    Age_Group
ORDER BY
    Age_Group;

/*6.	Sleep Disorder Analysis:
o	Compare the average sleep duration between individuals with and without sleep disorders (Insomnia, Sleep Apnea).*/
select "Sleep Disorder",avg("Sleep Duration")as avg_sleep_duration from mytable group by "Sleep Disorder";







    

