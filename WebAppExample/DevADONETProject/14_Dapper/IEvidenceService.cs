using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DevADONETProject._14_Dapper
{
    internal interface IEvidenceService
    {
        List<Evidence> GetAllEvidence();
        Evidence CreateEvidence(Evidence evidence);
        bool EditEvidence(Evidence evidence);
        bool DeleteEvidence(int id);
        List<Evidence> SearchEvidence(string field, string value);

        Evidence BrowseEvidence(int id);
    }
}
