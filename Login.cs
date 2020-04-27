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
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }
        protected EntityService service = new EntityService();
        private void btnGirisYap_Click(object sender, EventArgs e)
        {
            var kul = service.UsersService.GetAll().Find(x => x.UserName == txtKadi.Text && x.Password == txtSifre.Text);

            if (kul != null)
            {
                AnaMenu ana1 = new AnaMenu();
                ana1.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Kullanıcı Bulunamadı");
            }
        }
    }
}

