﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace inaki_rosa
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            /*routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "default", id = UrlParameter.Optional }
            );*/
            routes.MapPageRoute("default", "{page}", "~/{page}.aspx", false, new RouteValueDictionary(new { page = "default" }));
        }
    }
}
