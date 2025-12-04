-- Auto-generated from joins-mysql.yaml (map@85230ed)
-- engine: mysql
-- view:   privacy_requests_status

CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_privacy_requests_status AS
SELECT
  type,
  status,
  COUNT(*) AS total,
  MAX(processed_at) AS last_processed
FROM privacy_requests
GROUP BY type, status
ORDER BY type, status;
