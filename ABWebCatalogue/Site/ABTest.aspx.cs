﻿using Core.Models;
using Core.WebExtensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABWebCatalogue.Site
{
    public partial class ABTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cmbIRenovac.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
        }
    }
}