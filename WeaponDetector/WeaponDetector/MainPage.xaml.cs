using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using System.IO;
using Xamarin.Essentials;

namespace WeaponDetector
{
    public partial class MainPage : ContentPage
    {
        private static Image img;

        public static Image Photo
        {
            get => img;
        }

        public static string PhotoPath { get; set; }

        Button takePhotoBtn;
        Button getPhotoBtn;
        Button detect;

        public MainPage()
        {
            //InitializeComponent();
            takePhotoBtn = new Button { Text = "Сделать фото" };
            getPhotoBtn = new Button { Text = "Выбрать фото" };
            detect = new Button { Text = "Найти оружие" };
            img = new Image();

            // выбор фото
            getPhotoBtn.Clicked += GetPhotoAsync;

            // съемка фото
            takePhotoBtn.Clicked += TakePhotoAsync;

            detect.Clicked += DetectAsync;
            img.VerticalOptions = LayoutOptions.Start;
            detect.Padding = 20;
            detect.Margin = 0;
            detect.CornerRadius = 10;
            detect.BackgroundColor = Color.FromHex("c5d0e6");
            takePhotoBtn.BackgroundColor = Color.FromHex("d1f7ff");
            getPhotoBtn.BackgroundColor = Color.FromHex("d1f7ff");
            takePhotoBtn.Padding = 20;
            getPhotoBtn.Padding = 20;
            takePhotoBtn.CornerRadius = 10;
            getPhotoBtn.CornerRadius = 10;
            takePhotoBtn.Margin = new Thickness(0, 0, 3, 0);
            getPhotoBtn.Margin = new Thickness(3, 0, 0, 0);
            Content = new StackLayout
            {
                HorizontalOptions = LayoutOptions.FillAndExpand,
                WidthRequest = Width,
                BackgroundColor = Color.FromHex("#025669"),
                Padding = 10,
                Children = {
                    new StackLayout
                    {
                         Padding = 5,
                         Children = {takePhotoBtn, getPhotoBtn},
                         Orientation = StackOrientation.Horizontal,
                         HorizontalOptions = LayoutOptions.CenterAndExpand
                    },
                    detect,
                    img
                }
            };
        }

        async void GetPhotoAsync(object sender, EventArgs e)
        {
            try
            {
                // выбираем фото
                var photo = await MediaPicker.PickPhotoAsync();
                // загружаем в ImageView
                img.Source = ImageSource.FromFile(photo.FullPath);
                PhotoPath = photo.FullPath;
                img.HeightRequest = Content.Height - detect.Height * 2 - 45;
            }
            catch (Exception ex)
            {
                await DisplayAlert("Сообщение об ошибке", ex.Message, "OK");
            }
        }

        async void TakePhotoAsync(object sender, EventArgs e)
        {
            try
            {
                var photo = await MediaPicker.CapturePhotoAsync(new MediaPickerOptions
                {
                    Title = $"xamarin.{DateTime.Now.ToString("dd.MM.yyyy_hh.mm.ss")}.png"
                });

                // для примера сохраняем файл в локальном хранилище
                var newFile = Path.Combine(FileSystem.AppDataDirectory, photo.FileName);
                using (var stream = await photo.OpenReadAsync())
                using (var newStream = File.OpenWrite(newFile))
                    await stream.CopyToAsync(newStream);

                // загружаем в ImageView
                img.Source = ImageSource.FromFile(photo.FullPath);
                PhotoPath = photo.FullPath;
                img.HeightRequest = Content.Height - detect.Height * 2 - 45;
            }
            catch (Exception ex)
            {
                await DisplayAlert("Сообщение об ошибке", ex.Message, "OK");
            }
        }

        async void DetectAsync(object sender, EventArgs e)
        {
            try
            {
                PhotoManager.Transfer();
            }
            catch (Exception ex)
            {
                await DisplayAlert("Сообщение об ошибке", ex.Message, "OK");
            }
        }
    }
}
