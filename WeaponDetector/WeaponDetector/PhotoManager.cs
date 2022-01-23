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


namespace WeaponDetector
{
    internal static class PhotoManager
    {

        public static void Transfer()
        {
            Debug.WriteLine("Start");
            var s3Client = new AmazonS3Client(
                "AKIAZLSCHF3AL4A45KWU",
                "hm5TLaBiTCE75sYNJcZhGoAqN1GKvQ65cwZWUpSk",
                RegionEndpoint.EUCentral1
            );
            Debug.WriteLine("Made file1111111111");
            var transferUtility = new TransferUtility(s3Client);
            Debug.WriteLine("Start file");
            Random rnd = new Random();
            var backingFile = System.IO.Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), rnd.Next(10000, 100000) + ".jpeg");
            Debug.WriteLine("Made file");
            transferUtility.Upload(MainPage.PhotoPath, "guns1g23");
            Debug.WriteLine("Downloaded");
        }
    }
}
