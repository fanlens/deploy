#!/usr/bin/env python
# -*- coding: utf-8 -*-
import multiprocessing
import os

bind = "0.0.0.0:%d" % int(os.getenv('PORT', 5000))
workers = multiprocessing.cpu_count() * 2 + 1
capture_output = True
loglevel = os.environ.get('FL_WEB_LOGLEVEL', 'INFO')
errorlog = '-'
accesslog = '-'
access_log_format = '%(h)s/%({X-FORWARDED-FOR}i)s %(l)s %(u)s %(t)s "%(r)s" %(s)s %(b)s "%(f)s" "%(a)s"'
