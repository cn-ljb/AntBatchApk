##Ant多渠道打包##

**所需素材：**

1、apache-ant [传送门](http://ant.apache.org/bindownload.cgi "go")

2、ant-contrib.jar [传送门](https://sourceforge.net/projects/ant-contrib/files/ant-contrib/ "go")

3、apktool  [传送门](http://www.softpedia.com/get/Programming/Debuggers-Decompilers-Dissasemblers/ApkTool.shtml "go")

4、JDK

5、AndroidSDK

**打包原理：** 反编译基础Apk -> 循环渠道号 -> 替换assets目录下的渠道文件 -> 修改渠道号 -> 重新生成Apk -> 进行签名 -> zipalign优化


**使用方法：**

1、将android_batchapk拷贝到E盘根目录

2、配置环境变量jdk/bin目录、androidSDK/tools目录、ant/bin目录

3、将多渠道打包的apk、签名文件拷贝到keystore目录下

4、配置keystore/keystore.properties文件信息，例如：

![](http://i.imgur.com/Zqgx9Qm.png)

5、配置build.properties文件信息，例如：

![](http://i.imgur.com/HUEIQjP.png)

6、运行ant.bat

7、batchapk中查看渠道包



