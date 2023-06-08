using {com.lfcr as lfcr} from '../db/schema';

service CatalogService {
    entity Products          as projection on lfcr.Products;
    entity Suppliers         as projection on lfcr.Suppliers;
    entity Categories        as projection on lfcr.Categories;
    entity StockAvailability as projection on lfcr.StockAvailability;
    entity Currencies        as projection on lfcr.Currencies;
    entity UnitOfMeasures    as projection on lfcr.UnitOfMeasures;
    entity DimensionUnits    as projection on lfcr.DimensionUnits;
    entity Months            as projection on lfcr.Months;
    entity ProductReview     as projection on lfcr.ProductReview;
    entity SalesData         as projection on lfcr.SalesData;

}
