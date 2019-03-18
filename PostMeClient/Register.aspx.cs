using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostMeClient
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reset_Click(object sender, EventArgs e)
        {
            username.Text = "";
            password.Text = "";
            first_name.Text = "";
            last_name.Text = "";
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                PostMeService.User user = new PostMeService.User();
                user.username = username.Text;
                user.password = password.Text;
                user.firstName = first_name.Text;
                user.lastName = last_name.Text;
                System.Diagnostics.Debug.WriteLine(user.username);
                var client = new PostMeService.PostMeServiceClient("BasicHttpBinding_IPostMeService");
                user.userId = client.addUser(user);
                Session.Add("user", user);
                Response.Redirect("~/");
            }
            catch(Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex);
            }
        }
    }
}