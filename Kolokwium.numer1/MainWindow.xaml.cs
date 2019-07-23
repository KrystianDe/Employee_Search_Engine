using Kolokwium.numer1.DAL;
using Kolokwium.numer1.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

namespace Kolokwium.numer1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        private ObservableCollection<EMP> ListOfEmp;
        private EmployeeDbService _service;
        public MainWindow()
        {
            InitializeComponent();

            _service = new EmployeeDbService();

            EmployerDataGrid.ItemsSource = _service.GetEmps();

            ListOfEmp = new ObservableCollection<EMP>();

            ListOfEmp = new ObservableCollection<EMP>(_service.GetEmps());

            EmployerDataGrid.ItemsSource = ListOfEmp;


        }

        private void SaveChangesButton_Click(object sender, RoutedEventArgs e)
        {

            try
            {
                string Name = NameTextBox.Text;
                string Job = JobTextBox.Text;

                EMP tmpEmp = EmployerDataGrid.SelectedItem as EMP;

                ListOfEmp.Remove(tmpEmp);



                tmpEmp = _service.UpdateEmployee(tmpEmp.EMPNO, NameTextBox.Text, JobTextBox.Text);
                if (tmpEmp != null)
                {
                    ListOfEmp.Add(_service.UpdateEmployee(tmpEmp.EMPNO, NameTextBox.Text, JobTextBox.Text));

                    EmployerDataGrid.ItemsSource = ListOfEmp;
                }

                NameTextBox.Text = "";
                JobTextBox.Text = "";
            }
            catch (Exception)
            {
                MessageBox.Show("Wprowadzone dane niepoprawne");
                NameTextBox.Text = "";
                JobTextBox.Text = "";
            }
        }

        private void ShowAllButton_Click(object sender, RoutedEventArgs e)
        {
            EmployerDataGrid.ItemsSource = new ObservableCollection<EMP>(_service.GetEmps());
        }

        private void SearchButton_Click(object sender, RoutedEventArgs e)
        {
            EmployerDataGrid.ItemsSource = new ObservableCollection<EMP>(
                     _service.searchEmployee(SearchTextBox.Text));
        }



        private void EmployerDataGrid_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            EMP tmpEmp = EmployerDataGrid.SelectedItem as EMP;

            NameTextBox.Text = tmpEmp.ENAME;
            JobTextBox.Text = tmpEmp.JOB;
        }
    }
}
