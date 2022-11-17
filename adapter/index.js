const { getData, getReply, saveMessageMysql } = require('./mysql')
const { saveMessageJson } = require('./jsonDb')
const { getDataIa } = require('./diaglogflow')
const  stepsInitial = require('../flow/initial.json')
const  stepsReponse = require('../flow/response.json')

const get = (message,number) => new Promise((resolve, reject) => {
    /**
     * Si no estas usando un gesto de base de datos
     */

    if (process.env.DATABASE === 'none') {
     if (message === "fuera_hora") {
        message == "fuera_hora";
        const { key } = stepsInitial.find(k => k.keywords.includes(message)) || { key: null }
        const response = key || null
        resolve(response);
     }else{
        getTrigger(number, (gt) => {
            if (gt === 'name') {
                message="send_documento";
            }else if (gt === 'g_doc') {
                message= 'send_telefono'
            }else if (gt === 'g_telf') {
                message= 'send_respuesta'
            }else if (gt === 'g_v') {
                message= 'val_nc'
            }else{
            }
            const { key } = stepsInitial.find(k => k.keywords.includes(message)) || { key: null }
            const response = key || null
            resolve(response);
        });
     }
    
      

        // resolve(response)
    }
    /**
     * Si usas MYSQL
     */
    if (process.env.DATABASE === 'mysql') {
        getData(message, (dt) => {
            resolve(dt)
        });
    }

})


const reply = (step) => new Promise((resolve, reject) => {
    /**
    * Si no estas usando un gesto de base de datos
    */
    if (process.env.DATABASE === 'none') {
        let resData = { replyMessage: '', media: null, trigger: null }
        const responseFind = stepsReponse[step] || {};
        resData = {
            ...resData, 
            ...responseFind,
            replyMessage:responseFind.replyMessage.join('')}
        resolve(resData);
        return 
    }
    /**
     * Si usas MYSQL
     */
    if (process.env.DATABASE === 'mysql') {
        let resData = { replyMessage: '', media: null, trigger: null }
        getReply(step, (dt) => {
            resData = { ...resData, ...dt }
            resolve(resData)
        });
    }
})

const getIA = (message) => new Promise((resolve, reject) => {
    /**
     * Si usas dialogflow
     */
     if (process.env.DATABASE === 'dialogflow') {
        let resData = { replyMessage: '', media: null, trigger: null }
        getDataIa(message,(dt) => {
            resData = { ...resData, ...dt }
            resolve(resData)
        })
    }
})

/**
 * 
 * @param {*} message 
 * @param {*} date 
 * @param {*} trigger 
 * @param {*} number 
 * @returns 
 */
const saveMessage = ( message, trigger, number  ) => new Promise( async (resolve, reject) => {
     switch ( process.env.DATABASE ) {
         case 'mysql':
             resolve( await saveMessageMysql( message, trigger, number ) )
             break;
         case 'none':
             resolve( await saveMessageMysql( message, trigger, number ) )
             resolve( await saveMessageJson( message, trigger, number ) )
             break;
         default:
             resolve(true)
             break;
    }
})

module.exports = { get, reply, getIA, saveMessage }