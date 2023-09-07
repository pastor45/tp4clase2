using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp2
{
    public partial class CargarAlumno : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("GestionCalificaciones.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Obtén los valores de los campos
            string nombre = Textbox1.Text.Trim();
            string apellido = Textbox2.Text.Trim();
            string materia = Drop1.SelectedValue;
            string calificacion = Drop2.SelectedValue;

            // Verifica si todos los campos están completos
            if (string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(apellido) || string.IsNullOrEmpty(materia) || string.IsNullOrEmpty(calificacion))
            {
                // Mostrar un mensaje de error si algún campo está vacío
                Label6.Text = "Por favor, complete todos los campos antes de cargar.";
            }
            else
            {
                // Escribe los datos en el archivo
                StreamWriter streamWriter = new StreamWriter($"{Server.MapPath(".")}/notas.txt", true);
                streamWriter.WriteLine($"Nombre: {nombre}");
                streamWriter.WriteLine($"Apellido: {apellido}");
                streamWriter.WriteLine($"Materia: {materia}");
                streamWriter.WriteLine($"Calificación: {calificacion}");
                streamWriter.Close();
                Label6.Text = "Se registró el alumno correctamente.";
            }
        }

    }
}