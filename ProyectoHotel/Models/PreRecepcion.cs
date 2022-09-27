using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoHotel.Models
{
    public class PreRecepcion
    {
        public int IdRecepcion { get; set; }
        public string Tema { get; set; }
        public string Descripcion { get; set; }
        public DateTime FechaEntrada { get; set; }
        public DateTime FechaSalida { get; set; }
        public string ColorTema { get; set; }
        public bool IsFullDay { get; set; }
    }
}