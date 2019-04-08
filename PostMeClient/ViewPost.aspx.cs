using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostMeClient
{
    public partial class ViewPost : System.Web.UI.Page
    {
        public PostMeService.Post post;
        public string comments;
        public string postId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                postId = Request.QueryString["id"];
                if (postId != null)
                {
                    var client = new PostMeService.PostMeServiceClient("BasicHttpBinding_IPostMeService");
                    post = client.getPost(Int32.Parse(postId));
                    Debug.WriteLine(postId);
                    comments = JsonConvert.SerializeObject(client.filterComments(null, post.postId, null));
                    Debug.WriteLine(comments);
                }
                else
                {
                    Response.Redirect("~/");
                }
            }
        }
    }
}