
WITH jobs AS ( 
    SELECT
        company_name,
        country,
        DATE_PART("year", created_at) as year,
        DATE_PART("month", created_at) as month,
        COUNT(*) as total_jobs,
        SUM(days_active) as total_days_jobs_active
    FROM 
        {{ ref('int_jobs') }}
    GROUP BY
        company_name,
        country,
        year,
        month
)
SELECT 
    * 
FROM 
    jobs
ORDER BY 
    company_name,
    country,
    year,
    month