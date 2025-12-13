using System.Data;
using DataFactoryShared;
namespace CommonCURDOperation
{
    public class CurdOperationAPI
    {
        DataFactorySharedAPI dfactory = new DataFactorySharedAPI();
        public DataSet displayoperation(string Sp_name, string[] pname, string[] pvalue)
        {
            SortedDictionary<string, string> sd = new SortedDictionary<string, string>() { };

            for (int i = 0; i < pname.Length; i++)
            {
                sd.Add("@" + pname[i], pvalue[i]);
            }

            DataSet ds = new DataSet();
            return dfactory.SelectList(Sp_name, sd);

        }

        public DataSet Addoperation(string Sp_name, string[] pname, string[] pvalue)
        {
            SortedDictionary<string, string> sd = new SortedDictionary<string, string>() { };
            for (int i = 0; i < pname.Length; i++)
            {
                sd.Add("@" + pname[i], pvalue[i]);
            }
            DataSet ds = new DataSet();
            ds = dfactory.SelectList(Sp_name, sd);
            if (ds.Tables.Count > 0 && ds.Tables[0].ExtendedProperties.Count > 0)
            {

                if (ds.Tables[0].Rows[0].ItemArray[0].ToString() == "Exists")
                {

                }
            }
            else
            {

            }
            return ds;
        }


        public DataSet updateoperation(string Sp_name, string[] pname, string[] pvalue)
        {
            SortedDictionary<string, string> sd = new SortedDictionary<string, string>() { };
            for (int i = 0; i < pname.Length; i++)
            {
                sd.Add("@" + pname[i], pvalue[i]);
            }
            DataSet ds = new DataSet();
            return dfactory.SelectList(Sp_name, sd);

        }

        private int DeleteCategory(string qerynamewithparameter)
        {
            return dfactory.ExecuteNonQuery_IUD(qerynamewithparameter);


        }


    }
}