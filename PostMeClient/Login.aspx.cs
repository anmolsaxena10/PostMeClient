using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostMeClient
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reset_Click(object sender, EventArgs e)
        {
            username.Text = "";
            password.Text = "";
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                var client = new PostMeService.PostMeServiceClient("BasicHttpBinding_IPostMeService");
                PostMeService.User user = client.verify(username.Text, password.Text);
                Session.Add("user", user);
                Response.Redirect("~/");
            }
            catch(Exception ex)
            {

            }
            
        }
    }
}