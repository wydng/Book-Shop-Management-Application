create database shopBook
use shopBook
create table loaiSach
(
	maLoai int identity(1,1),
	tenLoai nvarchar(30),
	primary key(maLoai)
)
create table Sach
(
	maSach int identity(1,1),
	tenSach nvarchar(100),
	maLoai int,
	tacGia nvarchar(50),
	nhaXuatBan nvarchar(50),
	nhaCungCap nvarchar(100),
	loaiBia nvarchar(30),
	hinhAnh char(20),
	soLuong int check(soLuong>=0),
	namXB int,
	Gia money check(Gia>=0),
	primary key(maSach)
)

create table khachHang
(
	maKH int identity(1,1),
	tenKH nvarchar(30),
	sdt_KH int,
	primary key(maKH)
)
create table nhanVien
(
	maNV char(10),
	tenNV nvarchar(30),
	SDT_NV int,
	ngaySinh char(10),
	diaChi nvarchar(50),
	gioiTinh nvarchar(3),
	taiKhoan char(15),
	matKhau char(15),
	chucVu nvarchar(15),
	primary key(maNV)
)
--update
create table donHang
(
	maDH int identity(1,1),
	maNV char(10),
	maKH int,
	maSach int,
	tenKH nvarchar(30),
	ngayDat char(20),
	soluong int,
	thanhTien money,
	primary key(maDH)
)
--update
create table ct_DonHang
(	
	maCT int identity(1,1),
	maKH int,
	ngayMua char(20),
	tongTien money,
	primary key(maCT)
)
-- khóa ngoại
ALTER TABLE Sach
ADD CONSTRAINT S_LS FOREIGN KEY(maLoai) REFERENCES loaiSach(maLoai)
ALTER TABLE donHang
ADD CONSTRAINT DH_KH FOREIGN KEY(maKH) REFERENCES khachHang(maKH)
ALTER TABLE donHang
ADD CONSTRAINT DH_NV FOREIGN KEY(maNV) REFERENCES nhanVien(maNV)
ALTER TABLE ct_DonHang
ADD CONSTRAINT CT_S FOREIGN KEY(maKH) REFERENCES khachHang(maKH)
--
ALTER TABLE donHang
ADD CONSTRAINT DH_CT FOREIGN KEY(maSach) REFERENCES Sach(maSach)

--- data------
insert into loaiSach(tenLoai)
values(N'1 Tiếu Thuyết' ),
(N'2 TRuyện Ngắn - Tản Văn' ),
(N'3 Light Novel' ),
(N'4 Ngôn Tình' ),
(N'5 Nhân Vật-Bài Học Kinh Doanh' ),
(N'6 Quản Trị - Lãnh Đạo' ),
(N'7 Marketing - Bán Hàng' ),
(N'8 Phân Tích Kinh Tế' ),
(N'9 Kỹ Năng Sống' ),
(N'10 Hạt Giống Tâm Hồn' ),
(N'11 Tâm Lý' ),
(N'12 Rèn Luyện Nhân Cách' ),
(N'13 Manga - Comic' ),
(N'14 Kiến Thức Bách Khoa' ),
(N'15 Kỹ Năng Sống cho Trẻ' ),
(N'16 Tô Màu, Luyện Chữ' ),
(N'17 Sách Giáo Khoa' ),
(N'18 Sách Tham Khảo' ),
(N'19 Luyện Thi THPT Quốc Gia' ),
(N'20 Mẫu Giáo' ),
(N'21 Tiếng Anh' ),
(N'22 Tiếng Nhật' ),
(N'23Tiếng Hoa' ),
(N'24Tiếng Hàn' )

insert into Sach( tenSach, maLoai, tacGia, nhaXuatBan, nhaCungCap, loaiBia, hinhAnh, soLuong, namXB, Gia)
values
(N'Cây cam ngọt của tôi',1,N'José Mauro de Vasconcelos',N'NXB Hội Nhà Văn',N'Nhã Nam',N'Bìa mềm','TTN1.jpg',100,1968,108000),
(N'Nhà Giả Kim',1,N'Paulo Coelho',N'NXB Hội Nhà Văn',N'Nhã Nam',N'Bìa mềm','TTN2.JPG',100,1988,79000),
(N'Ghi chép pháp y - Những cái chết bí ẩn',1,N'Lưu Hiểu Huy',N'NXB Thanh Niên',N'AZ Việt Nam',N'Bìa mềm','TTN3.JPG',100,2022,150000),
(N'Tôi thấy hoa vàng trên cỏ xanh',1,N'Nguyễn Nhật Ánh',N'NXB Trẻ',N'NXB Trẻ',N'Bìa mềm','TTN4.JPG',100,2010,125000),
(N'Bước chậm lại giữa thế gian vội vã',1,N'Hae Min',N'NXB Hội Nhà Văn',N'Nhã Nam',N'Bìa mềm','TTN5.JPG',100,2012,85000),
(N'Từ điển tiếng "Em" ',2,N'Khotudien',N'NXB Phụ Nữ Việt Nam',N'Skybooks',N'Bìa mềm','TN1.JPG',100,2012,69000),
(N'Một cuốn sách trầm cảm',2,N'macmart',N'NXB Thanh Niên',N'AZ Việt Nam',N'Bìa mềm','TN2.JPG',100,2022,106000),
(N'Tạm biệt tôi của nhiều năm về trước',2,N'An',N'NXB Dân Trí',N'Skybooks',N'Bìa mềm','TN3.JPG',100,2022,95000),
(N'Anh không bận chỉ là không nhớ em',2,N'Tuệ Mẫn',N'NXB Thế giới',N'Công ty Cổ phần Times Books',N'Bìa mềm','TN4.JPG',100,2022,89000),
(N'Hai mặt của gia đình',2,N'Choi Kwanghuyn',N'NXB Thanh Niên',N'AZ Việt Nam',N'Bìa mềm','TN5.JPG',100,2020,98000),
(N'Và rồi tháng 9 không có cậu đã tới',3,N'Natsuki Amasawa',N'NXB Thế giới',N'AZ Việt Nam',N'Bìa mềm','LN1.JPG',100,2020,98000),
(N'Vì con gái tôi có thể đánh bại cả ma vương',3,N'CHIROLU, Kei',N'NXB Phụ Nữ Việt Nam',N'Skybooks',N'Bìa mềm','LN2.JPG',100,2020,140000),
(N'Đao Ngữ',3,N'Nisio Isin, Take',N'NXB Hội Nhà Văn',N'Nhã Nam',N'Bìa mềm','LN3.JPG',100,2007,110000),
(N'Tiệm sách cũ Biblia',3,N'Mikami En',N'NXB Hồng Đức',N'IPM',N'Bìa mềm','LN4.JPG',100,2021,950000),
(N'Đau ơi bay đi',3,N'Miaki Sugaru, E9L',N'NXB Hồng Đức',N'IPM',N'Bìa mềm','LN5.JPG',100,2022,1200000),
(N'Chân trời góc bể',4,N'Diệp Lạc Vô Tâm',N'NXB Văn Học',N'Đinh Tị',N'Bìa mềm','NT1.JPG',100,2015,100000),
(N'Bên nhau trọn đời',4,N'Cố Mạn',N'NXB Văn Học',N'Bách Việt',N'Bìa mềm','NT2.JPG',100,2015,145000),
(N'Động phòng hoa chúc cách vách',4,N'Diệp Lạc Vô Tâm',N'NXB Văn Học',N'Đinh Tị',N'Bìa mềm','NT3.JPG',100,2021,118000),
(N'Rung động chỉ vì em',4,N'Nghê Đa Hỉ',N'NXB Hà Nội',N'Đinh Tị',N'Bìa mềm','NT4.JPG',100,2022,189000),
(N'Sao trên trời rất xa, sao của anh thật gần',4,N'Phỉ Ngã Tư Tồn',N'NXB Văn Học',N'Đinh Tị',N'Bìa mềm','NT5.JPG',100,2018,118000),
(N'Nghĩ giàu & làm giàu',5,N'Napoleon Hill',N'NXB Tổng Hợp TPHCM',N'FIRST NEWS',N'Bìa mềm','NV1.JPG',100,2020,110000),
(N'Những kẻ xuất chúng',5,N'Malcolm Gladwel',N'NXB Thế giới',N'Alpha Books',N'Bìa mềm','NV2.JPG',100,2021,159000),
(N'36 kế trong kinh doanh hiện đại',5,N'Lan Bercu',N'NXB Trẻ',N'NXB Trẻ',N'Bìa mềm','NV3.JPG',100,2022,115000),
(N'Những ông trùm tài chính',5,N'Liaquat Ahamed',N'NXB Thế giới',N'Alpha Books',N'Bìa mềm','NV4.JPG',100,2010,299000),
(N'Bí mật của người kể chuyện',5,N'Carmine Gallo',N'NXB Thế giới',N'Alpha Books',N'Bìa mềm','NV5.JPG',100,2019,179000),
(N'Bí mật tư duy triệu phú',6,N'T Harv Eker',N'NXB Tổng Hợp TPHCM',N'FIRST NEWS',N'Bìa mềm','QT1.JPG',100,2021,108000),
(N'Tầm nhìn chiến lược nhân sự',6,N'Kanai Toshihiro, Yagi Yosuke',N'NXB Lao Động',N'Tân Việt',N'Bìa mềm','QT2.JPG',100,2020,78000),
(N'Làm điều quan trọng',6,N'John Doerr',N'NXB Tổng Hợp TPHCM',N'FIRST NEWS',N'Bìa mềm','QT3.JPG',100,2018,154000),
(N'Quản Lý Nghiệp',6,N'Geshe Michael Roach, Lama',N'NXB Lao Động',N'Thái Hà',N'Bìa mềm','QT4.JPG',100,2021,59000),
(N'Quản Trị nhân sự thời GenZ',6,N'Hồng Duyên',N'NXB Công Thương',N'Alpha Books',N'Bìa mềm','QT5.JPG',100,2022,199000),
(N'Trải nghiệm khách hàng xuất sắc',7,N'Nguyễn Dương',N'NXB Thế giới',N'Saigon Books',N'Bìa mềm','MB1.JPG',100,2022,250000),
(N'Người bán hàng vĩ đại nhất thế giới',7,N'Og Mandino',N'NXB Tổng Hợp TPHCM',N'FIRST NEWS',N'Bìa mềm','MB2.JPG',100,2013,148000),
(N'Nâng tầm dịch vụ',7,N'Ron Kaufman',N'NXB Trẻ',N'NXB Trẻ',N'Bìa mềm','MB3.JPG',100,2020,150000),
(N'Bán hàng cho người giàu',7,N'Dan S Kennedy',N'NXB Thế giới',N'NXB Thế giới',N'Bìa mềm','MB4.JPG',100,2022,298000),
(N'Nghệ thuật bán hàng bằng câu chuyện',7,N'Paul Smith',N'NXB Hồng Đức',N'MCBooks',N'Bìa mềm','MB5.JPG',100,2019,180000),
(N'Thiên nga đen',8,N'Nassim Nicholas Taleb',N'NXB Thế giới',N'Alpha Books',N'Bìa mềm','KT1.JPG',100,2020,299000),
(N'Dòng tiền gắn liền lợi nhuận',8,N'Mike Michalowicz',N'NXB Công Thương',N'Alpha Books',N'Bìa mềm','KT2.JPG',100,2020,149000),
(N'Cuộc chiến công nghệ số',8,N'Charles Arthur',N'NXB Dân Trí',N'Bách Việt',N'Bìa mềm','KT3.JPG',100,2021,135000),
(N'Bứt Phá - Accelerate',
8,
N'John P Kotter',
N'NXB Tổng Hợp TPHCM',
N'Viện quản lý PACE',N'Bìa mềm',
'KT4.JPG',
100,
2019,
75000),

(N'cẩm nang học tập và làm việc ở nước ngoài',
9,
N'Chu Đình Tới',
N'NXB lao động',
N'Alpha Books',N'Bìa mềm',
'KN1.JPG',
15,
2017,
67000),
(N'trở thành chuyên gia giao tiếp trong 3 phút',9,N'Nguyễn Thị Diễm Hương',N'NXB thanh niên',N'Nhà sách Minh Thắng',N'Bìa mềm','KN2.JPG',20,2018,69000),
(N'để hiệu quả trong công việc',9,N'Brian Tracy',N'NXB tổng hợp TPHCM',N'FIRST NEWS',N'Bìa mềm','KN3.JPG',30,2019,44000),
(N'Quyết Đoán Trong 1 Phút',9,N'Takashi Ishii',N'NXB dân trí',N'Công ty TNHH An Phước Books',N'Bìa mềm','KN4.JPG',20,2021,80000),
(N'Rèn Kỹ Năng Giải Quyết Vấn Đề Trong 1 Phút',9,N'Katsumi Nishimura',N'NXB dân trí',N'Công ty TNHH An Phước Books',N'Bìa mềm','KN5.JPG',26,2021,80000),
(N'Nước Mắt Cá Sấu',13,N'Clara Ng',N'NXB Hồng Đức',N'Công ty văn hóa và truyền thông Trí Việt',N'Bìa mềm','TT1.JPG',35,2019,24000),
(N'Hít Hà Mùi Đất Nước - Úm Ba La, Nảy Mầm Ra Cây Chuối',13,N'Mình là Hũ, Trúc Nhi Hoàng',N'NXB Hà Nội',N'Nhã Nam',N'Bìa mềm','TT2.JPG',40,2021,34000),
(N'Trái Đất Xinh Đẹp Có Gì - Một Thế Giới Đầy Nước',13,N'Isabel Thomas, Pau Morgan',N'NXB giáo dục Việt Nam',N'Công ty Mĩ Thuật và Truyền Thông',N'Bìa mềm','TT3.JPG',50,2019,39000),
(N'Bi Bô Bé Hỏi? - Vì Sao Nước Biển Lại Mặn?',13,'Simon Couchman',N'NXB Giáo Dục Việt Nam',N'Công ty Mĩ Thuật và Truyền Thông',N'Bìa mềm','TT4.JPG',43,2022,27000),
(N'Những Điều Lạ Em Muốn Biết - Hiểu Biết Thông Thường Trong Cuộc Sống',13,N'Phạm Văn Bình',N'NXB thanh niên',N'Công ty Văn Hóa Đông Tây',N'Bìa mềm','TT5.JPG',33,2022,35000),

(N'Tâm Lý Học Phạm Tội - Phác Họa Chân Dung Kẻ Phạm Tội',11,N'Diệp Hồng Vũ',N'NXB thanh niên',N'AZ Việt Nam',N'Bìa mềm','TL1.JPG',100,2017,108750),
(N'Thiên Tài Bên Trái, Kẻ Điên Bên Phải ',11,N'Cao Minh',N'NXB thế giới',N'AZ Việt Nam',N'Bìa mềm','TL2.JPG',150,2021,134250),
(N'Thuật Thao Túng - Góc Tối Ẩn Sau Mỗi Câu Nói',11,N'Wladislaw Jachtchenko',N'NXB thế giới',N'AZ Việt Nam',N'Bìa mềm','TL3.JPG',200,2022,104250),
(N'8 Vụ Án Hoàn Hảo - Vạch Trần Tâm Lý Kẻ Phạm Tội',11,N'Peter Swanson',N'NXB thanh niên',N'AZ Việt Nam',N'Bìa mềm','TL4.JPG',150,2022,116250),
(N'Hồ Sơ Tâm Lý Học Tâm Thần Hay Kẻ Điên',11,N'Mục Qua',N'NXB thanh niên',N'AZ Việt Nam',N'Bìa mềm','TL5.JPG',180,2022,145530),

(N'Đắc Nhân Tâm',12,N'Dale Carnegie',N'NXB tổng hợp TPHCM',N'Alpha Books',N'Bìa mềm','RL1.JPG',500,2021,66220),
(N'1001 Lời Hay - Ý Đẹp',12,N'Đại Minh',N'NXB Phụ Nữ',N'Panda Books',N'Bìa mềm','RL2.JPG',200,2017,25000),
(N'Từ Hạt Cát Tới Ngọc Trai',12,N'Trầm Linh, Hạ Dịch Ân',N'NXB Thanh Niên',N'Minh Long',N'Bìa mềm','RL3.JPG',250,2016,80000),
(N'Cùng Nhau Vượt Qua Bão Tố',12,N'Nhiều Tác Giả',N'NXB Hà Nội',N'Tân Việt',N'Bìa mềm','RL4.JPG',110,2013,29000),
(N'Vượt Lên Chính Mình',12,N'Jon Gordon , Đặng Phương',N'NXB Lao Động',N'Panda Books',N'Bìa mềm','RL5.JPG',150,2016,51000),

(N'Giới Hạn Của Bạn Chỉ Là Xuất Phát Điểm Của Tôi',15,N'Mèo Maverick',N'NXB Thế Giới',N'AZ Việt Nam',N'Bìa mềm','ML1.JPG',160,2022,75000),
(N'Học Cho Ai? Học Để Làm Gì? Tập 1',15,N'Tiêu Vệ, Lê Tâm',N'NXB Kim Đồng',N'NXB Kim Đồng',N'Bìa mềm','ML2.JPG',300,2019,34000),
(N'Cẩm Nang Con Trai',15,N'Violeta Basic',N'NXB Tổng Hợp',N'FIRST NEWS',N'Bìa mềm','ML3.JPG',350,2021,52360),
(N'Quà Tặng Cuộc Sống - Những Bài Học Vô Giá: Lắng Nghe Hay Nhận Một Viên Đá',15,N'Mai Hương, Vĩnh Thắng',N'NXB Thế Giới',N'Đinh Tị',N'Bìa mềm','ML4.JPG',190,2019,38000),
(N'Nhật Ký Trưởng Thành Của Đứa Trẻ Ngoan - Cha Mẹ Không Phải Người Đầy Tớ Của Tôi',15,N'Trương Cần',N'NXB Dân Trí ',N'Nhà sách Minh Thắng',N'Bìa mềm','ML5.JPG',170,2022,49500),

(N'Chicken Soup For The Golden Soul - Sức Mạnh Của Sự Tử Tế',10,N'Jack Canfield, Mark Victor Han',N'NXB Tổng hợp TPHCM ',N'FIRST NEWS',N'Bìa mềm','HG1.JPG',100,2022,66000),
(N'Hạt Giống Tâm Hồn 1 - Cho Lòng Dũng Cảm Và Tình Yêu Cuộc Sống ',10,N'First News',N'NXB Tổng hợp TPHCM ',N'FIRST NEWS',N'Bìa mềm','HG2.JPG',50,2022,64000),
(N'The Best Of Chicken Soup For The Soul - Tuyển Tập Những Câu Chuyện Hay Nhất',10,N'Jack Canfield, Mark Victor Han',N'NXB Tổng hợp TPHCM ',N'FIRST NEWS',N'Bìa mềm','HG3.JPG',200,2022,117000),
(N'Chicken Soup For The Soul 13 - Sống Với Ước Mơ ',10,N'Jack Canfield, Mark Victor Han',N'NXB Tổng hợp TPHCM ',N'FIRST NEWS',N'Bìa mềm','HG4.JPG',350,2019,51000),
(N'Chicken Soup For The Soul 11 - Vượt Qua Thử Thách Đầu Đời',10,N'Jack Canfield, Mark Victor Han',N'NXB Tổng hợp TPHCM ',N'FIRST NEWS',N'Bìa mềm','HG5.JPG',100,2019,51000),

(N'Ehon - Thực Phẩm Tâm Hồn Cho Bé - Xe Tuần Tra Cố Lên Nhé!',14,N'Fumiko Takeshita, Mamoru Su',N'NXB Lao Động ',N'Thái Hà',N'Bìa mềm','EH1.JPG',260,2020,41000),
(N'Ehon - Đi Dã Ngoại Ngày Mưa',14,N'Naokata Mase',N'NXB Lao Động ',N'Thái Hà',N'Bìa mềm','EH2.JPG',280,2020,46000),
(N'Ehon - Hướng Dẫn Sử Dụng Mẹ',14,N'Miku Ito, Makiko Sato',N'NXB Lao Động ',N'Thái Hà',N'Bìa mềm','EH3.JPG',300,2020,50000),
(N'Ehon Kĩ Năng Sống - Miu Miu Tự Lập - Đánh Răng',14,N'Kawa, Mai Anh Đỗ',N'NXB Phụ Nữ Việt Nam ',N'Công ty cổ phần sách và Thiết bị giáo dục Muki Việt Nam',N'Bìa mềm','EH4.JPG',100,2020,29000),
(N'Ehon Kĩ Năng Sống - Miu Bé Nhỏ - Đừng Biếng Ăn Nhé!',14,N'Kawa',N'NXB Lao Động ',N'Công ty cổ phần sách và Thiết bị giáo dục Muki Việt Nam',N'Bìa mềm','EH5.JPG',250,2022,33000),

(N'Từ Điển Hình Ảnh Cho Bé: Động Vật',16,N'Lê Bích Thuỷ, Hiếu Minh',N'NXB Kim Đồng ',N'NXB Kim Đồng',N'Bìa mềm','TD1.JPG',450,2019,25000),
(N'Từ Điển Hình Ảnh Cho Bé: Màu Sắc Và Hình Dạng',16,N'Lê Bích Thuỷ, Hiếu Minh',N'NXB Kim Đồng ',N'NXB Kim Đồng',N'Bìa mềm','TD2.JPG',400,2019,25000),
(N'Từ Điển Hình Ảnh Cho Bé: Phương Tiện',16,N'Lê Bích Thuỷ, Hiếu Minh',N'NXB Kim Đồng ',N'NXB Kim Đồng',N'Bìa mềm','TD3.JPG',500,2019,25000),
(N'Từ Điển Bằng Hình Đầu Tiên Của Bé - Animals - Động Vật',16,N'Song nghi',N'NXB Phụ Nữ Việt Nam ',N'Cty Văn Hóa Việt Thư',N'Bìa cứng','TD4.JPG',450,2021,16240),
(N'Từ Điển Hình Ảnh Cho Bé - Động Vật Hoang Dã',16,N'Chính Bình',N'NXB Thanh Hoá ',N'Cty TNHH TM&DV VH GD Phía Nam',N'Bìa cứng','TD5.JPG',230,2020,25000),




(N'Giáo Dục Công Dân 12',17,N'NXB Giáo Dục Việt Nam',N'NXB Giáo Dục Việt Nam',N'NXB Giáo Dục Việt Nam',N'Bìa mềm','GDCD.JPG',10,2022,7000),
(N'tin học 12',17,N'NXB Giáo Dục Việt Nam', N'NXB Giáo Dục Việt Nam',N'NXB Giáo Dục Việt Nam',N'Bìa mềm','TH.JPG',20,2022,5000),
(N'Tự Nhiên Và Xã Hội 3',17,N'Nhiều tác giả', N'NXB Giáo Dục Việt Nam',N'NXB Giáo Dục Việt Nam',N'Bìa mềm','TNVXH.JPG',9,2019,6000),
(N'tin học 11',17,N'Nhiều tác giả',N'NXB Giáo Dục Việt Nam',N'NXB Giáo Dục Việt Nam',N'Bìa mềm','TH11.JPG',7,2020,9000),
(N'mỹ thuật 6',17,N'Nhiều tác giả',N'NXB Giáo Dục Việt Nam',N'NXB Giáo Dục Việt Nam',N'Bìa mềm','MT.JPG',10,2021,7000),
(N'Atlat Địa Lí Việt Nam',17,N'Giáo Dục Việt Nam',N'NXB Giáo Dục Việt Nam',N'NXB Giáo Dục Việt Nam',N'Bìa mềm','ATLAT.JPG',20,2021,45000),
(N'Tài Liệu Dạy Và Học Vật Lý 9',18,N'Phạm Ngọc Tiến',N'NXB Giáo Dục Việt Nam',N'NXB Giáo Dục Việt Nam',N'Bìa mềm','VL.JPG',25,2022,50000),
(N'Rèn Kĩ Năng Tập Làm Văn 5 ',18,N'Nhiều tác giả',N'NXB Giáo Dục Việt Nam',N'NXB Giáo Dục Việt Nam',N'Bìa mềm','RKN.JPG',6,2022,20000),
(N'Những Bài Làm Văn Mẫu Lớp 5',18,N'Trần Thị Thìn',N'NXB Đại Học Quốc Gia Hà Nội',N'NXB Giáo Dục Việt Nam',N'Bìa mềm','VM.JPG',9,2022,80000),
(N'60 Đề Kiểm Tra Toán 6 ',18,N'Nguyễn Văn Chi',N'Dn Tư Nhân Thương Mại Toàn Phúc',N'NXB Giáo Dục Việt Nam',N'Bìa mềm','60DTKT.JPG',7,2018,70000),
(N'Bí Quyết Chinh Phục Điểm Cao Kì Thi THPT Quốc Gia Môn Toán',19,N'Nhiều tác giả',N'NXB Đại Học Quốc Gia Hà Nội',N'NXB Đại Học Quốc Gia Hà Nội',N'Bìa mềm','CPDC.JPG',30,2019,79000),
(N'Ôn Luyện Thi Tốt Nghiệp THPT Môn Toán',19,N'Phan Huy Khải, Phạm Văn Thạo',N'NXB Hồng Đức',N'NXB Hồng Đức',N'Bìa mềm','OLT.JPG',5,2019,75000),
(N'Giải Thích Bộ Đề Thi Vào 10 Chuyên',19,N'Dương Hương',N'Đại Học Quốc Gia Hà Nội',N'Megabook',N'Bìa mềm','GTD.JPG',40,2019,100000),
(N'Tăng Cường Tin Học Quốc Tế - Dành Cho Lớp 3 ',19,N'Nhiều Tác Giả',N'Tổng Hợp TPHCM',N'Megabook',N'Bìa mềm','TCTHQT.JPG',20,2017,70000),
(N'Tư Duy Ngôn Ngữ - Tập Đánh Vần Tiếng Việt - Theo Sơ Đồ Tư Duy',20,N'Thanh Hương',N'NXB Hà Nội',N'NXB Hà Nội',N'Bìa mềm','TDNN.JPG',20,2017,60000),
(N'Tủ Sách Mầm Non - Bé Tập Tô - Chữ Số',20,N'Chính Bình',N'Cty TNHH TM&DV VH GD Phía Nam',N'NXB Đồng Nai',N'Bìa mềm', 'BTTS.JPG',90,2017,90000),
(N'Bé Tập Tô Chữ Viết Hoa ',20,N'Lê Tuệ Minh, Lê Thu Ngọc',N'Minh Long',N'NXB Mỹ Thuật',N'Bìa mềm', 'BTTCVH.JPG',90,2022,64000),
(N'Vở Tập Viết Chữ Cái Viết Hoa ',20,N'Chính An',N'Cty TNHH TM&DV VH GD Phía Nam',N'NXB Thanh Hóa',N'Bìa mềm', 'CCVH.JPG',100,2022,46000),
(N'Tập Tô Và Tập Ghép Vần ',20,N'Thanh Hoai',N'Huy Hoang Bookstore',N'NXB Mỹ Thuật',N'Bìa mềm', 'TGV.JPG',90,2016,56000),
(N'Giải Thích Ngữ Pháp Tiếng Anh',21,N'Mai Lan Hương, Hà Thanh Uyên',N'ZenBooks',N'NXB Đà Nẵng',N'Bìa mềm', 'NPTA.JPG',98,2022,189000),
(N'Cẩm Nang Cấu Trúc Tiếng Anh ',21,N'Trang Anh',N'Huy Hoang Bookstore',N'NXB Đại học Sư phạm',N'Bìa mềm', 'CTTA.JPG',35,2022,79000),
(N'30 Chủ Đề Từ Vựng Tiếng Anh  ',21,N'Trang Anh',N'Huy Hoang Bookstore',N'NXB Đại Học Quốc Gia Hà Nội',N'Bìa mềm', '30CDTVTA.JPG',73,2022,83000),
(N'Tự Học 2000 Từ Vựng Tiếng Anh Theo Chủ Đề ',21,N'The Windy',N'MCBooks',N'NXB Đại Học Quốc Gia Hà Nội',N'Bìa mềm', 'TVTA.JPG',60,2018,90000),
(N'600 Động Từ Bất Quy Tắc Và Cách Dùng Các Thì Trong Tiếng Anh',21,N'Trang Anh',N'Huy Hoang Bookstore',N'NXB Đại học Sư phạm',N'Bìa mềm', '600DTBQT.JPG',70,2018,20000),
(N'Tiếng Nhật Cho Mọi Người ',22,N'Jim Glesson',N'FIRST NEWS',N'NXB Đại Học Quốc Gia Hà Nội',N'Bìa mềm', 'TN.JPG',28,2021,34000),
(N'Tự Học Viết Tiếng Nhật Căn Bản  ',22,N'Minna no Nihongo',N'NXB Trẻ',N'NXB Trẻ',N'Bìa mềm', 'THV.JPG',36,2022,39000),
(N'Luyện Thi Năng Lực Nhật Ngữ',22,N'SASAKI HITOKO, MATSUMOTO NORIK',N'NXB Trẻ',N'NXB Trẻ',N'Bìa mềm', 'LT.JPG',96,2022,91000),
(N'Giải Pháp Cho Kỳ Thi Năng Lực Tiếng Nhật',22,N'Endu yuko',N'MCBooks',N'NXB Hồng Đức',N'Bìa mềm', 'GP.JPG',94,2019,83100),
(N'Tự Học Tiếng Nhật Cho Người Mới Bắt Đầu',22,N'Bảo Minh',N'Tân Việt',N'NXB Thế giới',N'Bìa mềm', 'BD.JPG',9,2015,78000),
(N'Luyện Nói Tiếng Trung Quốc Cấp Tốc Cho Người Bắt Đầu',23,N'Mã Tiễn Phi',N'NXB Tổng Hợp TPHCM',N'NXB Tổng Hợp TPHCM',N'Bìa mềm', 'CT.JPG',93,2019,58000),
(N'301 Câu Đàm Thoại Tiếng Hoa',23,N'Trương Văn Giới',N'NXB Khoa Học Xã Hội',N'NXB Khoa Học Xã Hội',N'Bìa mềm', '301CDTTH',64,2019,82000),
(N'Giáo Trình Tiếng Hoa Trung Cấp Tập 1',23,N'Trương Văn Giới',N'NXB Khoa Học Xã Hội',N'NXB Khoa Học Xã Hội',N'Bìa mềm', 'GT.JPG',67,2019,26000),
(N'Luyện Nói Tiếng Trung Quốc Cấp Tốc ',23,N'Mã Tiễn Phi',N'NXB Tổng Hợp TPHCM',N'NXB Tổng Hợp TPHCM',N'Bìa mềm', 'LNTT.JPG',68,2022,92000),
(N'Tân Giáo Trình Hán Ngữ ',23,N'Trương Văn Giới',N'NXB Khoa Học Xã Hội',N'NXB Khoa Học Xã Hội',N'Bìa mềm', 'GTHN.JPG',15,2020,56000),
(N'Tiếng Hàn Tổng Hợp Dành Cho Người Việt Nam',24,N'Cho Hang Rok, Lee Mi Hye',N'MCBooks',N'NXB Đại Học Quốc Gia Hà Nội',N'Bìa mềm', 'NVN.JPG',65,2021,81000),
(N'Phân Biệt Các Ngữ Pháp Tương Đồng Trong Tiếng Hàn Theo Chức Năng Diễn Ngôn',24,N'Hyunhwa Kang',N'AZ Việt Nam',N'NXB Hà Nội',N'Bìa mềm', 'PB.JPG',82,2019,73000),
(N'Hướng Dẫn Phát Âm Tiếng Hàn Chuẩn Như Người Hàn',24,N'Kim Jimin, Lee Eunju',N'MCBooks',N'NXB Hồng Đức',N'Bìa mềm', 'PA.JPG',65,2014,90000),
(N'Tập Viết Tiếng Hàn Dành Cho Người Mới Bắt Đầu',24,N'The Changmi',N'MCBooks',N'NXB Hồng Đức',N'Bìa mềm', 'VTH.JPG',2,2019,93000),
(N'Làm Chủ Ngữ Pháp Tiếng Hàn',24,N'Choi Kwon Jin, Song Kyung Ok',N'MCBooks',N'NXB Hồng Đức',N'Bìa mềm', 'LCNP.JPPG',25,2009,98000)

set dateformat dmy
insert into nhanVien
values
('NV_01',N'Lê Tấn Lộc',120320020,'12-03-2002','TP.HCM','Nam','tanloc','tanloc',N'Quản lí'),
('NV_02',N'Trần Duyên Trúc',404200200,'04-04-2002','TP.HCM',N'Nữ','duyentruc','duyentruc',N'Quản lí'),
('NV_03',N'Trúc',404200200,'04-04-2002','TP.HCM',N'Nữ','duyenTruc','duyenTruc',N'Nhân viên'),
('NV_04',N'Anh Tú',121212121,'12-12-2002','TP.HCM',N'Nam','anhtu','anhhtu',N'Nhân viên'),
('NV_06',N'Nguyễn Thị Kim Ngọc',170120020,'17-01-2002','Tiền Giang',N'Nữ','chykim','chykim',N'Nhân viên'),
('NV_05',N'Bùi Nguyễn Hữu Minh',121220020,'12-12-2002','Tiền Giang',N'Nam','huuminh','huuminh',N'Nhân viên')

go
---truy vấn------

select maSach, tenSach,tenLoai,tacGia,nhaXuatBan,nhaCungCap,loaiBia,hinhAnh,soLuong,namXB,Gia from Sach, loaiSach where Sach.maLoai=loaiSach.maLoai

select*from nhanVien
select tenNV from NhanVien Where taiKhoan = 'tanloc' and matKhau = 'tanloc' and chucVu= N'Quản lí'


select * from Sach where tenSach like N'Đao Ngữ'
go
create procedure tongtien_hoadon @madh int
as
	update ct_DonHang
	set tongTien = (select sum(dh.thanhTien) from donHang dh, ct_DonHang ct where dh.maDH=ct.maDH)
	where ct_DonHang.maDH = @madh
go
drop proc tongtien_hoadon
exec tongtien_hoadon @madh=3 --? txtmadh--
go
select tenNV from nhanVien Where taiKhoan='tanloc'
select *from ct_DonHang
select *from donHang
delete ct_DonHang

insert into ct_DonHang
values(1,5,'','')

delete Sach
select LEFT(tenSach,1) from Sach


delete ct_DonHang