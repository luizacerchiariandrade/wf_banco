using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoComponentes
{
    public partial class wfWizard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Wizard1.ActiveStepIndex = 0;
            }

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            var nome = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbNome")).Text;
            var cpf = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbCpf")).Text;
            var rg = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbRg")).Text;
            var cep = ((TextBox)Wizard1.WizardSteps[0].FindControl("TbCep")).Text;
            var estado = ((TextBox)Wizard1.WizardSteps[0].FindControl("TbEstado")).Text;
            var cidade = ((TextBox)Wizard1.WizardSteps[0].FindControl("TbCidade")).Text;
            var endereco = ((TextBox)Wizard1.WizardSteps[0].FindControl("TbEndereco")).Text;
            var bairro = TbBairro.Text;
            Wizard1.Visible = false;
            Response.Write("<h3> Dados do formulário </h3>");
            Response.Write("<h3> Nome " + nome + "</h3>");
            Response.Write("<h3> cpf " + cpf + "</h3>");
            Response.Write("<h3> Bairro " + bairro + "</h3>");

        }
    }
}