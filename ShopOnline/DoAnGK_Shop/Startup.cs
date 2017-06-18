using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DoAnGK_Shop.Startup))]
namespace DoAnGK_Shop
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
