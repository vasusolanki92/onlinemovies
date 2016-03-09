using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace online_movie_booking
{
    public class DAL
    {
        public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        public SqlCommand cmd;
        public SqlDataAdapter da;
        public DataSet ds;
        public DataTable dt;
    }

    public class manageuser : DAL
    {
        public DataSet getmoviewood()
        {
            cmd = new SqlCommand("getmoviewood", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet getmovietype(int mwID)
        {
            cmd = new SqlCommand("getmovietype", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mwID", mwID);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet getmovie2(int mtID)
        {
            cmd = new SqlCommand("getmovie2", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mtID", mtID);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public void registeruser(users u)
        {
            cmd = new SqlCommand("registeruser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@uname", u.uname);
            cmd.Parameters.AddWithValue("@uemail", u.uemail);
            cmd.Parameters.AddWithValue("@upass", u.upass);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }

        public DataTable userlogin(string uemail, string upass)
        {
            cmd = new SqlCommand("userlogin", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@uemail", uemail);
            cmd.Parameters.AddWithValue("@upass", upass);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;

        }
        public void insertmovies(users u)
        {
            cmd = new SqlCommand("insertmovies", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mwID", u.mwID);
            cmd.Parameters.AddWithValue("@mtID", u.mtID);
            cmd.Parameters.AddWithValue("@moviename", u.moviename);
            cmd.Parameters.AddWithValue("@mimage", u.mimage);
            cmd.Parameters.AddWithValue("@mrate", u.mrate);
            cmd.Parameters.AddWithValue("@mdes", u.mdes);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }

        public DataTable searchmovie(int A_ID, int mtID, int mwID)
        {
            cmd = new SqlCommand("searchmovie", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@A_ID", A_ID);
            cmd.Parameters.AddWithValue("@mtID", mtID);
            cmd.Parameters.AddWithValue("@mwID", mwID);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public void changepass(users u)
        {
            cmd = new SqlCommand("changepass", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("userID", u.userID);
            cmd.Parameters.AddWithValue("upass", u.upass);
            cmd.Parameters.AddWithValue("npass", u.npass);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataSet getallmovie()
        {
            cmd = new SqlCommand("getallmovie", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet getuser()
        {
            cmd = new SqlCommand("getuser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public void dltuser(users u)
        {
            cmd = new SqlCommand("dltuser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userID", u.userID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void updtuser(users u)
        {
            cmd = new SqlCommand("updtuser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userID", u.userID);
            cmd.Parameters.AddWithValue("@uname", u.uname);
            cmd.Parameters.AddWithValue("@uemail", u.uemail);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}