using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace UtilityShared.CustomeUtility
{
    public static class ExtHelper
    {

        public static bool IsStringNotNull(this string StringValue)
        {
            bool bresult = false;
            if (!string.IsNullOrEmpty(StringValue))
            {
                bresult = true;
            }


            return bresult;

        }


        /// <summary>
        /// Lists to comma sprated string.
        /// </summary>
        /// <param name="listvalue">The listvalue.</param>
        /// <returns></returns>
        public static string ListToCommaSpratedString(this List<int> listvalue)
        {
            string result = "";
            int count = listvalue.Count;
            if (count != 0)
            {
                for (int i = 0; i < count; i++)
                {
                    if (i != count - 1)
                    {
                        result = result + listvalue[i].ToString() + ",";
                    }
                    else
                    {
                        result = result + listvalue[i].ToString();
                    }
                }
            }
            return result;
        }
        /// <summary>
        /// Lists to comma sprated string.
        /// </summary>
        /// <param name="listvalue">The listvalue.</param>
        /// <returns></returns>
        public static string ListToCommaSpratedString(this List<string> listvalue)
        {
            string result = "";
            int count = listvalue.Count;
            if (count != 0)
            {
                for (int i = 0; i < count; i++)
                {
                    if (i != count - 1)
                    {
                        result = result + listvalue[i].ToString() + ",";
                    }
                    else
                    {
                        result = result + listvalue[i].ToString();
                    }
                }
            }
            return result;
        }

        public static List<string> StringConvertToStringList(this string StringValue)
        {


            string[] strsplit = StringValue.Split(new char[] { ',' });
            List<string> lst = new List<string>();
            foreach (var item in strsplit)
            {
                lst.Add(item.ToString());
            }

            return lst;

        }
        public static List<string> StringConvertToStringListSplitbySpace(this string StringValue)
        {


            string[] strsplit = StringValue.Split(new char[] { ' ' });
            List<string> lst = new List<string>();
            foreach (var item in strsplit)
            {
                lst.Add(item.ToString());
            }

            return lst;

        }
        public static List<int> StringConvertToIntList(this string StringValue)
        {


            string[] strsplit = StringValue.Split(new char[] { ',' });
            List<int> lst = new List<int>();
            foreach (var item in strsplit)
            {
                lst.Add(item.ToString().StringToInt());
            }

            return lst;

        }
        public static int StringToInt(this string StringValue)
        {
            int OutPutValue = 0;
            if (string.IsNullOrEmpty(StringValue))
            {
                OutPutValue = 0;
            }
            else
            {
                if (!int.TryParse(StringValue, out OutPutValue))
                {
                    OutPutValue = 0;
                }

            }

            return OutPutValue;

        }

        public static double StringTodouble(this string StringValue)
        {
            double OutPutValue = 0;
            if (string.IsNullOrEmpty(StringValue))
            {
                OutPutValue = 0.00;
            }
            else
            {
                if (!double.TryParse(StringValue, out OutPutValue))
                {
                    OutPutValue = 0;
                }

            }

            return OutPutValue;

        }




        public static int StringBoolToInt(this string StringValue)
        {
            int OutPutValue = 0;
            if (string.IsNullOrEmpty(StringValue))
            {
                OutPutValue = 0;
            }
            else
            {
                if (StringValue.ToUpper() == "TRUE")
                {
                    OutPutValue = 1;
                }
                else
                {
                    OutPutValue = 0;
                }

            }

            return OutPutValue;

        }

        public static string CheckStringIsNull(this string StringValue)
        {
            string OutPutValue = "0";
            if (string.IsNullOrEmpty(StringValue))
            {
                OutPutValue = "0";
            }
            else
            {
                OutPutValue = StringValue;

            }

            return OutPutValue;

        }
        public static string CheckStringIsNullAndReturnBlank(this string StringValue)
        {
            string OutPutValue = "0";
            if (string.IsNullOrEmpty(StringValue))
            {
                OutPutValue = "0";
            }
            else
            {
                OutPutValue = StringValue;

            }

            return OutPutValue;

        }

        public static string StringtoCurrency(this string StringValue)
        {
            string OutPutValue = "0";


            if (string.IsNullOrEmpty(StringValue))
            {
                OutPutValue = "0";
            }
            else
            {
                decimal moneyvalue = Convert.ToDecimal(StringValue);
                string stringout = string.Format("{0:N}", moneyvalue);
                OutPutValue = stringout;

            }

            return OutPutValue;

        }


        public static string StringtoTimeZoneTime(this string StringValue, string timezoneoffset)
        {
            string OutPutValue = "";
            int itemptimezoneoffset = timezoneoffset.StringToInt();
            int itimezoneoffset = 0;
            itimezoneoffset = itemptimezoneoffset * -1;
            if (!string.IsNullOrEmpty(StringValue))
            {
                DateTime dtime = new DateTime();
                DateTime dtimenew = new DateTime();
                dtime = Convert.ToDateTime(StringValue);
                dtimenew = dtime.AddMinutes(itimezoneoffset);
                OutPutValue = dtimenew.ToString();
            }
            else
            {
                OutPutValue = StringValue;
            }
            //DateTime dtime = new DateTime();
            //DateTime dtimenew = new DateTime();
            //dtime = Convert.ToDateTime(StringValue);
            //dtimenew = dtime.AddMinutes(itimezoneoffset);
            //OutPutValue = dtimenew.ToString();
            //if (string.IsNullOrEmpty(StringValue))
            //{
            //    OutPutValue = "0";
            //}
            //else
            //{
            //    decimal moneyvalue = Convert.ToDecimal(StringValue);
            //    string stringout = String.Format("{0:N}", moneyvalue);
            //    OutPutValue = stringout;

            //}

            return OutPutValue;

        }


        public static string MD5EncriptPassword(this string password)
        {
            return MD5CryptorEngine.GetMD5HashData(password);
        }

        public static string MD5EncriptedString(this string strvalue)
        {
            return MD5CryptorEngine.GetMD5HashData(strvalue);
        }

        public static string StringWithCurrencyByLocation(this string StringValue, string loccult)
        {
            string OutPutValue = "0";


            if (string.IsNullOrEmpty(StringValue))
            {
                OutPutValue = "0";
            }
            else
            {
                double dblAmt = Convert.ToDouble(StringValue);
                string moneyvalue = string.Format("{0:N}", dblAmt);
                // System.Globalization.CultureInfo info = System.Globalization.CultureInfo.GetCultureInfo("en-us");
                System.Globalization.CultureInfo info = System.Globalization.CultureInfo.GetCultureInfo(loccult);
                string StrAmt = dblAmt.ToString("C", info);

                //decimal moneyvalue = Convert.ToDecimal(StringValue);
                //string stringout = String.Format("{0:N}", moneyvalue);
                OutPutValue = StrAmt;

            }

            return OutPutValue;
            //string OutPutValue = "0";


            //if (string.IsNullOrEmpty(StringValue))
            //{
            //    OutPutValue = "0";
            //}
            //else
            //{
            //    decimal moneyvalue = Convert.ToDecimal(StringValue);
            //    string stringout = String.Format("{0:N}", moneyvalue);
            //    OutPutValue = stringout;

            //}

            //return OutPutValue;

        }

        /// Encripts the specified STR.
        /// </summary>
        /// <param name="str">The STR.</param>
        /// <returns></returns>
        public static string Encript(this string str)
        {
            return str;
            //return CbidzEncription.Encrypt(str.ToString(), "r0c1zr0y");

        }
        /// <summary>
        /// Decripts the specified STR.
        /// </summary>
        /// <param name="str">The STR.</param>
        /// <returns></returns>
        public static string Decript(this string str)
        {
            return str;
            //return CbidzEncription.Decrypt(str.ToString(), "r0c1zr0y");

        }

    }

    internal static class MD5CryptorEngine
    {

        /// <summary>
        /// take any string and encrypt it using MD5 then
        /// return the encrypted data 
        /// </summary>
        /// <param name="data">input text you will enterd to encrypt it</param>
        /// <returns>return the encrypted text as hexadecimal string</returns>
        public static string GetMD5HashData(string data)
        {
            //create new instance of md5
            MD5 md5 = MD5.Create();

            //convert the input text to array of bytes
            byte[] hashData = md5.ComputeHash(Encoding.Default.GetBytes(data));

            //create new instance of StringBuilder to save hashed data
            StringBuilder returnValue = new StringBuilder();

            //loop for each byte and add it to StringBuilder
            for (int i = 0; i < hashData.Length; i++)
            {
                returnValue.Append(hashData[i].ToString());
            }
            var test = "";
            using (var mdnew5 = MD5.Create())
            {
                test = BitConverter.ToString(mdnew5.ComputeHash(Encoding.UTF8.GetBytes(data)))
                    .Replace("-", string.Empty).ToLower();
            }
            //returnValue = test;
            // return hexadecimal string
            //return returnValue.ToString();
            return test.ToString();
        }
        /// <summary>
        /// encrypt input text using MD5 and compare it with
        /// the stored encrypted text
        /// </summary>
        /// <param name="inputData">input text you will enterd to encrypt it</param>
        /// <param name="storedHashData">the encrypted text stored on file or database ... etc</param>
        /// <returns>true or false depending on input validation</returns>
        public static bool ValidateMD5HashData(string inputData, string storedHashData)
        {
            //hash input text and save it string variable
            string getHashInputData = GetMD5HashData(inputData);

            if (string.Compare(getHashInputData, storedHashData) == 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }


    internal static class CbidzEncription
    {
        public static byte[] key = { };
        public static byte[] IV = { 0x12, 0x34, 0x56, 0x78, 0x90, 0xab, 0xcd, 0xef };

        public static string Decrypt(string strToDecrypt, string sEncryptionKey)
        {
            // var stringToDecrypt = HttpUtility.UrlDecode(strToDecrypt);
            var stringToDecrypt = strToDecrypt.Replace(" ", "+");
            byte[] inputByteArray = new byte[stringToDecrypt.Length + 1];
            try
            {
                key = Encoding.UTF8.GetBytes(sEncryptionKey);
                DESCryptoServiceProvider des = new DESCryptoServiceProvider();
                inputByteArray = Convert.FromBase64String(stringToDecrypt);
                MemoryStream ms = new MemoryStream();
                CryptoStream cs = new CryptoStream(ms, des.CreateDecryptor(key, IV), CryptoStreamMode.Write);
                cs.Write(inputByteArray, 0, inputByteArray.Length);
                cs.FlushFinalBlock();
                Encoding encoding = Encoding.UTF8;
                return encoding.GetString(ms.ToArray());
            }
            catch (Exception e)
            {
                return e.Message;
            }
        }

        public static string Encrypt(string stringToEncrypt, string SEncryptionKey)
        {
            try
            {
                key = Encoding.UTF8.GetBytes(SEncryptionKey);
                DESCryptoServiceProvider des = new DESCryptoServiceProvider();
                byte[] inputByteArray = Encoding.UTF8.GetBytes(stringToEncrypt);
                MemoryStream ms = new MemoryStream();
                CryptoStream cs = new CryptoStream(ms, des.CreateEncryptor(key, IV), CryptoStreamMode.Write);
                cs.Write(inputByteArray, 0, inputByteArray.Length);
                cs.FlushFinalBlock();
                var t = Convert.ToBase64String(ms.ToArray()).ToString().Replace("+", " ");
                return t;
                //var s = Convert.ToBase64String(ms.ToArray());
                //if (null == s)
                //    return string.Empty;

                //var t = HttpUtility.UrlEncode(s).ToString();
                //return HttpUtility.UrlEncode(s);
            }
            catch (Exception e)
            {
                return e.Message;
            }
        }
    }
}
