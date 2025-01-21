using System;
using Microsoft.Maui.Controls;

namespace Aplikacja_Treningowa.Strony
{
    public partial class Strona1 : ContentPage
    {
        private readonly string[] _values = {
            "\nPompki (10x)\nPrzysiady (15x)\nBrzuszki (20x)",
            "\nPlank (20 sek.)\nSkakanka (1 min)\nWykroki (10x na nogę)",
            "\nBieg w miejscu - Skip A (1 min)\nPrzysiady z wyskokiem (10x)\nRowerek (20 sek.)",
            "\nUnoszenie nóg (15x)\nPompki na krześle (8x)\nDeska bokiem (15 sek. na stronę)",
            "\nBurpees (8x)\nPajacyki (1 min)\nSkłony w przód (15x)",
            "\nPrzysiady sumo (12x)\nWykroki do tyłu (10x na nogę)\nPlank z unoszeniem nóg (20 sek.)",
            "\nBrzuszki skośne (10x na stronę)\nSkakanka (1 min)\nWspięcia na palce (15x)",
            "\nPompki diamentowe (8x)\nRowerek (20 sek.)\nBieg w miejscu - Skip A (1 min)",
            "\nPlank z przyciąganiem kolan (15x na stronę)\nPajacyki (1 min)\nPrzysiady z wyskokiem (10x)",
            "\nMountain climbers (20 sek.)\nPompki na triceps (8x)\nPlank (30 sek.)"
        };

        public Strona1()
        {
            InitializeComponent();
        }

        private void OnStartButtonClicked(object sender, EventArgs e)
        {
            // Losowanie wartości
            var random = new Random();
            int index = random.Next(_values.Length);
            string selectedValue = _values[index];

            // Wyświetlanie wyniku
            ResultLabel.Text = $"Wylosowano: {selectedValue}";
        }

        private void OnCalculateCaloriesClicked(object sender, EventArgs e)
        {
            double distance = 0;
            double weight = 0;
            string activityType = activityPicker.SelectedItem?.ToString();

            // Pobranie dystansu i wagi
            if (!double.TryParse(distanceEntry.Text, out distance))
            {
                DisplayAlert("Błąd", "Podaj poprawny dystans w kilometrach.", "OK");
                return;
            }

            if (!double.TryParse(weightEntry.Text, out weight))
            {
                DisplayAlert("Błąd", "Podaj poprawną wagę w kilogramach.", "OK");
                return;
            }

            double caloriesBurned = 0;

            // Obliczanie kalorii w zależności od aktywności
            switch (activityType)
            {
                case "Chodzenie":
                    caloriesBurned = distance * weight * 0.5;
                    break;
                case "Bieganie":
                    caloriesBurned = distance * weight * 0.9;
                    break;
                default:
                    DisplayAlert("Błąd", "Wybierz typ aktywności.", "OK");
                    return;
            }

            // Wyświetlenie wyniku
            caloriesResultLabel.Text = $"Spalone kalorie: {caloriesBurned:F2} kcal";
        }
    }
}