<%@ Page Title="Post" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewPost.aspx.cs" Inherits="PostMeClient.ViewPost" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%= post.headline %></h2>
    <div>
        <%= post.description %>
    </div>

    <div class="list-group" id="comments">
      
    </div>
    <script>
        var comments = <%= comments %>;
        var list = `
            < div class="list-group" id="{0}">
            </div>
        `;
        var item = `
            <div class="list-group-item" id="{0}">
                <h4 class="list-group-item-heading">{1}</h4>
                <p class="list-group-item-text">{2}</p>
            </div>
        `;
        comments.forEach(comment => {
            if (comment.replyOfComment === -1) {
                var c = `
                <div class="list-group-item" id="`+ comment.commentId +`">
                    <h4 class="list-group-item-heading">`+ comment.user.username +`</h4>
                    <p class="list-group-item-text">`+ comment.description +`</p>
                </div>
                `;
                $('#comments').append(c);
            }
            else {
                var c = `
                < div class="list-group" id="l`+ comment.commentId +`">
                    <div class="list-group-item" id="`+ comment.commentId +`">
                        <h4 class="list-group-item-heading">`+ comment.user.username +`</h4>
                        <p class="list-group-item-text">`+ comment.description +`</p>
                    </div>
                </div>
                `;
                $('#l'+ comment.commentId).append(c);
            }
        });
        console.log(comments);
    </script>
</asp:Content>