module.exports = {
    getIndex(req, res) {
        res.render('index', {
            pageTitle: 'Beranda Administrasi Jabatan Fungsional',
        });
    },
};