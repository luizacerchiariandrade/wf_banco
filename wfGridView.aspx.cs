using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoComponentes
{
    public partial class wfGridView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DetailsView1.PageIndex = (GridView1.PageIndex * GridView1.PageIndex) + GridView1.SelectedIndex;
        }
    }
}