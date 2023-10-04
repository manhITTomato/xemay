<%@ Control Language="C#" AutoEventWireup="true"  CodeBehind="detail.ascx.cs" Inherits="ShopsDefault.UserControls.News.detail" %>

<div class="detail-news section">
    <div class="container">
        <div class="row">
            <asp:ObjectDataSource ID="ds" runat="server" OnSelecting="ds_Selecting" SelectMethod="GetDataTable_SQL_pro" TypeName="Librari.Cls_News" />
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ds">
                <ItemTemplate>
                    <%--<div class="col-4">
                        <div class="item">
                            <div class="image">
                                <a href="<%# Utils.getAHrefURL("tin-tuc", Eval("linkSEOCatalog"), Eval("linkSEO"), Eval("ID_News"))%>">
                                    <img src="<%# Eval("Image")%>" /></a>
                            </div>
                            <div class="content">
                                <a href="<%# Utils.getAHrefURL("tin-tuc", Eval("linkSEOCatalog"), Eval("linkSEO"), Eval("ID_News"))%>">
                                    <h3 class="title"><%# Eval("Title")%></h3>
                                </a>
                                <div class="desc"><%# Utils.subString(Convert.ToString(Eval("SummaryContent")), 120)%>...</div>
                            </div>
                            <div class="author">
                                <div class="poster">Admin</div>
                                <div class="date-post"><%#Eval("AddTime", "{0:dd/MM/yyyy}")%></div>
                                <div class="read-more"><a href="<%# Utils.getAHrefURL("tin-tuc", Eval("linkSEOCatalog"), Eval("linkSEO"), Eval("ID_News"))%>" class="btn-default">Xem thêm</a></div>
                            </div>
                        </div>
                    </div>--%>
                    <div class="col-12">
                        <div class="item">
                            <div class="title">
                                <%# Eval("Title")%>
                            </div>
                            <div class="author">
                                <i class="fa fa-user"></i>Admin | <i class="fa fa-calendar"></i><%# GetDate(Eval("AddTime"))%>
                            </div>
                            <div class="content-editor">
                                <%# Eval("Description")%>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>
