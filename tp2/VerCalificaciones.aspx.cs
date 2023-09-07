using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp2
{
    public partial class VerCalificaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(File.Exists(Server.MapPath(".") + "/notas.txt"))
            {
                StreamReader streamReader = new StreamReader(Server.MapPath(".") + "/notas.txt");
                string[] lines = (streamReader.ReadToEnd()).Split('\n');
                streamReader.Close();
                int lineCount = 0;
                Label1.Text = "<hr/>";
                foreach (string line in lines)
                {
                    lineCount++;
                    if(lineCount%4 == 0) 
                    {
                        Label1.Text += $"{line} <br/>";
                        Label1.Text += "<hr>";
                    }
                    else
                    {
                        Label1.Text += $"{line} <br/>";
                    }
                   
                }
            }
            else
            {
                Label1.Text = "No existen datos";
            }
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("GestionCalificaciones.aspx");
        }
    }
}