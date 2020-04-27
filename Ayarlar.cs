using Methods;
using Rehber.BLL.Service;
using Rehber.DAL.DB;
using System;
using System.Windows.Forms;

namespace Rehber.WinUI
{
    public partial class Ayarlar : Form
    {
        public Ayarlar()
        {
            InitializeComponent();
        }
        protected EntityService service = new EntityService();
        Temizlik temiz = new Temizlik();
        private void btnTasimaEkle_Click(object sender, EventArgs e)
        {
            Transport trans = new Transport();
            trans.TransportName = txtTasima.Text;
            service.TransportService.Insert(trans);
            temiz.Temizle(txtTasima);
        }

        private void btnParaTipiEkle_Click(object sender, EventArgs e)
        {
            Currency cur = new Currency();
            cur.CurrencyName = txtParaTipi.Text;
            service.CurrencyService.Insert(cur);
            temiz.Temizle(txtParaTipi);
        }

        private void btnUlkeEkle_Click(object sender, EventArgs e)
        {
            Country coun = new Country();
            coun.CountryName = txtUlke.Text;
            service.CountryService.Insert(coun);
            temiz.Temizle(txtUlke);
        }

        private void btnSehirEkle_Click(object sender, EventArgs e)
        {
            City coun = new City();
            coun.CityName = txtSehir.Text;
            service.CityService.Insert(coun);
            temiz.Temizle(txtSehir);
        }
      
        private void btnBolgeEkle_Click(object sender, EventArgs e)
        {
           Rehber.DAL.DB.Region reg = new Rehber.DAL.DB.Region();
            reg.RegionName = txtBolge.Text;
            service.RegionService.Insert(reg);
            temiz.Temizle(txtBolge);
        }

        private void btnSektorEkle_Click(object sender, EventArgs e)
        {
            Sector sec = new Sector();
            sec.SectorName = txtSektor.Text;
            service.SectorService.Insert(sec);
            temiz.Temizle(txtSektor);
        }
    }
}
