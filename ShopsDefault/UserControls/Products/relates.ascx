<%@ Control Language="C#" AutoEventWireup="true"  CodeBehind="relates.ascx.cs" Inherits="ShopsDefault.UserControls.Products.relates" %>
<style>
    .prd-relates.section {
        padding-top: 0;
    }
</style>
<div class="prd-relates prd-default section">
    <div class="container">
        <div class="block-header style1">Sản phẩm liên quan</div>
        <div class="row">
            <asp:ObjectDataSource ID="ds" runat="server" OnSelecting="ds_Selecting" SelectMethod="GetDataTable_SQL_pro" TypeName="Librari.Cls_ShopsProducts" />
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ds">
                <ItemTemplate>
                    <div class="col-lg-4">
                        <div class="item">
                            <div class="image">
                                <a href="<%# Utils.getAHrefURL("san-pham", Eval("linkSEOCatalog"),Eval("LinkSEO"), Eval("ID_Product"))%>">
                                    <img src="<%# Eval("Image")%>" />
                                </a>
                            </div>
                            <div class="content">
                                <a href="<%# Utils.getAHrefURL("san-pham", Eval("linkSEOCatalog"),Eval("LinkSEO"), Eval("ID_Product"))%>">
                                    <h3 class="title"><%# Eval("ProductName")%></h3>
                                </a>
                                <h4><%# Utils.getPrice(Eval("PriceOut"))%><sup>VNĐ</sup><span>/Ngày</span></h4>
                                <ul>
                                    <li><i class="fa fa-motorcycle"></i><%# Eval("Color")%></li>
                                    <li><i class="fa fa-dashboard"></i><%# Eval("Weight")%> km/h</li>
                                </ul>
                                <div class="action">
                                    <a href="#" class="btn-default">Thuê xe</a>
                                    <a href="<%# Utils.getAHrefURL("san-pham", Eval("linkSEOCatalog"),Eval("LinkSEO"), Eval("ID_Product"))%>" class="btn-default">Chi tiết</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>
