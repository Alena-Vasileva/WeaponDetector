using System;
using System.Collections.Generic;
using System.Text;
using WeaponDetector;
using Amazon.CognitoIdentity;
using Amazon;
using Amazon.Auth;
using Amazon.Internal;
using Amazon.Runtime;
using Amazon.Util;
using System.IO;
using Amazon.S3;
using Amazon.S3.Transfer;
using Xamarin.Essentials;
using Xamarin.Forms;
using System.Drawing;
using System.Diagnostics;
using Android.Graphics;
using System.Drawing.Imaging;
using System.Runtime.Serialization.Formatters.Binary;
using Amazon.S3.Model;
using System.Net;
using System.Net.Http;
using Newtonsoft.Json;

namespace WeaponDetector
{
    internal static class PhotoManager
    {

        public static void Transfer()
        {

            var s3Client = new AmazonS3Client(
                "AKIAZLSCHF3AL4A45KWU",
                "hm5TLaBiTCE75sYNJcZhGoAqN1GKvQ65cwZWUpSk",
                RegionEndpoint.EUCentral1
            );
            Random rand = new Random();
            var rfc4122bytes = Convert.FromBase64String("" +
            rand.Next(100000, 1000000) + rand.Next(1000000, 10000000) + rand.Next(100000000, 1000000000) + "==");
            Array.Reverse(rfc4122bytes, 0, 4);
            Array.Reverse(rfc4122bytes, 4, 2);
            Array.Reverse(rfc4122bytes, 6, 2);
            var guid = new Guid(rfc4122bytes);
            var transferUtility = new TransferUtility(s3Client);
            Random rnd = new Random();
            var backingFile = System.IO.Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), rnd.Next(10000, 100000) + ".jpeg");
            string newPath = System.IO.Path.Combine(System.IO.Path.GetDirectoryName(MainPage.PhotoPath), guid.ToString());
            System.IO.File.Move(MainPage.PhotoPath, newPath);
            MainPage.PhotoPath = newPath;
            transferUtility.Upload(MainPage.PhotoPath, "guns1g23");
            Debug.WriteLine(MainPage.PhotoPath);
            Debug.WriteLine("Downloaded");
            Listen(guid.ToString());
        }

        public static async void Listen(string uuid)
        {
            HttpClient client = new HttpClient();
            int f = 0;
            while (true)
            {
                MainPage.DownLoad.IsVisible = true;
                System.Threading.Thread.Sleep(500);
                if (f%3==0)
                {
                    MainPage.DownLoad.Text = ":..";
                }
                if (f % 3 == 1)
                {
                    MainPage.DownLoad.Text = ".:.";
                }
                if (f % 3 == 2)
                {
                    MainPage.DownLoad.Text = "..:";
                }
                f++;
                try
                {
                    Debug.WriteLine("http://80.78.245.158:8081/result/" + uuid);
                    string result = await client.GetStringAsync("http://80.78.245.158:8081/result/" + uuid);
                    //string result = await client.GetStringAsync("http://80.78.245.158:8081/result/df4df6eb-bebb-e79f-35db-af3bd7bf37db");
                    Debug.WriteLine(result);
                    Parse parse = JsonConvert.DeserializeObject<Parse>(result);
                    MainPage.DownLoad.IsVisible = false;
                    for (int i = 0; i < parse.boxes.Count; i++)
                    {
                        if (parse.probs[i] > 0.4)
                        {
                            MainPage.label.IsVisible = false;
                            Debug.WriteLine("BOXES:" + parse.boxes[i][0] + ' ' + parse.boxes[i][1] + ' ' + parse.boxes[i][2] + ' ' + parse.boxes[i][3]);
                            MainPage.DrawRectangle(new Xamarin.Forms.Point(parse.boxes[i][0], parse.boxes[i][1]),
                                new Xamarin.Forms.Size(parse.boxes[i][2], parse.boxes[i][3]), parse.classes[i]);
                        }
                        else
                        {
                            MainPage.label.IsVisible = true;
                        }
                    }
                    if (parse.boxes.Count == 0)
                    {
                        MainPage.label.IsVisible = true;
                    }
                    break;
                }
                catch (Exception) { }
            }
        }
    }

    public class Parse
    {
        public List<List<double>> boxes;
        public List<int> classes;
        public List<double> probs;
    }
}
