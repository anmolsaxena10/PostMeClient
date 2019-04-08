using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostMeClient
{
    public partial class AddPosts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reset_Click(object sender, EventArgs e)
        {
            headline.Text = "";
            description.Text = "";
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                PostMeService.Post p = new PostMeService.Post();
                p.headline = headline.Text;
                p.description = description.Text;
                p.time = DateTime.Now;
                p.user = (PostMeService.User)Session["user"];
                var client = new PostMeService.PostMeServiceClient("BasicHttpBinding_IPostMeService");
                p.postId = client.addPost(p);
                Response.Redirect("~/ViewPosts");
            }
            catch(Exception ex)
            {

            }
        }
    }
}