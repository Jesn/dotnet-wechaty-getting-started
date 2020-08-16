using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Volo.Abp.Autofac;
using Volo.Abp.EventBus;
using Volo.Abp.Modularity;
using Wechaty.Application;
using Wechaty.Application.Contracts;
using Wechaty.Domain.Shared.DTO;

namespace wechaty_getting_started
{
    [DependsOn(
        typeof(AbpAutofacModule),
        typeof(AbpEventBusModule),
        typeof(WechatyApplicationModule),
        typeof(WechatyApplicationContractModule)
        //,typeof(WechatyPluginBaseModule)
        )]
    public class WechatyConsoleModule : AbpModule
    {
        public override void ConfigureServices(ServiceConfigurationContext context)
        {
            //var hostingEnvironment = context.Services.GetHostingEnvironment();
            //var configuration = context.Services.GetConfiguration();
            //ConfigWechatyOption(configuration);
        }
    }
}
