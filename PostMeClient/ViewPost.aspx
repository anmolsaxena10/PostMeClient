<%@ Page Title="Post" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewPost.aspx.cs" Inherits="PostMeClient.ViewPost" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center"><%= post.headline %></h2>
    <div class="panel panel-default">
        <div class="panel-body">
        <%= post.description %>
        </div>
    </div>

    <h4>Comments</h4>
    <div class="list-group" id="comments">
      <a href="/AddComment?pId=<%= post.postId %>&replyOfComment=-1">Add Comment</a>
    </div>
    <script>
        var comments = <%= comments %>;
        comments.forEach(comment => {
            if (comment.replyOfComment === -1) {
                var c = `
                
                    <div class="list-group-item" id="`+ comment.commentId +`">
                        <h4 class="list-group-item-heading">`+ comment.user.username +`</h4>
                        <p class="list-group-item-text">`+ comment.description +`</p>
                        <a href="/AddComment?pId=<%= post.postId%>&replyOfComment=`+comment.commentId+`">reply</a>
                        <div class="list-group" id="l`+ comment.commentId +`">
                        </div>
                    </div>
                `;
                $('#comments').append(c);
            }
            else {
                var c = `
                
                    <div class="list-group-item" id="`+ comment.commentId +`">
                        <h4 class="list-group-item-heading">`+ comment.user.username +`</h4>
                        <p class="list-group-item-text">`+ comment.description +`</p>
                        <a href="/AddComment?pId=<%= post.postId%>&replyOfComment=`+comment.commentId+`">reply</a>
                        <div class="list-group" id="l`+ comment.commentId +`">
                        </div>
                    </div>
               
                `;
                $('#l' + comment.replyOfComment).append(c);
            }
        });
        console.log(comments);
    </script>
</asp:Content>