特点： 增加tor网络访问功能，v2rayTor.json文件中路由设置了当访问.onion的网址时才会接入到tor

Tips: 
* 在kinto部署时候使用二级目录v2rayTor下的Dockerfile文件,端口80，部署超时设置为5分钟
* CONFIG变量可以填写网络地址，比如gist的raw地址： `https://gist.githubusercontent.com/mixool/ad940b202e25ce51d52b20f535eeebde/raw/c927876a5a7c067a17e463a5e5129a35c860ff14/v2rayTor.json`
* 验证是否成功搭建可用此代理分别尝试访问： google.com 和 vq7kihyfoqcoluju.onion 
