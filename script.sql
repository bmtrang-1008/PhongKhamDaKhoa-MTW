USE [MTW]
GO
/****** Object:  Table [dbo].[BioChemicalRecord]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BioChemicalRecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ure] [float] NULL,
	[glucose] [float] NULL,
	[creatinine] [float] NULL,
	[acid_uric] [float] NULL,
	[protein] [float] NULL,
	[cholesterol] [float] NULL,
	[calcium] [float] NULL,
	[ph] [float] NULL,
	[code] [varchar](8) NOT NULL,
 CONSTRAINT [PK_BloodCell] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BloodCellResult]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BloodCellResult](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hc] [float] NULL,
	[hemoglobin] [float] NULL,
	[hematocrit] [float] NULL,
	[reticulocyte] [float] NULL,
	[settled_blood] [float] NULL,
	[blood] [float] NULL,
	[platelet] [float] NULL,
	[blood_type] [varchar](50) NULL,
	[code] [varchar](8) NOT NULL,
 CONSTRAINT [PK_BloodCellResult] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConfirmedSchedule]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfirmedSchedule](
	[ID] [int] NOT NULL,
	[reservation_id] [int] NOT NULL,
	[doctor_id] [int] NOT NULL,
	[staff_id] [int] NOT NULL,
	[time_start] [datetime] NOT NULL,
	[time_end] [datetime] NOT NULL,
 CONSTRAINT [PK_ConfirmedSchedule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[ID] [int] NOT NULL,
	[dept_name] [varchar](50) NOT NULL,
	[dept_description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[doctor_id] [int] NOT NULL,
	[department_id] [int] NULL,
	[room_number] [int] NULL,
	[exp_year] [nvarchar](50) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Doctor_1] PRIMARY KEY CLUSTERED 
(
	[doctor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ENTRecord]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENTRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[hearing_test] [varchar](50) NULL,
	[nose_throat_test] [varchar](50) NULL,
	[code] [varchar](8) NOT NULL,
 CONSTRAINT [PK_ENTRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EyeRecord]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EyeRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[vision_test] [varchar](50) NULL,
	[eye_disease] [varchar](50) NULL,
	[eye_type] [varchar](50) NULL,
	[code] [varchar](8) NULL,
 CONSTRAINT [PK_EyeRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[doctor_id] [int] NOT NULL,
	[feedback] [varchar](50) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[rate] [int] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InternalRecord]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternalRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[blood_cycle] [nvarchar](50) NULL,
	[respiratory] [nvarchar](50) NULL,
	[GI] [nvarchar](50) NULL,
	[kidneys_unary] [nvarchar](50) NULL,
	[musculoskeletal] [nvarchar](50) NULL,
	[neurological] [nvarchar](50) NULL,
	[neuropsychiaric] [nvarchar](50) NULL,
	[code] [varchar](8) NOT NULL,
 CONSTRAINT [PK_InternalRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Journalist]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Journalist](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[image] [nvarchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaxillofacialRecord]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaxillofacialRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[upper_jaw] [varchar](50) NULL,
	[lower_jaw] [varchar](50) NULL,
	[dental_disease] [varchar](50) NULL,
	[code] [varchar](8) NOT NULL,
 CONSTRAINT [PK_MaxillofacialRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalRecord]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[doctor_id] [int] NOT NULL,
	[patient_id] [int] NOT NULL,
	[reservation_id] [int] NULL,
	[physical_id] [int] NULL,
	[internal_id] [int] NULL,
	[eye_id] [int] NULL,
	[ent_id] [int] NULL,
	[maxillofacial_id] [int] NULL,
	[diagnostic] [nvarchar](50) NULL,
	[conclusion] [nvarchar](500) NULL,
	[code] [varchar](8) NOT NULL,
 CONSTRAINT [PK_MedicalRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](1000) NOT NULL,
	[url] [nvarchar](2000) NOT NULL,
	[journalist_id] [int] NOT NULL,
	[description] [nvarchar](2000) NULL,
	[image] [nvarchar](1000) NULL,
	[date_create] [nvarchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[option] [varchar](50) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[gender] [bit] NOT NULL,
	[phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission_role]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission_role](
	[permission_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [PK_Permission_role] PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC,
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[ID] [int] NOT NULL,
	[permission_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhysicalRecord]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhysicalRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[height] [float] NULL,
	[weight] [float] NULL,
	[BMI] [float] NULL,
	[pulse_rate] [int] NULL,
	[blood_pressure] [int] NULL,
	[physical_type] [varchar](50) NULL,
	[code] [varchar](8) NOT NULL,
 CONSTRAINT [PK_PhysicalRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[full_name] [nvarchar](50) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[dob] [date] NULL,
	[gender] [bit] NULL,
	[insurance_code] [varchar](50) NOT NULL,
	[examination_date] [date] NOT NULL,
	[examination_department] [nvarchar](50) NOT NULL,
	[status] [int] NULL,
	[detail_note] [nvarchar](50) NOT NULL,
	[created_date] [date] NULL,
	[email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Reservation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReservationHistory]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservationHistory](
	[ID] [int] NOT NULL,
	[reservation_id] [int] NOT NULL,
	[doctor_id] [int] NOT NULL,
 CONSTRAINT [PK_ReservationHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] NOT NULL,
	[role_name] [varchar](50) NOT NULL,
	[role_description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[id] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[description] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/22/2021 10:16:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[email] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[full_name] [nvarchar](50) NULL,
	[dob] [date] NULL,
	[gender] [bit] NULL,
	[avatar] [varchar](50) NULL,
	[created_date] [date] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BioChemicalRecord] ON 

INSERT [dbo].[BioChemicalRecord] ([id], [ure], [glucose], [creatinine], [acid_uric], [protein], [cholesterol], [calcium], [ph], [code]) VALUES (1, 3, 4, 5, 3, 6, 4, 6, 7, N'KIG376S9')
INSERT [dbo].[BioChemicalRecord] ([id], [ure], [glucose], [creatinine], [acid_uric], [protein], [cholesterol], [calcium], [ph], [code]) VALUES (2, 23, 12, 50, 32, 2323, 0.08, 43, 12, N'9748IGPW')
INSERT [dbo].[BioChemicalRecord] ([id], [ure], [glucose], [creatinine], [acid_uric], [protein], [cholesterol], [calcium], [ph], [code]) VALUES (3, 2323, 5.41, 50, 12, 85, 2323, 2323, 8, N'OXF127E7')
INSERT [dbo].[BioChemicalRecord] ([id], [ure], [glucose], [creatinine], [acid_uric], [protein], [cholesterol], [calcium], [ph], [code]) VALUES (4, 2323, 2323, 50, 2323, 2323, 0.08, 43, 2, N'REF2XS9N')
INSERT [dbo].[BioChemicalRecord] ([id], [ure], [glucose], [creatinine], [acid_uric], [protein], [cholesterol], [calcium], [ph], [code]) VALUES (5, 2323, 12, 50, 400, 2323, 4.49, 2.08, 7.39, N'RFX3YWZD')
INSERT [dbo].[BioChemicalRecord] ([id], [ure], [glucose], [creatinine], [acid_uric], [protein], [cholesterol], [calcium], [ph], [code]) VALUES (6, 23, 5.41, 32, 400, 2323, 4.49, 43, 8, N'V4AWTW7Z')
SET IDENTITY_INSERT [dbo].[BioChemicalRecord] OFF
GO
SET IDENTITY_INSERT [dbo].[BloodCellResult] ON 

INSERT [dbo].[BloodCellResult] ([id], [hc], [hemoglobin], [hematocrit], [reticulocyte], [settled_blood], [blood], [platelet], [blood_type], [code]) VALUES (1, 3, 45, 56, 5, 7, 67, 67, N'B+', N'KIG376S9')
INSERT [dbo].[BloodCellResult] ([id], [hc], [hemoglobin], [hematocrit], [reticulocyte], [settled_blood], [blood], [platelet], [blood_type], [code]) VALUES (2, 5.85, 12, 12, 0.6, 0.02, 1000, 9, N'B +', N'9748IGPW')
INSERT [dbo].[BloodCellResult] ([id], [hc], [hemoglobin], [hematocrit], [reticulocyte], [settled_blood], [blood], [platelet], [blood_type], [code]) VALUES (3, 9, 12, 12, 12, 12, 810, 9, N'A', N'REF2XS9N')
INSERT [dbo].[BloodCellResult] ([id], [hc], [hemoglobin], [hematocrit], [reticulocyte], [settled_blood], [blood], [platelet], [blood_type], [code]) VALUES (4, 12, 126, 46.3, 12, 0.02, 810, 400, N'AB +', N'RFX3YWZD')
INSERT [dbo].[BloodCellResult] ([id], [hc], [hemoglobin], [hematocrit], [reticulocyte], [settled_blood], [blood], [platelet], [blood_type], [code]) VALUES (5, 12, 12, 12, 0.6, 12, 1000, 400, N'A', N'V4AWTW7Z')
SET IDENTITY_INSERT [dbo].[BloodCellResult] OFF
GO
INSERT [dbo].[Department] ([ID], [dept_name], [dept_description]) VALUES (1, N'Examination Department', N'Do examination')
INSERT [dbo].[Department] ([ID], [dept_name], [dept_description]) VALUES (2, N'Cardiology Department', N'Cardiology')
INSERT [dbo].[Department] ([ID], [dept_name], [dept_description]) VALUES (3, N'Oncology Department', N'cancer,...')
INSERT [dbo].[Department] ([ID], [dept_name], [dept_description]) VALUES (4, N'Pediatrics Department', N'kids...')
INSERT [dbo].[Department] ([ID], [dept_name], [dept_description]) VALUES (5, N'Surgery Department', N'surgery')
INSERT [dbo].[Department] ([ID], [dept_name], [dept_description]) VALUES (6, N'Nutrition Department', N'eat, sleep, repeat :))')
GO
INSERT [dbo].[Doctor] ([doctor_id], [department_id], [room_number], [exp_year], [status]) VALUES (44, 5, 2, N'hieu test 123 alo', 1)
INSERT [dbo].[Doctor] ([doctor_id], [department_id], [room_number], [exp_year], [status]) VALUES (1048, 3, 3, N'2222', 0)
GO
SET IDENTITY_INSERT [dbo].[ENTRecord] ON 

INSERT [dbo].[ENTRecord] ([ID], [hearing_test], [nose_throat_test], [code]) VALUES (1, N'Normal', N'Normal', N'KIG376S9')
INSERT [dbo].[ENTRecord] ([ID], [hearing_test], [nose_throat_test], [code]) VALUES (2, N'Good', N'Good', N'REF2XS9N')
INSERT [dbo].[ENTRecord] ([ID], [hearing_test], [nose_throat_test], [code]) VALUES (3, N'Good', N'Good', N'IZVMJX52')
INSERT [dbo].[ENTRecord] ([ID], [hearing_test], [nose_throat_test], [code]) VALUES (4, N'Good', N'Good', N'V4AWTW7Z')
SET IDENTITY_INSERT [dbo].[ENTRecord] OFF
GO
SET IDENTITY_INSERT [dbo].[EyeRecord] ON 

INSERT [dbo].[EyeRecord] ([ID], [vision_test], [eye_disease], [eye_type], [code]) VALUES (1, N'5', N'myopic', N'3', N'KIG376S9')
INSERT [dbo].[EyeRecord] ([ID], [vision_test], [eye_disease], [eye_type], [code]) VALUES (2, N'3', N'3', N'3', N'IZVMJX52')
SET IDENTITY_INSERT [dbo].[EyeRecord] OFF
GO
SET IDENTITY_INSERT [dbo].[InternalRecord] ON 

INSERT [dbo].[InternalRecord] ([ID], [blood_cycle], [respiratory], [GI], [kidneys_unary], [musculoskeletal], [neurological], [neuropsychiaric], [code]) VALUES (1, N'34', N'Normal', N'Normal', N'Normal', N'Normal', N'Normal', N'Normal', N'KIG376S9')
INSERT [dbo].[InternalRecord] ([ID], [blood_cycle], [respiratory], [GI], [kidneys_unary], [musculoskeletal], [neurological], [neuropsychiaric], [code]) VALUES (2, N'90', N'45', N'34', N'Good', N'Good', N'Good', N'Good', N'REF2XS9N')
INSERT [dbo].[InternalRecord] ([ID], [blood_cycle], [respiratory], [GI], [kidneys_unary], [musculoskeletal], [neurological], [neuropsychiaric], [code]) VALUES (3, N'90', N'45', N'34', N'Good', N'Good', N'Good', N'Good', N'RFX3YWZD')
INSERT [dbo].[InternalRecord] ([ID], [blood_cycle], [respiratory], [GI], [kidneys_unary], [musculoskeletal], [neurological], [neuropsychiaric], [code]) VALUES (4, N'90', N'45', N'34', N'Good', N'Good', N'Good', N'Good', N'IZVMJX52')
INSERT [dbo].[InternalRecord] ([ID], [blood_cycle], [respiratory], [GI], [kidneys_unary], [musculoskeletal], [neurological], [neuropsychiaric], [code]) VALUES (5, N'90', N'45', N'34', N'Good', N'Good', N'Good', N'Good', N'V4AWTW7Z')
SET IDENTITY_INSERT [dbo].[InternalRecord] OFF
GO
SET IDENTITY_INSERT [dbo].[Journalist] ON 

INSERT [dbo].[Journalist] ([id], [name], [image]) VALUES (1, N' Nguyen Minh Hoang', N'img/author-image.jpg')
SET IDENTITY_INSERT [dbo].[Journalist] OFF
GO
SET IDENTITY_INSERT [dbo].[MaxillofacialRecord] ON 

INSERT [dbo].[MaxillofacialRecord] ([ID], [upper_jaw], [lower_jaw], [dental_disease], [code]) VALUES (1, N'Normal', N'Normal', N'None', N'KIG376S9')
INSERT [dbo].[MaxillofacialRecord] ([ID], [upper_jaw], [lower_jaw], [dental_disease], [code]) VALUES (2, N'Good', N'Good', N'Good', N'REF2XS9N')
INSERT [dbo].[MaxillofacialRecord] ([ID], [upper_jaw], [lower_jaw], [dental_disease], [code]) VALUES (3, N'Good', N'Good', N'Good', N'IZVMJX52')
SET IDENTITY_INSERT [dbo].[MaxillofacialRecord] OFF
GO
SET IDENTITY_INSERT [dbo].[MedicalRecord] ON 

INSERT [dbo].[MedicalRecord] ([ID], [doctor_id], [patient_id], [reservation_id], [physical_id], [internal_id], [eye_id], [ent_id], [maxillofacial_id], [diagnostic], [conclusion], [code]) VALUES (1016, 44, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Hand dislocation', N'Hand dislocation due to compete in AOE2', N'QS4OBVF0')
INSERT [dbo].[MedicalRecord] ([ID], [doctor_id], [patient_id], [reservation_id], [physical_id], [internal_id], [eye_id], [ent_id], [maxillofacial_id], [diagnostic], [conclusion], [code]) VALUES (1020, 44, 2, NULL, NULL, NULL, NULL, NULL, NULL, N'Shoulder dislocaion', N'Shoulder dislocation due to Sergio Ramos''s tackle, must surgery now', N'4ZWNPSAI')
INSERT [dbo].[MedicalRecord] ([ID], [doctor_id], [patient_id], [reservation_id], [physical_id], [internal_id], [eye_id], [ent_id], [maxillofacial_id], [diagnostic], [conclusion], [code]) VALUES (1021, 44, 3, NULL, NULL, NULL, NULL, NULL, NULL, N'Hand dislocation', N'High due to smoke too much weed', N'9748IGPW')
INSERT [dbo].[MedicalRecord] ([ID], [doctor_id], [patient_id], [reservation_id], [physical_id], [internal_id], [eye_id], [ent_id], [maxillofacial_id], [diagnostic], [conclusion], [code]) VALUES (1022, 44, 4, NULL, NULL, NULL, NULL, NULL, NULL, N'Too handsome', N'Too handsome due to win Copa America :v', N'PW18D2G7')
INSERT [dbo].[MedicalRecord] ([ID], [doctor_id], [patient_id], [reservation_id], [physical_id], [internal_id], [eye_id], [ent_id], [maxillofacial_id], [diagnostic], [conclusion], [code]) VALUES (1023, 44, 5, NULL, NULL, NULL, NULL, NULL, NULL, N'Broken heart', N'High due to smoke too much weed', N'ROL6VVP0')
INSERT [dbo].[MedicalRecord] ([ID], [doctor_id], [patient_id], [reservation_id], [physical_id], [internal_id], [eye_id], [ent_id], [maxillofacial_id], [diagnostic], [conclusion], [code]) VALUES (1024, 44, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'Broken heart', N'Stone KT 4mm in reins, kidney follicles 20mm in left reins', N'1N5JU076')
INSERT [dbo].[MedicalRecord] ([ID], [doctor_id], [patient_id], [reservation_id], [physical_id], [internal_id], [eye_id], [ent_id], [maxillofacial_id], [diagnostic], [conclusion], [code]) VALUES (1025, 44, 7, NULL, NULL, NULL, NULL, NULL, NULL, N'Broken heart', N'High due to smoke too much weed', N'OXF127E7')
INSERT [dbo].[MedicalRecord] ([ID], [doctor_id], [patient_id], [reservation_id], [physical_id], [internal_id], [eye_id], [ent_id], [maxillofacial_id], [diagnostic], [conclusion], [code]) VALUES (1027, 44, 9, NULL, NULL, NULL, NULL, NULL, NULL, N'High', N'Too handsome due to win Copa America :v', N'RFX3YWZD')
INSERT [dbo].[MedicalRecord] ([ID], [doctor_id], [patient_id], [reservation_id], [physical_id], [internal_id], [eye_id], [ent_id], [maxillofacial_id], [diagnostic], [conclusion], [code]) VALUES (1028, 44, 10, NULL, NULL, NULL, NULL, NULL, NULL, N'Shoulder dislocaion', N'Shoulder dislocation due to Sergio Ramos''s tackle, must surgery now', N'IZVMJX52')
INSERT [dbo].[MedicalRecord] ([ID], [doctor_id], [patient_id], [reservation_id], [physical_id], [internal_id], [eye_id], [ent_id], [maxillofacial_id], [diagnostic], [conclusion], [code]) VALUES (1029, 44, 10, NULL, NULL, NULL, NULL, NULL, NULL, N'Shoulder dislocaion', N'Shoulder dislocation due to Sergio Ramos''s tackle, must surgery now', N'V4AWTW7Z')
SET IDENTITY_INSERT [dbo].[MedicalRecord] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([id], [title], [url], [journalist_id], [description], [image], [date_create]) VALUES (1, N'About Amazing Technology', N' http://benhviendakhoanongnghiep.vn/ap-dung-3-cong-nghe-cao-tren-cung-1-ca-benh-soi-mat-tai-phat/', 1, N'Blocked gallstones and gallstones below DSA.', N' img/new1.jpg ', N'March 06, 2021')
INSERT [dbo].[News] ([id], [title], [url], [journalist_id], [description], [image], [date_create]) VALUES (2, N' Introducing a new healing process', N'   http://benhviendakhoanongnghiep.vn/neu-doi-chan-cua-ban-ngung-di-cuoc-song-se-te-nhat-ra-sao/ ', 1, N'Saving patient leg by new treatment method.', N'img/new2.jpg', N' April 20, 2021')
INSERT [dbo].[News] ([id], [title], [url], [journalist_id], [description], [image], [date_create]) VALUES (4, N'Special recommend about the disease', N' http://benhviendakhoanongnghiep.vn/sot-xuat-huyet-va-nhung-dieu-can-luu-y/ ', 1, N'Dengue fever and other considerations, special for older.', N'img/new3.jpg', N'June 09, 2021')
SET IDENTITY_INSERT [dbo].[News] OFF
GO
INSERT [dbo].[Patient] ([id], [name], [age], [address], [option], [code], [gender], [phone]) VALUES (1, N'Binh', 25, N'Dan Phuong', N'Non - Insurance', N'', 1, NULL)
INSERT [dbo].[Patient] ([id], [name], [age], [address], [option], [code], [gender], [phone]) VALUES (2, N'Erling Haaland', 21, N'Norway', N'Insurance', N'grgergererg', 1, N'84342217180')
INSERT [dbo].[Patient] ([id], [name], [age], [address], [option], [code], [gender], [phone]) VALUES (3, N'Nguyen Van Ba', 34, N'Cau Giay, Ha Noi, Viet Nam', N'Non - Insurance', N'', 1, N'84342217180')
INSERT [dbo].[Patient] ([id], [name], [age], [address], [option], [code], [gender], [phone]) VALUES (4, N'Nguyen Van Ba', 20, N'Cau Giay, Ha Noi, Viet Nam', N'Insurance', N'HS - 2394872348237', 1, N'84342217180')
INSERT [dbo].[Patient] ([id], [name], [age], [address], [option], [code], [gender], [phone]) VALUES (5, N'Nguyen Quang Hieu', 34, N'Dong Son, Thanh Hoa, Viet Nam', N'Non - Insurance', N'', 1, N'84342217180')
INSERT [dbo].[Patient] ([id], [name], [age], [address], [option], [code], [gender], [phone]) VALUES (6, N'Le Thi Hoa', 34, N'Dong Son, Thanh Hoa, Viet Nam', N'Insurance', N'AX - 45236875934', 0, N'0948827424')
INSERT [dbo].[Patient] ([id], [name], [age], [address], [option], [code], [gender], [phone]) VALUES (7, N'Nguyen Quang Hieu', 34, N'Cau Giay, Ha Noi, Viet Nam', N'Non - Insurance', N'', 1, N'84342217180')
INSERT [dbo].[Patient] ([id], [name], [age], [address], [option], [code], [gender], [phone]) VALUES (9, N'Erling Haaland', 21, N'Cau Giay, Ha Noi, Viet Nam', N'Non - Insurance', N'', 1, N'0949021555')
INSERT [dbo].[Patient] ([id], [name], [age], [address], [option], [code], [gender], [phone]) VALUES (10, N'Nguyen Van Ba', 21, N'Thanh hoa. ', N'Non - Insurance', N'', 1, N'0949021555')
GO
SET IDENTITY_INSERT [dbo].[PhysicalRecord] ON 

INSERT [dbo].[PhysicalRecord] ([ID], [height], [weight], [BMI], [pulse_rate], [blood_pressure], [physical_type], [code]) VALUES (1, 160, 50, 3.4, 90, 90, N'Good', N'REF2XS9N')
INSERT [dbo].[PhysicalRecord] ([ID], [height], [weight], [BMI], [pulse_rate], [blood_pressure], [physical_type], [code]) VALUES (2, 160, 50, 3.4, 90, 90, N'Good', N'IZVMJX52')
SET IDENTITY_INSERT [dbo].[PhysicalRecord] OFF
GO
SET IDENTITY_INSERT [dbo].[Reservation] ON 

INSERT [dbo].[Reservation] ([ID], [user_id], [full_name], [phone], [dob], [gender], [insurance_code], [examination_date], [examination_department], [status], [detail_note], [created_date], [email]) VALUES (5, 44, N'Nguyen Van Ba', N'84342217180', NULL, 0, N'SE -1502', CAST(N'2021-07-22' AS Date), N'Cardiology', 2, N'I have my arm hurts', NULL, N'c9nguyenquanghieu@gmail.com')
INSERT [dbo].[Reservation] ([ID], [user_id], [full_name], [phone], [dob], [gender], [insurance_code], [examination_date], [examination_department], [status], [detail_note], [created_date], [email]) VALUES (6, 44, N'Erling Haaland', N'84342217180', NULL, 0, N'SE -1502', CAST(N'2021-07-22' AS Date), N'Cardiology', 1, N'I have my hand broken', CAST(N'2021-07-21' AS Date), N'c9nguyenquanghieu@gmail.com')
SET IDENTITY_INSERT [dbo].[Reservation] OFF
GO
INSERT [dbo].[Role] ([ID], [role_name], [role_description]) VALUES (1, N'admin', N'Admin')
INSERT [dbo].[Role] ([ID], [role_name], [role_description]) VALUES (2, N'patient', N'patient')
INSERT [dbo].[Role] ([ID], [role_name], [role_description]) VALUES (3, N'doctor', N'doctor')
INSERT [dbo].[Role] ([ID], [role_name], [role_description]) VALUES (4, N'p_doctor', N'pending doctor')
GO
INSERT [dbo].[Service] ([id], [name], [description]) VALUES (1, N'Diagnostic Imaging', NULL)
INSERT [dbo].[Service] ([id], [name], [description]) VALUES (2, N'Outpatient Examination', NULL)
INSERT [dbo].[Service] ([id], [name], [description]) VALUES (3, N'Hospital Fee Guarantee', N'What is a hospital fee guarantee?')
INSERT [dbo].[Service] ([id], [name], [description]) VALUES (4, N'Business Health Check', N'The health of officials and employees is a solid foundation for the development of each company and enterprise. Because employees are healthy, the work is completed fully and good products are produced to help the business develop and be more stable.')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (44, 3, N'hieu19', N'ghieu36ass', N'c9nguyenquanghieu@gmail.com', N'84342217180', N'Nguyen Quang Hieu', CAST(N'2021-07-12' AS Date), 1, N'null', CAST(N'2021-07-21' AS Date))
INSERT [dbo].[User] ([ID], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (46, 1, N'admin', N'123', N'c9nguyenquanghieu@gmail.com', N'0342217180', N'Nguyen Quang Hieu', CAST(N'2000-01-01' AS Date), 1, N'null', CAST(N'2021-01-21' AS Date))
INSERT [dbo].[User] ([ID], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (1046, 2, N'patient', N'123', N'c9nguyenquanghieu@gmail.com', N'0342217180', N'Nguyen Quang Hieu', CAST(N'2000-01-01' AS Date), 1, N'null', CAST(N'2021-07-22' AS Date))
INSERT [dbo].[User] ([ID], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (1047, 3, N'trang', N'123', N'trangbmhe150464@fpt.edu.vn', N'09876543212', N'Bui Minh Trang', CAST(N'2001-01-01' AS Date), 0, N'null', CAST(N'2021-01-01' AS Date))
INSERT [dbo].[User] ([ID], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (1048, 4, N'intel', N'123', N'c9nguyenquanghieu@gmail.com', N'84342217180', N'Nguyen Quang Hieu', CAST(N'2021-06-28' AS Date), 1, N'null', CAST(N'2021-07-22' AS Date))
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[ConfirmedSchedule]  WITH CHECK ADD  CONSTRAINT [FK_ConfirmedSchedule_Reservation] FOREIGN KEY([reservation_id])
REFERENCES [dbo].[Reservation] ([ID])
GO
ALTER TABLE [dbo].[ConfirmedSchedule] CHECK CONSTRAINT [FK_ConfirmedSchedule_Reservation]
GO
ALTER TABLE [dbo].[ConfirmedSchedule]  WITH CHECK ADD  CONSTRAINT [FK_ConfirmedSchedule_User] FOREIGN KEY([doctor_id])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ConfirmedSchedule] CHECK CONSTRAINT [FK_ConfirmedSchedule_User]
GO
ALTER TABLE [dbo].[ConfirmedSchedule]  WITH CHECK ADD  CONSTRAINT [FK_ConfirmedSchedule_User1] FOREIGN KEY([staff_id])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ConfirmedSchedule] CHECK CONSTRAINT [FK_ConfirmedSchedule_User1]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Department] FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([ID])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Department]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_User] FOREIGN KEY([doctor_id])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_User]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_User1] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_User1]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_User2] FOREIGN KEY([doctor_id])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_User2]
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD  CONSTRAINT [FK_MedicalRecord_ENTRecord] FOREIGN KEY([ent_id])
REFERENCES [dbo].[ENTRecord] ([ID])
GO
ALTER TABLE [dbo].[MedicalRecord] CHECK CONSTRAINT [FK_MedicalRecord_ENTRecord]
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD  CONSTRAINT [FK_MedicalRecord_EyeRecord] FOREIGN KEY([eye_id])
REFERENCES [dbo].[EyeRecord] ([ID])
GO
ALTER TABLE [dbo].[MedicalRecord] CHECK CONSTRAINT [FK_MedicalRecord_EyeRecord]
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD  CONSTRAINT [FK_MedicalRecord_InternalRecord] FOREIGN KEY([internal_id])
REFERENCES [dbo].[InternalRecord] ([ID])
GO
ALTER TABLE [dbo].[MedicalRecord] CHECK CONSTRAINT [FK_MedicalRecord_InternalRecord]
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD  CONSTRAINT [FK_MedicalRecord_InternalRecord1] FOREIGN KEY([internal_id])
REFERENCES [dbo].[InternalRecord] ([ID])
GO
ALTER TABLE [dbo].[MedicalRecord] CHECK CONSTRAINT [FK_MedicalRecord_InternalRecord1]
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD  CONSTRAINT [FK_MedicalRecord_MaxillofacialRecord] FOREIGN KEY([maxillofacial_id])
REFERENCES [dbo].[MaxillofacialRecord] ([ID])
GO
ALTER TABLE [dbo].[MedicalRecord] CHECK CONSTRAINT [FK_MedicalRecord_MaxillofacialRecord]
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD  CONSTRAINT [FK_MedicalRecord_PhysicalRecord] FOREIGN KEY([physical_id])
REFERENCES [dbo].[PhysicalRecord] ([ID])
GO
ALTER TABLE [dbo].[MedicalRecord] CHECK CONSTRAINT [FK_MedicalRecord_PhysicalRecord]
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD  CONSTRAINT [FK_MedicalRecord_Reservation] FOREIGN KEY([reservation_id])
REFERENCES [dbo].[Reservation] ([ID])
GO
ALTER TABLE [dbo].[MedicalRecord] CHECK CONSTRAINT [FK_MedicalRecord_Reservation]
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD  CONSTRAINT [FK_MedicalRecord_Reservation1] FOREIGN KEY([reservation_id])
REFERENCES [dbo].[Reservation] ([ID])
GO
ALTER TABLE [dbo].[MedicalRecord] CHECK CONSTRAINT [FK_MedicalRecord_Reservation1]
GO
ALTER TABLE [dbo].[Permission_role]  WITH CHECK ADD  CONSTRAINT [FK_Permission_role_Permissions] FOREIGN KEY([permission_id])
REFERENCES [dbo].[Permissions] ([ID])
GO
ALTER TABLE [dbo].[Permission_role] CHECK CONSTRAINT [FK_Permission_role_Permissions]
GO
ALTER TABLE [dbo].[Permission_role]  WITH CHECK ADD  CONSTRAINT [FK_Permission_role_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[Permission_role] CHECK CONSTRAINT [FK_Permission_role_Role]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_User]
GO
ALTER TABLE [dbo].[ReservationHistory]  WITH CHECK ADD  CONSTRAINT [FK_ReservationHistory_Reservation] FOREIGN KEY([reservation_id])
REFERENCES [dbo].[Reservation] ([ID])
GO
ALTER TABLE [dbo].[ReservationHistory] CHECK CONSTRAINT [FK_ReservationHistory_Reservation]
GO
ALTER TABLE [dbo].[ReservationHistory]  WITH CHECK ADD  CONSTRAINT [FK_ReservationHistory_User] FOREIGN KEY([doctor_id])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ReservationHistory] CHECK CONSTRAINT [FK_ReservationHistory_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
