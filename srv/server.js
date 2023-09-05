// se modifica el boostrap es decir el arranque del servidor del proyecto CAP
const cds = require("@sap/cds");
const cors = require("cors"); // se hace uso del cors para realizar peticiones diferentes al origen
// donde tenemos el servidor de aplicaciones levantado, para ver los datos de una entidad externa
// a traves del servidor CAP

const adapterProxy = require("products/srv/sapbackend-exit.cds");

cds.on("bootstrap", (app) => {
    app.use(adapterProxy());
    app.use(cors());
    app.get("/alive", (_res) => {
        res.status(200).send("Server is Alive")
    });
});

module.exports = cds.server;




