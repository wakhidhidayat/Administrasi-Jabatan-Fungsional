const Penelitian = require('../models/penelitian');

module.exports = {
    getDetail(req, res) {
        const id = req.params.id;
        Penelitian.fetchOne(id)
            .then(([result]) => {
                Penelitian.fetchDosen(id)
                    .then(([dosen]) => {
                        Penelitian.fetchKeahlian(id)
                            .then(([keahlian]) => {
                                res.render('penelitian/detail', {
                                    pageTitle: 'Penelitian',
                                    penelitian: result[0],
                                    dosen: dosen,
                                    keahlian: keahlian
                                });                            
                            })
                            .catch(e => console.log(e));
                    })
                    .catch(e => console.log(e));
            })
            .catch(e => console.log(e));
    },
};