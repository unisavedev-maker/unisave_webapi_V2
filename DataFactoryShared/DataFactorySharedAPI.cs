using System.Data;
using MySql.Data.MySqlClient;
using MySqlDlayerShared;
namespace DataFactoryShared
{
    public class DataFactorySharedAPI
    {
        MySqlSharedHelperAPI mysqlhelperclass = new MySqlSharedHelperAPI();
        //All Business Method here
        #region ALL Business method here
        public DataSet SelectList(String SP_NAME, SortedDictionary<string, string> sd)
        {
            try
            {
                return mysqlhelperclass.SP_DataTable_return(SP_NAME, GetSdParameter(sd));
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public DataTable SelectQuery(String query)
        {
            try
            {
                return mysqlhelperclass.DataTable_return(query);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        // Insert /update and Delete by Query
        public int ExecuteNonQuery_IUD(String Query)
        {
            return mysqlhelperclass.ExecuteNonQuery_IUD(Query);
        }


        #endregion

        #region Methods Parameter

        /// <summary>
        /// This method Sorted-Dictionary key values to an array of SqlParameters
        /// </summary>
        public static MySqlParameter[] GetSdParameter(SortedDictionary<string, string> sortedDictionary)
        {
            MySqlParameter[] paramArray = new MySqlParameter[] { };

            foreach (string key in sortedDictionary.Keys)
            {
                AddParameter(ref paramArray, new MySqlParameter(key, sortedDictionary[key]));
            }

            return paramArray;
        }


        public static void AddParameter(ref MySqlParameter[] paramArray, string parameterName, object parameterValue)
        {
            MySqlParameter parameter = new MySqlParameter(parameterName, parameterValue);

            AddParameter(ref paramArray, parameter);
        }


        public static void AddParameter(ref MySqlParameter[] paramArray, string parameterName, object parameterValue, object parameterNull)
        {
            MySqlParameter parameter = new MySqlParameter();
            parameter.ParameterName = parameterName;

            if (parameterValue.ToString() == parameterNull.ToString())
                parameter.Value = DBNull.Value;
            else
                parameter.Value = parameterValue;

            AddParameter(ref paramArray, parameter);
        }

        public static void AddParameter(ref MySqlParameter[] paramArray, string parameterName, SqlDbType dbType, object parameterValue)
        {
            MySqlParameter parameter = new MySqlParameter(parameterName, dbType);
            parameter.Value = parameterValue;

            AddParameter(ref paramArray, parameter);
        }

        public static void AddParameter(ref MySqlParameter[] paramArray, string parameterName, SqlDbType dbType, ParameterDirection direction, object parameterValue)
        {
            MySqlParameter parameter = new MySqlParameter(parameterName, dbType);
            parameter.Value = parameterValue;
            parameter.Direction = direction;

            AddParameter(ref paramArray, parameter);
        }

        ////public static void AddParameter(ref MySqlParameter[] paramArray, string parameterName, SqlDbType dbType, int size, object parameterValue)
        ////{
        ////    MySqlParameter parameter = new MySqlParameter(parameterName, dbType, size);
        ////    parameter.Value = parameterValue;

        ////    AddParameter(ref paramArray, parameter);
        ////}

        ////public static void AddParameter(ref MySqlParameter[] paramArray, string parameterName, SqlDbType dbType, int size, ParameterDirection direction, object parameterValue)
        ////{
        ////    MySqlParameter parameter = new MySqlParameter(parameterName, dbType, size);
        ////    parameter.Value = parameterValue;
        ////    parameter.Direction = direction;

        ////    AddParameter(ref paramArray, parameter);
        ////}

        public static void AddParameter(ref MySqlParameter[] paramArray, params MySqlParameter[] newParameters)
        {
            MySqlParameter[] newArray = Array.CreateInstance(typeof(MySqlParameter), paramArray.Length + newParameters.Length) as MySqlParameter[];
            paramArray.CopyTo(newArray, 0);
            newParameters.CopyTo(newArray, paramArray.Length);

            paramArray = newArray;
        }

        #endregion

    }
}