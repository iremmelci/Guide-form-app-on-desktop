using Methods;
using Rehber.BLL.Service;
using Rehber.DAL.DB;
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
    public partial class MusteriEkleme : Form
    {
        public MusteriEkleme()
        {
            InitializeComponent();
        }
        
        EntityService service = new EntityService();
        Temizlik temiz = new Temizlik();
        private void MusteriEkleme_Load(object sender, EventArgs e)
        {
            var ulkeliste = service.CountryService.GetAll();
            foreach (var item in ulkeliste)
            {
                cmbUlke.Items.Add(item);
                cmbUlke.DisplayMember = "item.CountryName";
                cmbUlke.ValueMember = "item.ID";
            }
            var sehirliste = service.CityService.GetAll();
            foreach (var item in sehirliste)
            {
                cmbSehir.Items.Add(item);
                cmbSehir.DisplayMember = "item.CityName";
                cmbSehir.ValueMember = item.ID.ToString();
            }
            var bolgeliste = service.RegionService.GetAll();
            foreach (var item in bolgeliste)
            {
                cmbBolge.Items.Add(item);
                cmbBolge.DisplayMember = "item.RegionName";
                cmbBolge.ValueMember = "item.ID";
            }
            var paraliste = service.CurrencyService.GetAll();
            foreach (var item in paraliste)
            {
                cmbParaBirimi.Items.Add(item);
                cmbParaBirimi.DisplayMember = "item.CurrencyName";
                cmbParaBirimi.ValueMember = "item.ID";
            }
            var sector = service.SectorService.GetAll();
            foreach (var item in sector)
            {
                cmbSektor.Items.Add(item);
                cmbSektor.DisplayMember = "item.SectorName";
                cmbSektor.ValueMember = "item.ID";
            }
        }

        private void btnMusteriEkle_Click(object sender, EventArgs e)
        {
            Customer cust = new Customer();
            cust.Address = txtAdres.Text;
            cust.AuthorizedPerson = txtYetkiliKisi.Text;
            cust.BankName = txtBanka.Text;
            cust.Brands = txtMarkalar.Text;
            cust.CityID = 5;
            cust.SectorID = 1;
            cust.TransportID = 1;
            cust.UserID = 1;
            cust.RegionID = 1;
            cust.CustomerCode = Guid.NewGuid().ToString().Substring(0, 10);
            cust.WebSite = txtWeb.Text;
            cust.Dealers = chkBayii.Checked;
            cust.FaxNo = txtFax.Text;
            cust.IsActive = chkDurum.Checked;
            cust.MobilePhone = txtGSM.Text;
            cust.Phone = txtTelefon.Text;
            cust.Phone2 = txtTelefon2.Text;
            cust.Company = txtFirmaAdi.Text;
            cust.Email = txtEmail.Text;
            cust.Description = txtAciklama.Text;
            cust.CurrencyID = 1;
            cust.CountryID = 1;
            service.CustomerService.Insert(cust);
            foreach (var item in this.Controls)
            {
                temiz.Temizle((Control)item);
            }
            

        }
    }
}
