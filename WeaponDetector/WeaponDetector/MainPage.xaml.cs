using System;
using System.Diagnostics;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using System.IO;
using Xamarin.Essentials;
using Xamarin.Forms.Shapes;
using SkiaSharp.Views.Forms;

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

        public static AbsoluteLayout link;
        public static AbsoluteLayout frame;

        public static double ImH = 0;
        public static double ImW = 0;

        public static List<Xamarin.Forms.Shapes.Rectangle> Rectangles = new List<Xamarin.Forms.Shapes.Rectangle>();
        public static Button label = new Button();
        public static Button DownLoad = new Button();

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
            var canvas = new AbsoluteLayout();
            frame = new AbsoluteLayout();
            link = canvas;
            // выбор фото
            getPhotoBtn.Clicked += GetPhotoAsync;

            // съемка фото
            takePhotoBtn.Clicked += TakePhotoAsync;

            detect.Clicked += DetectAsync;
            link.HorizontalOptions = LayoutOptions.FillAndExpand;
            link.VerticalOptions = LayoutOptions.FillAndExpand;
            img.VerticalOptions = LayoutOptions.FillAndExpand;
            img.HorizontalOptions = LayoutOptions.FillAndExpand;
            frame.HorizontalOptions = LayoutOptions.Center;
            frame.VerticalOptions = LayoutOptions.Center;
            frame.BackgroundColor = Color.Gray;
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
                    canvas
                }
            };
            frame.Children.Add(new Line() { X1 = 0, X2 = 0, Y1 = 0, Y2 = 10 });
            canvas.Children.Add(img, new Point(Content.Width / 2, 0));
            canvas.Children.Add(frame, new Point(Content.Width / 2, 0));
            label.Text = "Оружие не найдено";
            label.BackgroundColor = Color.PaleVioletRed;
            label.Padding = 10;
            label.CornerRadius = 5;
            label.VerticalOptions = LayoutOptions.Center;
            label.HorizontalOptions = LayoutOptions.Center;
            canvas.Children.Add(label, new Point(Content.Width / 2, 0));
            label.IsVisible = false;
            DownLoad.Text = "...";
            DownLoad.BackgroundColor = Color.PaleTurquoise;
            DownLoad.FontSize = 30;
            DownLoad.Padding = 10;
            DownLoad.CornerRadius = 5;
            DownLoad.VerticalOptions = LayoutOptions.Center;
            DownLoad.HorizontalOptions = LayoutOptions.Center;
            canvas.Children.Add(DownLoad, new Point(Content.Width / 2, 0));
            DownLoad.IsVisible = false;
        }

        public static void DrawRectangle(Point relP, Size size, int type)
        {
            //link.BackgroundColor = Color.Azure;
            Xamarin.Forms.Shapes.Rectangle box = new Xamarin.Forms.Shapes.Rectangle();
            box.StrokeThickness = 5;
            if (type == 0)
                box.Stroke = new SolidColorBrush(Color.DarkRed);
            else if (type == 1)
                box.Stroke = new SolidColorBrush(Color.DarkBlue);
            else
                box.Stroke = new SolidColorBrush(Color.DarkOrange);
            box.VerticalOptions = LayoutOptions.FillAndExpand;
            box.HorizontalOptions = LayoutOptions.FillAndExpand;
            Rectangles.Add(box);
            link.Children.Add(box);
            relP.X = (relP.X * ImW + size.Width * ImW / 2 + (link.Width - ImW) / 2) / link.Width;
            relP.Y = (relP.Y * ImH + size.Height * ImH / 2 + (link.Height - ImH) / 2) / link.Height;
            Debug.WriteLine(relP.X + " " + size.Width * ImW / 2 + " " + (link.Width - ImW) / 2);
            Debug.WriteLine(relP.Y);
            Debug.WriteLine(ImW);
            Debug.WriteLine(ImH);
            Xamarin.Forms.Rectangle rectangle = new Xamarin.Forms.Rectangle(relP.X, relP.Y,
                size.Width * ImW / link.Width * 1.1, size.Height * ImH / link.Height * 1.1);

            AbsoluteLayout.SetLayoutBounds(box, rectangle);
            AbsoluteLayout.SetLayoutFlags(box, AbsoluteLayoutFlags.All);
            //frame.Children.Clear();
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
                foreach (var item in Rectangles)
                {
                    item.IsVisible = false;
                }
                label.IsVisible = false;
                AbsoluteLayout.SetLayoutBounds(img, new Xamarin.Forms.Rectangle(0f, 0f, 1 - 0f, 1 - 0f));
                AbsoluteLayout.SetLayoutFlags(img, AbsoluteLayoutFlags.All);

                AbsoluteLayout.SetLayoutBounds(label, new Xamarin.Forms.Rectangle(0.5, 0.5, 250, 200));
                AbsoluteLayout.SetLayoutFlags(label, AbsoluteLayoutFlags.PositionProportional);

                AbsoluteLayout.SetLayoutBounds(DownLoad, new Xamarin.Forms.Rectangle(0.5, 0.5, 250, 200));
                AbsoluteLayout.SetLayoutFlags(DownLoad, AbsoluteLayoutFlags.PositionProportional);
                frame.IsVisible = true;
                var image = new Image();
                image.Source = ImageSource.FromFile(photo.FullPath);
                frame.Children.Add(image);
                if (link.Width / image.Width < link.Height / image.Height)
                {
                    ImW = link.Width;
                    ImH = image.Height / image.Width * ImW;
                    Debug.WriteLine("NE BANNN::::::::::::::" + ImW + ' ' + ImH + ' ' + image.Width + ' ' + image.Height);
                }
                else
                {
                    ImH = link.Height;
                    ImW = image.Width / image.Height * ImH;
                    Debug.WriteLine("NE BANNN::::::::::::::" + ImW + ' ' + ImH + ' ' + image.Width + ' ' + image.Height);
                }
                frame.IsVisible = false;
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
                Debug.WriteLine("FL");
                // для примера сохраняем файл в локальном хранилище
                var newFile = System.IO.Path.Combine(FileSystem.AppDataDirectory, photo.FileName);
                using (var stream = await photo.OpenReadAsync())
                using (var newStream = File.OpenWrite(newFile))
                    await stream.CopyToAsync(newStream);
                Debug.WriteLine("FL!");
                // загружаем в ImageView
                img.Source = ImageSource.FromFile(photo.FullPath);
                PhotoPath = photo.FullPath;
                foreach (var item in Rectangles)
                {
                    item.IsVisible = false;
                }
                label.IsVisible = false;
                Debug.WriteLine("FL!!");
                AbsoluteLayout.SetLayoutBounds(img, new Xamarin.Forms.Rectangle(0f, 0f, 1 - 0f, 1 - 0f));
                AbsoluteLayout.SetLayoutFlags(img, AbsoluteLayoutFlags.All);

                AbsoluteLayout.SetLayoutBounds(label, new Xamarin.Forms.Rectangle(0.5, 0.5, 250, 200));
                AbsoluteLayout.SetLayoutFlags(label, AbsoluteLayoutFlags.PositionProportional);

                AbsoluteLayout.SetLayoutBounds(DownLoad, new Xamarin.Forms.Rectangle(0.5, 0.5, 250, 200));
                AbsoluteLayout.SetLayoutFlags(DownLoad, AbsoluteLayoutFlags.PositionProportional);
                Debug.WriteLine("FL!!!");
                frame.IsVisible = true;
                var image = new Image();
                image.Source = ImageSource.FromFile(photo.FullPath);
                frame.Children.Add(image);
                if (link.Width / image.Width < link.Height / image.Height)
                {
                    ImW = link.Width;
                    ImH = image.Height / image.Width * ImW;
                    Debug.WriteLine("NE BANNN::::::::::::::" + ImW + ' ' + ImH + ' ' + image.Width + ' ' + image.Height);
                }
                else
                {
                    ImH = link.Height;
                    ImW = image.Width / image.Height * ImH;
                    Debug.WriteLine("NE BANNN::::::::::::::" + ImW + ' ' + ImH + ' ' + image.Width + ' ' + image.Height);
                }
                frame.IsVisible = false;
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
