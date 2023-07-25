using com.training as training from '../db/training';

service ManageOrders {

    //Declaración de tipo para el evento ACTION
    type cancelOrderReturn {
        status  : String enum {
            succeeded;
            failed
        };
        message : String
    };


    entity Orders as projection on training.Orders;
    function getClientTaxRate(clientEmail : String(65)) returns Decimal(4, 2);
    
    //Action
    action   cancelOrder(clientEmail : String(65))      returns cancelOrderReturn;
}
