using {com.lfcr as lfcr} from '../db/schema';

service CustomerService {
    entity CustomerSrv as projection on lfcr.Customer;
}
