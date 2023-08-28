const cds = require("@sap/cds");

module.exports = cds.service.impl(async function () {
    const { incidents } = this.entities;
    const sapbackend = await cds.connect.to("sapbackend");
    this.on("READ", incidents, async (req) => {
        return await sapbackend.tx(req).send({
            query: req.query
        })
    })
})