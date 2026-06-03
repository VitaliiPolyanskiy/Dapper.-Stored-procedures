using Dapper;
using Microsoft.Extensions.Configuration;
using System;
using System.Data;
using Microsoft.Data.SqlClient;
using System.IO;
using System.Windows.Forms;

#pragma warning disable CA1416

namespace ADO.NET_Example
{
    public class Book
    {
        public string Title { get; set; } = null!;

        public string Author { get; set; } = null!;

        public short PublishYear { get; set; }

        public decimal Price { get; set; }

        public int Pages { get; set; }

        public bool IsAvailable { get; set; }

        public string? Genre { get; set; }

        public double? Rating { get; set; }
    }

    public partial class Form1 : Form
    {
        string? connectionString;

        public Form1()
        {
            InitializeComponent();
            var builder = new ConfigurationBuilder();
            string path = Directory.GetCurrentDirectory();
            builder.SetBasePath(path);
            builder.AddJsonFile("appsettings.json");
            var config = builder.Build();
            connectionString = config.GetConnectionString("DefaultConnection");
        }

        private void Select_Click(object sender, EventArgs e)
        {
            try
            {
                using (IDbConnection db = new SqlConnection(connectionString))
                {
                    var lowborder = Convert.ToInt32(textBox1.Text);
                    var highborder = Convert.ToInt32(textBox2.Text);
                    var sqlQuery = "select Title, Author, PublishYear, Price, Pages, IsAvailable, Genre, Rating from Books where Pages>=@lowborder and Pages<=@highborder";
                    var books = db.Query<Book>(sqlQuery, new { lowborder, highborder });
                    dataGridView1.DataSource = books;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void Delete_Book_Click(object sender, EventArgs e)
        {
            /*
             create procedure Delete_Book
               @title nvarchar (150) as
               delete from books where title like @title 
		       go
		   
                declare @title nvarchar(150)
                set @title = '%NET%'
                execute Delete_Book @title 
                go
            */

            try
            {
                using (IDbConnection db = new SqlConnection(connectionString))
                {
                    var dynamicParams = new DynamicParameters();
                    dynamicParams.Add("@title", "%NET%", dbType: DbType.String, direction: ParameterDirection.Input);
                    int n = db.Execute("Delete_Book", dynamicParams, commandType: CommandType.StoredProcedure);
                    MessageBox.Show("Кількість видалених записів: " + n.ToString());
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void How_many_books_Click(object sender, EventArgs e)
        {
            /*
             create procedure how_many_books @quantity int output  
                as
                select @quantity = COUNT(*) from books 
                go

                declare @quantity int
                execute how_many_books @quantity output
                select 'Кількість записів у таблиці Books:',@quantity
                go
            */

            try
            {
                using (IDbConnection db = new SqlConnection(connectionString))
                {
                    var dynamicParams = new DynamicParameters();
                    dynamicParams.Add("@quantity", dbType: DbType.Int32, direction: ParameterDirection.Output);
                    db.Execute("how_many_books", dynamicParams, commandType: CommandType.StoredProcedure);
                    MessageBox.Show("Кількість записів у таблиці Books: " + dynamicParams.Get<int>("@quantity").ToString());
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void MaxPages_Click(object sender, EventArgs e)
        {
            /* Відобразити жанр, який має найбільшу кількість сторінок.

               create view sum_of_pages (pages, genre) as
               SELECT sum(pages), genre 
               FROM books
               GROUP BY genre
               go

              create procedure MaxPages @genre varchar(50) output, @sum int output
              as
              SELECT @genre=genre, @sum=sum(pages)
              FROM books
              GROUP BY genre
              HAVING sum(pages) = (SELECT max(pages) from sum_of_pages)
              go

               declare @genre varchar(50), @sum int
               execute MaxPages @genre output, @sum output
               select 'Жанр:',@genre,'Сума:',@sum
            */

            try
            {
                using (IDbConnection db = new SqlConnection(connectionString))
                {
                    var dynamicParams = new DynamicParameters();
                    dynamicParams.Add("@genre", dbType: DbType.String, direction: ParameterDirection.Output, size: 50);
                    dynamicParams.Add("@sum", dbType: DbType.Int32, direction: ParameterDirection.Output);
                    db.Execute("MaxPages", dynamicParams, commandType: CommandType.StoredProcedure);
                    MessageBox.Show("Жанр: " + dynamicParams.Get<string>("@genre")
                                        + "  Сума: " + dynamicParams.Get<int>("@sum").ToString());
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void BooksList_Click(object sender, EventArgs e)
        {
            /*
              create function BooksList(
                @Author nvarchar(50)
                )
                  returns @returntable table
                  (
                    Title nvarchar(150),
	                Author nvarchar (100),
                    PublishYear smallint,
	                Price decimal (8,2),
	                Pages int,
	                IsAvailable bit,
	                Genre varchar (50),
	                Rating float
                )
                  as
                  BEGIN
                    INSERT @returntable
                    SELECT Title, Author, PublishYear, Price, Pages, IsAvailable, Genre, Rating
	                FROM Books WHERE Author = @Author
                    RETURN
                  END
                  go

              select * from BooksList(N'Тарас Шевченко')
             */

            try
            {
                using (IDbConnection db = new SqlConnection(connectionString))
                {
                    var books = db.Query<Book>("select * from BooksList(N'Тарас Шевченко')");
                    dataGridView1.DataSource = books;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void ShowBooksByThemes_Click(object sender, EventArgs e)
        {
            /*
             create procedure ShowBooksByGenre
                @genre varchar (50) as
                select * from books
                where genre like @genre
                order by title desc
                go

            execute ShowBooksByGenre 'Фентезі'
            */

            try
            {
                using (IDbConnection db = new SqlConnection(connectionString))
                {
                    var dynamicParams = new DynamicParameters();
                    dynamicParams.Add("@genre", "Фентезі", dbType: DbType.String, direction: ParameterDirection.Input);
                    var books = db.Query<Book>("ShowBooksByGenre", dynamicParams, commandType: CommandType.StoredProcedure);
                    dataGridView1.DataSource = books;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void Add_Book_Click(object sender, EventArgs e)
        {
            /*
           create procedure Add_Book 
			    @Title nvarchar(150),
	            @Author nvarchar (100),
                @PublishYear smallint,
	            @Price decimal (8,2),
	            @Pages int,
	            @IsAvailable bit,
	            @Genre varchar (50),
	            @Rating float
            as
            INSERT INTO books (Title, Author, PublishYear, Price, Pages, IsAvailable, Genre, Rating)
            VALUES (@Title, @Author, @PublishYear, @Price, @Pages, @IsAvailable, @Genre, @Rating)
             */

            try
            {
                using (IDbConnection db = new SqlConnection(connectionString))
                {
                    var dynamicParams = new DynamicParameters();
                    dynamicParams.Add("@Title", "Платформа .NET та мова програмування C#", dbType: DbType.String, direction: ParameterDirection.Input);
                    dynamicParams.Add("@Author", "Коноваленко", dbType: DbType.String, direction: ParameterDirection.Input);
                    dynamicParams.Add("@PublishYear", 2020, dbType: DbType.Int32, direction: ParameterDirection.Input);
                    dynamicParams.Add("@Price", 1000, dbType: DbType.Decimal, direction: ParameterDirection.Input);
                    dynamicParams.Add("@Pages", 300, dbType: DbType.Int32, direction: ParameterDirection.Input);
                    dynamicParams.Add("@IsAvailable", 1, dbType: DbType.Boolean, direction: ParameterDirection.Input);
                    dynamicParams.Add("@Genre", "Програмування", dbType: DbType.String, direction: ParameterDirection.Input);
                    dynamicParams.Add("@Rating", 4.7, dbType: DbType.Double, direction: ParameterDirection.Input);
                    int n = db.Execute("Add_Book", dynamicParams, commandType: CommandType.StoredProcedure);
                    if (n == 1)
                        MessageBox.Show("Книгу успішно додано до таблиці!");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}