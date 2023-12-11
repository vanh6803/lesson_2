import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            child: const Icon(Icons.close),
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Top 50 ảnh phong cảnh đẹp nhất',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                              'https://hoanghamobile.com/tin-tuc/wp-content/webp-express/webp-images/uploads/2023/07/anh-phong-canh-dep.jpg.webp'),
                        ),
                        Text("""
                    Ảnh phong cảnh biển cả rộng lớn mang đến cho chúng ta một cảm giác bình yên và tự do. Nhìn vào những đợt sóng lăn tăn và bãi cát trải dài, chúng ta có thể cảm nhận được sự mênh mông và vô tận của biển cả.
                    
                    Biển cả với màu xanh bao la và vô tận, khung cảnh rộng lớn của nó tạo ra một cảm giác rộng lớn và tự do. Cảm nhận những luồng gió mát mẻ và tiếng sóng vỗ bờ, chúng ta được truyền tải những cảm xúc tĩnh lặng và sự thanh thản. Cảnh biển cả rộng lớn là một nơi để chúng ta trút bỏ những áp lực cuộc sống và tìm lại sự cân bằng và hòa hợp trong tâm hồn.
                    
                    Biển cả mang trong mình một thông điệp về sự bất tận và sự biến đổi. Biển luôn thay đổi theo thời gian, từ sự êm dịu và trong trẻo đến những cơn bão mãnh liệt. Nó nhắc nhở chúng ta về tính diễn biến và sự không thể kiểm soát của cuộc sống, đồng thời khuyến khích chúng ta tận hưởng mọi khoảnh khắc và sống trọn vẹn trong hiện tại.
                    
                    Với ảnh phong cảnh biển cả rộng lớn, chúng ta có thể tận hưởng vẻ đẹp tuyệt vời của biển, cảm nhận sự tự do và thanh thản trong tâm hồn, và khám phá những khía cạnh mới của cuộc sống. Đây là một lời mời để ta chiêm ngưỡng và đắm mình trong vẻ đẹp hùng vĩ của biển cả.
                        """)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('lesson 2'),
          actions: [
            Switch(
                value: isDarkMode,
                onChanged: (bool value) {
                  setState(() {
                    isDarkMode = value;
                  });
                })
          ],
        ),
        body: Builder(builder: (BuildContext context) {
          return Center(
            child: ElevatedButton(
                onPressed: () => _showDialog(context),
                child: const Text('Show dialog content')),
          );
        }),
      ),
    );
  }
}
