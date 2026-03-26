
// using { anubhav.db } from '../db/datamodel';
// using { cappo.cds } from '../db/CDSViews';

// service CatalogService @(path: 'CatalogService'){ //path annotation helps to display the name as it is
//     entity EmployeeSet as projection on db.master.employees;
//     entity AddressSet as projection on db.master.address;
//     entity POs as projection on db.transaction.purchaseorder;
//     entity POItems as projection on db.transaction.poitems;
//     entity BusinessPartnerSet as projection on db.master.businesspartner;
//     entity ProductSet as projection on db.master.product;
// }
using { anubhav.db } from '../db/datamodel';
using { cappo.cds } from '../db/CDSViews';


service CatalogService @(path:'CatalogService') {

    @Capabilities : { Insertable, Deletable: false }
    entity BusinessPartnerSet as projection on db.master.businesspartner;
    entity AddressSet as projection on db.master.address;
    // @readonly
    entity EmployeeSet as projection on db.master.employees;
    // entity PurchaseOrderItems as projection on db.transaction.poitems;
    entity POs as projection on db.transaction.purchaseorder{
        *,
        case OVERALL_STATUS
            when 'N' then 'New'
            when 'P' then 'Pending'
            when 'B' then 'Blocked'
            when 'D' then 'Delivered'
            when 'A' then 'Approved' 
            when 'X' then 'Rejected' 
            end as OveralStatus: String(20),
            case OVERALL_STATUS
            when 'N' then 2
            when 'P' then 2
            when 'D' then 3
            when 'A' then 3 
            when 'X' then 1
            end as IconColor: Integer,
            Items : redirected to POItems
    }
    actions{
        action boost() returns POs;
        function largestOrder() returns array of POs;
    };
        entity POItems as projection on db.transaction.poitems;
    entity ProductSet as projection on db.master.product;
    // entity CProductValuesView as projection on cds.CDSViews.CProductValuesView;

}