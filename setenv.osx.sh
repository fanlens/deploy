export (cat config/bot.dev.env)
export (cat config/web.dev.env)
export (cat config/fanlens.dev.env)
export (cat config/worker.dev.env)
export (cat config/crawler.dev.env)
set -gx FL_CRAWLER_HOST https://localhost
# set -gx REQUESTS_CA_BUNDLE (pwd)/localhost.pem
set -gx GOOGLE_APPLICATION_CREDENTIALS (pwd)/gce/key.json
