WITH jobs_descriptions AS (
    SELECT * FROM {{ ref('stg_jobs_descriptions') }}
),
jobs_records AS (
    SELECT * FROM {{ ref('stg_jobs_records') }}
)

SELECT 
    jd.description, 
    jr.company_id,
    jr.company_name,
    jr.city,
    jr.country,
    jr.created_at,
    jr.deleted_at,
    datediff("day", jr.created_at, COALESCE(jr.deleted_at, current_timestamp())) as days_active,
    jr.last_checked_at,
    jr.last_updated_at,
    jr.state,
    jr.title
FROM
    jobs_descriptions jd
JOIN
    jobs_records jr
ON
    jd.job_id = jr.job_id