using Ionic.Zip;
using System;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using WinForms = System.Windows.Forms;

namespace Exe2Zip
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void TopBorder_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }
        private void BtnExit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void BtnMinimize_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }
        private async void BtnDirExe_Click(object sender, RoutedEventArgs e)
        {
            WinForms.FolderBrowserDialog fbd = new WinForms.FolderBrowserDialog();
            WinForms.DialogResult result = fbd.ShowDialog();
            RtbExe.Document.Blocks.Clear();
            if (result == WinForms.DialogResult.OK)
            {
                var exeList = Directory.EnumerateFiles(fbd.SelectedPath, "*.*", SearchOption.AllDirectories).Where(s => s.EndsWith(".exe", StringComparison.OrdinalIgnoreCase) || s.EndsWith(".msi", StringComparison.OrdinalIgnoreCase) || s.EndsWith(".sfx", StringComparison.OrdinalIgnoreCase));
                foreach (var exe in exeList)
                {
                    string exePath = Directory.GetParent(exe).ToString();
                    string exeName = Path.GetFileNameWithoutExtension(exe);
                    if (!File.Exists($"{exePath}\\{exeName}.zip"))
                    {
                        await Task.Run(() =>
                        {
                            using (ZipFile zf = new ZipFile())
                            {
                                this.Dispatcher.Invoke((Action)(() =>
                                {
                                    if (!string.IsNullOrEmpty(TbxPass.Text) || !string.IsNullOrWhiteSpace(TbxPass.Text))
                                    {
                                        zf.Password = TbxPass.Text;
                                    }
                                }));
                                zf.AddFile(exe,Path.GetPathRoot(exe));
                                zf.Save($"{exePath}\\{exeName}.zip");
                            }
                        });
                        RtbExe.AppendText($"{exeName} in {exe} Added to {exeName}.zip {Environment.NewLine}");
                    }
                }
                MessageBox.Show("Done");
            }
        }
    }
}
