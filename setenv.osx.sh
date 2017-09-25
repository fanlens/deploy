export (cat config/bot.dev.env)
export (cat config/db.dev.env)
export (cat config/web.dev.env)
export (cat config/redis.dev.env)
export (cat config/rabbitmq.dev.env)
export (cat config/twitter.dev.env)
export (cat config/celery.dev.env)
export (cat config/mail.dev.env)
export (cat config/worker.dev.env)
export (cat config/crawler.dev.env)
set -gx FL_CRAWLER_HOST https://localhost
# set -gx REQUESTS_CA_BUNDLE (pwd)/localhost.pem
set -gx GOOGLE_APPLICATION_CREDENTIALS (pwd)/gce/key.json
