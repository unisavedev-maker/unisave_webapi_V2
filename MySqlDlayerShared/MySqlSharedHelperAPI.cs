using MySql.Data.MySqlClient;
using System.Data;

namespace MySqlDlayerShared
{
    public class MySqlSharedHelperAPI
    {
        //https://www.c-sharpcorner.com/UploadFile/asmabegam/Asp-Net-5-crud-for-mysql-using-sp-and-helper-class/

        //public String ConnectionString = ConfigurationManager.ConnectionStrings["npdconnstring"].ToString();
        public String ConnectionString = null;//@"server=89.116.122.188;port=3306;database=dev_myunisavedb;username=devom;password=Naturally@01; convert zero datetime=True";
        public MySqlConnection connection;
        private void Initialize()
        {
            ConnectionString = ReadConnectionString();
            connection = new MySqlConnection(ConnectionString);
        }

        public MySqlSharedHelperAPI()
        {
            Initialize();
        }
        public String ReadConnectionString()
        {
            //return ConnectionString = @"server=52.255.189.157;port=3306;database=ecomm_dev;username=omnewuser;password=[Omnewuser!2023]; convert zero datetime=True";//";// ConfigurationManager.ConnectionStrings["npdconnstring"].ToString();

            //return ConnectionString = @"server=89.116.122.188;port=3306;database=ecomm_dev;username=devom;password=Naturally@01; convert zero datetime=True";//";// ConfigurationManager.ConnectionStrings["npdconnstring"].ToString();
            return ConnectionString = @"server=191.101.0.168;port=3306;database=dev_myunisavedb;username=devom;password=admin@123; convert zero datetime=True";

        }
        public bool OpenConnection()
        {
            try
            {
                connection.Open();
                return true;
            }
            catch (MySqlException ex)
            {
            }
            return false;
        }
        public bool CloseConnection()
        {
            try
            {
                connection.Close();
                return true;
            }
            catch (MySqlException ex)
            {
                return false;
            }
        }

        #region ExecuteNonQuery  
        //for insert / Update and Delete
        //For Insert/Update/Delete  
        public int ExecuteNonQuery_IUD(String Querys)
        {
            int result = 0;
            //open connection  
            if (OpenConnection() == true)
            {
                //create command and assign the query and connection from the constructor  
                MySqlCommand cmd = new MySqlCommand(Querys, connection);
                //Execute command  
                result = cmd.ExecuteNonQuery();
                //close connection  
                CloseConnection();
            }
            return result;
        }
        #endregion

        #region Dataset  
        // for select result and  
        //return as Dataset
        //for select result and return as Dataset  
        public DataSet DataSet_return(String Querys)
        {
            DataSet ds = new DataSet();
            //open connection  
            if (OpenConnection() == true)
            {
                //for Select Query   
                MySqlCommand cmdSel = new MySqlCommand(Querys, connection);
                MySqlDataAdapter da = new MySqlDataAdapter(cmdSel);
                da.Fill(ds);
                //close connection  
                CloseConnection();
            }
            return ds;
        }
        #endregion


        #region DataTable  
        // for select result and  
        //return as DataTable
        //for select result and return as DataTable  
        public DataTable DataTable_return(String Querys)
        {
            DataTable dt = new DataTable();
            //open connection  
            if (OpenConnection() == true)
            {
                //for Select Query   
                MySqlCommand cmdSel = new MySqlCommand(Querys, connection);
                MySqlDataAdapter da = new MySqlDataAdapter(cmdSel);
                da.Fill(dt);
                //close connection  
                CloseConnection();
            }
            return dt;
        }
        #endregion


        #region Dataset  
        // for Stored Procedure and  
        // return as DataTable
        //for select result and return as DataTable  
        public DataSet SP_DataTable_return(String ProcName, params MySqlParameter[] commandParameters)
        {
            DataSet ds = new DataSet();
            //open connection  
            if (OpenConnection() == true)
            {
                //for Select Query   
                MySqlCommand cmdSel = new MySqlCommand(ProcName, connection);
                cmdSel.CommandType = CommandType.StoredProcedure;
                // Assign the provided values to these parameters based on parameter order  
                AssignParameterValues(commandParameters, commandParameters);
                AttachParameters(cmdSel, commandParameters);
                MySqlDataAdapter da = new MySqlDataAdapter(cmdSel);
                da.Fill(ds);
                //close connection  
                CloseConnection();
            }
            return ds;
        }

        private static void AttachParameters(MySqlCommand command, MySqlParameter[] commandParameters)
        {
            if (command == null) throw new ArgumentNullException("command");
            if (commandParameters != null)
            {
                foreach (MySqlParameter p in commandParameters)
                {
                    if (p != null)
                    {
                        // Check for derived output value with no value assigned  
                        if ((p.Direction == ParameterDirection.InputOutput || p.Direction == ParameterDirection.Input) && (p.Value == null))
                        {
                            p.Value = DBNull.Value;
                        }
                        command.Parameters.Add(p);
                    }
                }
            }
        }

        private static void AssignParameterValues(MySqlParameter[] commandParameters, object[] parameterValues)
        {
            if ((commandParameters == null) || (parameterValues == null))
            {
                // Do nothing if we get no data  
                return;
            }
            // We must have the same number of values as we pave parameters to put them in  
            if (commandParameters.Length != parameterValues.Length)
            {
                throw new ArgumentException("Parameter count does not match Parameter Value count.");
            }
            // Iterate through the SqlParameters, assigning the values from the corresponding position in the   
            // value array  
            for (int i = 0, j = commandParameters.Length; i < j; i++)
            {
                // If the current array value derives from IDbDataParameter, then assign its Value property  
                if (parameterValues[i] is IDbDataParameter)
                {
                    IDbDataParameter paramInstance = (IDbDataParameter)parameterValues[i];
                    if (paramInstance.Value == null)
                    {
                        commandParameters[i].Value = DBNull.Value;
                    }
                    else
                    {
                        commandParameters[i].Value = paramInstance.Value;
                    }
                }
                else if (parameterValues[i] == null)
                {
                    commandParameters[i].Value = DBNull.Value;
                }
                else
                {
                    commandParameters[i].Value = parameterValues[i];
                }
            }
        }
        #endregion


    }

}
