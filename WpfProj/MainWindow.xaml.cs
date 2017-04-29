using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;
using System.Windows.Threading;

namespace WpfProj
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        DispatcherTimer timer;
        public delegate void timerTick();   
        timerTick tick;

        int index;
        public MainWindow()
        {
            InitializeComponent();

            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += new EventHandler(timer_Tick);
            tick = new timerTick(changeStatus);

            slider_list.Maximum = 0;

        }
        void timer_Tick(object sender, EventArgs e)
        {
            slider_player.Value = mediaElement.Position.TotalSeconds;
            if (mediaElement.Source != null)
            {
                if (mediaElement.NaturalDuration.HasTimeSpan)
                    label_slider.Content = String.Format("{0} / {1}", mediaElement.Position.ToString(@"mm\:ss"), mediaElement.NaturalDuration.TimeSpan.ToString(@"mm\:ss"));
                //change progress bar
                //ProgressBar.Minimum = 0;
                //ProgressBar.Maximum = mediaElement.NaturalDuration.TimeSpan.TotalSeconds;
                //ProgressBar.Value = mediaElement.Position.TotalSeconds;

            }
            else
                label_slider.Content = "00:00:00";
    }
        void changeStatus()
        {
            slider_player.Value = mediaElement.Position.TotalMilliseconds;
            ProgressBar.Value = mediaElement.Position.TotalMilliseconds;
            
        }

    private void Button_Click(object sender, RoutedEventArgs e)
        {
            string x = listBox_playlist.SelectedValuePath;
            index = listBox_playlist.SelectedIndex;
            textBox_fileName.Text = System.IO.Path.GetFileName(listBox_playlist.SelectedItem.ToString());
            mediaElement.Source = new System.Uri(listBox_playlist.SelectedItem.ToString());
            mediaElement.Play();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            mediaElement.Pause();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            mediaElement.Stop();
        }

        private void slider_vol_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            mediaElement.Volume = (double)slider_vol.Value;
        }

        private void slider_player_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            mediaElement.Position = TimeSpan.FromSeconds(slider_player.Value);
            //label_time.Content = TimeSpan.FromSeconds(slider_player.Value).ToString(@"hh\:mm\:ss");

        }


        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            if (listBox_playlist.SelectedIndex < listBox_playlist.Items.Count - 1)
            {
                listBox_playlist.SelectedIndex = listBox_playlist.SelectedIndex + 1;
                slider_list.Maximum = listBox_playlist.SelectedIndex;
            }
            
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            new_media();
        }

        private void button_Click_5(object sender, RoutedEventArgs e)
        {
            new_media(); 
        }
        public void new_media()
        {
            Microsoft.Win32.OpenFileDialog dlg = new Microsoft.Win32.OpenFileDialog();

            Nullable<bool> result = dlg.ShowDialog();

            if (result == true)
            {
                string filename = dlg.FileName;
                listBox_playlist.Items.Add(filename);
                if (listBox_playlist.SelectedIndex < 0)
                    listBox_playlist.SelectedIndex = 0;
                //int x =listBox_playlist.Items.Count;
                //listBox_playlist.SelectedIndex = x-1; 
                //mediaElement.Source = new System.Uri(filename);
            }
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            listBox_playlist.Items.Remove(listBox_playlist.SelectedItem);
        }

        private void Button_Click_6(object sender, RoutedEventArgs e)
        {
            if (listBox_playlist.SelectedIndex > 0)
            {
                listBox_playlist.SelectedIndex = listBox_playlist.SelectedIndex - 1;
                slider_list.Maximum = listBox_playlist.SelectedIndex;
            }
        }

        private void Button_Click_7(object sender, RoutedEventArgs e)
        {
            //faster
            mediaElement.SpeedRatio /= 0.5; 
            
        }

        private void Button_Click_8(object sender, RoutedEventArgs e)
        {
            //slower
            mediaElement.SpeedRatio *= 0.5; 
        }

        private void mediaElement_MediaOpened(object sender, RoutedEventArgs e)
        {
            TimeSpan ts = mediaElement.NaturalDuration.TimeSpan;
            slider_player.Maximum = ts.TotalSeconds;
            timer.Start();
        }

        private void ThumbButtonInfo_PlayClick(object sender, EventArgs e)
        {
            mediaElement.Play();
        }

        private void ThumbButtonInfo_StopClick(object sender, EventArgs e)
        {
            mediaElement.Stop();
        }

        private void ThumbButtonInfo_PauseClick(object sender, EventArgs e)
        {
            mediaElement.Pause();
        }
    }
}
