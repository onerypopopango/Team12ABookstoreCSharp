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
        void Update(WCFBook book);
    }

    [DataContract]
    public class WCFBook
    {
        string author;
        int bookID;
        int categoryID;
        long ISBN;
        double price;
        int stock;
        string title;

        [DataMember]
        public string Author { get => author; set => author = value; }

        [DataMember]
        public int BookID { get => bookID; set => bookID = value; }

        [DataMember]
        public int CategoryID { get => categoryID; set => categoryID = value; }

        [DataMember]
        public long ISBN1 { get => ISBN; set => ISBN = value; }

        [DataMember]
        public double Price { get => price; set => price = value; }

        [DataMember]
        public int Stock { get => stock; set => stock = value; }

        [DataMember]
        public string Title { get => title; set => title = value; }
    }

}
