<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – privacy_requests

Data-subject privacy requests (access, erasure, portability, etc.).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| user_id | BIGINT | YES | — | Subject user (FK users.id). |  |
| type | TEXT | NO | — | Request type. | enum: access, erasure, rectify, restrict, portability |
| requested_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | When the request was submitted. |  |
| processed_at | TIMESTAMPTZ(6) | YES | — | When it was completed. |  |
| meta | JSONB | YES | — | JSON blob with additional context. |  |