using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.ServiceModel.Web;

namespace SA46Team12BookShopApp
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IWCFService" in both code and config file together.
    [ServiceContract]
    public interface IWCFService
    {
        [OperationContract]
        [WebGet(UriTemplate = "/Books", ResponseFormat = WebMessageFormat.Json)]
        List<Book> GetBooks();

        [OperationContract]
        [WebGet(UriTemplate = "/Books/{name}", ResponseFormat = WebMessageFormat.Json)]
        List<Book> SearchBookByName(string name);

        [OperationContract]
        [WebInvoke(UriTemplate = "/Update", Method = "POST",
        RequestFormat = WebMessageFormat.Json,
        ResponseFormat = WebMessageFormat.Json)]
        void Update(Book book);
    }
}
