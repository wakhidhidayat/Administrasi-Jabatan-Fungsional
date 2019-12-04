const db = require('../database/adm-jbtn');

module.exports = class Penelitian {
    static fetchOne(id) {
        return db.execute(
            "SELECT * FROM penelitian JOIN sumber_dana ON penelitian.id_sumber_dana=sumber_dana.id_sumber_dana WHERE penelitian.id_penelitian=?",
            [id]
        );
    };

    static fetchDosen(id) {
        return db.execute(
            "SELECT dosen.nip,nama,nama_jabatan FROM dosen JOIN jabatan ON dosen.id_jabatan=jabatan.id_jabatan JOIN penelitian_dosen ON dosen.nip=penelitian_dosen.nip JOIN penelitian ON penelitian_dosen.id_penelitian=penelitian.id_penelitian WHERE penelitian_dosen.id_penelitian=?",
            [id]
        );
    };

    static fetchKeahlian(id) {
        return db.execute(
            "SELECT nama_keahlian FROM dosen JOIN keahlian_dosen ON dosen.nip=keahlian_dosen.nip JOIN keahlian ON keahlian_dosen.id_keahlian=keahlian.id_keahlian JOIN penelitian_dosen ON dosen.nip=penelitian_dosen.nip JOIN penelitian ON penelitian_dosen.id_penelitian=penelitian.id_penelitian WHERE penelitian_dosen.id_penelitian=?",
            [id]
        );
    }
};