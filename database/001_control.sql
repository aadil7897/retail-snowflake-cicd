CREATE SCHEMA IF NOT EXISTS CONTROL;

CREATE TABLE IF NOT EXISTS CONTROL.DEPLOYMENT_AUDIT (
  deployment_id VARCHAR,
  release_version VARCHAR,
  environment_name VARCHAR,
  git_commit VARCHAR,
  deployed_by VARCHAR,
  deployment_start TIMESTAMP_NTZ,
  deployment_end TIMESTAMP_NTZ,
  status VARCHAR,
  error_message VARCHAR
);

CREATE TABLE IF NOT EXISTS CONTROL.SCHEMA_MIGRATION_HISTORY (
  migration_version VARCHAR,
  migration_name VARCHAR,
  git_commit VARCHAR,
  applied_ts TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
  applied_by VARCHAR
);
