using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Rehber.WinUI
{
    public partial class AnaMenu : Form
    {
        public AnaMenu()
        {
            InitializeComponent();
        }

        private void btnAyarlar_Click(object sender, EventArgs e)
        {
            Ayarlar ayar = new Ayarlar();
            ayar.ShowDialog();
            
        }

        private void btnMusteriEkle_Click(object sender, EventArgs e)
        {
            MusteriEkleme mekle = new MusteriEkleme();
            mekle.ShowDialog();
        }
    }
}
