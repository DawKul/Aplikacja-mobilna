using Aplikacja_Treningowa.Strony;
namespace Aplikacja_Treningowa
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new Pulpit();
        }
    }
}
