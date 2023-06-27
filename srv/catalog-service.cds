using {com.lfcr as lfcr} from '../db/schema';

// service CatalogService {
// entity Products          as projection on lfcr.materials.Products;
// entity Suppliers         as projection on lfcr.sales.Suppliers;
// entity StockAvailability as projection on lfcr.materials.StockAvailability;
// entity Currency          as projection on lfcr.materials.Currencies;
// entity UnitOfMeasures    as projection on lfcr.materials.UnitOfMeasures;
// entity DimensionUnit     as projection on lfcr.materials.DimensionUnits;
// entity Category          as projection on lfcr.materials.Categories;
// entity Months            as projection on lfcr.sales.Months;
// entity Reviews           as projection on lfcr.materials.ProductReview;
// entity SalesData         as projection on lfcr.sales.SalesData;
// entity Order             as projection on lfcr.sales.Orders;
// entity OrderItem         as projection on lfcr.sales.OrderItems;

// }

define service MyService {

    //Entidad PRODUCTOS
    entity Products          as
        select from lfcr.materials.Products {
            ID,
            Name          as ProductName,
            Description,
            ImageUrl,
            ReleaseDate,
            DiscontinuedDate,
            Price,
            Height,
            Width,
            Depth,
            Quantity,
            UnitOfMeasure as ToUnitOfMeasure,
            Currency      as ToCurrency,
            Category      as ToCategory,
            Category.Name as Category,
            DimensionUnit as ToDimensionUnit,
            SalesData,
            Supplier,
            Reviews

        };

    // ENTIDAD SUPLIER
    entity Supplier          as
        select from lfcr.sales.Suppliers {
            ID,
            Name,
            Email,
            Phone,
            Fax,
            Product as ToProduct
        };


    // ENTIDAD REVIEWS
    entity Reviews           as
        select from lfcr.materials.ProductReview {
            ID,
            Name,
            Rating,
            Comment,
            createdAt,
            Product as Toproduct
        };

    // ENTIDAD SALESDATA
    entity SalesData         as
        select from lfcr.sales.SalesData {
            ID,
            DeliveryDate,
            Revenue,
            Currency.ID               as CurrencyKey,
            DeliveryMonth.ID          as DeliveryMonthId,
            DeliveryMonth.Description as DeliveryMonth,
            Product                   as ToProduct
        };

    //ENTIDAD STOCL AVAILABILITY
    entity StockAvailability as
        select from lfcr.materials.StockAvailability {
            ID,
            Description,
            Product as ToProduct
        };

// AYUDAS DE BUSQUEDA
    entity VH_Categories     as
        select from lfcr.materials.Categories {
            ID   as Code,
            Name as Text
        };

// AYUDAS DE BUSQUEDA
    entity VH_Currencies     as
        select from lfcr.materials.Currencies {
            ID   as Code,
            Description as Text
        };

// AYUDAS DE BUSQUEDA
entity VH_UnitOfMeasure  as
        select from lfcr.materials.UnitOfMeasures {
            ID          as Code,
            Description as Text
        };
        
// AYUDAS DE BUSQUEDA
entity VH_DimensionUnits as
        select
            ID          as Code,
            Description as Text
        from lfcr.materials.DimensionUnits;

}
