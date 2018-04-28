using System;
using System.Windows.Forms;
using System.Collections.Generic;
using megafon_base;

namespace megafon.ui
{
	public partial class addedit : Form
	{
		public Megafon info { get; private set; }
		private List<Megafon> recivedList;

		public addedit(Megafon mgfon, List<Megafon> list)
		{
			InitializeComponent();

			recivedList = list;
			info = mgfon;
			textBox1.Text = info.FullName;
			textBox2.Text = info.Address;
			dateTimePicker1.Value = info.BuyDate;
			maskedTextBox1.Text = info.PhoneNumber;

			comboBox1.Items.AddRange(new object[]{
				Rate.ПЕРВЫЙ,
				Rate.ВТОРОЙ,
				Rate.ТРЕТИЙ,
			});
			comboBox1.SelectedIndex = Megafon.GetRateIndx(info.Tariff);

			label3.Text = "Стоймость: " + (int)(info.Tariff) + "р/мес";

		}

		private void maskedTextBox1_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
		{

		}

		private void addedit_Load(object sender, EventArgs e)
		{

		}

		private void button1_Click(object sender, EventArgs e)
		{
			if (textBox1.Text.Length < 4 || textBox2.Text.Length < 4 || maskedTextBox1.TextLength < 6 || recivedList.FindAll(x => x.PhoneNumber == maskedTextBox1.Text).Count > 0)
				return;

			info.FullName = textBox1.Text;
			info.Address = textBox2.Text;
			info.BuyDate = dateTimePicker1.Value;
			info.PhoneNumber = maskedTextBox1.Text;
			info.Tariff = Megafon.GetRate(comboBox1.SelectedIndex);

			DialogResult = DialogResult.OK;
			Dispose();
		}

		private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
		{
			label3.Text = "Стоймость: " + (int)Megafon.GetRate(comboBox1.SelectedIndex) + "р/мес";
		}

		private void textBox1_TextChanged(object sender, EventArgs e)
		{

		}
	}
}