<%@ Page Title="Posts" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="ViewPosts.aspx.cs" Inherits="PostMeClient.ViewPosts" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <div>
        <asp:Repeater id="postsRep" runat="server">
            <ItemTemplate>
                <div class="panel panel-default">
                    <div class="panel-heading text-right">
                        <h3 class="panel-title text-left">
                            <a href='/ViewPost?id=<%# Eval("postId") %>'>
                                <%# Eval("headline") %>
                            </a>
                        </h3>
                        <a href='User?id=<%# Eval("user.userId") %>'>
                            <%# Eval("user.username") %>
                        </a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <nav aria-label="...">
          <ul class="pager">
            <li class="previous"><a href="/ViewPosts?page=<%=prevPage %>"><span aria-hidden="true">&larr;</span> Older</a></li>
            <li class="next"><a href="/ViewPosts?page=<%=nextPage %>">Newer <span aria-hidden="true">&rarr;</span></a></li>
          </ul>
        </nav>
    </div>

</asp:Content>
