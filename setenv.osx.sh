export (cat docker/config/eev.dev.env)
export (cat docker/config/web.dev.env)
export (cat docker/config/fanlens.dev.env)
export (cat docker/config/worker.dev.env)
export (cat docker/config/crawler.dev.env)
set -gx FL_CRAWLER_HOST https://localhost
# set -gx REQUESTS_CA_BUNDLE (pwd)/localhost.pem
set PATH /opt/intel/intelpython35/bin/ $PATH
set -gx GOOGLE_APPLICATION_CREDENTIALS (pwd)/gce/key.json
