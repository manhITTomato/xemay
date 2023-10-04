using Librari;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopsDefault.UserControls.Products
{
    public partial class relates : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ds_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {
            int id = Convert.ToInt32(Request["idProduct"].ToString());
            int idCata = Convert.ToInt32(Cls_ShopsProducts.getOject_Key(Convert.ToInt16(Request["idProduct"])).ID_Catalog);
            string sql = "SELECT TOP(6) *, tbShopsCatalogs.LinkSEO as linkSEOCatalog FROM tbShopsProducts, tbShopsCatalogs WHERE tbShopsCatalogs.ID_Catalog = tbShopsProducts.ID_Catalog and tbShopsProducts.Hidden = 1 and ID_Product <> " + id + " and tbShopsProducts.ID_Catalog = " + idCata;
            e.InputParameters["sSQL"] = sql;
        }
    }
}