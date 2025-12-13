using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;

namespace UtilityShared.EncryptionDecryption
{
    public static class EncryptDecryptString
    {
        static byte[] s_additionalEntropy = { 9, 1, 4, 5, 6, 7, 7, 7, 1, 1, 1, 1, 0, 4, 4, 4, 4, 4, 5, 5, 5, 5 };

        public static byte[] Protect(byte[] data)
        {
            try
            {
                // Encrypt the data using DataProtectionScope.CurrentUser. The result can be decrypted
                // only by the same current user.
                return ProtectedData.Protect(data, s_additionalEntropy, DataProtectionScope.CurrentUser);
            }
            catch (CryptographicException e)
            {
                //Console.WriteLine("Data was not encrypted. An error occurred.");
                // Console.WriteLine(e.ToString());
                return null;
            }
        }

        public static byte[] Unprotect(byte[] data)
        {
            try
            {
                //Decrypt the data using DataProtectionScope.CurrentUser.
                return ProtectedData.Unprotect(data, s_additionalEntropy, DataProtectionScope.CurrentUser);
            }
            catch (CryptographicException e)
            {
                Console.WriteLine("Data was not decrypted. An error occurred.");
                Console.WriteLine(e.ToString());
                return null;
            }
        }
    }
}

