using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Custom_Accs.dsDatosTableAdapters;

namespace Custom_Accs
{
    public partial class Login : System.Web.UI.Page
    {
        LoginTableAdapter longin = new LoginTableAdapter();
        dsDatos dsDatos = new dsDatos();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)//se abre la pagina por primera vez
            {
                if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null) //Valida si la cookies tienen datos
                {
                    this.txtEmail.Text = Request.Cookies["UserName"].Value;
                    this.txtPassword.Text = Request.Cookies["Password"].Value;
                }
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Response.Cookies["UserName"].Value = this.txtEmail.Text.Trim();
            Response.Cookies["Password"].Value = this.txtPassword.Text.Trim();
            try
            {
                String url = Request.QueryString["ReturnUrl"];
                //Se ejecuta la consulta
                this.longin.Fill(this.dsDatos.Login, this.txtEmail.Text.Trim(), this.txtPassword.Text.Trim());
                //Validar si el usuario existe
                if (this.dsDatos.Login.Rows.Count > 0)
                {
                    if (url == null)
                    {
                        Response.Redirect("Default.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                    else
                    {
                        System.Web.Security.FormsAuthentication.RedirectFromLoginPage(this.txtEmail.Text, false);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error " + ex.Message.ToString());
            }
        }
    }
}