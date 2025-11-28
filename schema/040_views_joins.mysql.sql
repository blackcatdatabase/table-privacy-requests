-- Auto-generated from joins-mysql.psd1 (map@mtime:2025-11-27T17:49:37Z)
-- engine: mysql
-- view:   privacy_requests_status
-- Privacy requests status
CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_privacy_requests_status AS
SELECT
  type,
  status,
  COUNT(*) AS total,
  MAX(processed_at) AS last_processed
FROM privacy_requests
GROUP BY type, status
ORDER BY type, status;
