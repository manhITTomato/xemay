using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopsDefault.UserControls.Header
{
    public partial class header_menu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected string GetCountItemCart()
        //{
        //    int count = 0;
        //    object total;
        //    DataTable dt = (DataTable)Session["cart_items"];
        //    if (dt != null)
        //    {
        //        total = dt.Compute("Sum(Quantity)", "");
        //        if (total == null || total.ToString() == "")
        //        {
        //            count = 0;
        //        }
        //        else
        //        {
        //            count = Convert.ToInt32(total.ToString());
        //        }

        //    }
        //    else
        //    {
        //        count = 0;
        //    }
        //    return count.ToString();
        //}
    }
}