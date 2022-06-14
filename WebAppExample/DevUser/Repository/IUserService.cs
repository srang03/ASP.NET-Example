using DevADONETProject._17_UserControl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DevUser.Repository
{
    internal interface IUserService
    {
        void AddUser(UserModel user);

        UserModel GetUser(int id);

        bool ModifyUser(UserModel user);

        bool IsCollectUser(string userId, string userPassword);

        bool DeleteUser(int id);

        List<UserModel> ListUser();
    }
}
