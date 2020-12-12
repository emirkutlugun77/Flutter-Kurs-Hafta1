import 'package:flutter/material.dart';

void main() {
  //Uygulamayı Çalıştırmak için gereken ana fonksiyon, MaterialApp içinde olmasının sebebi Flutter'ın Material Design Altyapısını Kullanaması

  runApp(MaterialApp(home: SimpleApp()));
  //home ===> Uygulama açıldığı zaman karşımıza çıkacak ilk ekran
}

//bir durumu değiştirmediğimiz zaman StatelessWidget Kullanıyoruz
//bir sayıyı arttırmak veya bir resmi değiştirmek gibi işlemler durum yani state olarak değerlendirilir
class SimpleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold Widget'ı için uygulamanın kalbi demiştik ne olursa olsun başlangıçta  uygulamanın tepesine bu widget'ı yazıyoruz
      appBar: AppBar(
        leading: Icon(Icons.star),
        title: Text('Flutter Kurs Hafta1'),
      ),
      //AppBar Uygulamanın üstünde gözüken bar, Scaffold Widget'ının özelliklerinden biri, yapısına dökümanlardan ulaşabilirsiniz
      backgroundColor: Colors.amber,
      //buna derste değinmeyi unuttum sanırım ama yine scaffold Widget'ından uygulama arkaplanı rengini değiştirebilirsiniz

      //Body uygulamanın BottomNavigationBar ve AppBar arasında kalan kısmı, ve yine Scaffold Widget'ının bir özelliği
      body: Container(
        //En temel Widgetlarımızdan biri, depolama alanı olarak da açıklanabilir, Her Widget'ı Container içine yerleştirebiliriz (Scaffold dahil)

        child: //child ögesi Container içinde Ne depolayacağımı Gösterir, bir widget olmak zorundadır.
            Column(
          //Column,bağlı olduğu Widget'ın kapladığı alanı satırlara böler, içine birden fazla child koyulabilir, eğer kullanıcı bir değer girmezse,
          //Column Widget'ının children kısmına konulan widgetlar en üstten aşağıya doğru sıralanır
          children: [
            //Sütun olduğu gibi satırlardan da yararlanırız, Column Widget'ının yatay versiyonudur,
            Row(
              //Aynı Row içinde bulunan Widgetlar ne olursa olsun yan yana durur
              children: [
                Image.asset(
                  'images/ieee.png',
                  width: 185,
                ),
                Image.asset(
                  'images/ieee.png',
                  width: 185,
                ),
              ],
            ),
            Row(
              // Bu Row Column Widget'ının içinde ve Diğer Row Widget'ının altında, yani Column Widget'ının özelliğine göre, daha altta konumlanır
              //ama yine de Row Widget'ının özelliğine göre kendiyle aynı Row'da olan diğer Widget'larla aynı satırda olmak zorundadır
              children: [
                Image.asset(
                  'images/ieee.png',

                  width: 185,
                  //resimlerin boyutunu bu şekilde ayarlayabiliriz
                  //eğer hem width hem height değerlerini denerseniz hata ile karşılaşabilirsiniz, bu yüzden tavsiyem sadece width değerini girmeniz
                ),
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/IEEE_logo.svg/1200px-IEEE_logo.svg.png',
                  width: 185,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
