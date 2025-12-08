# privacy_requests

Data-subject privacy requests (access, erasure, portability, etc.).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |
| meta | JSONB | YES |  | JSON blob with additional context. |
| processed_at | TIMESTAMPTZ(6) | YES |  | When it was completed. |
| requested_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | When the request was submitted. |
| status | TEXT | NO | pending | Request status. (enum: pending, processing, done, failed, cancelled) |
| type | TEXT | NO |  | Request type. (enum: access, erasure, rectify, restrict, portability) |
| user_id | BIGINT | YES |  | Subject user (FK users.id). |

## Engine Details

### mysql

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_pr_type_status | type,status | INDEX idx_pr_type_status (`type`, status) |
| idx_pr_user | user_id | INDEX idx_pr_user        (user_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_pr_user | user_id | users(id) | ON DELETE SET |

### postgres

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_pr_type_status | type,status | CREATE INDEX IF NOT EXISTS idx_pr_type_status ON privacy_requests (type, status) |
| idx_pr_user | user_id | CREATE INDEX IF NOT EXISTS idx_pr_user ON privacy_requests (user_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_pr_user | user_id | users(id) | ON DELETE SET |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_privacy_requests | mysql | algorithm=MERGE, security=INVOKER | [packages\privacy-requests\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/privacy-requests/schema/040_views.mysql.sql) |
| vw_privacy_requests_status | mysql | algorithm=TEMPTABLE, security=INVOKER | [packages\privacy-requests\schema\040_views_joins.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/privacy-requests/schema/040_views_joins.mysql.sql) |
| vw_privacy_requests | postgres |  | [packages\privacy-requests\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/privacy-requests/schema/040_views.postgres.sql) |
| vw_privacy_requests_status | postgres |  | [packages\privacy-requests\schema\040_views_joins.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/privacy-requests/schema/040_views_joins.postgres.sql) |
