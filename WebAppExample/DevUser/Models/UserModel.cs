using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DevADONETProject._17_UserControl
{
    public class UserModel
    {
        public UserModel()
        {

        }
        public UserModel(int id)
        {
            Id = id;
        }
        public UserModel (int id, string userId)
        {
            Id = id;
            UserId = userId;
        }
        public UserModel(string userId, string userPassword)
        {
            UserId = userId;
            UserPassword = userPassword; 

        }

        public UserModel(int id, string userId, string userPassword)
        {
            Id = id;
            UserId = userId;
            UserPassword = userPassword;
        }

         public int Id { get; set; }
        public string UserId { get; set; }
        public string UserPassword { get; set; }
    }
}