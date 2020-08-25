利用kintohub免费空间部署v2ray和tor，部署成功后，可用v2ray客户端直接访问tor网络，比如暗网.onion，v2ray.json文件中路由设置了当访问.onion的网址时才会接入到tor，感谢mixool提供的思路和技术支持！

### 部署服务端
1. 点开 https://app.kintohub.com/ 新建一个APP，点击 Create Service ,然后创建 Web App 如图：

![创建 web app](/img/kinto2.PNG)

2. Build Settings 文件名填写Dockerfile，端口填上8888，填写如下：

![build](/img/kinto.PNG)

3. Repository 填上git链接和默认分支master

![repository](/img/kinto1.PNG)

最后点击右上角 Deploy，部署完成，会生成一个链接，点击链接，如果显示Bad Request，即为成功。

### 客户端配置

客户端配置看图吧，不多讲：

![v2ray](/img/kinto3.jpg)

默认UUID：c95ef1d4-f3ac-4586-96e9-234a37dda068

### 修改UUID
部署容器的时候在Environment variables 里设置UUID 为你的私密UUID值，可以从 https://1024tools.com/uuid 在线生成

![gist](/img/kinto4.jpg)

最后，打钱：https://yeahwu.com/donation.html   
测试暗网地址：http://vq7kihyfoqcoluju.onion/donation.html
