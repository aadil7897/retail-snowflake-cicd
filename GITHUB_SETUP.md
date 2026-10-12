Create GitHub environments:
- development
- uat
- production

Add these environment secrets:
- SNOWFLAKE_ACCOUNT
- SNOWFLAKE_USER = SVC_GITHUB_RETAIL_CICD
- SNOWFLAKE_PRIVATE_KEY
- SNOWFLAKE_PRIVATE_KEY_PASSPHRASE

Recommended:
- development: automatic after merge to main
- uat: manual workflow
- production: required reviewer if supported, otherwise manual workflow_dispatch for learning
