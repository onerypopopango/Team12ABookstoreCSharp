﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace SA46Team12BookShopApp
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "WCFService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select WCFService.svc or WCFService.svc.cs at the Solution Explorer and start debugging.
    public class WCFService : IWCFService
    {
        public List<Book> GetBooks()
        {
            return BusinessLogic.GetBooks();
        }

        public List<Book> SearchBookByName(string name)
        {
            return BusinessLogic.SearchBookByName(name);
        }

        public void Update(WCFBook wcfBook)
        {
            Book book = new Book();
            book.Author = wcfBook.Author;
            book.BookID = wcfBook.BookID;
            book.CategoryID = wcfBook.CategoryID;
            book.ISBN = Convert.ToString(wcfBook.ISBN1);
            book.Price = Convert.ToDecimal(wcfBook.Price);
            book.Stock = wcfBook.Stock;
            book.Title = wcfBook.Title;


            BusinessLogic.UpdateBook(book);
        }
    }
}
