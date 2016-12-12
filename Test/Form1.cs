using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Test
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string xslpath = "..\\..\\FO-xsl\\XSLTFile1.xslt";
            string xmlpath = "..\\..\\FO-xsl\\XMLFile1.xml";
            PDFBuilder pdfBuilder = new PDFBuilder();
            pdfBuilder.GenertePDF(new List<string> { xmlpath }, xslpath);
        }
    }
}
