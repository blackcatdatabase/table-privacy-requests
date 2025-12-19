-- Auto-generated from schema-views-mysql.yaml (map@sha1:39CF23914A48753BF55EEB1F38DDBA21AB1DBBB7)
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
