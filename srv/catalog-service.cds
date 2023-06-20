using {com.lfcr as lfcr} from '../db/schema';

service CatalogService {
    entity Products          as projection on lfcr.Products;
    entity Suppliers         as projection on lfcr.Suppliers;
    entity StockAvailability as projection on lfcr.StockAvailability;
    entity Currency          as projection on lfcr.Currencies;
    entity UnitOfMeasures    as projection on lfcr.UnitOfMeasures;
    entity DimensionUnit     as projection on lfcr.DimensionUnits;
    entity Category          as projection on lfcr.Categories;
    entity Months            as projection on lfcr.Months;
    entity Reviews           as projection on lfcr.ProductReview;
    entity SalesData         as projection on lfcr.SalesData;
    entity Order             as projection on lfcr.Orders;
    entity OrderItem         as projection on lfcr.OrderItems;

}
