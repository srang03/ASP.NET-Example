using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DapperDBProject
{
    public interface IModelService
    {
        Model CraeteModel(Model model);

        bool UpdateModel(Model model);

        List<Model> ReadModel();

        List<Model> ReadSearchModel(string field, string value);

        Model BrowseModel(int id);

        bool DeleteModel(int id);

    }
}
