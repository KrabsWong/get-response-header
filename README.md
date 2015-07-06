# 获取response header(基于Swift实现)

> 一个swift练习, 穷折腾...

OS X 10.10.4测试通过.

## 安装和配置

### 安装脚本
```sh
## clone目录随意
mkdir ~/get-res-header && git clone git@github.com:yPangXie/get-response-header.git ~/get-res-header
```

### 配置`alias`

```sh
# OS X中的配置方式
vim ~/.zshrc
# 或
vim ~/.bash_profile

# 新增
alias grh='/Users/XXX/get-res-header/get-response-header.swift '
```

## 使用

```sh
grh http://www.google.com
```

返回值为:

```sh
Server: gws
Content-Type: text/html; charset=GB2312
Vary: Accept-Encoding
Transfer-Encoding: Identity
Date: Mon, 06 Jul 2015 16:26:47 GMT
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
Alternate-Protocol: 80:quic,p=0
Accept-Ranges: none
Cache-Control: private, max-age=0
Expires: -1
```

![执行效果图](https://raw.githubusercontent.com/yPangXie/get-response-header/master/screenshot/screenshot.png)
