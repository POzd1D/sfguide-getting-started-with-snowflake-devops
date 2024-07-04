DESC INTEGRATION;

--


CREATE OR REPLACE API INTEGRATION git_api_integration
  API_PROVIDER = git_https_api
  API_ALLOWED_PREFIXES = ('https://dev.azure.com/onedynamics') -- INSERT YOUR GITHUB USERNAME HERE
  ENABLED = TRUE;


-- Git repository object is similar to external stage
CREATE OR REPLACE GIT REPOSITORY quickstart_common.public.quickstart_repo
  API_INTEGRATION = git_api_integration
  GIT_CREDENTIALS = my_secret if needed
  ORIGIN = 'https://dev.azure.com/onedynamics/Rosti%20Snowflake/_git/TEST%20Snowflake%20GIT'; -- INSERT URL OF FORKED REPO HERE
