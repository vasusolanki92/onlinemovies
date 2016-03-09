using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace online_movie_booking
{
    public class BAL
    {
    }

    public class users
    {
        manageuser mu = new manageuser();
        
        public int mwID { get; set; }
        public string mwName { get; set; }
        public int mtID { get; set; }
        public string mtname { get; set; }
        public int mID { get; set; }
        public string  mname { get; set; }
        public int A_ID { get; set; }
        public string  uname { get; set; }
        public string uemail { get; set; }
        public int upass { get; set; }
        public string moviename { get; set; }
        public string  mimage { get; set; }
        public int mrate { get; set; }
        public string mdes { get; set; }
        public int userID { get; set; }
        public int npass { get; set; }
      
       
        

        public DataSet getmoviewood()
        {
            return mu.getmoviewood();
        }

        public DataSet getmovietype(int mwID)
        {
            return mu.getmovietype(mwID);
        }

        public DataSet getmovie2(int mtID)
        {
            return mu.getmovie2(mtID);
        }

        public void registeruser(users u)
        {
            mu.registeruser(u);
        }

        public DataTable userlogin(string uemail, string upass)
        {
            return mu.userlogin(uemail,upass);
        }
        public void insertmovies(users u)
        {
            mu.insertmovies(u);
        }

        public DataTable searchmovie(int A_ID,int mtID,int mwID)
        {
            return mu.searchmovie(A_ID,mtID,mwID);
        }

        public void changepass(users u)
        {
            mu.changepass(u);
        }

        public DataSet getallmovie()
        {
            return mu.getallmovie();
        }

        public DataSet getuser()
        {
            return mu.getuser();
        }

        public void dltuser(users u)
        {
            mu.dltuser(u);
        }

        public void updtuser(users u)
        {
            mu.updtuser(u);
        }
    }
}