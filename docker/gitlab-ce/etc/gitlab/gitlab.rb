external_url 'http://192.168.0.104:28080'
nginx['listen_port'] = 80
nginx['listen_https'] = false

gitlab_sshd['enable'] = true
gitlab_rails['gitlab_shell_ssh_port'] = 28022

registry_external_url 'http://192.168.0.104:28081'
gitlab_rails['registry_host'] = '192.168.0.104'
#gitlab_rails['registry_port'] = '28081'
gitlab_rails['registry_enabled'] = true
# 建议显式指定 API 地址
gitlab_rails['registry_api_url'] = 'http://127.0.0.1:5000'
# Registry 内部监听端口
registry['registry_http_addr'] = '0.0.0.0:5000'
registry['enable'] = true

sidekiq['max_concurrency'] = 10

letsencrypt['enable'] = false
prometheus['enable'] = false
alertmanager['enable'] = false
prometheus['enable'] = false

alertmanager['enable'] = false
node_exporter['enable'] = false
redis_exporter['enable'] = false
postgres_exporter['enable'] = false

gitlab_rails['time_zone'] = 'Asia/Shanghai'
