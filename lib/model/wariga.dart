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

  List<Map<String, dynamic>> _pancawara_data = [
    {'nama': 'Umanis-Iswara', 'urip': 5},
    {'nama': 'Paing-Yama', 'urip': 9},
    {'nama': 'Pon-Mahadewa', 'urip': 7},
    {'nama': 'Wage-Wisnu', 'urip': 4},
    {'nama': 'Kliwon-Siwa', 'urip': 9},
  ];

  List<Map<String, dynamic>> _saptawara_data = [
    {'nama': 'Sukra', 'urip': 6},
    {'nama': 'Redite', 'urip': 5},
    {'nama': 'Wrspati', 'urip': 8},
    {'nama': 'Saniscara', 'urip': 9},
    {'nama': 'Anggara', 'urip': 3},
    {'nama': 'Budha', 'urip': 7},
  ];

  List<Map<String, dynamic>> _sasih_data = [
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

  List<Map<String, dynamic>> _tanggal_data = [
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
    return _pancawara_data;
  }

  List<Map<String, dynamic>> get getSaptawaraData {
    return _saptawara_data;
  }

  List<Map<String, dynamic>> get getSasihData {
    return _sasih_data;
  }

  List<Map<String, dynamic>> get getTanggalData {
    return _tanggal_data;
  }

  void cariDewasa() {
    final item = _pancawara_data.firstWhere((e) => e['nama'] == pancawara);
    print(item['nama']);
  }
}
