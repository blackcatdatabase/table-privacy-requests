-- Auto-generated from schema-views-mysql.yaml (map@sha1:B3C579FF17AC186C47D2C4AC86B0738DB2308BF2)
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
