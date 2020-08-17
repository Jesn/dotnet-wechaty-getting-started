# dotnet-wechaty-getting-started

# 启动方式

* 一、通过 visual studio 直接启动
      
    1、在`appsettings.json`中配置对应的token信息
    
    2、通过`launchSettings.json`设置调试环境变量
    

* 二、通过Makefile启动

    1、检测`dotnet  --version`命令检测是否安装了dotnet core sdk

      如果没有安装则通过 https://docs.microsoft.com/en-us/dotnet/core/install/ 该链接下载对应的.net core sdk
    
    2、设置环境变量
    ```
    export Wechaty_Token=youre wechaty token
    ```
    
    3、运行MakFile命令
    ```
    make all
    ```

* 三、通过Docker启动
     
    1、通过`launchSettings.json`设置调试环境变量

    2、通过已经上传的docker镜像运行
    ```
    docker pull registry.cn-shanghai.aliyuncs.com/wechaty/dotnet-wechaty
    docker run --name dotnet-wechaty -e Wechaty_Token="your token" -d --restart=always registry.cn-shanghai.aliyuncs.com/wechaty/dotnet-wechaty
    ```
