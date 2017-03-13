using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for CAService
/// </summary>
public class CAService
{
    SqlConnection connect;
    public CAService()
    {
        string connectString = ConfigurationManager.ConnectionStrings["CAConnection"].ToString();
        connect = new SqlConnection(connectString);
    }

    public DataTable GetGrantTypes()
    {
        DataTable table = new DataTable();

        string sql = "Select GrantReviewDate as [Date],"
      + "GrantRequestExplanation as Explanation, "
      + "GrantAllocationAmount as Amount, "
      + "GrantRequestStatus as [Status] "
      + "From GrantRequest r "
      + "inner join Grantreview gr "
      + "on r.GrantRequestKey = gr.GrantRequestKey ";

        SqlCommand cmd = new SqlCommand(sql, connect);
        SqlDataReader reader = null;

        connect.Open();

        reader = cmd.ExecuteReader();
        table.Load(reader);
        reader.Close();
        connect.Close();
        return table;
    }
}