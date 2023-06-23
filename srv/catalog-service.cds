using {com.lfcr as lfcr} from '../db/schema';

service CatalogService {
    entity Products          as projection on lfcr.materials.Products;
    entity Suppliers         as projection on lfcr.sales.Suppliers;
    entity StockAvailability as projection on lfcr.materials.StockAvailability;
    entity Currency          as projection on lfcr.materials.Currencies;
    entity UnitOfMeasures    as projection on lfcr.materials.UnitOfMeasures;
    entity DimensionUnit     as projection on lfcr.materials.DimensionUnits;
    entity Category          as projection on lfcr.materials.Categories;
    entity Months            as projection on lfcr.sales.Months;
    entity Reviews           as projection on lfcr.materials.ProductReview;
    entity SalesData         as projection on lfcr.sales.SalesData;
    entity Order             as projection on lfcr.sales.Orders;
    entity OrderItem         as projection on lfcr.sales.OrderItems;

}
