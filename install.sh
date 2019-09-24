#!/bin/bash
yum install -y python-setuptools
easy_install pip
pip install shadowsocks
echo '''
{
"server": "0.0.0.0",
"server_port": 44323,
"local_address": "127.0.0.1",
"local_port": 1080,
"password": "6sU9oTXfli9tJ",
"timeout": 300,
"method": "aes-256-cfb",
"fast_open": false,
"workers": 1
}
''' >> /etc/shadowsocks.json
ssserver -c /etc/shadowsocks.json -d start
ps -ef|grep ssserver
