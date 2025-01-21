namespace Aplikacja_Treningowa.Strony
{
    public partial class Strona3 : ContentPage
    {
        private bool powiadomieniaWlaczone = true;

        public Strona3()
        {
            InitializeComponent();
        }

        // Metoda dla przycisku "Ustawienia ćwiczeń"
        private async void OnUstawieniaCwiczenClicked(object sender, EventArgs e)
        {
            string[] poziomy = { "Początkujący", "Średnio zaawansowany", "Zaawansowany" };
            string poziom = await DisplayActionSheet("Wybierz poziom ćwiczeń", "Anuluj", null, poziomy);

            if (poziom != null && poziom != "Anuluj")
            {
                await DisplayAlert("Ustawienia ćwiczeń", $"Wybrano poziom: {poziom}", "OK");
                // Tutaj możesz dodać nawigację do innej strony:
                // await Navigation.PushAsync(new UstawieniaCwiczenPage(poziom));
            }
        }

        // Metoda dla przycisku "Powiadomienia"
        private async void OnPowiadomieniaClicked(object sender, EventArgs e)
        {
            powiadomieniaWlaczone = !powiadomieniaWlaczone;
            string status = powiadomieniaWlaczone ? "włączone" : "wyłączone";
            await DisplayAlert("Powiadomienia", $"Powiadomienia są teraz {status}", "OK");
            // Tutaj możesz dodać nawigację do innej strony:
            // await Navigation.PushAsync(new PowiadomieniaPage());
        }

        // Metoda dla przycisku "Język"
        private async void OnJezykClicked(object sender, EventArgs e)
        {
            await DisplayAlert("Język", "Przejdź do ustawień języka", "OK");
            // Tutaj możesz dodać nawigację do innej strony:
            // await Navigation.PushAsync(new JezykPage());
        }
    }
}