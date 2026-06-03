USE [BooksDB]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 17.01.2026 1:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Author] [nvarchar](100) NOT NULL,
	[PublishYear] [smallint] NOT NULL,
	[Price] [decimal](8, 2) NOT NULL,
	[Pages] [int] NOT NULL,
	[IsAvailable] [bit] NOT NULL,
	[Genre] [varchar](50) NULL,
	[Rating] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (1, N'Кобзар', N'Тарас Шевченко', 1840, CAST(320.00 AS Decimal(8, 2)), 384, 1, N'Поезія', 4.9)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (2, N'Тіні забутих предків', N'Михайло Коцюбинський', 1911, CAST(210.50 AS Decimal(8, 2)), 240, 1, N'Класична проза', 4.8)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (3, N'Захар Беркут', N'Іван Франко', 1883, CAST(245.00 AS Decimal(8, 2)), 320, 1, N'Історичний роман', 4.7)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (4, N'Лісова пісня', N'Леся Українка', 1911, CAST(190.00 AS Decimal(8, 2)), 160, 1, N'Драма', 4.8)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (5, N'Маруся Чурай', N'Ліна Костенко', 1979, CAST(310.00 AS Decimal(8, 2)), 416, 0, N'Історичний роман', 4.9)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (6, N'Ворошиловград', N'Сергій Жадан', 2010, CAST(360.00 AS Decimal(8, 2)), 320, 1, N'Сучасна проза', 4.6)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (7, N'Інтернат', N'Сергій Жадан', 2017, CAST(340.00 AS Decimal(8, 2)), 336, 1, N'Соціальна проза', 4.7)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (8, N'Солодка Даруся', N'Марія Матіос', 2004, CAST(290.00 AS Decimal(8, 2)), 256, 1, N'Психологічний роман', 4.6)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (9, N'Записки українського самашедшого', N'Ліна Костенко', 2010, CAST(330.00 AS Decimal(8, 2)), 416, 1, N'Соціальна проза', 4.5)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (10, N'Фелікс Австрія', N'Софія Андрухович', 2014, CAST(350.00 AS Decimal(8, 2)), 288, 0, N'Історичний роман', 4.6)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (11, N'1984', N'George Orwell', 1949, CAST(260.00 AS Decimal(8, 2)), 328, 1, N'Антиутопія', 4.8)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (12, N'Animal Farm', N'George Orwell', 1945, CAST(220.00 AS Decimal(8, 2)), 112, 1, N'Політична сатира', 4.7)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (13, N'Brave New World', N'Aldous Huxley', 1932, CAST(250.00 AS Decimal(8, 2)), 288, 1, N'Антиутопія', 4.7)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (14, N'Fahrenheit 451', N'Ray Bradbury', 1953, CAST(240.00 AS Decimal(8, 2)), 256, 1, N'Наукова фантастика', 4.6)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (15, N'The Great Gatsby', N'F. Scott Fitzgerald', 1925, CAST(230.00 AS Decimal(8, 2)), 218, 0, N'Класичний роман', 4.5)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (16, N'To Kill a Mockingbird', N'Harper Lee', 1960, CAST(270.00 AS Decimal(8, 2)), 336, 1, N'Соціальний роман', 4.8)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (17, N'The Catcher in the Rye', N'J.D. Salinger', 1951, CAST(255.00 AS Decimal(8, 2)), 277, 1, N'Психологічна проза', 4.4)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (18, N'Lord of the Flies', N'William Golding', 1954, CAST(235.00 AS Decimal(8, 2)), 224, 1, N'Алегоричний роман', 4.3)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (19, N'One Hundred Years of Solitude', N'Gabriel Garcia Marquez', 1967, CAST(380.00 AS Decimal(8, 2)), 448, 1, N'Магічний реалізм', 4.9)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (20, N'The Old Man and the Sea', N'Ernest Hemingway', 1952, CAST(210.00 AS Decimal(8, 2)), 128, 0, N'Класична проза', 4.6)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (21, N'Harry Potter and the Philosopher’s Stone', N'J.K. Rowling', 1997, CAST(300.00 AS Decimal(8, 2)), 320, 1, N'Фентезі', 4.9)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (22, N'Harry Potter and the Chamber of Secrets', N'J.K. Rowling', 1998, CAST(320.00 AS Decimal(8, 2)), 352, 1, N'Фентезі', 4.8)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (23, N'The Hobbit', N'J.R.R. Tolkien', 1937, CAST(340.00 AS Decimal(8, 2)), 310, 1, N'Фентезі', 4.9)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (24, N'The Fellowship of the Ring', N'J.R.R. Tolkien', 1954, CAST(390.00 AS Decimal(8, 2)), 432, 1, N'Фентезі', 4.8)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (25, N'The Two Towers', N'J.R.R. Tolkien', 1954, CAST(390.00 AS Decimal(8, 2)), 352, 0, N'Фентезі', 4.7)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (26, N'The Return of the King', N'J.R.R. Tolkien', 1955, CAST(420.00 AS Decimal(8, 2)), 416, 1, N'Фентезі', 4.8)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (27, N'Dune', N'Frank Herbert', 1965, CAST(420.00 AS Decimal(8, 2)), 544, 1, N'Наукова фантастика', 4.9)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (28, N'Dune Messiah', N'Frank Herbert', 1969, CAST(360.00 AS Decimal(8, 2)), 336, 1, N'Наукова фантастика', 4.6)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (29, N'Foundation', N'Isaac Asimov', 1951, CAST(310.00 AS Decimal(8, 2)), 255, 1, N'Наукова фантастика', 4.7)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (30, N'I, Robot', N'Isaac Asimov', 1950, CAST(290.00 AS Decimal(8, 2)), 224, 0, N'Наукова фантастика', 4.6)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (31, N'Neuromancer', N'William Gibson', 1984, CAST(300.00 AS Decimal(8, 2)), 271, 1, N'Кіберпанк', 4.5)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (32, N'The Da Vinci Code', N'Dan Brown', 2003, CAST(350.00 AS Decimal(8, 2)), 454, 1, N'Детектив', 4.4)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (33, N'Angels & Demons', N'Dan Brown', 2000, CAST(340.00 AS Decimal(8, 2)), 512, 1, N'Детектив', 4.3)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (34, N'The Girl with the Dragon Tattoo', N'Stieg Larsson', 2005, CAST(370.00 AS Decimal(8, 2)), 465, 1, N'Трилер', 4.6)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (35, N'Gone Girl', N'Gillian Flynn', 2012, CAST(330.00 AS Decimal(8, 2)), 432, 0, N'Психологічний трилер', 4.5)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (36, N'The Silence of the Lambs', N'Thomas Harris', 1988, CAST(310.00 AS Decimal(8, 2)), 352, 1, N'Трилер', 4.6)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (37, N'The Book Thief', N'Markus Zusak', 2005, CAST(360.00 AS Decimal(8, 2)), 552, 1, N'Історична проза', 4.8)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (38, N'Life of Pi', N'Yann Martel', 2001, CAST(310.00 AS Decimal(8, 2)), 352, 1, N'Філософський роман', 4.5)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (39, N'The Road', N'Cormac McCarthy', 2006, CAST(290.00 AS Decimal(8, 2)), 287, 1, N'Постапокаліпсис', 4.4)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (40, N'Norwegian Wood', N'Haruki Murakami', 1987, CAST(330.00 AS Decimal(8, 2)), 296, 0, N'Психологічна проза', 4.6)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (41, N'Kafka on the Shore', N'Haruki Murakami', 2002, CAST(360.00 AS Decimal(8, 2)), 505, 1, N'Магічний реалізм', 4.7)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (42, N'Sapiens', N'Yuval Noah Harari', 2011, CAST(420.00 AS Decimal(8, 2)), 498, 1, N'Нон-фікшн', 4.9)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (43, N'Homo Deus', N'Yuval Noah Harari', 2015, CAST(430.00 AS Decimal(8, 2)), 512, 1, N'Нон-фікшн', 4.7)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (44, N'Atomic Habits', N'James Clear', 2018, CAST(380.00 AS Decimal(8, 2)), 320, 1, N'Саморозвиток', 4.8)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (45, N'Thinking, Fast and Slow', N'Daniel Kahneman', 2011, CAST(410.00 AS Decimal(8, 2)), 512, 0, N'Психологія', 4.6)
INSERT [dbo].[Books] ([BookId], [Title], [Author], [PublishYear], [Price], [Pages], [IsAvailable], [Genre], [Rating]) VALUES (46, N'Educated', N'Tara Westover', 2018, CAST(350.00 AS Decimal(8, 2)), 352, 1, N'Мемуари', 4.7)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
ALTER TABLE [dbo].[Books] ADD  DEFAULT ((1)) FOR [IsAvailable]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD CHECK  (([Pages]>(0)))
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD CHECK  (([Rating]>=(0) AND [Rating]<=(5)))
GO
