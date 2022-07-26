// *****************************************************************************
// Practica 07
// PatricioV_ElvisT 
// Fecha de realización: 15/07/2022
// Fecha de entrega: 24/07/2022
// Resultados:
//  En esta práctica se desarrolló una aplicación web basada en ASP.net, la cual tiene tres interfacez, y realiza
// la comunicación entre cada una de ellas, la activación de cada ventana es realizada mediante eventos click
//
//
// Conclusiones:
// *    La sintaxis que define a la pagina html es muy importante que este bien estructurada para que la información pueda ser
//      accedida sin inconvenientes
// *    La información en la app web puede ser desplegada de diferentes manera, los conjuntos de elementos optimizan el desarrollo
// *    Se debe establecer correctamente los nombres de las rutas para que la información se transmita correctamente
// *    Las variables en diferentes namespaces no se comparten entre formularios
// *    Al realizar un evento click la pagina se recarga y setea los valores definidos en la funcion onload
//
// Recomendaciones:
// *    Enviar los valores suficientes entre formularios para que se puedan desplegar la información requerida
// *    Definir nombres de identificación adecuados 
// *    Definir controles adecuados para optimizar el tiempo dedicado al programa
//
// *****************************************************************************


using System;
using System.Text;

namespace Default
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

       // este evento gestiona si se ha selecionado algo en el radio buton o el checkbox list
        protected void opciones_CheckedChanged(object sender, EventArgs e)
        {
            StringBuilder seleccion = new StringBuilder("Tipo de masa: ");

            float costoTotal = 0;

            // se verifica que se ha selecionado un item en el radion button list
            if (grupoTipos.SelectedItem != null)
            {
                // añado a la cadena seleccion el ingrediente que esta selecionado en el radio button list
                seleccion.Append(grupoTipos.SelectedItem.Text.ToString() + " ");
                //modifico el valor de la variable costoTotal, con el valor asociado a el item en curso
                costoTotal += float.Parse(grupoTipos.SelectedItem.Value);
                //agrego una cadena descriptiva de la siguiente cadena de ingredientes
                seleccion.Append("; Ingredientes: ");
            }

            //gestiono los ingredientes seleccionados
            for (int i = 0; i < grupoIngredientes.Items.Count; i++)
            {
                //verificacion si el item en curso ha sido selecionad
                if (grupoIngredientes.Items[i].Selected)
                {
                    //agrego a la cadena selecion el nombre y precio del item actual 
                    seleccion.Append(grupoIngredientes.Items[i].Text.ToString() + " ");
                    //modifico el valor de la variable costoTotal, añadiendole el valor asociado a el item en curso
                    costoTotal += float.Parse(grupoIngredientes.Items[i].Value);
                }
            }

            //despliego los resultados
            literalSeleccionActual.Text = seleccion.ToString();
            txtTotal.Text = costoTotal.ToString();
        }

        //Evento que despliega la pagina Checkout y le envia valores de los ingredientes y precio total
        protected void lnkCheckout_Click(object sender, EventArgs e)
        {
            Session["seleccion"] = literalSeleccionActual.Text;
            Session["costo"] = txtTotal.Text;
            Response.Redirect("Checkout.aspx");
        }

        //evento para desplegar la informacion de contacto
        protected void lnkContactos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contacto.aspx");
        }

    }
}