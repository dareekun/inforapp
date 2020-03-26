import 'package:flutter/material.dart';
import 'pdf.dart';

enum DialogAction { kembali }

class Dialogs {
  static Future<DialogAction> yesAbortDialog(
    BuildContext context,
  ) async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: Text('Daftar Isi'),
          content: Container(
              width: double.maxFinite,
              height: 250,
              child: ListView(
                children: <Widget>[
                  Center(child: new FlatButton(onPressed: () {
                          page = 1;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Keputusan Disnaker',style:TextStyle(fontSize: 12.0, color: Colors.blue),))),
                  Center(child: new FlatButton(onPressed: () {
                          page = 5;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Daftar Isi',style:TextStyle(fontSize: 12.0, color: Colors.blue),))),
                  Center(child: new FlatButton(onPressed: () {
                          page = 8;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Pancasila',style:TextStyle(fontSize: 12.0, color: Colors.blue),))),
                  Center(child: new FlatButton(onPressed: () {
                          page = 9;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Amanat Pendiri Perusahaan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))),
                  Center(child: new FlatButton(onPressed: () {
                          page = 11;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Sambutan Presiden Komisaris',style:TextStyle(fontSize: 12.0, color: Colors.blue),))),      
                  Center(child: new FlatButton(onPressed: () {
                          page = 13;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Prinsip Utama Perusahaan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))),                         
                  Center(child: new FlatButton(onPressed: () {
                          page = 14;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Mukadimah',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 15;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bab I UMUM',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 15;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Pengertian dan Istilah',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 19;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Pihak Pihak Yang Mengadakan Perjanjuan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 19;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Luasnya Perjanjuan Kerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 20;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Kewajiban dan Tanggung Jawab yang Mengadakan Perjanjian',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 20;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bab II Jaminan, Bantuan, dan Fasilitas',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 20;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Jaminan, Bantuan dan Fasilitas bagi Serikat Pekerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 21;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Jaminan Bagi Pengusaha',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 22;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Pungutan Iuran',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 22;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bab III Hubungan Kerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 22;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Penerimanaan Karyawan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 22;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Persyaratan Menjadi Karyawan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 23;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Masa Percobaan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 23;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Mutasi',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 24;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Penempatan Tenaga Kerja Asing',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 25;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Pengalihan Pekerjaan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 25;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bab IV Hari Kerja dan Jam Kerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 25;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Hari Kerja dan Jam Kerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 26;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Kerja Lembur',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 27;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Kerja Shift untuk Karyawati',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 27;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Perubahaan Hari dan Jam Kerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 27;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Perjalanan Dinas',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 28;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bab V Pembebasan dari Kewajiban untuk Bekerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 28;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Izin Tidak bekerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 30;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Cuti',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 32;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Ganti Cuti',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 33;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Sakit Bekerpanjangan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 34;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Penahan Karyawan Oleh Pihak Yang Berwajib',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 34;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bab VI Pengupahan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 34;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Pembayaran Upah',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 34;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Kenaikan Upah',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 35;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Perhitungan Upah lembur',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 36;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Tunjangan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 37;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Tunjangan Kehadiran',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 38;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Tunjangan Transportasi',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 39;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Tunjangan Shift',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 39;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Tunjangan Jabatan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 39;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Tunjangan Bahasa',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 39;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Tunjangan Keahlian teknik & Kegiatan Mutu (QCC)',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 40;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Tunjangan Lokasi Kerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 40;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Tunjangan Hari Raya',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 41;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Tunjangan Spesialis',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 41;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Tunjangan Keluarga',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 41;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bonus',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 42;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bab VII Keselamatan dan Kesehatan Kerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 42;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Keselamatan Kerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 42;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Pemeriksaan Kesehatan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 43;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bab VIII Jaminan Sosial dan Kesejahteraan Tenaga Kerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 43;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('BPJS Ketenagakerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 44;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Sistem Jaminan Pemeliharaan Kesehatan (JPK)',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 45;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Rawat Jalan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 46;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Rawat Inap',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 47;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Persalinan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 48;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Pengobatan dan Perawatan Gigi',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 48;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Kacamata',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 49;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Biaya Pengobatan yang Tidak Mendapatkan Penggantian',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 49;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Program Pelayanan Khusus',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 50;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Dana Pensiun',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 50;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Hak Pensiun',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 51;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Pembinaan Rohani',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 51;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Rekreasi, Olahraga dan Kesenian',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 52;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Ulang Tahun Perusahaan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 52;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Sumbangan Pernikahan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 53;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Sumbangan Melahirkan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 53;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bantuan Perumahan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 53;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bantuan Pendidikan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 54;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bantuan Duka',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 54;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Santuanan Kematian',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 55;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Makan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 56;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Pakaian Kerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 57;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Koperasi',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 57;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Penghargaan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 58;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bab IX Program Peningkatan Keterampilan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 58;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Penilaian',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 59;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Kenaikan Golongan / Pangkat dan Jabatan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 59;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Pendidikan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 60;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Penyesuaian Atas Pendidikan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 61;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bab X Tata Tertib Kerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 61;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Disiplin Kerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 63;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Larangan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 64;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Sanksi',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 69;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Pemberhentian Sementara dan PHK',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 70;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bab XI Penyelesaian Pengaduan, keluh Kesah dan Perselisihan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 70;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Penyelesaian Pengaduan dan keluh Kesah',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 71;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Prosedur Penyampaian Keluhan dan Penyelesaian Perselisihan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 72;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bab XII Pemutusan Hubungan Kerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 72;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Pemutusan hubungan Kerja (PHK)',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 73;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Pesangon dan Uang Penghargaan Masa Kerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 75;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Hak Pesangon Karyawan atas Pemutusan Hubungan Kerja',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 77;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Perusahan dalam Kondisi Luar Biasa',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 77;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Pengertian Upah Dalam Hal Pemberian Pesangon',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 78;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bab XIII Masa Berlaku, Perubahan, Perpanjangan dan Landasan hukum',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 78;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Masa Berlaku, Perubahan dan Perpanjangan',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 79;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Landasan Hukum',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 80;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Bab XIV Ketentuan Penutup',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 80;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Penutup',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 83;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Lampiran 1 Tim Perunding',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                  Center(child: new FlatButton(onPressed: () {
                          page = 84;
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {return Pkb();}));},
                        child: Text('Lampiran 2 Tunjangan Kehadiran',style:TextStyle(fontSize: 12.0, color: Colors.blue),))), 
                                                
                ],
              )),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop(DialogAction.kembali),
              child: const Text('Kembali'),
            ),
          ],
        );
      },
    );
    return (action != null) ? action : DialogAction.kembali;
  }
}
