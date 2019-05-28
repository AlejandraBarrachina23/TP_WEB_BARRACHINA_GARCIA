using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Voucher
    {
        public string CodigoVoucher { get; set; }
        public string Participante { get; set; }
        public string CodigoProducto { get; set; }
        public bool Estado { get; set; }

    }
}
