namespace com.lfcr;

entity Products {
    key ID               : UUID;
        Name             : String;
        Description      : String;
        ImageUrl         : String;
        ReleaseDate      : DateTime default $now;
        DiscontinuedDate : DateTime default $now;
        Price            : Decimal(16, 2);
        Height           : Decimal(16, 2);
        Width            : Decimal(16, 2);
        Depth            : Decimal(16, 2);
        Quantity         : Decimal(16, 2);
        Supplier         : Association to Suppliers;
        UnitOfMeasure    : Association to UnitOfMeasures;
        Currency         : Association to Currencies;
        DimensionUnit    : Association to DimensionUnits;
        Category         : Association to Categories;
        SalesData        : Association to many SalesData
                            on SalesData.Product = $self;
        Reviews          : Association to many ProductReview
                            on Reviews.Product = $self;
};

entity Suppliers {
    key ID         : UUID;
        Name       : String;
        Street     : String;
        City       : String;
        State      : String(2);
        PostalCode : String(5);
        Country    : String(3);
        Email      : String;
        Phone      : String;
        Fax        : String;
        Product    : Association to many Products
                     on Product.Supplier = $self;
};

entity Categories {
    key ID   : String(1);
        Name : String;
};


entity Orders {
    key ID       : UUID;
        Date     : Date;
        Customer : String;
        Item     : Composition of many OrderItems
                       on Item.Order = $self;
}

entity OrderItems {
    key ID       : UUID;
        Order    : Association to Orders;
        Product  : Association to Products;
        Quantity : Integer;
}


entity StockAvailability {
    key ID          : Integer;
        Description : String;
};

entity Currencies {
    key ID          : String(3);
        Description : String;
};

entity UnitOfMeasures {
    key ID          : String(2);
        Description : String;
};

entity DimensionUnits {
    key ID          : String(2);
        Description : String;
};

entity Months {
    key ID               : String(2);
        Description      : String;
        ShortDescription : String(3);
};

entity ProductReview {
    key ID        : UUID;
        CreatedAt : String;
        Name      : String;
        Rating    : Integer;
        Comment   : String;
        Product   : Association to Products;
};

entity SalesData {
    key ID            : UUID;
        DeliveryDate  : DateTime;
        Revenue       : Decimal(16, 2);
        Product       : Association to Products;
        Currency      : Association to Currencies;
        DeliveryMonth : Association to Months;
}
