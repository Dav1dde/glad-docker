import os.path

base_path = os.path.split(os.path.abspath(__file__))[0]

bind = '0.0.0.0:8080'
workers = 9
worker_class = 'eventlet'
keepalive = 5
errorlog = os.path.join(base_path, 'error.log')
loglevel = 'warning'
proc_name = 'glad-web'

