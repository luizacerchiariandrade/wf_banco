﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoComponentes
{
    public partial class wfTabuada : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 2; i < 11; i++)
                {
                    dlNumeros.Items.Add(i.ToString());
                }
            }

        }

        protected void btTabuada_Click(object sender, EventArgs e)
        {
            lbDados.Items.Clear();
            ListItem li = dlNumeros.SelectedItem;
            int n = Convert.ToInt32(li.Value);
            int t = 0;

            for (int i = 0; i <11; i++)
            {
                t = i * n;
                //lbDados.Items.Add(i.ToString() + " X " + n.ToString() + " = " + t.ToString());
                tbDados.Rows[i].Cells[0].Text = n.ToString();
                tbDados.Rows[i].Cells[4].Text = t.ToString();

            }
        }
    }
}