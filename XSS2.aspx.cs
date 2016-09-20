using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fullXSS
{
    public partial class XSS2 : System.Web.UI.Page
    {
        List<string> forum;
        protected void Page_Load(object sender, EventArgs e)
        {
            forum = ((List<String>) Session["dados"]);

            if (Request.QueryString["data"] != null)
            {
                Response.Clear();
                Response.AppendHeader("Expires", "-1");//special note (not a comment!) - i.e. fetch subsequent xmlhttrequest from cache... :) dummy?!?!
                Response.Write(buildForum(forum));

                Response.End();
                return;
            }

        }

        private string buildForum(List<string> dados)
        {
            return String.Join("<br/>", dados);
        }

        protected void Button1_AddPosta_Click(object sender, EventArgs e)
        {
           forum.Add(TextBox1Forum.Text);
        }

        protected void Button2_LimparForum_Click(object sender, EventArgs e)
        {
            forum.Clear();
        }
    }
}