# dotnet-wechaty-getting-started

# ������ʽ

* һ��ͨ�� visual studio ֱ������
      
    1����`appsettings.json`�����ö�Ӧ��token��Ϣ
    
    2��ͨ��`launchSettings.json`���õ��Ի�������
    

* ����ͨ��Makefile����

    1�����`dotnet  --version`�������Ƿ�װ��dotnet core sdk

      ���û�а�װ��ͨ�� https://docs.microsoft.com/en-us/dotnet/core/install/ ���������ض�Ӧ��.net core sdk
    
    2�����û�������
    ```
    export Wechaty_Token=youre wechaty token
    ```
    
    3������MakFile����
    ```
    make all
    ```

* ����ͨ��Docker����
     
    1��ͨ��`launchSettings.json`���õ��Ի�������

    2��ͨ���Ѿ��ϴ���docker��������
    ```
    docker pull registry.cn-shanghai.aliyuncs.com/wechaty/dotnet-wechaty
    docker run --name dotnet-wechaty -e Wechaty_Token="your token" -d --restart=always registry.cn-shanghai.aliyuncs.com/wechaty/dotnet-wechaty
    ```
