using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LabASPNETWeb.Startup))]
namespace LabASPNETWeb
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
