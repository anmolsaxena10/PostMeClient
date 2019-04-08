using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostMeClient
{
    public partial class ViewPosts : System.Web.UI.Page
    {
        public int currPage = 1;
        public int prevPage;
        public int nextPage;
        protected void Page_Load(object sender, EventArgs e)
        {
            currPage = Int32.Parse(Request.QueryString["page"]==null ? "1" : Request.QueryString["page"]);
            prevPage = currPage == 1 ? 1 : currPage - 1;
            var client = new PostMeService.PostMeServiceClient("BasicHttpBinding_IPostMeService");
            PostMeService.Post[] posts = client.filterPosts(currPage, null, null, null);
            nextPage = posts.Length < 10 ? currPage : currPage + 1;
            postsRep.DataSource = posts;
            postsRep.DataBind();
        }
    }
}