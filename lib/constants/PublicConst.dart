import 'package:flutter/cupertino.dart';

class PublicConst {

  static List<String> workUnitList = [
    "Instansi",
    "Satuan Kerja",
    "Unit",
    "Deputi",
    "Biro",
    "Bagian",
    "Subbagian",
    "Jabatan",
    "Golongan",
    "Grade",
    "Eselon",
    "Status Pegawai",
    "PTKP"
  ];

  static List<String> schedulePatternList = ["Harian", "Mingguan"];

  static List<String> detailSKPList = [
    "Sasaran Kerja",
    "Tugas Tambahan dan Kreativitas",
    "Perilaku Kerja",
    "Prestasi Kerja",
    "Laporan Kerja",
    "Penilaian Kerja",
    "Mentoring",
  ];

  static List<String> patternMode = ["Kolektif", "Individu"];

  static List<String> absenceBalanceList = [
    "Tambah Jatah Cuti",
    "Potong Jatah Cuti",
    "Potong Sisa Jatah Cuti",
    "Ubah Tanggal Batas Jatah Cuti",
    "Penangguhan Jatah Cuti",
    "Hangus Jatah Cuti",
  ];

  static List<String> detailSKField = ["Target", "Realisasi"];

  static List<String> detailMentoringField = [
    "Kegiatan Tugas Jabatan",
    "Tahapan Kegiatan",
    "Peiode/Waktu",
    "Keterangan",
    "Target Ouput",
    "Target Persentase",
    "Dukungan Internal",
    "Dukungan Eksternal",
  ];

  static List<String> detailMentoringAdviceField = [
    "Permasalahan",
    "Tindak Lanjut",
    "Saran Mentor",
    "Rencana Aksi",
    "Target Waktu",
    "Kompetensi yang Dikembangkan",
    "Jalur Pengembangan",
    "Waktu Pelaksanaan"
  ];

  static List<String> detailQualityWorkAssessmentGoals = [
    "Menghasilkan output pekerjaan yang sesuai dengan permintaan.",
    "Menyelesaikan pekerjaan sesuai dengan kompetensi yang dibutuhkan.",
    "Menghasilkan output pekerjaan yang sesuai dnegan perkembangan terbaru.",
    "Menyelesaikan Seluruh proses pekerjaan secara efektif.",
    "Menyelesaikan Seluruh proses pekerjaan secara efisien."
  ];

  static List<String> detailAccuracyWorkAssessmentGoals = [
    "Menghasilkan output pekerjaan dengan tingkat akurasi yang dibutuhkan.",
    "Menyelesaikan pekerjaan sesuai dengan standard operating procedure."
  ];

  static List<String> detailQuantityWorkAssembleGoals = [
    "Menghasilkan pekerjaan sesuai dengan jumlah yang diminta.",
    "Menyelesaikan seluruh pekerjaan Dalam waktu yang ditentukan."
  ];

  static List<String> detailBehaviorWorkAssembleGoals = [
    "Sikap dan perilaku dalam memberikan pelayanan.",
    "Bertindak sesuai nilai, norma dan etika organisasi.",
    "Kemauan dan kemampuan untuk menyelaraskan sikap dan tindakan untuk tujuan organisasi.",
    "Kesanggupan untuk mentaati kewajiban dan menghindari larangan.",
    "Kemauan dan kemampuan untuk bekerja sama dengan rekan kerja dan bawahan."
  ];

  static List<String> triwulanDatas = [
    "Triwulan 1",
    "Triwulan 2",
    "Triwulan 3",
    "Triwulan 4"
  ];
  
  static List<String> statusAbsentSubmission = [
    "Menunggu",
    "Disetujui",
    "Diketahui"
  ];
}

enum patternMode{
  KOLEKTIF,INDIVIDU
}
