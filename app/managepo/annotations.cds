// using CatalogService as service from '../../srv/CatalogService';

// annotate CatalogService.POs with @(

//     UI.SelectionFields      : [
//         PO_ID,
//         GROSS_AMOUNT,
//         PARTNER_GUID.COMPANY_NAME,
//         PARTNER_GUID.ADDRESS_GUID.COUNTRY
//     ],
//     UI.Identification       : [
//         {
//             $Type: 'UI.DataField',
//             Value: PO_ID
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: OVERALL_STATUS
//         }
//     ],
//     UI.LineItem             : [
//         {
//             $Type: 'UI.DataField',
//             Value: PO_ID,
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: PARTNER_GUID.COMPANY_NAME,
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: PARTNER_GUID.BP_ID,
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: GROSS_AMOUNT,
//         },
//         {
//             $Type                    : 'UI.DataField',
//             Value                    : OverallStatus,
//             Criticality              : IconColor,
//             CriticalityRepresentation: #WithIcon
//         },
//         {
//             $Type : 'UI.DataFieldForAction',
//             Action: 'CatalogService.boost',
//             Label : 'Boost',
//             Inline: true
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: CURRENCY_CODE,
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: PARTNER_GUID.ADDRESS_GUID.COUNTRY,
//         },
//     ],
//     UI.HeaderInfo           : {
//         TypeName      : 'PO',
//         TypeNamePlural: 'POs',
//         Title         : {
//             $Type: 'UI.DataField',
//             Value: PO_ID,
//         },
//         Description   : {
//             $Type: 'UI.DataField',
//             Value: LIFECYCLE_STATUS,
//         },
//         ImageUrl      : 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/IBM_logo.svg/2560px-IBM_logo.svg.png'
//     },
//     UI.Facets               : [
//         {
//             $Type : 'UI.ReferenceFacet',
//             Label : 'More Info',
//             Target: '@UI.FieldGroup#MoreInfo'
//         },
//         {
//             $Type : 'UI.ReferenceFacet',
//             Label : 'Pricing Details',
//             Target: '@UI.FieldGroup#Spiderman'
//         },
//         {
//             $Type : 'UI.ReferenceFacet',
//             Label : 'PO Line Items',
//             Target: 'Items/@com.sap.vocabularies.UI.v1.LineItem'
//         }
//     ],
//     UI.FieldGroup #MoreInfo : {Data: [
        
// { $Type : 'UI.DataField', Value : PO_ID },
//     { $Type : 'UI.DataField', Value : PARTNER_GUID.BP_ID },
//     { $Type : 'UI.DataField', Value : PARTNER_GUID.COMPANY_NAME },
//         {
//             $Type: 'UI.DataField',
//             Value: OverallStatus,
//         }
//     ], },
//     UI.FieldGroup #Spiderman: {Data: [
//         {
//             $Type: 'UI.DataField',
//             Value: GROSS_AMOUNT,
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: NET_AMOUNT,
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: TAX_AMOUNT,
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: CURRENCY_CODE,
//         },
//     ], }

// );

// annotate CatalogService.PurchaseOrderItems with @(
//     UI.LineItem               : [
//         {
//             $Type: 'UI.DataField',
//             Value: PO_ITEM_POS,
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: PRODUCT_GUID_NODE_KEY,
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: GROSS_AMOUNT,
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: NET_AMOUNT,
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: TAX_AMOUNT,
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: CURRENCY_CODE,
//         }

//     ],
//     UI.Identification         : [{
//         $Type: 'UI.DataField',
//         Value: PO_ITEM_POS
//     }],
//     UI.HeaderInfo             : {
//         TypeName      : 'Item',
//         TypeNamePlural: 'Items',
//         Title         : {
//             $Type: 'UI.DataField',
//             Value: PO_ITEM_POS,
//         }
//     },
//     UI.Facets: [
//   {
//     $Type : 'UI.CollectionFacet',
//     Label : 'Additional Details',
//     Facets : [
//       {
//         $Type : 'UI.ReferenceFacet',
//         Label : 'More Info',
//         Target : '@UI.FieldGroup#MoreInfo'
//       },
//       {
//         $Type : 'UI.ReferenceFacet',
//         Label : 'Prices',
//         Target : '@UI.FieldGroup#Prices'
//       },
//       {
//         $Type : 'UI.ReferenceFacet',
//         Label : 'Status',
//         Target : '@UI.FieldGroup#Status'
//       }
//     ]
//   },
//   {
//     $Type : 'UI.ReferenceFacet',
//     Label : 'PO Items',
//     Target : 'Items/@UI.LineItem'
//   }
// ],
//     UI.FieldGroup #ItemData   : {
//         Label: 'Item Data',
//         Data : [
//             {
//                 $Type: 'UI.DataField',
//                 Value: PO_ITEM_POS,
//             },
//             {
//                 $Type: 'UI.DataField',
//                 Value: PRODUCT_GUID_NODE_KEY,
//             },
//             {
//                 $Type: 'UI.DataField',
//                 Value: GROSS_AMOUNT,
//             },
//             {
//                 $Type: 'UI.DataField',
//                 Value: NET_AMOUNT,
//             },
//             {
//                 $Type: 'UI.DataField',
//                 Value: TAX_AMOUNT,
//             },
//             {
//                 $Type: 'UI.DataField',
//                 Value: CURRENCY_CODE,
//             },
//         ],
//     },
//     UI.FieldGroup #ProductData: {
//         Label: 'Product Details',
//         Data : [
//             {
//                 $Type: 'UI.DataField',
//                 Value: PRODUCT_GUID.CATEGORY,
//             },
//             {
//                 $Type: 'UI.DataField',
//                 Value: PRODUCT_GUID.DESCRIPTION,
//             },
//             {
//                 $Type: 'UI.DataField',
//                 Value: PRODUCT_GUID.PRICE,
//             },
//             {
//                 $Type: 'UI.DataField',
//                 Value: PRODUCT_GUID.SUPPLIER_GUID.ADDRESS_GUID.COUNTRY,
//             },
//             {
//                 $Type: 'UI.DataField',
//                 Value: PRODUCT_GUID.SUPPLIER_GUID.COMPANY_NAME,
//             }
//         ]
//     }
// );
using {CatalogService as service} from '../../srv/CatalogService';

annotate service.POs with @(

  /* ===================== */
  /* List Report           */
  /* ===================== */

  UI.SelectionFields: [
    PO_ID,
    PARTNER_GUID.COMPANY_NAME,
    PARTNER_GUID.ADDRESS_GUID.COUNTRY,
    GROSS_AMOUNT,
    OVERALL_STATUS
  ],

  UI.LineItem: [
    { $Type: 'UI.DataField', Value: PO_ID },
    { $Type: 'UI.DataField', Value: PARTNER_GUID.COMPANY_NAME },
    { $Type: 'UI.DataField', Value: GROSS_AMOUNT },
    {
      $Type: 'UI.DataField',
      Value: OverallStatus,
      Criticality: IconColor,
      CriticalityRepresentation: #WithIcon
    },
    { $Type: 'UI.DataField', Value: PARTNER_GUID.ADDRESS_GUID.COUNTRY },
    // { $Type: 'UI.DataField', Value: CURRENCY_code }
  ],

  /* ===================== */
  /* Object Page Header    */
  /* ===================== */

  UI.HeaderInfo: {
    TypeName: 'Purchase Order',
    TypeNamePlural: 'Purchase Orders',
    Title: {
      $Type: 'UI.DataField',
      Value: PO_ID
    },
    Description: {
      $Type: 'UI.DataField',
      Value: PARTNER_GUID.COMPANY_NAME
    }
  },

  /* ===================== */
  /* Object Page Sections  */
  /* ===================== */

  UI.Facets: [
  {
    $Type: 'UI.CollectionFacet',
    Label: 'Additional Details',
    Facets: [
      {
        $Type: 'UI.ReferenceFacet',
        Label: 'More Info',
        Target: '@UI.Identification',
        PartOfPreview: true
      },
      {
        $Type: 'UI.ReferenceFacet',
        Label: 'Prices',
        Target: '@UI.FieldGroup#Prices',
        PartOfPreview: true
      },
      {
        $Type: 'UI.ReferenceFacet',
        Label: 'Status',
        Target: '@UI.FieldGroup#Status',
        PartOfPreview: true
      }
    ]
  },
  {
    $Type: 'UI.ReferenceFacet',
    Label: 'PO Items',
    Target: 'Items/@UI.LineItem'
  }
],

UI.Identification: [
    { $Type: 'UI.DataField', Value: NODE_KEY },
    { $Type: 'UI.DataField', Value: PO_ID},
    { $Type: 'UI.DataField', Value: PARTNER_GUID_NODE_KEY }
  ],
  /* ===================== */
  /* Field Groups          */
  /* ===================== */

  UI.FieldGroup #MoreInfo: {
    Data: [
      { $Type: 'UI.DataField', Value: PO_ID },
      { $Type: 'UI.DataField', Value: PARTNER_GUID.BP_ID },
      { $Type: 'UI.DataField', Value: PARTNER_GUID.COMPANY_NAME }
    ]
  },

  UI.FieldGroup #Prices: {
    Data: [
      { $Type: 'UI.DataField', Value: GROSS_AMOUNT },
      { $Type: 'UI.DataField', Value: NET_AMOUNT },
      { $Type: 'UI.DataField', Value: TAX_AMOUNT }
    ]
  },

  UI.FieldGroup #Status: {
    Data: [
      { $Type: 'UI.DataField', Value: CURRENCY_code },
      {
        $Type: 'UI.DataField',
        Value: OverallStatus,
        Criticality: IconColor,
        CriticalityRepresentation: #WithIcon
      }
    ]
  }

);
annotate service.POItems with @(
    UI.LineItem : [
        {
            $Type: 'UI.DataField',
            Value: PO_ITEM_POS,
        },
        {
            $Type: 'UI.DataField',
            Value: PRODUCT_GUID.DESCRIPTION,
        },
        {
            $Type: 'UI.DataField',
            Value: GROSS_AMOUNT,
        },
        {
            $Type: 'UI.DataField',
            Value: TAX_AMOUNT,
        },

    ],
    UI.HeaderInfo             : {
        TypeName      : 'PO Item',
        TypeNamePlural: 'PO Items',
        Title         : {
            $Type: 'UI.DataField',
            Value: PO_ITEM_POS,
        },
        Description:{
          Value: PRODUCT_GUID.DESCRIPTION
        }
    },
    UI.Facets:[
      {
        $Type:'UI.ReferenceFacet',
        Label:'Details',
        Target:'@UI.Identification'
      }
    ],
    UI.Identification         : [{
        $Type: 'UI.DataField',
        Value: NODE_KEY,
    },
    {
      $Type: 'UI.DataField',
      Value: PO_ITEM_POS,
    },
    {
      $Type: 'UI.DataField',
      Value: PRODUCT_GUID_NODE_KEY,
    },
    {
      $Type: 'UI.DataField',
      Value: GROSS_AMOUNT,
    },
    {
      $Type: 'UI.DataField',
      Value: NET_AMOUNT,
    },
    {
      $Type: 'UI.DataField',
      Value: TAX_AMOUNT,
    },
    {
      $Type: 'UI.DataField',
      Value: CURRENCY_code,
    }
    ],
);