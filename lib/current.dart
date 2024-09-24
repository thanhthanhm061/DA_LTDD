import 'package:flutter/material.dart';
 // Đường dẫn file

class CurrentScreen extends StatelessWidget {
  const CurrentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Xử lý khi nhấn vào dấu "X"
                print('Close tapped!'); 
                // Không làm gì thêm ở đây
              },
              child: const Text(
                'X', // Dấu "X" lớn
                style: TextStyle(
                  fontSize: 25, // Kích thước chữ
                  color: Colors.black, // Màu sắc chữ
                ),
              ),
            ),
            const SizedBox(width: 100), // Khoảng cách giữa dấu "X" và tiêu đề
            const Text('Add Photo'), // Tiêu đề
          ],
        ),
        actions: [
          // Thêm chữ "DONE"
          Padding(
            padding: const EdgeInsets.only(right: 36), // Padding bên phải
            child: TextButton(
              onPressed: () {
                // Chuyển đến ProfileMyScreen
                print('DONE tapped!');
              },
              child: const Text(
                'DONE',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF00CEA6), // Màu xanh
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: GridListDemo(type: GridListDemoType.footer),
      ),
    );
  }
}

class GridListDemo extends StatelessWidget {
  const GridListDemo({super.key, required this.type});

  final GridListDemoType type;

  static const List<_Photo> _photos = [
    _Photo(assetName: 'images/background.jpg', title: '', subtitle: ''),

    _Photo(assetName: 'images/Mask1.jpg', title: '', subtitle: ''),
    _Photo(assetName: 'images/Mask2.jpg', title: '', subtitle: ''),
    _Photo(assetName: 'images/Mask3.jpg', title: '', subtitle: ''),
    _Photo(assetName: 'images/Mask4.jpg', title: '', subtitle: ''),
    _Photo(assetName: 'images/Mask5.jpg', title: '', subtitle: ''),
    _Photo(assetName: 'images/Mask6.jpg', title: '', subtitle: ''),
    _Photo(assetName: 'images/Mask7.jpg', title: '', subtitle: ''),
    _Photo(assetName: 'images/Mask8.jpg', title: '', subtitle: ''),
  ];

  
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      padding: const EdgeInsets.all(8),
      childAspectRatio: 1,
      shrinkWrap: true, // Cho phép cuộn
      physics: const NeverScrollableScrollPhysics(), // Vô hiệu hóa cuộn của GridView
      children: _photos.map<Widget>((photo) {
      if (photo.assetName == 'images/background.jpg') {
        return Stack(
          children: [
            // Hiển thị ảnh nền
            Image.asset(
              photo.assetName,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            
            // Hiển thị ảnh Camera.jpg với kích thước nhỏ hơn và viền tùy chỉnh
            Center(
              child: Container(
                width: 40, // Kích thước ban đầu
                height: 40, // Kích thước ban đầu
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 252, 252, 252), // Màu viền
                    width: 1.5, // Độ dày của viền
                  ),
                  borderRadius: BorderRadius.circular(8), // Góc bo viền
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8), // Đảm bảo ảnh camera có góc bo giống viền
                  child: Image.asset(
                    'images/Camera.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),


              // Thêm dòng chữ "Take Photo" màu xanh ở dưới cùng
              Positioned(
                bottom: 70, // Vị trí chữ phía dưới
                left: 0,
                right: 0,
                child: Text(
                  'Take Photo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
              color: const Color(0xFF00CEA6), // Mã màu #00CEA6

                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
        } else {
          return _GridDemoPhotoItem(
            photo: photo,
            tileStyle: type,
          );
        }
      }).toList(),
    );
  }
}
class _Photo {
  const _Photo({
    required this.assetName,
    required this.title,
    required this.subtitle,
  });

  final String assetName;
  final String title;
  final String subtitle;
}

class _GridTitleText extends StatelessWidget {
  const _GridTitleText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: Text(text),
    );
  }
}

class _GridDemoPhotoItem extends StatefulWidget { // Thay đổi thành StatefulWidget
  const _GridDemoPhotoItem({required this.photo, required this.tileStyle});

  final _Photo photo;
  final GridListDemoType tileStyle;

  @override
  _GridDemoPhotoItemState createState() => _GridDemoPhotoItemState();
}

class _GridDemoPhotoItemState extends State<_GridDemoPhotoItem> {
  bool _isSelected = false; // Biến trạng thái để theo dõi xem hình tròn đã được chọn hay chưa

  @override
  Widget build(BuildContext context) {
    final Widget image = Semantics(
      label: '${widget.photo.title} ${widget.photo.subtitle}',
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        clipBehavior: Clip.antiAlias,
        child: Image.asset(
          widget.photo.assetName,
          fit: BoxFit.cover,
        ),
      ),
    );

    // Hình tròn nhỏ màu xanh hoặc màu trắng
    final Widget circleIndicator = Positioned(
      top: 8,
      right: 8,
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isSelected = !_isSelected; // Đảo ngược trạng thái chọn
          });
        },
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: _isSelected ? Colors.green : const Color.fromARGB(255, 250, 251, 252), // Màu xanh khi đã chọn
            shape: BoxShape.circle,
          ),
          child: _isSelected
              ? const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 16,
                )
              : Container(), // Thay đổi từ null sang Container để hiển thị hình tròn
        ),
      ),
    );

    return Stack(
      children: [
        switch (widget.tileStyle) {
          GridListDemoType.imageOnly => image,
          GridListDemoType.header => GridTile(
              header: Material(
                color: Colors.transparent,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
                ),
                clipBehavior: Clip.antiAlias,
                child: GridTileBar(
                  title: _GridTitleText(widget.photo.title),
                  backgroundColor: Colors.black45,
                ),
              ),
              child: image,
            ),
          GridListDemoType.footer => GridTile(
              footer: Material(
                color: Colors.transparent,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(4)),
                ),
                clipBehavior: Clip.antiAlias,
                child: GridTileBar(
                  backgroundColor: Colors.black45,
                  title: _GridTitleText(widget.photo.title),
                  subtitle: _GridTitleText(widget.photo.subtitle),
                ),
              ),
              child: image,
            ),
        },
        circleIndicator, // Thêm hình tròn nhỏ
      ],
    );
  }
}

enum GridListDemoType {
  imageOnly,
  header,
  footer,
}
