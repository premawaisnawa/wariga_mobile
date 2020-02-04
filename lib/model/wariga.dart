import 'dart:developer';

class Wariga {
  String pancawara;
  String saptawara;
  String sasih;
  String tanggal;
  Wariga({
    this.pancawara,
    this.saptawara,
    this.sasih,
    this.tanggal,
  });

  int uripPancawara;
  int uripSaptawara;
  int uripSasih;
  int uripTanggal;
  String q2;
  String arti;

  List<Map<String, dynamic>> _pancawaraData = [
    {'nama': 'Umanis-Iswara', 'urip': 5},
    {'nama': 'Paing-Yama', 'urip': 9},
    {'nama': 'Pon-Mahadewa', 'urip': 7},
    {'nama': 'Wage-Wisnu', 'urip': 4},
    {'nama': 'Kliwon-Siwa', 'urip': 9},
  ];

  List<Map<String, dynamic>> _saptawaraData = [
    {'nama': 'Sukra', 'urip': 6},
    {'nama': 'Redite', 'urip': 5},
    {'nama': 'Wrspati', 'urip': 8},
    {'nama': 'Saniscara', 'urip': 9},
    {'nama': 'Anggara', 'urip': 3},
    {'nama': 'Budha', 'urip': 7},
  ];

  List<Map<String, dynamic>> _sasihData = [
    {'nama': 'Kasa', 'urip': 5},
    {'nama': 'Karo', 'urip': 5},
    {'nama': 'Katiga', 'urip': 5},
    {'nama': 'Kapat', 'urip': 9},
    {'nama': 'Kalima', 'urip': 9},
    {'nama': 'Kanam', 'urip': 9},
    {'nama': 'Kapitu', 'urip': 7},
    {'nama': 'Kaulu', 'urip': 7},
    {'nama': 'Kasanga', 'urip': 7},
    {'nama': 'Kadasa', 'urip': 4},
    {'nama': 'Desta', 'urip': 4},
    {'nama': 'Sada', 'urip': 4},
  ];

  List<Map<String, dynamic>> _tanggalData = [
    {'nama': '1', 'urip': 5},
    {'nama': '2', 'urip': 1},
    {'nama': '3', 'urip': 4},
    {'nama': '4', 'urip': 6},
    {'nama': '5', 'urip': 5},
    {'nama': '6', 'urip': 8},
    {'nama': '7', 'urip': 9},
    {'nama': '8', 'urip': 3},
    {'nama': '9', 'urip': 7},
    {'nama': '10', 'urip': 1},
    {'nama': '11', 'urip': 4},
    {'nama': '12', 'urip': 6},
    {'nama': '13', 'urip': 5},
    {'nama': '14', 'urip': 8},
    {'nama': '15', 'urip': 9},
  ];

  List<Map<String, dynamic>> get getPancawaraData {
    return _pancawaraData;
  }

  List<Map<String, dynamic>> get getSaptawaraData {
    return _saptawaraData;
  }

  List<Map<String, dynamic>> get getSasihData {
    return _sasihData;
  }

  List<Map<String, dynamic>> get getTanggalData {
    return _tanggalData;
  }

  void cariDewasa() {
    uripPancawara =
        _pancawaraData.firstWhere((e) => e['nama'] == pancawara)['urip'];
    uripSaptawara =
        _saptawaraData.firstWhere((e) => e['nama'] == saptawara)['urip'];
    uripSasih = _sasihData.firstWhere((e) => e['nama'] == sasih)['urip'];
    uripTanggal = _tanggalData.firstWhere((e) => e['nama'] == tanggal)['urip'];

    log('$pancawara: $uripPancawara');
    log('$saptawara: $uripSaptawara');
    log('$sasih: $uripSasih');
    log('$tanggal: $uripTanggal');

    int x = (uripSaptawara + uripPancawara + uripTanggal) % 6;
    int y;
    int z;
    switch (x) {
      case 1:
        y = 6;
        break;
      case 2:
        y = 5;
        break;
      case 3:
        y = 8;
        break;
      case 4:
        y = 9;
        break;
      case 5:
        y = 3;
        break;
      case 6:
        y = 7;
        break;
      case 0:
        y = 7;
        break;
    }
    z = (y + uripSasih) % 5;
    switch (z) {
      case 1:
        q2 = "Umanis-Iswara";
        break;
      case 2:
        q2 = "Paing-Yama";
        break;
      case 3:
        q2 = "Pon-Mahadewa";
        break;
      case 4:
        q2 = "Wage-Wisnu";
        break;
      case 5:
        q2 = "Kliwon-Siwa";
        break;
      case 0:
        q2 = "Kliwon-Siwa";
        break;
    }
    if (pancawara == "Umanis-Iswara" && q2 == "Umanis-Iswara") {
      arti = "Rare Dewa Pewarangan";
    } else if (pancawara == "Umanis-Iswara" && q2 == "Paing-Yama") {
      arti = "Sedana Yoga Nagakral Salwir Gawe Ayu";
    } else if (pancawara == "Umanis-Iswara" && q2 == "Pon-Mahadewa") {
      arti = "Ala";
    } else if (pancawara == "Umanis-Iswara" && q2 == "Wage-Wisnu") {
      arti = "Madhya Pawarangan";
    } else if (pancawara == "Umanis-Iswara" && q2 == "Kliwon-Siwa") {
      arti = "Pangubahan (Ngaci) Jineng,Umah,Sanggar ";
    } else if (pancawara == "Paing-Yama" && q2 == "Umanis-Iswara") {
      arti = "Ala";
    } else if (pancawara == "Paing-Yama" && q2 == "Paing-Yama") {
      arti = "Salwir Muja-Pitra";
    } else if (pancawara == "Paing-Yama" && q2 == "Pon-Mahadewa") {
      arti = "Ala";
    } else if (pancawara == "Paing-Yama" && q2 == "Wage Wisnu") {
      arti = "Tasik (Pasih) Madana Dana Ayu";
    } else if (pancawara == "Paing-Yama" && q2 == "Kliwon-Siwa") {
      arti = "Prasanti / Ngaci Pitra, Abhiseka Ratu ";
    } else if (pancawara == "Pon-Mahadewa" && q2 == "Umanis-Iswara") {
      arti = "Ngawub Umah Pawarangan";
    } else if (pancawara == "Pon-Mahadewa" && q2 == "Paing-Yama") {
      arti = "Pacaruan Muja Pitra";
    } else if (pancawara == "Pon-Mahadewa" && q2 == "Pon-Mahadewa") {
      arti = "Salwir Gawe Ayu";
    } else if (pancawara == "Pon-Mahadewa" && q2 == "Wage Wisnu") {
      arti =
          "Abhiseka Ratu Amuja Pitra Pawarangan Ngawub (Ngeranjing) Umah Maligya";
    } else if (pancawara == "Pon-Mahadewa" && q2 == "Kliwon-Siwa") {
      arti = "Ala";
    } else if (pancawara == "Wage-Wisnu" && q2 == "Umanis-Iswara") {
      arti = "Mertha-Masa Ulasadana,Salwir Karya Ayu";
    } else if (pancawara == "Wage-Wisnu" && q2 == "Paing-Yama") {
      arti = "Pitra Pacaruan";
    } else if (pancawara == "Wage-Wisnu" && q2 == "Pon-Mahadewa") {
      arti = "Awage Mpelan Salwir Gawe Ayu";
    } else if (pancawara == "Wage-Wisnu" && q2 == "Wage Wisnu") {
      arti = "Rahayu Dahat Salwir Gawe ";
    } else if (pancawara == "Wage-Wisnu" && q2 == "Kliwon-Siwa") {
      arti = "Dewasa Madhya";
    } else if (pancawara == "Kliwon-Siwa" && q2 == "Umanis-Iswara") {
      arti = "Sadana Yoga Bhg.Kasyapa,Amuja Salwir Dewa";
    } else if (pancawara == "Kliwon-Siwa" && q2 == "Paing-Yama") {
      arti = "Kala Keciran Ala";
    } else if (pancawara == "Kliwon-Siwa" && q2 == "Pon-Mahadewa") {
      arti = "Kala Semut Sadulur Ala";
    } else if (pancawara == "Kliwon-Siwa" && q2 == "Wage Wisnu") {
      arti = "Guntur Umah";
    } else if (pancawara == "Kliwon-Siwa" && q2 == "Kliwon-Siwa") {
      arti = "Awage Samdhi Muja Ring Ukir Awage Paryangan ayu";
    }
    log('Arti : $arti');
  }
}
