SELECT
    job_hash as job_id,
    company_id,
    company_name,
    city,
    country,
    created as created_at,
    delete_date as deleted_at,
    last_checked as last_checked_at,
    last_updated as last_updated_at,
    state,
    title
FROM
    raw_sample_data.linkup.job_records_sample
WHERE
    country IS NOT NULL