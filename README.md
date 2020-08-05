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

默认UUID：c95ef1d4-f3ac-4586-96e9-234a37dda068   额外ID（alterID）: 8

### 修改UUID
方法一：

Fork本项目，到config.json里面修改uuid或者端口，然后到Dockerfile里面修改ENV CONFIG= 指向链接，例如

`ENV CONFIG=https://raw.githubusercontent.com/yeahwu/kinto/master/config.json`指向你自己项目的config.json文件。

方法二：

当然这个config.json链接也可以改为自己的私密链接，比如 https://gist.github.com/ 里写config.json配置，然后生成链接。最后部署的时候写入到Environment variables里，如图：

![gist](/img/kinto4.jpg)

最后，打钱：
https://yeahwu.com/donation.html
