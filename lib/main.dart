import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[

            // SLIVER APP BAR (LOGO INAKLUG, TULISAN INAKLUG, ICON BURGER, 2 WARNA AGAK TRANSPARANT)
            SliverAppBar(
              pinned: true,
              expandedHeight: 80,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.blue.withOpacity(0.9),
                        Colors.purple.withOpacity(0.9),
                      ],
                  ),
                ),
              ),
              title: Row(
                children: <Widget>[
                  Image.asset(
                    'image/logoInaklug.png',
                    fit: BoxFit.contain,
                    height: 50,
                  ),
                  const Text('inaklug'),
                ],
              ),
              actions: <Widget>[
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Builder(
                        builder: (context){
                          return IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: (){
                              Scaffold.of(context).openEndDrawer();
                            },
                              );
                        },
                    ),
                ),
              ],
              backgroundColor: Colors.transparent,
            ),

            // SLIVER LIST FOTO TENTANG KAMI
            SliverList(
              delegate: SliverChildListDelegate([
                Image.asset("image/tentangKami.png"),
              ]),
            ),

            // SLIVER LIST TULISAN KETERANGAN KAMI DAN DESKRIPSI
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  padding: EdgeInsets.only(top: 35.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          'TENTANG KAMI',
                          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'INAKLUG adalah konsultan pendidikan internasional di Indonesia yang sudah memberangkatkan lebih dari 3000 mahasiswa Indonesia yang ingin berkarir di negara maju di dunia',
                          style: TextStyle(fontSize: 16.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),

            // SLIVER LIST TULISAN LAYANAN KAMI
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      "LAYANAN KAMI",
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ]),
            ),

            // SLIVER LIST FOTO, SHADE UNGU KIRI DAN TULISAN DI DALEM FOTO (STUDI S1 BACHELOR)
            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("image/studiS1bachelor.png"),
                      ),
                    ),
                    Positioned(
                      width: 350,
                      top: 15,
                      bottom: 15,
                      left: 13.5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.purple, Colors.transparent],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                     ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 17,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "studi S1 bachelor",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),

            // SLIVER LIST FOTO, SHADE UNGU KIRI DAN TULISAN DI DALEM FOTO (STUDI S2 MASTER)
            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("image/studiS2master.png"),
                      ),
                    ),
                    Positioned(
                      width: 350,
                      top: 15,
                      bottom: 15,
                      left: 13.5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.purple, Colors.transparent],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 17,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "studi S2 master",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),

            // SLIVER LIST FOTO, SHADE UNGU KIRI DAN TULISAN DI DALEM FOTO (PERAWAT) (minus: foto ambil dari google, kalo di run di web sizednya beda)
            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("image/perawat.jpg"),
                      ),
                    ),
                    Positioned(
                      width: 350,
                      top: 15,
                      bottom: 15,
                      left: 13.5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.purple, Colors.transparent],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 17,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "perawat / caregiver",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),

            // SLIVER LIST FOTO, SHADE UNGU KIRI DAN TULISAN DI DALEM FOTO (KURSUS BAHASA ASING)
            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("image/kursusBahasaAsing.png"),
                      ),
                    ),
                    Positioned(
                      width: 350,
                      top: 15,
                      bottom: 15,
                      left: 13.5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.purple, Colors.transparent],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 17,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "kursus bahasa asing",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),

            // SLIVER LIST BOX IKLAN DAN TOMBOL 'MULAI KONSULTASI'
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    margin: EdgeInsets.all(70.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.blue, Colors.purple],
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "GRATIS KONSELING STUDI DI LUAR NEGRI",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Konsultasikan seputar kuliah / bekerja di luar negri",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ElevatedButton(
                            onPressed: () { },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45.0),
                                  side: BorderSide(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                            child: Text(
                              "Mulai Konsultasi",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // SLIVER LIST TULISAN ARTIKEL TERBARU
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      "ARTIKEL TERBARU",
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ]),
            ),

            // SLIVER LIST FOTO ARTIKEL TERBARU (goethe institute)
            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 10),
                      ),
                      child: Container(
                        child: Image.asset("image/artikelTerbaru1.jpg"),
                      ),
                    ),
                  ],
                ),
              ]),
            ),

            // SLIVER LIST TULISAN KETERANGAN ARTIKEL TERBARU (goethe institute)
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      "belajar bahasa jerman melalui goethe institute",
                      style: TextStyle(fontSize: 18.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ]),
            ),

            // SLIVER LIST FOTO ARTIKEL TERBARU (target pariwisata) (minus: foto ambil dari google, kalo di run di web sizednya beda)
            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 10),
                      ),
                      child: Container(
                        child: Image.asset("image/artikelTerbaru2.jpg"),
                      ),
                    ),
                  ],
                ),
              ]),
            ),

            // SLIVER LIST TULISAN KETERANGAN ARTIKEL TERBARU (target pariwisata)
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      "jerman targetkan pariwisata pada tahun 2022 meningkat pada kuartal 1",
                      style: TextStyle(fontSize: 18.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ]),
            ),

            // SLIVER LIST TOMBOL 'ARTIKEL LAINNYA' ( minus : bordernya agak kelebaran)
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                padding: const EdgeInsets.all(65.0),
                 child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45.0),
                      side: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                child: Text(
                  "ARTIKEL LAINNYA",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              ),
              ]),
            ),

            // SLIVER LIST TULISAN HUBUNGI KAMI DAN ISINYA
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          'HUBUNGI KAMI',
                          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          'KANTOR PUSAT',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          'MULA BY GALERIA JAKARTA, CILANDAK TOWN SQUARE, LT. BASEMENT.',
                          style: TextStyle(fontSize: 16.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          'PHONE : 0812-8134-5678',
                          style: TextStyle(fontSize: 16.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),

            // SLIVER LIST FOOTER UNTUK COPYRIGHT
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.blue, Colors.purple],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Copyright 2023 - inaklug hak cipta dilindungi undang undang",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ]),
            ),

          ],
        ),

        // ISI BURGER ICON
        endDrawer: Center(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height* 0.47),
            child: Drawer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 10,right: 10),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "image/logoInaklug.png",
                          height: 70,
                          fit: BoxFit.contain,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            size: 35,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text('HOME',style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left:140),
                  ),
                  ListTile(
                    title: Text('TENTANG KAMI',style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left:140),
                  ),
                  ListTile(
                    title: Text('LAYANAN KAMI',style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left:140),
                  ),
                  ListTile(
                    title: Text('ARTIKEL',style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left:140),
                  ),
                  ListTile(
                    title: Text('HUBUNGI KAMI',style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left:140),
                  ),
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
