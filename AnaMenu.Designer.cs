namespace Rehber.WinUI
{
    partial class AnaMenu
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnMusteriEkle = new System.Windows.Forms.Button();
            this.btnMusteriListe = new System.Windows.Forms.Button();
            this.btnAyarlar = new System.Windows.Forms.Button();
            this.pictureBox3 = new System.Windows.Forms.PictureBox();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // btnMusteriEkle
            // 
            this.btnMusteriEkle.Location = new System.Drawing.Point(12, 135);
            this.btnMusteriEkle.Name = "btnMusteriEkle";
            this.btnMusteriEkle.Size = new System.Drawing.Size(112, 30);
            this.btnMusteriEkle.TabIndex = 1;
            this.btnMusteriEkle.Text = "Müşteri Ekle";
            this.btnMusteriEkle.UseVisualStyleBackColor = true;
            this.btnMusteriEkle.Click += new System.EventHandler(this.btnMusteriEkle_Click);
            // 
            // btnMusteriListe
            // 
            this.btnMusteriListe.Location = new System.Drawing.Point(158, 135);
            this.btnMusteriListe.Name = "btnMusteriListe";
            this.btnMusteriListe.Size = new System.Drawing.Size(112, 30);
            this.btnMusteriListe.TabIndex = 1;
            this.btnMusteriListe.Text = "Müşteri Listesi";
            this.btnMusteriListe.UseVisualStyleBackColor = true;
            // 
            // btnAyarlar
            // 
            this.btnAyarlar.Location = new System.Drawing.Point(304, 135);
            this.btnAyarlar.Name = "btnAyarlar";
            this.btnAyarlar.Size = new System.Drawing.Size(112, 30);
            this.btnAyarlar.TabIndex = 1;
            this.btnAyarlar.Text = "Ayarlar";
            this.btnAyarlar.UseVisualStyleBackColor = true;
            this.btnAyarlar.Click += new System.EventHandler(this.btnAyarlar_Click);
            // 
            // pictureBox3
            // 
            this.pictureBox3.Image = global::Rehber.WinUI.Properties.Resources.cog;
            this.pictureBox3.Location = new System.Drawing.Point(304, 12);
            this.pictureBox3.Name = "pictureBox3";
            this.pictureBox3.Size = new System.Drawing.Size(112, 117);
            this.pictureBox3.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox3.TabIndex = 0;
            this.pictureBox3.TabStop = false;
            // 
            // pictureBox2
            // 
            this.pictureBox2.Image = global::Rehber.WinUI.Properties.Resources.list;
            this.pictureBox2.Location = new System.Drawing.Point(158, 12);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(112, 117);
            this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox2.TabIndex = 0;
            this.pictureBox2.TabStop = false;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::Rehber.WinUI.Properties.Resources.userplus;
            this.pictureBox1.Location = new System.Drawing.Point(12, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(112, 117);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // AnaMenu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(428, 178);
            this.Controls.Add(this.btnAyarlar);
            this.Controls.Add(this.btnMusteriListe);
            this.Controls.Add(this.btnMusteriEkle);
            this.Controls.Add(this.pictureBox3);
            this.Controls.Add(this.pictureBox2);
            this.Controls.Add(this.pictureBox1);
            this.Name = "AnaMenu";
            this.Text = "Ana Menü";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button btnMusteriEkle;
        private System.Windows.Forms.PictureBox pictureBox2;
        private System.Windows.Forms.Button btnMusteriListe;
        private System.Windows.Forms.PictureBox pictureBox3;
        private System.Windows.Forms.Button btnAyarlar;
    }
}