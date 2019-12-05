const Dosen = require('../models/dosen');

module.exports = {
    getIndex(req, res) {
        Dosen.fetchIndex()
        .then(([rows, fieldData]) => {
            res.render('dosen/index', {
                pageTitle: 'Staff JPTEI UNY',
                dosen: rows,
                path: '/'
            });
            console.log(rows);
        })
        .catch(e => console.log(e));
    },

    getProfile(req, res) {
        const nip = req.params.nip;
        Dosen.fetchProfile(nip)
            .then(([profile]) => {
        Dosen.fetchKeahlian(nip)
            .then(([keahlian]) => {
        Dosen.fetchPenelitian(nip)
            .then(([penelitian]) => {
        Dosen.fetchPendidikan(nip)
            .then(([pendidikan]) => {
        Dosen.fetchMakul(nip)
            .then(([makul]) => {
        Dosen.fetchTraining(nip)
            .then(([training]) => {
                res.render('dosen/profile', {
                    pageTitle: 'Profile Staff',
                    dosen: profile[0],
                    keahlian: keahlian,
                    penelitian: penelitian,
                    pendidikan: pendidikan,
                    makul:makul,
                    training: training
                });
                console.log(profile);
                console.log(keahlian);
                console.log(penelitian);
                console.log(pendidikan);
                console.log(makul);
                console.log(training);
            })
            .catch(e => console.log(e));
            })
            .catch(e => console.log(e));
            })
            .catch(e => console.log(e));
            })
            .catch(e => console.log(e));
            })
            .catch(e => console.log(e));
            })
            .catch(e => console.log(e));
    },

    getSearch(req, res) {
        const q = req.query.q;
        Dosen.search(q)
        .then(([result]) => {
            res.render('dosen/index', {
                pageTitle: 'Staff JPTEI UNY',
                dosen: result,
                path: '/'
            });
            console.log(result);
        })
        .catch(e => console.log(e));
    }, 

    getFilter(req,res) {
        const jbtn = req.query.jabatan;
        const khl = req.query.keahlian;
        if(jbtn == null) {
            Dosen.filterKeahlian(khl)
            .then(([result]) => {
                res.render('dosen/index', {
                    pageTitle: 'Staff JPTEI UNY',
                    dosen: result
                });
            })
            .catch(e => console.log(e));
        } else if(khl == null) {
            Dosen.filterJabatan(jbtn)
            .then(([result]) => {
                res.render('dosen/index', {
                    pageTitle: 'Staff JPTEI UNY',
                    dosen: result
                });
            })
            .catch(e => console.log(e));
        } else {
            Dosen.filter(jbtn,khl)
            .then(([result]) => {
                res.render('dosen/index', {
                    pageTitle: 'Staff JPTEI UNY',
                    dosen: result,
                });
                console.log(result);
            })
            .catch(e => console.log(e));
        }
    }
    
}

