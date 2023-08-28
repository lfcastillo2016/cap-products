using {sapbackend as external} from './external/sapbackend.csn';

define service SapBackendExit {
    @cds.persistence :{
        table,
        skip :false
    }
    @cds.autoexpose //Para autoexponer las asociaciones entre las entidades.
    entity Incidents as
        select from external.IncidentsSet;


}
