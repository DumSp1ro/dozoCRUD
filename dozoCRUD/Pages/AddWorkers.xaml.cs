using dozoCRUD.Classes;
using dozoCRUD.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
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

namespace dozoCRUD.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddWorkers.xaml
    /// </summary>
    public partial class AddWorkers : Page
    {
        private workers currentworker = new workers();
        public AddWorkers(workers sellectedWorkers)
        {
            InitializeComponent();
            if (sellectedWorkers != null)
            {
                currentworker = sellectedWorkers;
            }
            DataContext = currentworker;
        }

        private void Save(object sender, RoutedEventArgs e)
        {
            if (currentworker.id == 0)
            {
                dozo.GetContext().workers.Add(currentworker);
            }

            DbContextTransaction dbContextTransaction = null;

            try
            {
                if (currentworker.id == 0)
                {
                    dozo.GetContext().workers.Add(currentworker);
                }

                dbContextTransaction = dozo.GetContext().Database.BeginTransaction();

                dozo.GetContext().SaveChanges();

                MessageBox.Show("Информация сохранена!");
                dbContextTransaction.Commit();
                Manager.MainFrame.GoBack();
            }
            catch (DbUpdateException ex)
            {
                if (dbContextTransaction != null)
                {
                    dbContextTransaction.Rollback();
                }

                var innerException = ex.InnerException;
                while (innerException != null)
                {
                    MessageBox.Show($"Внутреннее исключение: {innerException.Message}");
                    innerException = innerException.InnerException;
                }

                MessageBox.Show("Ошибка при сохранении изменений. Дополнительные сведения в внутреннем исключении.");
            }
            catch (Exception ex)
            {
                if (dbContextTransaction != null)
                {
                    dbContextTransaction.Rollback();
                }

                MessageBox.Show($"Ошибка при обновлении записей. Дополнительные сведения: {ex.Message}");
            }
            finally
            {
                dbContextTransaction?.Dispose();
            }
        }
    }
}

