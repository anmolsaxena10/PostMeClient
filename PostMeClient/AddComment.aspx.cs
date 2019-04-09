using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostMeClient
{
    public partial class AddComment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                PostMeService.Comment p = new PostMeService.Comment();
                p.description = description.Text;
                p.time = DateTime.Now;
                p.user = (PostMeService.User)Session["user"];
                var client = new PostMeService.PostMeServiceClient("BasicHttpBinding_IPostMeService");
                p.post = client.getPost(Int32.Parse(Request.QueryString["pId"]));
                p.replyOfComment = Int32.Parse(Request.QueryString["replyOfComment"]);
                p.commentId = client.addComment(p);
                Response.Redirect("~/ViewPost?id="+p.post.postId);
            }
            catch (Exception ex)
            {

            }
        }

        protected void reset_Click(object sender, EventArgs e)
        {

        }
    }
}