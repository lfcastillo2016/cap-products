using {com.lfcr as lfcr} from '../db/schema';

service CatalogService {
    entity Products as projection on lfcr.Products;
}
