for config in config/*.dev.env
    export (cat $config)
end

set -gx FL_CRAWLER_HOST https://localhost
# set -gx REQUESTS_CA_BUNDLE (pwd)/localhost.pem
set -gx GOOGLE_APPLICATION_CREDENTIALS (pwd)/gce/key.json
