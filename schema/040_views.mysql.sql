-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  privacy_requests
-- Contract view for [privacy_requests]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_privacy_requests AS
SELECT
  id,
  user_id,
  `type`,
  status,
  requested_at,
  processed_at,
  meta
FROM privacy_requests;

-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  privacy_requests_status
-- Privacy requests status
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_privacy_requests_status AS
SELECT
  type,
  status,
  COUNT(*) AS total,
  MAX(processed_at) AS last_processed
FROM privacy_requests
GROUP BY type, status
ORDER BY type, status;

