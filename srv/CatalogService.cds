
using { anubhav.db } from '../db/datamodel';
using { cappo.cds } from '../db/CDSViews';

service CatalogService @(path: 'CatalogService'){ //path annotation helps to display the name as it is
    entity EmployeeSet as projection on db.master.employees;
    entity AddressSet as projection on db.master.address;
    entity POs as projection on db.transaction.purchaseorder;
    entity POItems as projection on db.transaction.poitems;
    entity BusinessPartnerSet as projection on db.master.businesspartner;
    entity ProductSet as projection on db.master.product;

}
