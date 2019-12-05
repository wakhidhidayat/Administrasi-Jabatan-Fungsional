const db = require('../database/adm-jbtn');

module.exports = class Dosen {

    static fetchIndex() {
        return db.execute(
            "SELECT nip,nama,email,foto,nama_jabatan FROM dosen JOIN jabatan ON dosen.id_jabatan = jabatan.id_jabatan"
            );
    };  
    
    static fetchProfile(nip) {
        return db.execute(
            "SELECT nama,dosen.nip,foto,email,no_hp,nama_jabatan,nama_golongan FROM dosen JOIN jabatan ON dosen.id_jabatan = jabatan.id_jabatan JOIN golongan ON dosen.id_golongan = golongan.id_golongan WHERE dosen.nip = ?",
        [nip]
        );
    };

    static fetchKeahlian(nip) {
        return db.execute(
            "SELECT nama_keahlian FROM dosen JOIN keahlian_dosen ON dosen.nip=keahlian_dosen.nip JOIN keahlian ON keahlian.id_keahlian=keahlian_dosen.id_keahlian WHERE dosen.nip=?",
        [nip]
        );
    };

    static fetchPenelitian(nip) {
        return db.execute(
            "SELECT penelitian.id_penelitian,judul FROM dosen JOIN penelitian_dosen ON dosen.nip=penelitian_dosen.nip JOIN penelitian ON penelitian.id_penelitian=penelitian_dosen.id_penelitian WHERE dosen.nip=?",
        [nip]
        );
    };

    static fetchPendidikan(nip) {
        return db.execute(
            "SELECT nama_jenjang,nama_jurusan,nama_universitas,tahun_lulus FROM dosen JOIN pendidikan_dosen ON dosen.nip=pendidikan_dosen.nip JOIN pendidikan ON pendidikan.id_pendidikan=pendidikan_dosen.id_pendidikan JOIN universitas ON pendidikan.id_universitas=universitas.id_universitas JOIN jurusan ON pendidikan.id_jurusan=jurusan.id_jurusan JOIN jenjang ON pendidikan.id_jenjang=jenjang.id_jenjang WHERE dosen.nip=?",
        [nip]
        );
    };

    static fetchMakul(nip) {
        return db.execute(
            "SELECT nama_jurusan,nama_makul,nama_jenjang,tahun FROM dosen JOIN mata_kuliah ON dosen.nip=mata_kuliah.nip JOIN mata_kuliah_jurusan ON mata_kuliah.kode_makul=mata_kuliah_jurusan.kode_makul JOIN jurusan ON mata_kuliah_jurusan.id_jurusan=jurusan.id_jurusan JOIN jenjang ON mata_kuliah.id_jenjang=jenjang.id_jenjang WHERE dosen.nip=?",
            [nip]
        );
    };

    static fetchTraining(nip) {
        return db.execute(
            "SELECT nama_kegiatan,tempat,tahun FROM dosen JOIN kegiatan_profesional_dosen ON dosen.nip=kegiatan_profesional_dosen.nip JOIN kegiatan_profesional ON kegiatan_profesional_dosen.id_kegiatan=kegiatan_profesional.id_kegiatan WHERE dosen.nip=?",
            [nip]
        );
    };

    static search(q) {
        return db.execute(
            "SELECT * FROM dosen WHERE nama LIKE '%"+[q]+"%' OR nip LIKE '%"+[q]+"%'"
        );
    };

    static filter(jabatan,keahlian) {
        return db.execute(
            "SELECT * FROM dosen JOIN keahlian_dosen ON dosen.nip=keahlian_dosen.nip WHERE dosen.id_jabatan=? AND keahlian_dosen.id_keahlian=?",
            [jabatan,keahlian]
        );
    };

    static filterJabatan(jabatan) {
        return db.execute(
            "SELECT * FROM dosen WHERE id_jabatan = ?",
            [jabatan]
        );
    };

    static filterKeahlian(keahlian) {
        return db.execute(
            "SELECT * FROM dosen JOIN keahlian_dosen ON dosen.nip=keahlian_dosen.nip WHERE keahlian_dosen.id_keahlian=?",
            [keahlian]
        );
    };

}