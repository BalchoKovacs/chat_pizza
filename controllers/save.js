const mimeDb = require('mime-db')
const fs = require('fs')

/**
 * Guardamos archivos multimedia que nuestro cliente nos envie!
 * @param {*} media 
 */


const saveMedia = (media) => {
    try {
        const extensionProcess = mimeDb[media.mimetype]
        const ext = extensionProcess.extensions[0]
    } catch (error) {
        ext="";
    }

    fs.writeFile(`./media/${Date.now()}.${ext}`, media.data, { encoding: 'base64' }, function (err) {
        console.log('** Archivo Media Guardado **');
    });
}

module.exports = {saveMedia}