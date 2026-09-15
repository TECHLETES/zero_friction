# masterdata_client.DefaultApi

All URIs are relative to *https://api.zerofriction.co/api/md*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_contract_service**](DefaultApi.md#add_contract_service) | **POST** /Contracts/{contractId}/addservice | AddContractService
[**add_contracted_services**](DefaultApi.md#add_contracted_services) | **PUT** /Contracts/{contractuuid}/services/add | Add locations and/or services to be supplied on a contract.
[**bulk_add_contract_service**](DefaultApi.md#bulk_add_contract_service) | **POST** /Contracts/bulk/addservice | BulkAddContractService
[**bulk_change_customer_group**](DefaultApi.md#bulk_change_customer_group) | **POST** /Customers/bulk/customergroup | Move multiple customers to customer group in bulk.
[**bulk_remove_contract_service**](DefaultApi.md#bulk_remove_contract_service) | **POST** /Contracts/bulk/removeservice | BulkRemoveContractService
[**bulk_update_service_location_product**](DefaultApi.md#bulk_update_service_location_product) | **POST** /ServiceLocations/bulk/updateproduct | Update product for multiple locations in bulk.
[**bulk_update_service_location_services**](DefaultApi.md#bulk_update_service_location_services) | **POST** /ServiceLocations/bulk/updateservices | Update which services are enabled on multiple service locations in bulk.
[**change_customer_billing_details**](DefaultApi.md#change_customer_billing_details) | **POST** /Customers/{customeruuid}/billingdetails | Update billing details of a customer.
[**change_customer_collection_day**](DefaultApi.md#change_customer_collection_day) | **POST** /Customers/{customeruuid}/collectionday | Update only the Direct Debit collection day of a customer. Narrow, single-purpose endpoint used by the resident portal self-service so residents can hold a minimal collection-day permission rather than the broad billing-details one (which also changes payment terms and default payment method).
[**change_customer_communication_preferences**](DefaultApi.md#change_customer_communication_preferences) | **POST** /Customers/{customeruuid}/communicationpreferences | Update communication preferences of a customer.
[**change_customer_contact_details**](DefaultApi.md#change_customer_contact_details) | **POST** /Customers/{customeruuid}/contactdetails | Update contact details of a customer.
[**change_customer_details**](DefaultApi.md#change_customer_details) | **POST** /Customers/{customeruuid}/details | Update details of a customer.
[**change_customer_e_invoicing_settings**](DefaultApi.md#change_customer_e_invoicing_settings) | **POST** /Customers/{customeruuid}/einvoicingsettings | Update e-invoicing settings of a customer.
[**change_customer_group**](DefaultApi.md#change_customer_group) | **POST** /Customers/{customeruuid}/customergroup | Move customer to a different customer group.
[**change_customer_invoice_address**](DefaultApi.md#change_customer_invoice_address) | **POST** /Customers/{customeruuid}/invoiceaddress | Update invoice address of a customer.
[**change_portal_details**](DefaultApi.md#change_portal_details) | **POST** /Customers/{customeruuid}/portaldetails | Update customer portal details of a customer.
[**confirm_customer_portal_account**](DefaultApi.md#confirm_customer_portal_account) | **POST** /Customers/{customeruuid}/portal/confirm | Confirm portal account of a customer
[**create_customer**](DefaultApi.md#create_customer) | **POST** /Customers | Create new customer.
[**create_service_location**](DefaultApi.md#create_service_location) | **POST** /ServiceLocations | Create new location.
[**delete_contracts_bulk**](DefaultApi.md#delete_contracts_bulk) | **DELETE** /Contracts/bulk | Delete multiple draft contracts in bulk.
[**delete_contracts_contractuuid**](DefaultApi.md#delete_contracts_contractuuid) | **DELETE** /Contracts/{contractuuid} | Delete a draft contract.
[**delete_customergroups_uuid**](DefaultApi.md#delete_customergroups_uuid) | **DELETE** /CustomerGroups/{uuid} | Delete customer group.
[**delete_customers_bulk**](DefaultApi.md#delete_customers_bulk) | **DELETE** /Customers/bulk | Delete multiple customers in bulk.
[**delete_customers_customeruuid**](DefaultApi.md#delete_customers_customeruuid) | **DELETE** /Customers/{customeruuid} | Delete a customer.
[**delete_moverequests**](DefaultApi.md#delete_moverequests) | **DELETE** /MoveRequests | Delete multiple move requests in bulk.
[**delete_moverequests_moverequestuuid**](DefaultApi.md#delete_moverequests_moverequestuuid) | **DELETE** /MoveRequests/{moverequestuuid} | Delete move request.
[**delete_propertygroups_bulk**](DefaultApi.md#delete_propertygroups_bulk) | **DELETE** /PropertyGroups/bulk | Delete multiple location groups in bulk.
[**delete_propertygroups_propertygroupuuid**](DefaultApi.md#delete_propertygroups_propertygroupuuid) | **DELETE** /PropertyGroups/{propertygroupuuid} | Delete a location group.
[**delete_propertygroups_propertygroupuuid_servicelocations**](DefaultApi.md#delete_propertygroups_propertygroupuuid_servicelocations) | **DELETE** /PropertyGroups/{propertygroupuuid}/servicelocations | Remove locations from a location group.
[**delete_servicelocations_bulk**](DefaultApi.md#delete_servicelocations_bulk) | **DELETE** /ServiceLocations/bulk | Delete multiple unused locations in bulk.
[**filter_all_customers**](DefaultApi.md#filter_all_customers) | **POST** /Customers/filter | Retrieve customers based on the provided query parameters.
[**filter_all_service_locations**](DefaultApi.md#filter_all_service_locations) | **POST** /ServiceLocations/filter | Retrieve locations based on the provided query parameters.
[**filter_overview_count_customers**](DefaultApi.md#filter_overview_count_customers) | **POST** /Customers/filter/overviewcount | Retrieve the overview count of customers based on the provided query parameters.
[**filter_overview_count_service_locations**](DefaultApi.md#filter_overview_count_service_locations) | **POST** /ServiceLocations/filter/overviewcount | Retrieve the overview count of locations based on the provided query parameters.
[**filter_postal_addresses**](DefaultApi.md#filter_postal_addresses) | **POST** /ServiceLocations/postaladdresses/filter | Retrieve postal addresses based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
[**generate_customer_impersonation_token**](DefaultApi.md#generate_customer_impersonation_token) | **POST** /Customers/{customeruuid}/portal/impersonate | Generate impersonation token for customer portal access.
[**get_accounting_costcenters_mapping**](DefaultApi.md#get_accounting_costcenters_mapping) | **GET** /Accounting/costcenters/mapping | Retrieves a paged list of all categories (only property groups for now) that are mapped or need to be mapped to a cost centers.
[**get_accounting_costcenters_unmapped_overviewcount**](DefaultApi.md#get_accounting_costcenters_unmapped_overviewcount) | **GET** /Accounting/costcenters/unmapped/overviewcount | Retrieves an overview count of all cost centers and the amount of items that still need mapping
[**get_accounting_costunits_mapping**](DefaultApi.md#get_accounting_costunits_mapping) | **GET** /Accounting/costunits/mapping | Retrieves a paged list of cost center categories (only customer groups for now) that are mapped or need to be mapped to a cost units.
[**get_accounting_costunits_unmapped_overviewcount**](DefaultApi.md#get_accounting_costunits_unmapped_overviewcount) | **GET** /Accounting/costunits/unmapped/overviewcount | Retrieves an overview count of all cost unit categories and the amount of items that still need mapping
[**get_accounting_itemcodes_mapping**](DefaultApi.md#get_accounting_itemcodes_mapping) | **GET** /Accounting/itemcodes/mapping | Retrieves a paged list of item code mapping items
[**get_accounting_itemcodes_unmapped_overviewcount**](DefaultApi.md#get_accounting_itemcodes_unmapped_overviewcount) | **GET** /Accounting/itemcodes/unmapped/overviewcount | Retrieves an overview count of all item code categories and the amount of items that still need mapping
[**get_accounting_projectcodes_mapping**](DefaultApi.md#get_accounting_projectcodes_mapping) | **GET** /Accounting/projectcodes/mapping | Retrieves a paged list of project code mapping items
[**get_accounting_projectcodes_unmapped_overviewcount**](DefaultApi.md#get_accounting_projectcodes_unmapped_overviewcount) | **GET** /Accounting/projectcodes/unmapped/overviewcount | Retrieves an overview count of all project code categories and the amount of items that still need mapping
[**get_contract_bulk_add_service_context**](DefaultApi.md#get_contract_bulk_add_service_context) | **POST** /Contracts/filter/bulkaddservicecontext | GetContractBulkAddServiceContext
[**get_contract_bulk_remove_service_context**](DefaultApi.md#get_contract_bulk_remove_service_context) | **POST** /Contracts/filter/bulkremoveservicecontext | GetContractBulkRemoveServiceContext
[**get_contracts_contractuuid**](DefaultApi.md#get_contracts_contractuuid) | **GET** /Contracts/{contractuuid} | Retrieve a contract by its ID.
[**get_customer**](DefaultApi.md#get_customer) | **GET** /Customers/{customeruuid} | Retrieve a customer by its ID.
[**get_customer_by_account_number**](DefaultApi.md#get_customer_by_account_number) | **GET** /Customers/ByAccountNumber | Retrieve a customer by its account number.
[**get_customergroups**](DefaultApi.md#get_customergroups) | **GET** /CustomerGroups | Retrieve customer groups based on the provided query parameters.
[**get_customergroups_customergroupuuid**](DefaultApi.md#get_customergroups_customergroupuuid) | **GET** /CustomerGroups/{customerGroupuuId} | Retrieve customer group by its ID.
[**get_meters**](DefaultApi.md#get_meters) | **GET** /Meters | REPLACED BY POST! Retrieve meters based on the provided query parameters.
[**get_meters_meteruuid**](DefaultApi.md#get_meters_meteruuid) | **GET** /Meters/{meteruuid} | Retrieve a meter by its ID.
[**get_meters_overviewcount**](DefaultApi.md#get_meters_overviewcount) | **GET** /Meters/overviewcount | REPLACED BY POST! Retrieve the overview count of meters based on the provided query parameters.
[**get_migrationadmin_latest_version**](DefaultApi.md#get_migrationadmin_latest_version) | **GET** /MigrationAdmin/latest-version | /MigrationAdmin/latest-version - GET
[**get_moverequests**](DefaultApi.md#get_moverequests) | **GET** /MoveRequests | Retrieve move requests based on the provided query parameters.
[**get_moverequests_externalid_externalid**](DefaultApi.md#get_moverequests_externalid_externalid) | **GET** /MoveRequests/externalid/{externalId} | Retrieve a move request by its external ID.
[**get_moverequests_moverequestuuid**](DefaultApi.md#get_moverequests_moverequestuuid) | **GET** /MoveRequests/{moverequestuuid} | Retrieve a move request by its ID.
[**get_moverequests_overviewcount**](DefaultApi.md#get_moverequests_overviewcount) | **GET** /MoveRequests/overviewcount | Retrieve the overview count of move requests based on the provided query parameters.
[**get_overview_count_customer_groups**](DefaultApi.md#get_overview_count_customer_groups) | **GET** /CustomerGroups/overviewcount | Retrieve the overview count of customer groups based on the provided query parameters.
[**get_postal_addresses**](DefaultApi.md#get_postal_addresses) | **GET** /ServiceLocations/postaladdresses | Retrieves postal addresses (postal codes) for service locations matching the query filters.
[**get_propertygroups**](DefaultApi.md#get_propertygroups) | **GET** /PropertyGroups | Retrieve location groups based on the provided query parameters.
[**get_propertygroups_overviewcount**](DefaultApi.md#get_propertygroups_overviewcount) | **GET** /PropertyGroups/overviewcount | Retrieve the overview count of location groups based on the provided query parameters.
[**get_propertygroups_propertygroupuuid**](DefaultApi.md#get_propertygroups_propertygroupuuid) | **GET** /PropertyGroups/{propertygroupuuid} | Retrieve a location group by its ID.
[**get_service_location**](DefaultApi.md#get_service_location) | **GET** /ServiceLocations/{servicelocationuuid} | Retrieve a location by its ID.
[**get_service_location_bulk_update_services_context**](DefaultApi.md#get_service_location_bulk_update_services_context) | **POST** /ServiceLocations/filter/bulkupdateservicescontext | Retrieves context for bulk update of service locations.
[**patch_accounting_costcenters_mapping**](DefaultApi.md#patch_accounting_costcenters_mapping) | **PATCH** /Accounting/costcenters/mapping | Links multiple mapping items to a cost center in bulk.
[**patch_accounting_costcenters_mapping_mappingitemid**](DefaultApi.md#patch_accounting_costcenters_mapping_mappingitemid) | **PATCH** /Accounting/costcenters/mapping/{mappingItemId} | Links a mapping item to a cost center.
[**patch_accounting_costunits_mapping**](DefaultApi.md#patch_accounting_costunits_mapping) | **PATCH** /Accounting/costunits/mapping | Links multiple mapping items to a cost unit in bulk.
[**patch_accounting_costunits_mapping_mappingitemid**](DefaultApi.md#patch_accounting_costunits_mapping_mappingitemid) | **PATCH** /Accounting/costunits/mapping/{mappingItemId} | Links a mapping item to a cost unit.
[**patch_accounting_itemcodes_mapping**](DefaultApi.md#patch_accounting_itemcodes_mapping) | **PATCH** /Accounting/itemcodes/mapping | Links multiple mapping items to an item code in bulk.
[**patch_accounting_itemcodes_mapping_mappingitemid**](DefaultApi.md#patch_accounting_itemcodes_mapping_mappingitemid) | **PATCH** /Accounting/itemcodes/mapping/{mappingItemId} | Links a mapping item to an item code.
[**patch_accounting_projectcodes_mapping**](DefaultApi.md#patch_accounting_projectcodes_mapping) | **PATCH** /Accounting/projectcodes/mapping | Links multiple mapping items to a project code in bulk.
[**patch_accounting_projectcodes_mapping_mappingitemid**](DefaultApi.md#patch_accounting_projectcodes_mapping_mappingitemid) | **PATCH** /Accounting/projectcodes/mapping/{mappingItemId} | Links a mapping item to a project code.
[**patch_contracts_contractuuid_billing_method**](DefaultApi.md#patch_contracts_contractuuid_billing_method) | **PATCH** /Contracts/{contractuuid}/billing-method | Update billing method of a contract (Change of Mode PayG to/from Credit).
[**post_accounting_costcenters_mapping_filter**](DefaultApi.md#post_accounting_costcenters_mapping_filter) | **POST** /Accounting/costcenters/mapping/filter | Retrieves a paged list of all categories (only property groups for now) that are mapped or need to be mapped to a cost centers. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
[**post_accounting_costunits_mapping_filter**](DefaultApi.md#post_accounting_costunits_mapping_filter) | **POST** /Accounting/costunits/mapping/filter | Retrieves a paged list of cost center categories (only customer groups for now) that are mapped or need to be mapped to a cost units. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
[**post_accounting_itemcodes_mapping_filter**](DefaultApi.md#post_accounting_itemcodes_mapping_filter) | **POST** /Accounting/itemcodes/mapping/filter | Retrieves a paged list of item code mapping items. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
[**post_accounting_projectcodes_mapping_filter**](DefaultApi.md#post_accounting_projectcodes_mapping_filter) | **POST** /Accounting/projectcodes/mapping/filter | Retrieves a paged list of project code mapping items. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
[**post_contracts**](DefaultApi.md#post_contracts) | **POST** /Contracts | Create new contract.
[**post_contracts_bulk_block**](DefaultApi.md#post_contracts_bulk_block) | **POST** /Contracts/bulk/block | Mark multiple contracts as blocked in bulk.
[**post_contracts_bulk_estimate**](DefaultApi.md#post_contracts_bulk_estimate) | **POST** /Contracts/bulk/estimate | Trigger recalculation of EAV for multiple contracts in bulk.
[**post_contracts_bulk_sign**](DefaultApi.md#post_contracts_bulk_sign) | **POST** /Contracts/bulk/sign | Sign multiple contracts in bulk.
[**post_contracts_bulk_terminate**](DefaultApi.md#post_contracts_bulk_terminate) | **POST** /Contracts/bulk/terminate | Terminate multiple signed contracts in bulk.
[**post_contracts_bulk_unblock**](DefaultApi.md#post_contracts_bulk_unblock) | **POST** /Contracts/bulk/unblock | Mark multiple contracts as unblocked in bulk.
[**post_contracts_bulk_updateconsumptiongroups**](DefaultApi.md#post_contracts_bulk_updateconsumptiongroups) | **POST** /Contracts/bulk/updateConsumptionGroups | Update consumptiongroup on multiple contracts in bulk.
[**post_contracts_bulk_updateproduct**](DefaultApi.md#post_contracts_bulk_updateproduct) | **POST** /Contracts/bulk/updateproduct | Update product on multiple contracts in bulk.
[**post_contracts_contractuuid_block**](DefaultApi.md#post_contracts_contractuuid_block) | **POST** /Contracts/{contractuuid}/block | Mark a contract as blocked for billing.
[**post_contracts_contractuuid_changeadvanceamount**](DefaultApi.md#post_contracts_contractuuid_changeadvanceamount) | **POST** /Contracts/{contractuuid}/changeadvanceamount | Update the advance amount for a draft contract.
[**post_contracts_contractuuid_consumptiongroups**](DefaultApi.md#post_contracts_contractuuid_consumptiongroups) | **POST** /Contracts/{contractuuid}/consumptiongroups | Updates the consumption groups and their estimated values for services provided on a contract.
[**post_contracts_contractuuid_sign**](DefaultApi.md#post_contracts_contractuuid_sign) | **POST** /Contracts/{contractuuid}/sign | Sign a contract.
[**post_contracts_contractuuid_terminate**](DefaultApi.md#post_contracts_contractuuid_terminate) | **POST** /Contracts/{contractuuid}/terminate | Terminate a signed contract.
[**post_contracts_contractuuid_unblock**](DefaultApi.md#post_contracts_contractuuid_unblock) | **POST** /Contracts/{contractuuid}/unblock | Mark a contract as unblocked for billing.
[**post_contracts_contractuuid_updatebillingdetails**](DefaultApi.md#post_contracts_contractuuid_updatebillingdetails) | **POST** /Contracts/{contractuuid}/updatebillingdetails | Update billing details of a contract.
[**post_contracts_contractuuid_updateexternalcontractreference**](DefaultApi.md#post_contracts_contractuuid_updateexternalcontractreference) | **POST** /Contracts/{contractuuid}/updateexternalcontractreference | Update the external contract reference.
[**post_contracts_contractuuid_updateproduct**](DefaultApi.md#post_contracts_contractuuid_updateproduct) | **POST** /Contracts/{contractuuid}/updateproduct | Update product of a contract.
[**post_contracts_entityid_customproperties**](DefaultApi.md#post_contracts_entityid_customproperties) | **POST** /Contracts/{entityId}/customproperties | /Contracts/{entityId}/customproperties - POST
[**post_contracts_filter**](DefaultApi.md#post_contracts_filter) | **POST** /Contracts/filter | Retrieve contracts based on the provided query parameters.
[**post_contracts_filter_overviewcount**](DefaultApi.md#post_contracts_filter_overviewcount) | **POST** /Contracts/filter/overviewcount | Retrieve the overview count of contracts based on the provided query parameters.
[**post_contracts_filter_uniqueutilitytypes**](DefaultApi.md#post_contracts_filter_uniqueutilitytypes) | **POST** /Contracts/filter/uniqueUtilityTypes | Retrieve unique utilityTypes for the filters.
[**post_customergroups**](DefaultApi.md#post_customergroups) | **POST** /CustomerGroups | Create new customer group, which gives the possibility to group customers togather and apply the same settings to them.
[**post_customergroups_filter**](DefaultApi.md#post_customergroups_filter) | **POST** /CustomerGroups/filter | Retrieve customer groups based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
[**post_customergroups_filter_overviewcount**](DefaultApi.md#post_customergroups_filter_overviewcount) | **POST** /CustomerGroups/filter/overviewcount | Retrieve the overview count of customer groups based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
[**post_customergroups_search**](DefaultApi.md#post_customergroups_search) | **POST** /CustomerGroups/search | Retrieve customer group by name.
[**post_customergroups_uuid_settings_automaticsettlement**](DefaultApi.md#post_customergroups_uuid_settings_automaticsettlement) | **POST** /CustomerGroups/{uuid}/settings/automaticsettlement | Update auto-settlement settings of customer group.
[**post_customergroups_uuid_updatename**](DefaultApi.md#post_customergroups_uuid_updatename) | **POST** /CustomerGroups/{uuid}/updatename | Update name of customer group.
[**post_customers_annualstatement_year_filter_overviewcount**](DefaultApi.md#post_customers_annualstatement_year_filter_overviewcount) | **POST** /Customers/annualstatement/{year}/filter/overviewcount | Retrieve the overview count of annual statements for filtered customers based on the provided query parameters.
[**post_customers_bulk_createannualstatement**](DefaultApi.md#post_customers_bulk_createannualstatement) | **POST** /Customers/bulk/createannualstatement | Create and generate annual statements for multiple customers in bulk.
[**post_customers_entityid_customproperties**](DefaultApi.md#post_customers_entityid_customproperties) | **POST** /Customers/{entityId}/customproperties | /Customers/{entityId}/customproperties - POST
[**post_meters**](DefaultApi.md#post_meters) | **POST** /Meters | Create new meter.
[**post_meters_bulk_delete**](DefaultApi.md#post_meters_bulk_delete) | **POST** /Meters/bulk/delete | Soft-delete multiple meters in bulk.
[**post_meters_bulk_reconfigure_from_model**](DefaultApi.md#post_meters_bulk_reconfigure_from_model) | **POST** /Meters/bulk/reconfigure-from-model | Reconfigure multiple meters from a model&#39;s channel templates in bulk.
[**post_meters_bulk_uninstall**](DefaultApi.md#post_meters_bulk_uninstall) | **POST** /Meters/bulk/uninstall | Uninstall multiple installed meters in bulk.
[**post_meters_entityid_customproperties**](DefaultApi.md#post_meters_entityid_customproperties) | **POST** /Meters/{entityId}/customproperties | /Meters/{entityId}/customproperties - POST
[**post_meters_filter**](DefaultApi.md#post_meters_filter) | **POST** /Meters/filter | Retrieve meters based on the provided query parameters.
[**post_meters_filter_overviewcount**](DefaultApi.md#post_meters_filter_overviewcount) | **POST** /Meters/filter/overviewcount | Retrieve the overview count of meters based on the provided query parameters.
[**post_meters_meteruuid_channels**](DefaultApi.md#post_meters_meteruuid_channels) | **POST** /Meters/{meteruuid}/channels | Update channels configured on a meter.
[**post_meters_meteruuid_delete**](DefaultApi.md#post_meters_meteruuid_delete) | **POST** /Meters/{meteruuid}/delete | Soft-delete a meter that was never installed, freeing its serial number for reuse.
[**post_meters_meteruuid_details**](DefaultApi.md#post_meters_meteruuid_details) | **POST** /Meters/{meteruuid}/details | Update details of a meter.
[**post_meters_meteruuid_install**](DefaultApi.md#post_meters_meteruuid_install) | **POST** /Meters/{meteruuid}/install | Install an uninstalled meter.
[**post_meters_meteruuid_metertag**](DefaultApi.md#post_meters_meteruuid_metertag) | **POST** /Meters/{meteruuid}/metertag | Update meter tag.
[**post_meters_meteruuid_submeter_add**](DefaultApi.md#post_meters_meteruuid_submeter_add) | **POST** /Meters/{meteruuid}/submeter/add | Set this meter as a parent meter of another meter.
[**post_meters_meteruuid_uninstall**](DefaultApi.md#post_meters_meteruuid_uninstall) | **POST** /Meters/{meteruuid}/uninstall | Uninstall an installed meter.
[**post_meters_meteruuid_updateparentrelation**](DefaultApi.md#post_meters_meteruuid_updateparentrelation) | **POST** /Meters/{meteruuid}/updateparentrelation | Set this meter as a sub-meter of another meter.
[**post_meters_meteruuid_validate**](DefaultApi.md#post_meters_meteruuid_validate) | **POST** /Meters/{meteruuid}/validate | Trigger meter validation.
[**post_moverequests**](DefaultApi.md#post_moverequests) | **POST** /MoveRequests | Create new move request.
[**post_moverequests_bulk_reject**](DefaultApi.md#post_moverequests_bulk_reject) | **POST** /MoveRequests/bulk/reject | Reject multiple uncompleted move requests in bulk.
[**post_moverequests_bulk_setnew**](DefaultApi.md#post_moverequests_bulk_setnew) | **POST** /MoveRequests/bulk/setnew | Mark multiple uncompleted move requests as new in bulk.
[**post_moverequests_bulk_setpending**](DefaultApi.md#post_moverequests_bulk_setpending) | **POST** /MoveRequests/bulk/setpending | Mark multiple uncompleted move requests as pending in bulk.
[**post_moverequests_filter**](DefaultApi.md#post_moverequests_filter) | **POST** /MoveRequests/filter | Retrieve move requests based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
[**post_moverequests_filter_overviewcount**](DefaultApi.md#post_moverequests_filter_overviewcount) | **POST** /MoveRequests/filter/overviewcount | Retrieve the overview count of move requests based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
[**post_moverequests_moverequestuuid_process**](DefaultApi.md#post_moverequests_moverequestuuid_process) | **POST** /MoveRequests/{moverequestuuid}/process | Process uncompleted move request.
[**post_moverequests_moverequestuuid_reject**](DefaultApi.md#post_moverequests_moverequestuuid_reject) | **POST** /MoveRequests/{moverequestuuid}/reject | Reject uncompleted move request.
[**post_moverequests_moverequestuuid_setnew**](DefaultApi.md#post_moverequests_moverequestuuid_setnew) | **POST** /MoveRequests/{moverequestuuid}/setnew | Mark uncompleted move request as new.
[**post_moverequests_moverequestuuid_setpending**](DefaultApi.md#post_moverequests_moverequestuuid_setpending) | **POST** /MoveRequests/{moverequestuuid}/setpending | Mark uncompleted move request as pending.
[**post_moverequests_moverequestuuid_updatecustomerdetails**](DefaultApi.md#post_moverequests_moverequestuuid_updatecustomerdetails) | **POST** /MoveRequests/{moverequestuuid}/updatecustomerdetails | Update customer details of a move request.
[**post_moverequests_moverequestuuid_updatedetails**](DefaultApi.md#post_moverequests_moverequestuuid_updatedetails) | **POST** /MoveRequests/{moverequestuuid}/updatedetails | Update details of a move request.
[**post_moverequests_moverequestuuid_updatemeasurementdetails**](DefaultApi.md#post_moverequests_moverequestuuid_updatemeasurementdetails) | **POST** /MoveRequests/{moverequestuuid}/updatemeasurementdetails | Update measurement details of a move request.
[**post_moverequests_moverequestuuid_updatemutationdatetime**](DefaultApi.md#post_moverequests_moverequestuuid_updatemutationdatetime) | **POST** /MoveRequests/{moverequestuuid}/updateMutationDateTime | Update mutation date of a move request.
[**post_moverequests_moverequestuuid_updateservicelocationdetails**](DefaultApi.md#post_moverequests_moverequestuuid_updateservicelocationdetails) | **POST** /MoveRequests/{moverequestuuid}/updateservicelocationdetails | Update location details of a move request.
[**post_propertygroups**](DefaultApi.md#post_propertygroups) | **POST** /PropertyGroups | Create new location group.
[**post_propertygroups_entityid_customproperties**](DefaultApi.md#post_propertygroups_entityid_customproperties) | **POST** /PropertyGroups/{entityId}/customproperties | /PropertyGroups/{entityId}/customproperties - POST
[**post_propertygroups_filter**](DefaultApi.md#post_propertygroups_filter) | **POST** /PropertyGroups/filter | Retrieve location groups based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
[**post_propertygroups_filter_overviewcount**](DefaultApi.md#post_propertygroups_filter_overviewcount) | **POST** /PropertyGroups/filter/overviewcount | Retrieve the overview count of location groups based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
[**post_propertygroups_propertygroupuuid**](DefaultApi.md#post_propertygroups_propertygroupuuid) | **POST** /PropertyGroups/{propertygroupuuid} | Update details of a location group.
[**post_propertygroups_propertygroupuuid_communicationconfiguration**](DefaultApi.md#post_propertygroups_propertygroupuuid_communicationconfiguration) | **POST** /PropertyGroups/{propertygroupuuid}/communicationconfiguration | Update communication configuration of a location group.
[**post_propertygroups_propertygroupuuid_managementrelations**](DefaultApi.md#post_propertygroups_propertygroupuuid_managementrelations) | **POST** /PropertyGroups/{propertygroupuuid}/managementrelations | Update management relations of a location group.
[**post_propertygroups_propertygroupuuid_servicelocations**](DefaultApi.md#post_propertygroups_propertygroupuuid_servicelocations) | **POST** /PropertyGroups/{propertygroupuuid}/servicelocations | Add locations to a location group.
[**post_servicelocations_bulk_archive**](DefaultApi.md#post_servicelocations_bulk_archive) | **POST** /ServiceLocations/bulk/archive | Archive multiple service locations in bulk.
[**post_servicelocations_bulk_recalculateeav**](DefaultApi.md#post_servicelocations_bulk_recalculateeav) | **POST** /ServiceLocations/bulk/recalculateeav | Trigger recalculation of EAV for multiple locations in bulk.
[**post_servicelocations_bulk_restore**](DefaultApi.md#post_servicelocations_bulk_restore) | **POST** /ServiceLocations/bulk/restore | Restore multiple archived service locations in bulk.
[**post_servicelocations_entityid_customproperties**](DefaultApi.md#post_servicelocations_entityid_customproperties) | **POST** /ServiceLocations/{entityId}/customproperties | /ServiceLocations/{entityId}/customproperties - POST
[**remove_contract_service**](DefaultApi.md#remove_contract_service) | **POST** /Contracts/{contractId}/removeservice | RemoveContractService
[**remove_contracted_services**](DefaultApi.md#remove_contracted_services) | **PUT** /Contracts/{contractuuid}/services/remove | Remove locations and/or services from being supplied on a contract.
[**reset_customer_portal_account**](DefaultApi.md#reset_customer_portal_account) | **POST** /Customers/{customeruuid}/portal/reset | Reset portal account of a customer, which will delete the customer portal account and reset the portal properties.
[**send_customer_communication_via_email**](DefaultApi.md#send_customer_communication_via_email) | **POST** /Customers/{customeruuid}/send/{subType} | Send email to a customer.
[**update_service_location_address**](DefaultApi.md#update_service_location_address) | **POST** /ServiceLocations/{servicelocationuuid}/updateaddress | Update addres of a location.
[**update_service_location_external_id**](DefaultApi.md#update_service_location_external_id) | **POST** /ServiceLocations/{servicelocationuuid}/updateexternalid | Update external ID of a location.
[**update_service_location_management_details**](DefaultApi.md#update_service_location_management_details) | **POST** /ServiceLocations/{servicelocationuuid}/updatemanagementdetails | Update management relations of a location.
[**update_service_location_product**](DefaultApi.md#update_service_location_product) | **POST** /ServiceLocations/{servicelocationuuid}/updateproduct | Update product for a location.
[**update_service_location_services**](DefaultApi.md#update_service_location_services) | **POST** /ServiceLocations/{servicelocationuuid}/updateservices | Update which services are enabled on the service location. Only services that were never supplied can be removed.


# **add_contract_service**
> ApiResponseDTO add_contract_service(contract_id, zf_tuuid, zf_ouuid, add_contract_service_request=add_contract_service_request)

AddContractService

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.add_contract_service_request import AddContractServiceRequest
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    contract_id = 'contract_id_example' # str | 
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    add_contract_service_request = {"utilityType":"none","estimatedConsumption":{"consumerGroupId":"string","unitOfMeasure":"none","meteringType":"none","direction":"offtake"}} # AddContractServiceRequest |  (optional)

    try:
        # AddContractService
        api_response = api_instance.add_contract_service(contract_id, zf_tuuid, zf_ouuid, add_contract_service_request=add_contract_service_request)
        print("The response of DefaultApi->add_contract_service:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->add_contract_service: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **str**|  | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **add_contract_service_request** | [**AddContractServiceRequest**](AddContractServiceRequest.md)|  | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_contracted_services**
> ApiResponseDTOOfContractDTO add_contracted_services(contractuuid, zf_tuuid, zf_ouuid, add_contracted_services_request=add_contracted_services_request)

Add locations and/or services to be supplied on a contract.

Add locations and/or services to be supplied on a contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.add_contracted_services_request import AddContractedServicesRequest
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    add_contracted_services_request = {"supplyStartDate":"string","supplyEndDate":"string","services":[{"serviceLocationId":"string","utilityType":"none","estimatedConsumptions":[{"consumerGroupId":"string","unitOfMeasure":"none","meteringType":"none","direction":"offtake"}]}]} # AddContractedServicesRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Add locations and/or services to be supplied on a contract.
        api_response = api_instance.add_contracted_services(contractuuid, zf_tuuid, zf_ouuid, add_contracted_services_request=add_contracted_services_request)
        print("The response of DefaultApi->add_contracted_services:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->add_contracted_services: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **add_contracted_services_request** | [**AddContractedServicesRequest**](AddContractedServicesRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_add_contract_service**
> ApiResponseDTO bulk_add_contract_service(zf_tuuid, zf_ouuid, bulk_add_contract_service_request=bulk_add_contract_service_request)

BulkAddContractService

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_add_contract_service_request import BulkAddContractServiceRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_add_contract_service_request = {"onlyValidate":true,"queryParams":{"serviceLocationId":"string","propertyGroupIds":["string"],"utilityTypes":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","productIds":["string"],"excludeTerminatedContracts":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","utilityType":"none","estimatedConsumption":{"consumerGroupId":"string","unitOfMeasure":"none","meteringType":"none","direction":"offtake"}} # BulkAddContractServiceRequest |  (optional)

    try:
        # BulkAddContractService
        api_response = api_instance.bulk_add_contract_service(zf_tuuid, zf_ouuid, bulk_add_contract_service_request=bulk_add_contract_service_request)
        print("The response of DefaultApi->bulk_add_contract_service:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->bulk_add_contract_service: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_add_contract_service_request** | [**BulkAddContractServiceRequest**](BulkAddContractServiceRequest.md)|  | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_change_customer_group**
> ApiResponseDTO bulk_change_customer_group(zf_tuuid, zf_ouuid, bulk_change_customer_customer_group_request=bulk_change_customer_customer_group_request)

Move multiple customers to customer group in bulk.

Move multiple customers to customer group in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_change_customer_customer_group_request import BulkChangeCustomerCustomerGroupRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_change_customer_customer_group_request = {"onlyValidate":true,"queryParams":{"customerTypes":["string"],"defaultPaymentMethod":"string","propertyGroupIds":["string"],"excludePropertyGroupId":"string","customerGroupId":"string","excludeCustomerGroupId":"string","customerGroupName":"string","nameContains":"string","activationCode":"string","priorityServiceRegisterPropertyTypeId":"string","vulnerabilityRegisterPropertyTypeId":"string","priorityServiceRegisterIds":["string"],"vulnerabilityRegisterIds":["string"],"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","customerGroupId":"string"} # BulkChangeCustomerCustomerGroupRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Move multiple customers to customer group in bulk.
        api_response = api_instance.bulk_change_customer_group(zf_tuuid, zf_ouuid, bulk_change_customer_customer_group_request=bulk_change_customer_customer_group_request)
        print("The response of DefaultApi->bulk_change_customer_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->bulk_change_customer_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_change_customer_customer_group_request** | [**BulkChangeCustomerCustomerGroupRequest**](BulkChangeCustomerCustomerGroupRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_remove_contract_service**
> ApiResponseDTO bulk_remove_contract_service(zf_tuuid, zf_ouuid, bulk_remove_contract_service_request=bulk_remove_contract_service_request)

BulkRemoveContractService

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_remove_contract_service_request import BulkRemoveContractServiceRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_remove_contract_service_request = {"onlyValidate":true,"queryParams":{"serviceLocationId":"string","propertyGroupIds":["string"],"utilityTypes":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","productIds":["string"],"excludeTerminatedContracts":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","utilityType":"none"} # BulkRemoveContractServiceRequest |  (optional)

    try:
        # BulkRemoveContractService
        api_response = api_instance.bulk_remove_contract_service(zf_tuuid, zf_ouuid, bulk_remove_contract_service_request=bulk_remove_contract_service_request)
        print("The response of DefaultApi->bulk_remove_contract_service:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->bulk_remove_contract_service: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_remove_contract_service_request** | [**BulkRemoveContractServiceRequest**](BulkRemoveContractServiceRequest.md)|  | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_update_service_location_product**
> ApiResponseDTO bulk_update_service_location_product(zf_tuuid, zf_ouuid, bulk_update_service_location_product_request=bulk_update_service_location_product_request)

Update product for multiple locations in bulk.

Update product for multiple locations in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_update_service_location_product_request import BulkUpdateServiceLocationProductRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_update_service_location_product_request = {"onlyValidate":true,"queryParams":{"hasUtilityTypes":["string"],"hasNotUtilityTypes":["string"],"customerId":"string","propertyGroupIds":["string"],"excludeServiceLocationsSuppliedInContractId":"string","excludeServiceLocationsInPropertyGroupId":"string","referenceDateTime":"string","excludeArchived":true,"isAutoRestored":true,"postalCode":"string","city":"string","streetNumber":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","productId":"string"} # BulkUpdateServiceLocationProductRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update product for multiple locations in bulk.
        api_response = api_instance.bulk_update_service_location_product(zf_tuuid, zf_ouuid, bulk_update_service_location_product_request=bulk_update_service_location_product_request)
        print("The response of DefaultApi->bulk_update_service_location_product:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->bulk_update_service_location_product: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_update_service_location_product_request** | [**BulkUpdateServiceLocationProductRequest**](BulkUpdateServiceLocationProductRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_update_service_location_services**
> ApiResponseDTO bulk_update_service_location_services(zf_tuuid, zf_ouuid, update_service_location_services_request=update_service_location_services_request)

Update which services are enabled on multiple service locations in bulk.

Update which services are enabled on multiple service locations in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.update_service_location_services_request import UpdateServiceLocationServicesRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_service_location_services_request = {"servicesToAdd":["none"],"servicesToRemove":["none"],"onlyValidate":true,"queryParams":{"hasUtilityTypes":["string"],"hasNotUtilityTypes":["string"],"customerId":"string","propertyGroupIds":["string"],"excludeServiceLocationsSuppliedInContractId":"string","excludeServiceLocationsInPropertyGroupId":"string","referenceDateTime":"string","excludeArchived":true,"isAutoRestored":true,"postalCode":"string","city":"string","streetNumber":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # UpdateServiceLocationServicesRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update which services are enabled on multiple service locations in bulk.
        api_response = api_instance.bulk_update_service_location_services(zf_tuuid, zf_ouuid, update_service_location_services_request=update_service_location_services_request)
        print("The response of DefaultApi->bulk_update_service_location_services:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->bulk_update_service_location_services: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_service_location_services_request** | [**UpdateServiceLocationServicesRequest**](UpdateServiceLocationServicesRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **change_customer_billing_details**
> ApiResponseDTOOfCustomerDTO change_customer_billing_details(customeruuid, zf_tuuid, zf_ouuid, update_customer_billing_details_request=update_customer_billing_details_request)

Update billing details of a customer.

Update billing details of a customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_dto import ApiResponseDTOOfCustomerDTO
from masterdata_client.models.update_customer_billing_details_request import UpdateCustomerBillingDetailsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_customer_billing_details_request = {"paymentTermsId":"string","defaultPaymentMethod":"sct","collectionDayOfMonth":0} # UpdateCustomerBillingDetailsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update billing details of a customer.
        api_response = api_instance.change_customer_billing_details(customeruuid, zf_tuuid, zf_ouuid, update_customer_billing_details_request=update_customer_billing_details_request)
        print("The response of DefaultApi->change_customer_billing_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->change_customer_billing_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_customer_billing_details_request** | [**UpdateCustomerBillingDetailsRequest**](UpdateCustomerBillingDetailsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerDTO**](ApiResponseDTOOfCustomerDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **change_customer_collection_day**
> ApiResponseDTOOfCustomerDTO change_customer_collection_day(customeruuid, zf_tuuid, zf_ouuid, update_collection_day_request=update_collection_day_request)

Update only the Direct Debit collection day of a customer. Narrow, single-purpose endpoint used by the resident portal self-service so residents can hold a minimal collection-day permission rather than the broad billing-details one (which also changes payment terms and default payment method).

Update only the Direct Debit collection day of a customer. Narrow, single-purpose endpoint used by the
resident portal self-service so residents can hold a minimal collection-day permission rather than the
broad billing-details one (which also changes payment terms and default payment method).

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_dto import ApiResponseDTOOfCustomerDTO
from masterdata_client.models.update_collection_day_request import UpdateCollectionDayRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_collection_day_request = {"collectionDayOfMonth":0} # UpdateCollectionDayRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update only the Direct Debit collection day of a customer. Narrow, single-purpose endpoint used by the resident portal self-service so residents can hold a minimal collection-day permission rather than the broad billing-details one (which also changes payment terms and default payment method).
        api_response = api_instance.change_customer_collection_day(customeruuid, zf_tuuid, zf_ouuid, update_collection_day_request=update_collection_day_request)
        print("The response of DefaultApi->change_customer_collection_day:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->change_customer_collection_day: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_collection_day_request** | [**UpdateCollectionDayRequest**](UpdateCollectionDayRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerDTO**](ApiResponseDTOOfCustomerDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **change_customer_communication_preferences**
> ApiResponseDTOOfCustomerDTO change_customer_communication_preferences(customeruuid, zf_tuuid, zf_ouuid, change_customer_communication_preferences_request=change_customer_communication_preferences_request)

Update communication preferences of a customer.

Update communication preferences of a customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_dto import ApiResponseDTOOfCustomerDTO
from masterdata_client.models.change_customer_communication_preferences_request import ChangeCustomerCommunicationPreferencesRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    change_customer_communication_preferences_request = {"communicationPreferences":{"culture":"string","invoiceCommunicationPreferences":[{"invoiceType":"advance","communicationType":"none"}],"annualStatementCommunicationPreference":"none","prepaymentStatementCommunicationPreference":"none","collectionFlowId":"string"}} # ChangeCustomerCommunicationPreferencesRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update communication preferences of a customer.
        api_response = api_instance.change_customer_communication_preferences(customeruuid, zf_tuuid, zf_ouuid, change_customer_communication_preferences_request=change_customer_communication_preferences_request)
        print("The response of DefaultApi->change_customer_communication_preferences:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->change_customer_communication_preferences: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **change_customer_communication_preferences_request** | [**ChangeCustomerCommunicationPreferencesRequest**](ChangeCustomerCommunicationPreferencesRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerDTO**](ApiResponseDTOOfCustomerDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **change_customer_contact_details**
> ApiResponseDTOOfCustomerDTO change_customer_contact_details(customeruuid, zf_tuuid, zf_ouuid, change_customer_contact_details_request=change_customer_contact_details_request)

Update contact details of a customer.

Update contact details of a customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_dto import ApiResponseDTOOfCustomerDTO
from masterdata_client.models.change_customer_contact_details_request import ChangeCustomerContactDetailsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    change_customer_contact_details_request = {"contactEntries":[{"value":"string","description":"string","primaryForType":true,"contactType":"email"}],"countryCode":"string","changedByPortal":true} # ChangeCustomerContactDetailsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update contact details of a customer.
        api_response = api_instance.change_customer_contact_details(customeruuid, zf_tuuid, zf_ouuid, change_customer_contact_details_request=change_customer_contact_details_request)
        print("The response of DefaultApi->change_customer_contact_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->change_customer_contact_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **change_customer_contact_details_request** | [**ChangeCustomerContactDetailsRequest**](ChangeCustomerContactDetailsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerDTO**](ApiResponseDTOOfCustomerDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **change_customer_details**
> ApiResponseDTOOfCustomerDTO change_customer_details(customeruuid, zf_tuuid, zf_ouuid, change_customer_details_request=change_customer_details_request)

Update details of a customer.

Update details of a customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_dto import ApiResponseDTOOfCustomerDTO
from masterdata_client.models.change_customer_details_request import ChangeCustomerDetailsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    change_customer_details_request = {"accountNumber":"string","salutation":"string","initials":"string","firstName":"string","lastName":"string","birthDate":"string","ssin":"string","ssinCountry":"aut","companyName":"string","organizationNumber":"string","vatNumber":"string","countryCode":"string","customerType":"person","changedByPortal":true} # ChangeCustomerDetailsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update details of a customer.
        api_response = api_instance.change_customer_details(customeruuid, zf_tuuid, zf_ouuid, change_customer_details_request=change_customer_details_request)
        print("The response of DefaultApi->change_customer_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->change_customer_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **change_customer_details_request** | [**ChangeCustomerDetailsRequest**](ChangeCustomerDetailsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerDTO**](ApiResponseDTOOfCustomerDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **change_customer_e_invoicing_settings**
> ApiResponseDTOOfCustomerDTO change_customer_e_invoicing_settings(customeruuid, zf_tuuid, zf_ouuid, update_e_invoicing_settings_request=update_e_invoicing_settings_request)

Update e-invoicing settings of a customer.

Update e-invoicing settings of a customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_dto import ApiResponseDTOOfCustomerDTO
from masterdata_client.models.update_e_invoicing_settings_request import UpdateEInvoicingSettingsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_e_invoicing_settings_request = {"serviceNumber":"string","preferredPeppolScheme":"string","customPeppolIdentifier":"string"} # UpdateEInvoicingSettingsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update e-invoicing settings of a customer.
        api_response = api_instance.change_customer_e_invoicing_settings(customeruuid, zf_tuuid, zf_ouuid, update_e_invoicing_settings_request=update_e_invoicing_settings_request)
        print("The response of DefaultApi->change_customer_e_invoicing_settings:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->change_customer_e_invoicing_settings: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_e_invoicing_settings_request** | [**UpdateEInvoicingSettingsRequest**](UpdateEInvoicingSettingsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerDTO**](ApiResponseDTOOfCustomerDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **change_customer_group**
> ApiResponseDTOOfCustomerDTO change_customer_group(customeruuid, zf_tuuid, zf_ouuid, change_customer_customer_group_request=change_customer_customer_group_request)

Move customer to a different customer group.

Move customer to a different customer group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_dto import ApiResponseDTOOfCustomerDTO
from masterdata_client.models.change_customer_customer_group_request import ChangeCustomerCustomerGroupRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    change_customer_customer_group_request = {"customerGroupId":"string"} # ChangeCustomerCustomerGroupRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Move customer to a different customer group.
        api_response = api_instance.change_customer_group(customeruuid, zf_tuuid, zf_ouuid, change_customer_customer_group_request=change_customer_customer_group_request)
        print("The response of DefaultApi->change_customer_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->change_customer_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **change_customer_customer_group_request** | [**ChangeCustomerCustomerGroupRequest**](ChangeCustomerCustomerGroupRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerDTO**](ApiResponseDTOOfCustomerDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **change_customer_invoice_address**
> ApiResponseDTOOfCustomerDTO change_customer_invoice_address(customeruuid, zf_tuuid, zf_ouuid, update_invoice_address_request=update_invoice_address_request)

Update invoice address of a customer.

Update invoice address of a customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_dto import ApiResponseDTOOfCustomerDTO
from masterdata_client.models.update_invoice_address_request import UpdateInvoiceAddressRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_invoice_address_request = {"invoiceAddress":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":"aut","localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"changedByPortal":true} # UpdateInvoiceAddressRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update invoice address of a customer.
        api_response = api_instance.change_customer_invoice_address(customeruuid, zf_tuuid, zf_ouuid, update_invoice_address_request=update_invoice_address_request)
        print("The response of DefaultApi->change_customer_invoice_address:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->change_customer_invoice_address: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_invoice_address_request** | [**UpdateInvoiceAddressRequest**](UpdateInvoiceAddressRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerDTO**](ApiResponseDTOOfCustomerDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **change_portal_details**
> ApiResponseDTOOfCustomerDTO change_portal_details(customeruuid, zf_tuuid, zf_ouuid, update_customer_portal_details_request=update_customer_portal_details_request)

Update customer portal details of a customer.

Update customer portal details of a customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_dto import ApiResponseDTOOfCustomerDTO
from masterdata_client.models.update_customer_portal_details_request import UpdateCustomerPortalDetailsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_customer_portal_details_request = {"applicationUserId":"string","resetPasswordToken":"string","confirmAccountToken":"string","email":"string","sendCommunication":true} # UpdateCustomerPortalDetailsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update customer portal details of a customer.
        api_response = api_instance.change_portal_details(customeruuid, zf_tuuid, zf_ouuid, update_customer_portal_details_request=update_customer_portal_details_request)
        print("The response of DefaultApi->change_portal_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->change_portal_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_customer_portal_details_request** | [**UpdateCustomerPortalDetailsRequest**](UpdateCustomerPortalDetailsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerDTO**](ApiResponseDTOOfCustomerDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **confirm_customer_portal_account**
> ApiResponseDTOOfCustomerDTO confirm_customer_portal_account(customeruuid, zf_tuuid, zf_ouuid, confirm_customer_portal_account_request=confirm_customer_portal_account_request)

Confirm portal account of a customer

Confirm portal account of a customer

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_dto import ApiResponseDTOOfCustomerDTO
from masterdata_client.models.confirm_customer_portal_account_request import ConfirmCustomerPortalAccountRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    confirm_customer_portal_account_request = {"confirmAccountToken":"string"} # ConfirmCustomerPortalAccountRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Confirm portal account of a customer
        api_response = api_instance.confirm_customer_portal_account(customeruuid, zf_tuuid, zf_ouuid, confirm_customer_portal_account_request=confirm_customer_portal_account_request)
        print("The response of DefaultApi->confirm_customer_portal_account:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->confirm_customer_portal_account: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **confirm_customer_portal_account_request** | [**ConfirmCustomerPortalAccountRequest**](ConfirmCustomerPortalAccountRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerDTO**](ApiResponseDTOOfCustomerDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_customer**
> ApiResponseDTOOfCustomerDTO create_customer(zf_tuuid, zf_ouuid, create_customer_request=create_customer_request)

Create new customer.

Create new customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_dto import ApiResponseDTOOfCustomerDTO
from masterdata_client.models.create_customer_request import CreateCustomerRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    create_customer_request = {"accountNum":"string","salutation":"string","initials":"string","firstName":"string","lastName":"string","birthDate":"string","ssin":"string","ssinCountry":"aut","customerType":"person","companyName":"string","vatNumber":"string","organizationNumber":"string","paymentTermsId":"string","defaultPaymentMethod":"sct","customerGroupId":"string","invoiceAddress":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":"aut","localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"bankAccounts":[{"iban":"string","signDate":"string"}],"contactDetails":[{"value":"string","description":"string","primaryForType":true,"contactType":"email"}],"communicationPreferences":{"culture":"string","invoiceCommunicationPreferences":[{"invoiceType":"advance","communicationType":"none"}],"annualStatementCommunicationPreference":"none","prepaymentStatementCommunicationPreference":"none","collectionFlowId":"string"},"serviceNumber":"string"} # CreateCustomerRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Create new customer.
        api_response = api_instance.create_customer(zf_tuuid, zf_ouuid, create_customer_request=create_customer_request)
        print("The response of DefaultApi->create_customer:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->create_customer: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **create_customer_request** | [**CreateCustomerRequest**](CreateCustomerRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerDTO**](ApiResponseDTOOfCustomerDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_service_location**
> ApiResponseDTOOfServiceLocationDTO create_service_location(zf_tuuid, zf_ouuid, create_service_location_request=create_service_location_request)

Create new location.

Create new location.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_service_location_dto import ApiResponseDTOOfServiceLocationDTO
from masterdata_client.models.create_service_location_request import CreateServiceLocationRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    create_service_location_request = {"address":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":"aut","localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"externalId":"string","productId":"string","services":[{"utilityType":"none"}],"managementRelations":[{"customerId":"string","managementRelationType":"owner"}]} # CreateServiceLocationRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Create new location.
        api_response = api_instance.create_service_location(zf_tuuid, zf_ouuid, create_service_location_request=create_service_location_request)
        print("The response of DefaultApi->create_service_location:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->create_service_location: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **create_service_location_request** | [**CreateServiceLocationRequest**](CreateServiceLocationRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfServiceLocationDTO**](ApiResponseDTOOfServiceLocationDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_contracts_bulk**
> ApiResponseDTOOfboolean delete_contracts_bulk(zf_tuuid, zf_ouuid, bulk_remove_contract_request=bulk_remove_contract_request)

Delete multiple draft contracts in bulk.

Delete multiple draft contracts in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from masterdata_client.models.bulk_remove_contract_request import BulkRemoveContractRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_remove_contract_request = {"onlyValidate":true,"queryParams":{"serviceLocationId":"string","propertyGroupIds":["string"],"utilityTypes":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","productIds":["string"],"excludeTerminatedContracts":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkRemoveContractRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Delete multiple draft contracts in bulk.
        api_response = api_instance.delete_contracts_bulk(zf_tuuid, zf_ouuid, bulk_remove_contract_request=bulk_remove_contract_request)
        print("The response of DefaultApi->delete_contracts_bulk:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_contracts_bulk: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_remove_contract_request** | [**BulkRemoveContractRequest**](BulkRemoveContractRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | No Content |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_contracts_contractuuid**
> ApiResponseDTOOfboolean delete_contracts_contractuuid(contractuuid, zf_tuuid, zf_ouuid, body=body)

Delete a draft contract.

Delete a draft contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    body = None # object | Propagates notification that operations should be canceled. (optional)

    try:
        # Delete a draft contract.
        api_response = api_instance.delete_contracts_contractuuid(contractuuid, zf_tuuid, zf_ouuid, body=body)
        print("The response of DefaultApi->delete_contracts_contractuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_contracts_contractuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **body** | **object**| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_customergroups_uuid**
> ApiResponseDTOOfboolean delete_customergroups_uuid(uuid, zf_tuuid, zf_ouuid)

Delete customer group.

Delete customer group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    uuid = 'uuid_example' # str | The ID of the customer group.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Delete customer group.
        api_response = api_instance.delete_customergroups_uuid(uuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->delete_customergroups_uuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_customergroups_uuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The ID of the customer group. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | No Content |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_customers_bulk**
> ApiResponseDTOOfboolean delete_customers_bulk(zf_tuuid, zf_ouuid, bulk_remove_customer_request=bulk_remove_customer_request)

Delete multiple customers in bulk.

Delete multiple customers in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from masterdata_client.models.bulk_remove_customer_request import BulkRemoveCustomerRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_remove_customer_request = {"onlyValidate":true,"queryParams":{"customerTypes":["string"],"defaultPaymentMethod":"string","propertyGroupIds":["string"],"excludePropertyGroupId":"string","customerGroupId":"string","excludeCustomerGroupId":"string","customerGroupName":"string","nameContains":"string","activationCode":"string","priorityServiceRegisterPropertyTypeId":"string","vulnerabilityRegisterPropertyTypeId":"string","priorityServiceRegisterIds":["string"],"vulnerabilityRegisterIds":["string"],"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkRemoveCustomerRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Delete multiple customers in bulk.
        api_response = api_instance.delete_customers_bulk(zf_tuuid, zf_ouuid, bulk_remove_customer_request=bulk_remove_customer_request)
        print("The response of DefaultApi->delete_customers_bulk:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_customers_bulk: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_remove_customer_request** | [**BulkRemoveCustomerRequest**](BulkRemoveCustomerRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | No Content |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_customers_customeruuid**
> ApiResponseDTOOfboolean delete_customers_customeruuid(customeruuid, zf_tuuid, zf_ouuid, body=body)

Delete a customer.

Delete a customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    body = None # object | Propagates notification that operations should be canceled. (optional)

    try:
        # Delete a customer.
        api_response = api_instance.delete_customers_customeruuid(customeruuid, zf_tuuid, zf_ouuid, body=body)
        print("The response of DefaultApi->delete_customers_customeruuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_customers_customeruuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **body** | **object**| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_moverequests**
> ApiResponseDTOOfboolean delete_moverequests(zf_tuuid, zf_ouuid, bulk_delete_move_request_request=bulk_delete_move_request_request)

Delete multiple move requests in bulk.

This action is irreversible.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from masterdata_client.models.bulk_delete_move_request_request import BulkDeleteMoveRequestRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_delete_move_request_request = {"onlyValidate":true,"queryParams":{"locationId":"string","moveRequestTypeId":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkDeleteMoveRequestRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Delete multiple move requests in bulk.
        api_response = api_instance.delete_moverequests(zf_tuuid, zf_ouuid, bulk_delete_move_request_request=bulk_delete_move_request_request)
        print("The response of DefaultApi->delete_moverequests:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_moverequests: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_delete_move_request_request** | [**BulkDeleteMoveRequestRequest**](BulkDeleteMoveRequestRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**204** | No Content |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_moverequests_moverequestuuid**
> ApiResponseDTOOfboolean delete_moverequests_moverequestuuid(moverequestuuid, zf_tuuid, zf_ouuid)

Delete move request.

This action is irreversible.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Delete move request.
        api_response = api_instance.delete_moverequests_moverequestuuid(moverequestuuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->delete_moverequests_moverequestuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_moverequests_moverequestuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_propertygroups_bulk**
> ApiResponseDTO delete_propertygroups_bulk(zf_tuuid, zf_ouuid, bulk_delete_property_group_request=bulk_delete_property_group_request)

Delete multiple location groups in bulk.

Delete multiple location groups in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_delete_property_group_request import BulkDeletePropertyGroupRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_delete_property_group_request = {"onlyValidate":true,"queryParams":{"nameContains":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","mutationDateTime":"string"} # BulkDeletePropertyGroupRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Delete multiple location groups in bulk.
        api_response = api_instance.delete_propertygroups_bulk(zf_tuuid, zf_ouuid, bulk_delete_property_group_request=bulk_delete_property_group_request)
        print("The response of DefaultApi->delete_propertygroups_bulk:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_propertygroups_bulk: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_delete_property_group_request** | [**BulkDeletePropertyGroupRequest**](BulkDeletePropertyGroupRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_propertygroups_propertygroupuuid**
> ApiResponseDTOOfboolean delete_propertygroups_propertygroupuuid(propertygroupuuid, zf_tuuid, zf_ouuid, delete_property_group_request=delete_property_group_request)

Delete a location group.

Delete a location group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from masterdata_client.models.delete_property_group_request import DeletePropertyGroupRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    propertygroupuuid = 'propertygroupuuid_example' # str | The ID of the location group.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    delete_property_group_request = {"mutationDateTime":"string"} # DeletePropertyGroupRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Delete a location group.
        api_response = api_instance.delete_propertygroups_propertygroupuuid(propertygroupuuid, zf_tuuid, zf_ouuid, delete_property_group_request=delete_property_group_request)
        print("The response of DefaultApi->delete_propertygroups_propertygroupuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_propertygroups_propertygroupuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupuuid** | **str**| The ID of the location group. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **delete_property_group_request** | [**DeletePropertyGroupRequest**](DeletePropertyGroupRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_propertygroups_propertygroupuuid_servicelocations**
> ApiResponseDTOOfPropertyGroupDTO delete_propertygroups_propertygroupuuid_servicelocations(propertygroupuuid, zf_tuuid, zf_ouuid, property_group_service_locations_request=property_group_service_locations_request)

Remove locations from a location group.

Remove locations from a location group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_property_group_dto import ApiResponseDTOOfPropertyGroupDTO
from masterdata_client.models.property_group_service_locations_request import PropertyGroupServiceLocationsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    propertygroupuuid = 'propertygroupuuid_example' # str | The ID of the location group.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    property_group_service_locations_request = {"serviceLocations":["string"],"referenceDate":"string"} # PropertyGroupServiceLocationsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Remove locations from a location group.
        api_response = api_instance.delete_propertygroups_propertygroupuuid_servicelocations(propertygroupuuid, zf_tuuid, zf_ouuid, property_group_service_locations_request=property_group_service_locations_request)
        print("The response of DefaultApi->delete_propertygroups_propertygroupuuid_servicelocations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_propertygroups_propertygroupuuid_servicelocations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupuuid** | **str**| The ID of the location group. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **property_group_service_locations_request** | [**PropertyGroupServiceLocationsRequest**](PropertyGroupServiceLocationsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPropertyGroupDTO**](ApiResponseDTOOfPropertyGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_servicelocations_bulk**
> ApiResponseDTOOfboolean delete_servicelocations_bulk(zf_tuuid, zf_ouuid, bulk_delete_service_location_request=bulk_delete_service_location_request)

Delete multiple unused locations in bulk.

Delete multiple unused locations in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from masterdata_client.models.bulk_delete_service_location_request import BulkDeleteServiceLocationRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_delete_service_location_request = {"onlyValidate":true,"queryParams":{"hasUtilityTypes":["string"],"hasNotUtilityTypes":["string"],"customerId":"string","propertyGroupIds":["string"],"excludeServiceLocationsSuppliedInContractId":"string","excludeServiceLocationsInPropertyGroupId":"string","referenceDateTime":"string","excludeArchived":true,"isAutoRestored":true,"postalCode":"string","city":"string","streetNumber":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkDeleteServiceLocationRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Delete multiple unused locations in bulk.
        api_response = api_instance.delete_servicelocations_bulk(zf_tuuid, zf_ouuid, bulk_delete_service_location_request=bulk_delete_service_location_request)
        print("The response of DefaultApi->delete_servicelocations_bulk:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_servicelocations_bulk: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_delete_service_location_request** | [**BulkDeleteServiceLocationRequest**](BulkDeleteServiceLocationRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | No Content |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filter_all_customers**
> ApiResponseDTOOfPagedResponseModelDTOOfCustomerDTO filter_all_customers(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_customers_query_params=get_customers_query_params)

Retrieve customers based on the provided query parameters.

Retrieve customers based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_customer_dto import ApiResponseDTOOfPagedResponseModelDTOOfCustomerDTO
from masterdata_client.models.get_customers_query_params import GetCustomersQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | Allows to order the customers. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)
    get_customers_query_params = {"customerTypes":["string"],"defaultPaymentMethod":"string","propertyGroupIds":["string"],"excludePropertyGroupId":"string","customerGroupId":"string","excludeCustomerGroupId":"string","customerGroupName":"string","nameContains":"string","activationCode":"string","priorityServiceRegisterPropertyTypeId":"string","vulnerabilityRegisterPropertyTypeId":"string","priorityServiceRegisterIds":["string"],"vulnerabilityRegisterIds":["string"],"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetCustomersQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve customers based on the provided query parameters.
        api_response = api_instance.filter_all_customers(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_customers_query_params=get_customers_query_params)
        print("The response of DefaultApi->filter_all_customers:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->filter_all_customers: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **order_by** | **str**| Allows to order the customers. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 
 **get_customers_query_params** | [**GetCustomersQueryParams**](GetCustomersQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfCustomerDTO**](ApiResponseDTOOfPagedResponseModelDTOOfCustomerDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response of customers. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filter_all_service_locations**
> ApiResponseDTOOfPagedResponseModelDTOOfServiceLocationDTO filter_all_service_locations(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_service_locations_query_params=get_service_locations_query_params)

Retrieve locations based on the provided query parameters.

Retrieve locations based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_service_location_dto import ApiResponseDTOOfPagedResponseModelDTOOfServiceLocationDTO
from masterdata_client.models.get_service_locations_query_params import GetServiceLocationsQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | Allows to order the locations. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)
    get_service_locations_query_params = {"hasUtilityTypes":["string"],"hasNotUtilityTypes":["string"],"customerId":"string","propertyGroupIds":["string"],"excludeServiceLocationsSuppliedInContractId":"string","excludeServiceLocationsInPropertyGroupId":"string","referenceDateTime":"string","excludeArchived":true,"isAutoRestored":true,"postalCode":"string","city":"string","streetNumber":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetServiceLocationsQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve locations based on the provided query parameters.
        api_response = api_instance.filter_all_service_locations(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_service_locations_query_params=get_service_locations_query_params)
        print("The response of DefaultApi->filter_all_service_locations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->filter_all_service_locations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **order_by** | **str**| Allows to order the locations. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 
 **get_service_locations_query_params** | [**GetServiceLocationsQueryParams**](GetServiceLocationsQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfServiceLocationDTO**](ApiResponseDTOOfPagedResponseModelDTOOfServiceLocationDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response of locations. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filter_overview_count_customers**
> ApiResponseDTOOfCustomerOverviewCountDTO filter_overview_count_customers(zf_tuuid, zf_ouuid, get_customers_query_params=get_customers_query_params)

Retrieve the overview count of customers based on the provided query parameters.

Retrieve the overview count of customers based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_overview_count_dto import ApiResponseDTOOfCustomerOverviewCountDTO
from masterdata_client.models.get_customers_query_params import GetCustomersQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    get_customers_query_params = {"customerTypes":["string"],"defaultPaymentMethod":"string","propertyGroupIds":["string"],"excludePropertyGroupId":"string","customerGroupId":"string","excludeCustomerGroupId":"string","customerGroupName":"string","nameContains":"string","activationCode":"string","priorityServiceRegisterPropertyTypeId":"string","vulnerabilityRegisterPropertyTypeId":"string","priorityServiceRegisterIds":["string"],"vulnerabilityRegisterIds":["string"],"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetCustomersQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve the overview count of customers based on the provided query parameters.
        api_response = api_instance.filter_overview_count_customers(zf_tuuid, zf_ouuid, get_customers_query_params=get_customers_query_params)
        print("The response of DefaultApi->filter_overview_count_customers:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->filter_overview_count_customers: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **get_customers_query_params** | [**GetCustomersQueryParams**](GetCustomersQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerOverviewCountDTO**](ApiResponseDTOOfCustomerOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The overview count of customers. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filter_overview_count_service_locations**
> ApiResponseDTOOfServiceLocationOverviewCountDTO filter_overview_count_service_locations(zf_tuuid, zf_ouuid, get_service_locations_query_params=get_service_locations_query_params)

Retrieve the overview count of locations based on the provided query parameters.

Retrieve the overview count of locations based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_service_location_overview_count_dto import ApiResponseDTOOfServiceLocationOverviewCountDTO
from masterdata_client.models.get_service_locations_query_params import GetServiceLocationsQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    get_service_locations_query_params = {"hasUtilityTypes":["string"],"hasNotUtilityTypes":["string"],"customerId":"string","propertyGroupIds":["string"],"excludeServiceLocationsSuppliedInContractId":"string","excludeServiceLocationsInPropertyGroupId":"string","referenceDateTime":"string","excludeArchived":true,"isAutoRestored":true,"postalCode":"string","city":"string","streetNumber":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetServiceLocationsQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve the overview count of locations based on the provided query parameters.
        api_response = api_instance.filter_overview_count_service_locations(zf_tuuid, zf_ouuid, get_service_locations_query_params=get_service_locations_query_params)
        print("The response of DefaultApi->filter_overview_count_service_locations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->filter_overview_count_service_locations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **get_service_locations_query_params** | [**GetServiceLocationsQueryParams**](GetServiceLocationsQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfServiceLocationOverviewCountDTO**](ApiResponseDTOOfServiceLocationOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The overview count of locations. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filter_postal_addresses**
> ApiResponseDTOOfPagedResponseModelDTOOfPostalCodeDTO filter_postal_addresses(zf_tuuid, zf_ouuid, continuation_token=continuation_token, get_postal_codes_query_params=get_postal_codes_query_params)

Retrieve postal addresses based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

Retrieve postal addresses based on the provided query parameters.
This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_postal_code_dto import ApiResponseDTOOfPagedResponseModelDTOOfPostalCodeDTO
from masterdata_client.models.get_postal_codes_query_params import GetPostalCodesQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)
    get_postal_codes_query_params = {"postalCode":"string"} # GetPostalCodesQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve postal addresses based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
        api_response = api_instance.filter_postal_addresses(zf_tuuid, zf_ouuid, continuation_token=continuation_token, get_postal_codes_query_params=get_postal_codes_query_params)
        print("The response of DefaultApi->filter_postal_addresses:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->filter_postal_addresses: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 
 **get_postal_codes_query_params** | [**GetPostalCodesQueryParams**](GetPostalCodesQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfPostalCodeDTO**](ApiResponseDTOOfPagedResponseModelDTOOfPostalCodeDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response of postal addresses. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_customer_impersonation_token**
> ApiResponseDTOOfstring generate_customer_impersonation_token(customeruuid, zf_tuuid, zf_ouuid)

Generate impersonation token for customer portal access.

Generate impersonation token for customer portal access.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto_ofstring import ApiResponseDTOOfstring
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Generate impersonation token for customer portal access.
        api_response = api_instance.generate_customer_impersonation_token(customeruuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->generate_customer_impersonation_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->generate_customer_impersonation_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfstring**](ApiResponseDTOOfstring.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_accounting_costcenters_mapping**
> ApiResponseDTOOfPagedResponseModelDTOOfCostCenterMappingItemDTO get_accounting_costcenters_mapping(only_unlinked=only_unlinked, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, continuation_token=continuation_token)

Retrieves a paged list of all categories (only property groups for now) that are mapped or need to be mapped to a cost centers.

Retrieves a paged list of all categories (only property groups for now) that are mapped or need to be mapped to a cost centers.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_cost_center_mapping_item_dto import ApiResponseDTOOfPagedResponseModelDTOOfCostCenterMappingItemDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    only_unlinked = True # bool |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of all categories (only property groups for now) that are mapped or need to be mapped to a cost centers.
        api_response = api_instance.get_accounting_costcenters_mapping(only_unlinked=only_unlinked, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, continuation_token=continuation_token)
        print("The response of DefaultApi->get_accounting_costcenters_mapping:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_accounting_costcenters_mapping: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **only_unlinked** | **bool**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **page_size** | **int**|  | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfCostCenterMappingItemDTO**](ApiResponseDTOOfPagedResponseModelDTOOfCostCenterMappingItemDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_accounting_costcenters_unmapped_overviewcount**
> ApiResponseDTOOfCostCenterMappingOverviewCountResponseDTO get_accounting_costcenters_unmapped_overviewcount()

Retrieves an overview count of all cost centers and the amount of items that still need mapping

Retrieves an overview count of all cost centers and the amount of items that still need mapping

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_cost_center_mapping_overview_count_response_dto import ApiResponseDTOOfCostCenterMappingOverviewCountResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)

    try:
        # Retrieves an overview count of all cost centers and the amount of items that still need mapping
        api_response = api_instance.get_accounting_costcenters_unmapped_overviewcount()
        print("The response of DefaultApi->get_accounting_costcenters_unmapped_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_accounting_costcenters_unmapped_overviewcount: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiResponseDTOOfCostCenterMappingOverviewCountResponseDTO**](ApiResponseDTOOfCostCenterMappingOverviewCountResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_accounting_costunits_mapping**
> ApiResponseDTOOfPagedResponseModelDTOOfCostUnitMappingItemDTO get_accounting_costunits_mapping(only_unlinked=only_unlinked, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, continuation_token=continuation_token)

Retrieves a paged list of cost center categories (only customer groups for now) that are mapped or need to be mapped to a cost units.

Retrieves a paged list of cost center categories (only customer groups for now) that are mapped or need to be mapped to a cost units.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_cost_unit_mapping_item_dto import ApiResponseDTOOfPagedResponseModelDTOOfCostUnitMappingItemDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    only_unlinked = True # bool |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of cost center categories (only customer groups for now) that are mapped or need to be mapped to a cost units.
        api_response = api_instance.get_accounting_costunits_mapping(only_unlinked=only_unlinked, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, continuation_token=continuation_token)
        print("The response of DefaultApi->get_accounting_costunits_mapping:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_accounting_costunits_mapping: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **only_unlinked** | **bool**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **page_size** | **int**|  | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfCostUnitMappingItemDTO**](ApiResponseDTOOfPagedResponseModelDTOOfCostUnitMappingItemDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_accounting_costunits_unmapped_overviewcount**
> ApiResponseDTOOfCostUnitMappingOverviewCountResponseDTO get_accounting_costunits_unmapped_overviewcount()

Retrieves an overview count of all cost unit categories and the amount of items that still need mapping

Retrieves an overview count of all cost unit categories and the amount of items that still need mapping

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_cost_unit_mapping_overview_count_response_dto import ApiResponseDTOOfCostUnitMappingOverviewCountResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)

    try:
        # Retrieves an overview count of all cost unit categories and the amount of items that still need mapping
        api_response = api_instance.get_accounting_costunits_unmapped_overviewcount()
        print("The response of DefaultApi->get_accounting_costunits_unmapped_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_accounting_costunits_unmapped_overviewcount: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiResponseDTOOfCostUnitMappingOverviewCountResponseDTO**](ApiResponseDTOOfCostUnitMappingOverviewCountResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_accounting_itemcodes_mapping**
> ApiResponseDTOOfPagedResponseModelDTOOfItemCodeMappingItemDTO get_accounting_itemcodes_mapping(name=name, accounting_code=accounting_code, category_name=category_name, category_id=category_id, only_unlinked=only_unlinked, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, continuation_token=continuation_token)

Retrieves a paged list of item code mapping items

Retrieves a paged list of item code mapping items

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_item_code_mapping_item_dto import ApiResponseDTOOfPagedResponseModelDTOOfItemCodeMappingItemDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    name = 'name_example' # str |  (optional)
    accounting_code = 'accounting_code_example' # str |  (optional)
    category_name = 'category_name_example' # str |  (optional)
    category_id = 56 # int |  (optional)
    only_unlinked = True # bool |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of item code mapping items
        api_response = api_instance.get_accounting_itemcodes_mapping(name=name, accounting_code=accounting_code, category_name=category_name, category_id=category_id, only_unlinked=only_unlinked, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, continuation_token=continuation_token)
        print("The response of DefaultApi->get_accounting_itemcodes_mapping:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_accounting_itemcodes_mapping: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**|  | [optional] 
 **accounting_code** | **str**|  | [optional] 
 **category_name** | **str**|  | [optional] 
 **category_id** | **int**|  | [optional] 
 **only_unlinked** | **bool**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **page_size** | **int**|  | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfItemCodeMappingItemDTO**](ApiResponseDTOOfPagedResponseModelDTOOfItemCodeMappingItemDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_accounting_itemcodes_unmapped_overviewcount**
> ApiResponseDTOOfItemCodeMappingOverviewCountDTO get_accounting_itemcodes_unmapped_overviewcount()

Retrieves an overview count of all item code categories and the amount of items that still need mapping

Retrieves an overview count of all item code categories and the amount of items that still need mapping

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_item_code_mapping_overview_count_dto import ApiResponseDTOOfItemCodeMappingOverviewCountDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)

    try:
        # Retrieves an overview count of all item code categories and the amount of items that still need mapping
        api_response = api_instance.get_accounting_itemcodes_unmapped_overviewcount()
        print("The response of DefaultApi->get_accounting_itemcodes_unmapped_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_accounting_itemcodes_unmapped_overviewcount: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiResponseDTOOfItemCodeMappingOverviewCountDTO**](ApiResponseDTOOfItemCodeMappingOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_accounting_projectcodes_mapping**
> ApiResponseDTOOfPagedResponseModelDTOOfProjectCodeMappingItemDTO get_accounting_projectcodes_mapping(name=name, accounting_code=accounting_code, category_name=category_name, category_id=category_id, only_unlinked=only_unlinked, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, continuation_token=continuation_token)

Retrieves a paged list of project code mapping items

Retrieves a paged list of project code mapping items

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_project_code_mapping_item_dto import ApiResponseDTOOfPagedResponseModelDTOOfProjectCodeMappingItemDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    name = 'name_example' # str |  (optional)
    accounting_code = 'accounting_code_example' # str |  (optional)
    category_name = 'category_name_example' # str |  (optional)
    category_id = 56 # int |  (optional)
    only_unlinked = True # bool |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of project code mapping items
        api_response = api_instance.get_accounting_projectcodes_mapping(name=name, accounting_code=accounting_code, category_name=category_name, category_id=category_id, only_unlinked=only_unlinked, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, continuation_token=continuation_token)
        print("The response of DefaultApi->get_accounting_projectcodes_mapping:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_accounting_projectcodes_mapping: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**|  | [optional] 
 **accounting_code** | **str**|  | [optional] 
 **category_name** | **str**|  | [optional] 
 **category_id** | **int**|  | [optional] 
 **only_unlinked** | **bool**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **page_size** | **int**|  | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfProjectCodeMappingItemDTO**](ApiResponseDTOOfPagedResponseModelDTOOfProjectCodeMappingItemDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_accounting_projectcodes_unmapped_overviewcount**
> ApiResponseDTOOfProjectCodeMappingOverviewCountDTO get_accounting_projectcodes_unmapped_overviewcount()

Retrieves an overview count of all project code categories and the amount of items that still need mapping

Retrieves an overview count of all project code categories and the amount of items that still need mapping

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_project_code_mapping_overview_count_dto import ApiResponseDTOOfProjectCodeMappingOverviewCountDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)

    try:
        # Retrieves an overview count of all project code categories and the amount of items that still need mapping
        api_response = api_instance.get_accounting_projectcodes_unmapped_overviewcount()
        print("The response of DefaultApi->get_accounting_projectcodes_unmapped_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_accounting_projectcodes_unmapped_overviewcount: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiResponseDTOOfProjectCodeMappingOverviewCountDTO**](ApiResponseDTOOfProjectCodeMappingOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_contract_bulk_add_service_context**
> ApiResponseDTOOfContractBulkAddServiceContextDTO get_contract_bulk_add_service_context(zf_tuuid, zf_ouuid, name=name, id=id, is_consumption_based=is_consumption_based, name2=name2, id2=id2, get_contracts_query_params=get_contracts_query_params)

GetContractBulkAddServiceContext

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_bulk_add_service_context_dto import ApiResponseDTOOfContractBulkAddServiceContextDTO
from masterdata_client.models.get_contracts_query_params import GetContractsQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    is_consumption_based = True # bool |  (optional)
    name2 = 'name_example' # str |  (optional)
    id2 = 56 # int |  (optional)
    get_contracts_query_params = {"serviceLocationId":"string","propertyGroupIds":["string"],"utilityTypes":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","productIds":["string"],"excludeTerminatedContracts":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetContractsQueryParams |  (optional)

    try:
        # GetContractBulkAddServiceContext
        api_response = api_instance.get_contract_bulk_add_service_context(zf_tuuid, zf_ouuid, name=name, id=id, is_consumption_based=is_consumption_based, name2=name2, id2=id2, get_contracts_query_params=get_contracts_query_params)
        print("The response of DefaultApi->get_contract_bulk_add_service_context:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_contract_bulk_add_service_context: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **is_consumption_based** | **bool**|  | [optional] 
 **name2** | **str**|  | [optional] 
 **id2** | **int**|  | [optional] 
 **get_contracts_query_params** | [**GetContractsQueryParams**](GetContractsQueryParams.md)|  | [optional] 

### Return type

[**ApiResponseDTOOfContractBulkAddServiceContextDTO**](ApiResponseDTOOfContractBulkAddServiceContextDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_contract_bulk_remove_service_context**
> ApiResponseDTOOfContractBulkRemoveServiceContextDTO get_contract_bulk_remove_service_context(zf_tuuid, zf_ouuid, name=name, id=id, is_consumption_based=is_consumption_based, name2=name2, id2=id2, get_contracts_query_params=get_contracts_query_params)

GetContractBulkRemoveServiceContext

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_bulk_remove_service_context_dto import ApiResponseDTOOfContractBulkRemoveServiceContextDTO
from masterdata_client.models.get_contracts_query_params import GetContractsQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    is_consumption_based = True # bool |  (optional)
    name2 = 'name_example' # str |  (optional)
    id2 = 56 # int |  (optional)
    get_contracts_query_params = {"serviceLocationId":"string","propertyGroupIds":["string"],"utilityTypes":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","productIds":["string"],"excludeTerminatedContracts":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetContractsQueryParams |  (optional)

    try:
        # GetContractBulkRemoveServiceContext
        api_response = api_instance.get_contract_bulk_remove_service_context(zf_tuuid, zf_ouuid, name=name, id=id, is_consumption_based=is_consumption_based, name2=name2, id2=id2, get_contracts_query_params=get_contracts_query_params)
        print("The response of DefaultApi->get_contract_bulk_remove_service_context:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_contract_bulk_remove_service_context: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **is_consumption_based** | **bool**|  | [optional] 
 **name2** | **str**|  | [optional] 
 **id2** | **int**|  | [optional] 
 **get_contracts_query_params** | [**GetContractsQueryParams**](GetContractsQueryParams.md)|  | [optional] 

### Return type

[**ApiResponseDTOOfContractBulkRemoveServiceContextDTO**](ApiResponseDTOOfContractBulkRemoveServiceContextDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_contracts_contractuuid**
> ApiResponseDTOOfContractDTO get_contracts_contractuuid(contractuuid, zf_tuuid, zf_ouuid)

Retrieve a contract by its ID.

Retrieve a contract by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Retrieve a contract by its ID.
        api_response = api_instance.get_contracts_contractuuid(contractuuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_contracts_contractuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_contracts_contractuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_customer**
> ApiResponseDTOOfCustomerDTO get_customer(customeruuid, zf_tuuid, zf_ouuid, return_deleted_customer=return_deleted_customer)

Retrieve a customer by its ID.

Retrieve a customer by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_dto import ApiResponseDTOOfCustomerDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    return_deleted_customer = True # bool | Whether to return the customer if it was soft deleted. (optional)

    try:
        # Retrieve a customer by its ID.
        api_response = api_instance.get_customer(customeruuid, zf_tuuid, zf_ouuid, return_deleted_customer=return_deleted_customer)
        print("The response of DefaultApi->get_customer:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_customer: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **return_deleted_customer** | **bool**| Whether to return the customer if it was soft deleted. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerDTO**](ApiResponseDTOOfCustomerDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_customer_by_account_number**
> ApiResponseDTOOfCustomerDTO get_customer_by_account_number(zf_tuuid, zf_ouuid, customer_account_number=customer_account_number)

Retrieve a customer by its account number.

Retrieve a customer by its account number.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_dto import ApiResponseDTOOfCustomerDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    customer_account_number = 'customer_account_number_example' # str | The account number of the customer. (optional)

    try:
        # Retrieve a customer by its account number.
        api_response = api_instance.get_customer_by_account_number(zf_tuuid, zf_ouuid, customer_account_number=customer_account_number)
        print("The response of DefaultApi->get_customer_by_account_number:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_customer_by_account_number: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **customer_account_number** | **str**| The account number of the customer. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerDTO**](ApiResponseDTOOfCustomerDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_customergroups**
> ApiResponseDTOOfPagedResponseModelDTOOfCustomerGroupDTO get_customergroups(zf_tuuid, zf_ouuid, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, order_by=order_by, continuation_token=continuation_token)

Retrieve customer groups based on the provided query parameters.

Retrieve customer groups based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_customer_group_dto import ApiResponseDTOOfPagedResponseModelDTOOfCustomerGroupDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)
    order_by = 'order_by_example' # str | Allows to order the customer groups. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieve customer groups based on the provided query parameters.
        api_response = api_instance.get_customergroups(zf_tuuid, zf_ouuid, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, order_by=order_by, continuation_token=continuation_token)
        print("The response of DefaultApi->get_customergroups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_customergroups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **page_size** | **int**|  | [optional] 
 **order_by** | **str**| Allows to order the customer groups. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfCustomerGroupDTO**](ApiResponseDTOOfPagedResponseModelDTOOfCustomerGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response of customer groups. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_customergroups_customergroupuuid**
> ApiResponseDTOOfCustomerGroupDTO get_customergroups_customergroupuuid(customer_groupuu_id, zf_tuuid, zf_ouuid)

Retrieve customer group by its ID.

Retrieve customer group by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_group_dto import ApiResponseDTOOfCustomerGroupDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    customer_groupuu_id = 'customer_groupuu_id_example' # str | The ID of the customer group.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Retrieve customer group by its ID.
        api_response = api_instance.get_customergroups_customergroupuuid(customer_groupuu_id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_customergroups_customergroupuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_customergroups_customergroupuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_groupuu_id** | **str**| The ID of the customer group. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfCustomerGroupDTO**](ApiResponseDTOOfCustomerGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meters**
> ApiResponseDTOOfPagedResponseModelDTOOfMeterDTO get_meters(zf_tuuid, zf_ouuid, servicelocation_ids=servicelocation_ids, property_group_ids=property_group_ids, meter_type_name=meter_type_name, meter_type_id=meter_type_id, received_metering_data_start=received_metering_data_start, received_metering_data_end=received_metering_data_end, next_expected_reading_date_start=next_expected_reading_date_start, next_expected_reading_date_end=next_expected_reading_date_end, parent_serial_number=parent_serial_number, filter_by_reading_frequency=filter_by_reading_frequency, reading_frequency_name=reading_frequency_name, reading_frequency_id=reading_frequency_id, customer_id=customer_id, meter_type_group=meter_type_group, meter_serial_numbers=meter_serial_numbers, model_ids=model_ids, meter_name=meter_name, show_deleted=show_deleted, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, name=name, id=id, order_by=order_by, continuation_token=continuation_token)

REPLACED BY POST! Retrieve meters based on the provided query parameters.

REPLACED BY POST! Retrieve meters based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_meter_dto import ApiResponseDTOOfPagedResponseModelDTOOfMeterDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    servicelocation_ids = ['servicelocation_ids_example'] # List[str] |  (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] |  (optional)
    meter_type_name = 'meter_type_name_example' # str |  (optional)
    meter_type_id = 56 # int |  (optional)
    received_metering_data_start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    received_metering_data_end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    next_expected_reading_date_start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    next_expected_reading_date_end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    parent_serial_number = 'parent_serial_number_example' # str |  (optional)
    filter_by_reading_frequency = True # bool |  (optional)
    reading_frequency_name = 'reading_frequency_name_example' # str |  (optional)
    reading_frequency_id = 56 # int |  (optional)
    customer_id = 'customer_id_example' # str |  (optional)
    meter_type_group = 'meter_type_group_example' # str |  (optional)
    meter_serial_numbers = ['meter_serial_numbers_example'] # List[str] |  (optional)
    model_ids = ['model_ids_example'] # List[str] |  (optional)
    meter_name = 'meter_name_example' # str |  (optional)
    show_deleted = True # bool |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | Allows to order the meters. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # REPLACED BY POST! Retrieve meters based on the provided query parameters.
        api_response = api_instance.get_meters(zf_tuuid, zf_ouuid, servicelocation_ids=servicelocation_ids, property_group_ids=property_group_ids, meter_type_name=meter_type_name, meter_type_id=meter_type_id, received_metering_data_start=received_metering_data_start, received_metering_data_end=received_metering_data_end, next_expected_reading_date_start=next_expected_reading_date_start, next_expected_reading_date_end=next_expected_reading_date_end, parent_serial_number=parent_serial_number, filter_by_reading_frequency=filter_by_reading_frequency, reading_frequency_name=reading_frequency_name, reading_frequency_id=reading_frequency_id, customer_id=customer_id, meter_type_group=meter_type_group, meter_serial_numbers=meter_serial_numbers, model_ids=model_ids, meter_name=meter_name, show_deleted=show_deleted, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, name=name, id=id, order_by=order_by, continuation_token=continuation_token)
        print("The response of DefaultApi->get_meters:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_meters: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **servicelocation_ids** | [**List[str]**](str.md)|  | [optional] 
 **property_group_ids** | [**List[str]**](str.md)|  | [optional] 
 **meter_type_name** | **str**|  | [optional] 
 **meter_type_id** | **int**|  | [optional] 
 **received_metering_data_start** | **datetime**|  | [optional] 
 **received_metering_data_end** | **datetime**|  | [optional] 
 **next_expected_reading_date_start** | **datetime**|  | [optional] 
 **next_expected_reading_date_end** | **datetime**|  | [optional] 
 **parent_serial_number** | **str**|  | [optional] 
 **filter_by_reading_frequency** | **bool**|  | [optional] 
 **reading_frequency_name** | **str**|  | [optional] 
 **reading_frequency_id** | **int**|  | [optional] 
 **customer_id** | **str**|  | [optional] 
 **meter_type_group** | **str**|  | [optional] 
 **meter_serial_numbers** | [**List[str]**](str.md)|  | [optional] 
 **model_ids** | [**List[str]**](str.md)|  | [optional] 
 **meter_name** | **str**|  | [optional] 
 **show_deleted** | **bool**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **page_size** | **int**|  | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **order_by** | **str**| Allows to order the meters. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfMeterDTO**](ApiResponseDTOOfPagedResponseModelDTOOfMeterDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response of meters. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meters_meteruuid**
> ApiResponseDTOOfMeterDTO get_meters_meteruuid(meteruuid, zf_tuuid, zf_ouuid, show_hidden_channels=show_hidden_channels, show_deleted=show_deleted)

Retrieve a meter by its ID.

Retrieve a meter by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_meter_dto import ApiResponseDTOOfMeterDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    show_hidden_channels = True # bool | When true, returns hidden channels on the meter. (optional)
    show_deleted = False # bool | When true, returns the meter even if it is soft-deleted. (optional) (default to False)

    try:
        # Retrieve a meter by its ID.
        api_response = api_instance.get_meters_meteruuid(meteruuid, zf_tuuid, zf_ouuid, show_hidden_channels=show_hidden_channels, show_deleted=show_deleted)
        print("The response of DefaultApi->get_meters_meteruuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_meters_meteruuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **show_hidden_channels** | **bool**| When true, returns hidden channels on the meter. | [optional] 
 **show_deleted** | **bool**| When true, returns the meter even if it is soft-deleted. | [optional] [default to False]

### Return type

[**ApiResponseDTOOfMeterDTO**](ApiResponseDTOOfMeterDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meters_overviewcount**
> ApiResponseDTOOfMeterOverviewCountDTO get_meters_overviewcount(zf_tuuid, zf_ouuid, servicelocation_ids=servicelocation_ids, property_group_ids=property_group_ids, meter_type_name=meter_type_name, meter_type_id=meter_type_id, received_metering_data_start=received_metering_data_start, received_metering_data_end=received_metering_data_end, next_expected_reading_date_start=next_expected_reading_date_start, next_expected_reading_date_end=next_expected_reading_date_end, parent_serial_number=parent_serial_number, filter_by_reading_frequency=filter_by_reading_frequency, reading_frequency_name=reading_frequency_name, reading_frequency_id=reading_frequency_id, customer_id=customer_id, meter_type_group=meter_type_group, meter_serial_numbers=meter_serial_numbers, model_ids=model_ids, meter_name=meter_name, show_deleted=show_deleted, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)

REPLACED BY POST! Retrieve the overview count of meters based on the provided query parameters.

REPLACED BY POST! Retrieve the overview count of meters based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_meter_overview_count_dto import ApiResponseDTOOfMeterOverviewCountDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    servicelocation_ids = ['servicelocation_ids_example'] # List[str] |  (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] |  (optional)
    meter_type_name = 'meter_type_name_example' # str |  (optional)
    meter_type_id = 56 # int |  (optional)
    received_metering_data_start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    received_metering_data_end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    next_expected_reading_date_start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    next_expected_reading_date_end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    parent_serial_number = 'parent_serial_number_example' # str |  (optional)
    filter_by_reading_frequency = True # bool |  (optional)
    reading_frequency_name = 'reading_frequency_name_example' # str |  (optional)
    reading_frequency_id = 56 # int |  (optional)
    customer_id = 'customer_id_example' # str |  (optional)
    meter_type_group = 'meter_type_group_example' # str |  (optional)
    meter_serial_numbers = ['meter_serial_numbers_example'] # List[str] |  (optional)
    model_ids = ['model_ids_example'] # List[str] |  (optional)
    meter_name = 'meter_name_example' # str |  (optional)
    show_deleted = True # bool |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)

    try:
        # REPLACED BY POST! Retrieve the overview count of meters based on the provided query parameters.
        api_response = api_instance.get_meters_overviewcount(zf_tuuid, zf_ouuid, servicelocation_ids=servicelocation_ids, property_group_ids=property_group_ids, meter_type_name=meter_type_name, meter_type_id=meter_type_id, received_metering_data_start=received_metering_data_start, received_metering_data_end=received_metering_data_end, next_expected_reading_date_start=next_expected_reading_date_start, next_expected_reading_date_end=next_expected_reading_date_end, parent_serial_number=parent_serial_number, filter_by_reading_frequency=filter_by_reading_frequency, reading_frequency_name=reading_frequency_name, reading_frequency_id=reading_frequency_id, customer_id=customer_id, meter_type_group=meter_type_group, meter_serial_numbers=meter_serial_numbers, model_ids=model_ids, meter_name=meter_name, show_deleted=show_deleted, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)
        print("The response of DefaultApi->get_meters_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_meters_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **servicelocation_ids** | [**List[str]**](str.md)|  | [optional] 
 **property_group_ids** | [**List[str]**](str.md)|  | [optional] 
 **meter_type_name** | **str**|  | [optional] 
 **meter_type_id** | **int**|  | [optional] 
 **received_metering_data_start** | **datetime**|  | [optional] 
 **received_metering_data_end** | **datetime**|  | [optional] 
 **next_expected_reading_date_start** | **datetime**|  | [optional] 
 **next_expected_reading_date_end** | **datetime**|  | [optional] 
 **parent_serial_number** | **str**|  | [optional] 
 **filter_by_reading_frequency** | **bool**|  | [optional] 
 **reading_frequency_name** | **str**|  | [optional] 
 **reading_frequency_id** | **int**|  | [optional] 
 **customer_id** | **str**|  | [optional] 
 **meter_type_group** | **str**|  | [optional] 
 **meter_serial_numbers** | [**List[str]**](str.md)|  | [optional] 
 **model_ids** | [**List[str]**](str.md)|  | [optional] 
 **meter_name** | **str**|  | [optional] 
 **show_deleted** | **bool**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **page_size** | **int**|  | [optional] 

### Return type

[**ApiResponseDTOOfMeterOverviewCountDTO**](ApiResponseDTOOfMeterOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The overview count of meters. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_migrationadmin_latest_version**
> ApiResponseDTOOfMigrationLatestVersionDTO get_migrationadmin_latest_version()

/MigrationAdmin/latest-version - GET

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_migration_latest_version_dto import ApiResponseDTOOfMigrationLatestVersionDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)

    try:
        # /MigrationAdmin/latest-version - GET
        api_response = api_instance.get_migrationadmin_latest_version()
        print("The response of DefaultApi->get_migrationadmin_latest_version:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_migrationadmin_latest_version: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiResponseDTOOfMigrationLatestVersionDTO**](ApiResponseDTOOfMigrationLatestVersionDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_moverequests**
> ApiResponseDTOOfPagedResponseModelDTOOfMoveRequestDTO get_moverequests(zf_tuuid, zf_ouuid, location_id=location_id, move_request_type_id=move_request_type_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, name=name, id=id, order_by=order_by, continuation_token=continuation_token)

Retrieve move requests based on the provided query parameters.

Retrieve move requests based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_move_request_dto import ApiResponseDTOOfPagedResponseModelDTOOfMoveRequestDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    location_id = 'location_id_example' # str |  (optional)
    move_request_type_id = 'move_request_type_id_example' # str |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | Allows to order the move requests. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieve move requests based on the provided query parameters.
        api_response = api_instance.get_moverequests(zf_tuuid, zf_ouuid, location_id=location_id, move_request_type_id=move_request_type_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, name=name, id=id, order_by=order_by, continuation_token=continuation_token)
        print("The response of DefaultApi->get_moverequests:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_moverequests: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **location_id** | **str**|  | [optional] 
 **move_request_type_id** | **str**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **page_size** | **int**|  | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **order_by** | **str**| Allows to order the move requests. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfMoveRequestDTO**](ApiResponseDTOOfPagedResponseModelDTOOfMoveRequestDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response of move requests. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_moverequests_externalid_externalid**
> ApiResponseDTOOfMoveRequestDTO get_moverequests_externalid_externalid(external_id, zf_tuuid, zf_ouuid)

Retrieve a move request by its external ID.

Retrieve a move request by its external ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_move_request_dto import ApiResponseDTOOfMoveRequestDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    external_id = 'external_id_example' # str | The external ID of the move request.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Retrieve a move request by its external ID.
        api_response = api_instance.get_moverequests_externalid_externalid(external_id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_moverequests_externalid_externalid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_moverequests_externalid_externalid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_id** | **str**| The external ID of the move request. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfMoveRequestDTO**](ApiResponseDTOOfMoveRequestDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_moverequests_moverequestuuid**
> ApiResponseDTOOfMoveRequestDTO get_moverequests_moverequestuuid(moverequestuuid, zf_tuuid, zf_ouuid)

Retrieve a move request by its ID.

Retrieve a move request by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_move_request_dto import ApiResponseDTOOfMoveRequestDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Retrieve a move request by its ID.
        api_response = api_instance.get_moverequests_moverequestuuid(moverequestuuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_moverequests_moverequestuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_moverequests_moverequestuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfMoveRequestDTO**](ApiResponseDTOOfMoveRequestDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_moverequests_overviewcount**
> ApiResponseDTOOfMoveRequestOverviewCountDTO get_moverequests_overviewcount(zf_tuuid, zf_ouuid, location_id=location_id, move_request_type_id=move_request_type_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)

Retrieve the overview count of move requests based on the provided query parameters.

Retrieve the overview count of move requests based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_move_request_overview_count_dto import ApiResponseDTOOfMoveRequestOverviewCountDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    location_id = 'location_id_example' # str |  (optional)
    move_request_type_id = 'move_request_type_id_example' # str |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)

    try:
        # Retrieve the overview count of move requests based on the provided query parameters.
        api_response = api_instance.get_moverequests_overviewcount(zf_tuuid, zf_ouuid, location_id=location_id, move_request_type_id=move_request_type_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)
        print("The response of DefaultApi->get_moverequests_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_moverequests_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **location_id** | **str**|  | [optional] 
 **move_request_type_id** | **str**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **page_size** | **int**|  | [optional] 

### Return type

[**ApiResponseDTOOfMoveRequestOverviewCountDTO**](ApiResponseDTOOfMoveRequestOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The overview count of move requests. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_overview_count_customer_groups**
> ApiResponseDTOOfCustomerGroupOverviewCountDTO get_overview_count_customer_groups(zf_tuuid, zf_ouuid, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)

Retrieve the overview count of customer groups based on the provided query parameters.

Retrieve the overview count of customer groups based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_group_overview_count_dto import ApiResponseDTOOfCustomerGroupOverviewCountDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)

    try:
        # Retrieve the overview count of customer groups based on the provided query parameters.
        api_response = api_instance.get_overview_count_customer_groups(zf_tuuid, zf_ouuid, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)
        print("The response of DefaultApi->get_overview_count_customer_groups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_overview_count_customer_groups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **page_size** | **int**|  | [optional] 

### Return type

[**ApiResponseDTOOfCustomerGroupOverviewCountDTO**](ApiResponseDTOOfCustomerGroupOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The overview count of customer groups. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_postal_addresses**
> ApiResponseDTOOfPagedResponseModelDTOOfPostalCodeDTO get_postal_addresses(zf_tuuid, zf_ouuid, postal_code=postal_code, continuation_token=continuation_token)

Retrieves postal addresses (postal codes) for service locations matching the query filters.

Retrieves postal addresses (postal codes) for service locations matching the query filters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_postal_code_dto import ApiResponseDTOOfPagedResponseModelDTOOfPostalCodeDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    postal_code = 'postal_code_example' # str |  (optional)
    continuation_token = 'continuation_token_example' # str | Pagination token from a previous response. (optional)

    try:
        # Retrieves postal addresses (postal codes) for service locations matching the query filters.
        api_response = api_instance.get_postal_addresses(zf_tuuid, zf_ouuid, postal_code=postal_code, continuation_token=continuation_token)
        print("The response of DefaultApi->get_postal_addresses:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_postal_addresses: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **postal_code** | **str**|  | [optional] 
 **continuation_token** | **str**| Pagination token from a previous response. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfPostalCodeDTO**](ApiResponseDTOOfPagedResponseModelDTOOfPostalCodeDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged list of postal addresses. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_propertygroups**
> ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupDTO get_propertygroups(zf_tuuid, zf_ouuid, name_contains=name_contains, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, name=name, id=id, order_by=order_by, continuation_token=continuation_token)

Retrieve location groups based on the provided query parameters.

Retrieve location groups based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_property_group_dto import ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name_contains = 'name_contains_example' # str |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | Allows to order the location groups. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieve location groups based on the provided query parameters.
        api_response = api_instance.get_propertygroups(zf_tuuid, zf_ouuid, name_contains=name_contains, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, name=name, id=id, order_by=order_by, continuation_token=continuation_token)
        print("The response of DefaultApi->get_propertygroups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_propertygroups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **name_contains** | **str**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **page_size** | **int**|  | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **order_by** | **str**| Allows to order the location groups. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupDTO**](ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response of location groups. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_propertygroups_overviewcount**
> ApiResponseDTOOfPropertyGroupOverviewCountDTO get_propertygroups_overviewcount(zf_tuuid, zf_ouuid, name_contains=name_contains, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)

Retrieve the overview count of location groups based on the provided query parameters.

Retrieve the overview count of location groups based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_property_group_overview_count_dto import ApiResponseDTOOfPropertyGroupOverviewCountDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name_contains = 'name_contains_example' # str |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)

    try:
        # Retrieve the overview count of location groups based on the provided query parameters.
        api_response = api_instance.get_propertygroups_overviewcount(zf_tuuid, zf_ouuid, name_contains=name_contains, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)
        print("The response of DefaultApi->get_propertygroups_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_propertygroups_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **name_contains** | **str**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **page_size** | **int**|  | [optional] 

### Return type

[**ApiResponseDTOOfPropertyGroupOverviewCountDTO**](ApiResponseDTOOfPropertyGroupOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_propertygroups_propertygroupuuid**
> ApiResponseDTOOfPropertyGroupDTO get_propertygroups_propertygroupuuid(propertygroupuuid, zf_tuuid, zf_ouuid)

Retrieve a location group by its ID.

Retrieve a location group by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_property_group_dto import ApiResponseDTOOfPropertyGroupDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    propertygroupuuid = 'propertygroupuuid_example' # str | The ID of the location group.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Retrieve a location group by its ID.
        api_response = api_instance.get_propertygroups_propertygroupuuid(propertygroupuuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_propertygroups_propertygroupuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_propertygroups_propertygroupuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupuuid** | **str**| The ID of the location group. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfPropertyGroupDTO**](ApiResponseDTOOfPropertyGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_service_location**
> ApiResponseDTOOfServiceLocationDTO get_service_location(servicelocationuuid, zf_tuuid, zf_ouuid)

Retrieve a location by its ID.

Retrieve a location by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_service_location_dto import ApiResponseDTOOfServiceLocationDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    servicelocationuuid = 'servicelocationuuid_example' # str | The ID of the location.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Retrieve a location by its ID.
        api_response = api_instance.get_service_location(servicelocationuuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_service_location:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_service_location: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servicelocationuuid** | **str**| The ID of the location. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfServiceLocationDTO**](ApiResponseDTOOfServiceLocationDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_service_location_bulk_update_services_context**
> ApiResponseDTOOfServiceLocationBulkUpdateServicesContextDTO get_service_location_bulk_update_services_context(zf_tuuid, zf_ouuid, name=name, id=id, get_service_locations_query_params=get_service_locations_query_params)

Retrieves context for bulk update of service locations.

Retrieves context for bulk update of service locations.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_service_location_bulk_update_services_context_dto import ApiResponseDTOOfServiceLocationBulkUpdateServicesContextDTO
from masterdata_client.models.get_service_locations_query_params import GetServiceLocationsQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    get_service_locations_query_params = {"hasUtilityTypes":["string"],"hasNotUtilityTypes":["string"],"customerId":"string","propertyGroupIds":["string"],"excludeServiceLocationsSuppliedInContractId":"string","excludeServiceLocationsInPropertyGroupId":"string","referenceDateTime":"string","excludeArchived":true,"isAutoRestored":true,"postalCode":"string","city":"string","streetNumber":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetServiceLocationsQueryParams |  (optional)

    try:
        # Retrieves context for bulk update of service locations.
        api_response = api_instance.get_service_location_bulk_update_services_context(zf_tuuid, zf_ouuid, name=name, id=id, get_service_locations_query_params=get_service_locations_query_params)
        print("The response of DefaultApi->get_service_location_bulk_update_services_context:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_service_location_bulk_update_services_context: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **get_service_locations_query_params** | [**GetServiceLocationsQueryParams**](GetServiceLocationsQueryParams.md)|  | [optional] 

### Return type

[**ApiResponseDTOOfServiceLocationBulkUpdateServicesContextDTO**](ApiResponseDTOOfServiceLocationBulkUpdateServicesContextDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_accounting_costcenters_mapping**
> ApiResponseDTO patch_accounting_costcenters_mapping(zf_tuuid, zf_ouuid, bulk_link_cost_centers_request=bulk_link_cost_centers_request)

Links multiple mapping items to a cost center in bulk.

Links multiple mapping items to a cost center in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_link_cost_centers_request import BulkLinkCostCentersRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_link_cost_centers_request = {"onlyValidate":true,"queryParams":{"onlyUnlinked":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","costCenterId":"string"} # BulkLinkCostCentersRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Links multiple mapping items to a cost center in bulk.
        api_response = api_instance.patch_accounting_costcenters_mapping(zf_tuuid, zf_ouuid, bulk_link_cost_centers_request=bulk_link_cost_centers_request)
        print("The response of DefaultApi->patch_accounting_costcenters_mapping:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->patch_accounting_costcenters_mapping: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_link_cost_centers_request** | [**BulkLinkCostCentersRequest**](BulkLinkCostCentersRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_accounting_costcenters_mapping_mappingitemid**
> ApiResponseDTO patch_accounting_costcenters_mapping_mappingitemid(mapping_item_id, zf_tuuid, zf_ouuid, link_cost_center_request=link_cost_center_request)

Links a mapping item to a cost center.

Links a mapping item to a cost center.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.link_cost_center_request import LinkCostCenterRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    mapping_item_id = 'mapping_item_id_example' # str | Unique id of the item to which a code needs to be linked
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    link_cost_center_request = {"costCenterId":"string"} # LinkCostCenterRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Links a mapping item to a cost center.
        api_response = api_instance.patch_accounting_costcenters_mapping_mappingitemid(mapping_item_id, zf_tuuid, zf_ouuid, link_cost_center_request=link_cost_center_request)
        print("The response of DefaultApi->patch_accounting_costcenters_mapping_mappingitemid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->patch_accounting_costcenters_mapping_mappingitemid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mapping_item_id** | **str**| Unique id of the item to which a code needs to be linked | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **link_cost_center_request** | [**LinkCostCenterRequest**](LinkCostCenterRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_accounting_costunits_mapping**
> ApiResponseDTO patch_accounting_costunits_mapping(zf_tuuid, zf_ouuid, bulk_link_cost_units_request=bulk_link_cost_units_request)

Links multiple mapping items to a cost unit in bulk.

Links multiple mapping items to a cost unit in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_link_cost_units_request import BulkLinkCostUnitsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_link_cost_units_request = {"onlyValidate":true,"queryParams":{"onlyUnlinked":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","costUnitId":"string"} # BulkLinkCostUnitsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Links multiple mapping items to a cost unit in bulk.
        api_response = api_instance.patch_accounting_costunits_mapping(zf_tuuid, zf_ouuid, bulk_link_cost_units_request=bulk_link_cost_units_request)
        print("The response of DefaultApi->patch_accounting_costunits_mapping:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->patch_accounting_costunits_mapping: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_link_cost_units_request** | [**BulkLinkCostUnitsRequest**](BulkLinkCostUnitsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_accounting_costunits_mapping_mappingitemid**
> ApiResponseDTO patch_accounting_costunits_mapping_mappingitemid(mapping_item_id, zf_tuuid, zf_ouuid, link_cost_unit_request=link_cost_unit_request)

Links a mapping item to a cost unit.

Links a mapping item to a cost unit.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.link_cost_unit_request import LinkCostUnitRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    mapping_item_id = 'mapping_item_id_example' # str | Unique id of the item to which a code needs to be linked
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    link_cost_unit_request = {"costUnitId":"string"} # LinkCostUnitRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Links a mapping item to a cost unit.
        api_response = api_instance.patch_accounting_costunits_mapping_mappingitemid(mapping_item_id, zf_tuuid, zf_ouuid, link_cost_unit_request=link_cost_unit_request)
        print("The response of DefaultApi->patch_accounting_costunits_mapping_mappingitemid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->patch_accounting_costunits_mapping_mappingitemid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mapping_item_id** | **str**| Unique id of the item to which a code needs to be linked | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **link_cost_unit_request** | [**LinkCostUnitRequest**](LinkCostUnitRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_accounting_itemcodes_mapping**
> ApiResponseDTO patch_accounting_itemcodes_mapping(zf_tuuid, zf_ouuid, bulk_link_item_codes_request=bulk_link_item_codes_request)

Links multiple mapping items to an item code in bulk.

Links multiple mapping items to an item code in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_link_item_codes_request import BulkLinkItemCodesRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_link_item_codes_request = {"onlyValidate":true,"queryParams":{"name":"string","accountingCode":"string","category":"string","onlyUnlinked":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","itemCodeId":"string"} # BulkLinkItemCodesRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Links multiple mapping items to an item code in bulk.
        api_response = api_instance.patch_accounting_itemcodes_mapping(zf_tuuid, zf_ouuid, bulk_link_item_codes_request=bulk_link_item_codes_request)
        print("The response of DefaultApi->patch_accounting_itemcodes_mapping:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->patch_accounting_itemcodes_mapping: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_link_item_codes_request** | [**BulkLinkItemCodesRequest**](BulkLinkItemCodesRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_accounting_itemcodes_mapping_mappingitemid**
> ApiResponseDTO patch_accounting_itemcodes_mapping_mappingitemid(mapping_item_id, zf_tuuid, zf_ouuid, link_item_code_request=link_item_code_request)

Links a mapping item to an item code.

Links a mapping item to an item code.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.link_item_code_request import LinkItemCodeRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    mapping_item_id = 'mapping_item_id_example' # str | Unique id of the item to which an item code needs to be linked
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    link_item_code_request = {"itemCodeId":"string"} # LinkItemCodeRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Links a mapping item to an item code.
        api_response = api_instance.patch_accounting_itemcodes_mapping_mappingitemid(mapping_item_id, zf_tuuid, zf_ouuid, link_item_code_request=link_item_code_request)
        print("The response of DefaultApi->patch_accounting_itemcodes_mapping_mappingitemid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->patch_accounting_itemcodes_mapping_mappingitemid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mapping_item_id** | **str**| Unique id of the item to which an item code needs to be linked | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **link_item_code_request** | [**LinkItemCodeRequest**](LinkItemCodeRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_accounting_projectcodes_mapping**
> ApiResponseDTO patch_accounting_projectcodes_mapping(zf_tuuid, zf_ouuid, bulk_link_project_codes_request=bulk_link_project_codes_request)

Links multiple mapping items to a project code in bulk.

Links multiple mapping items to a project code in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_link_project_codes_request import BulkLinkProjectCodesRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_link_project_codes_request = {"onlyValidate":true,"queryParams":{"name":"string","accountingCode":"string","category":"string","onlyUnlinked":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","projectCodeId":"string"} # BulkLinkProjectCodesRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Links multiple mapping items to a project code in bulk.
        api_response = api_instance.patch_accounting_projectcodes_mapping(zf_tuuid, zf_ouuid, bulk_link_project_codes_request=bulk_link_project_codes_request)
        print("The response of DefaultApi->patch_accounting_projectcodes_mapping:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->patch_accounting_projectcodes_mapping: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_link_project_codes_request** | [**BulkLinkProjectCodesRequest**](BulkLinkProjectCodesRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_accounting_projectcodes_mapping_mappingitemid**
> ApiResponseDTO patch_accounting_projectcodes_mapping_mappingitemid(mapping_item_id, zf_tuuid, zf_ouuid, link_project_code_request=link_project_code_request)

Links a mapping item to a project code.

Links a mapping item to a project code.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.link_project_code_request import LinkProjectCodeRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    mapping_item_id = 'mapping_item_id_example' # str | Unique id of the item to which a project code needs to be linked
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    link_project_code_request = {"projectCodeId":"string"} # LinkProjectCodeRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Links a mapping item to a project code.
        api_response = api_instance.patch_accounting_projectcodes_mapping_mappingitemid(mapping_item_id, zf_tuuid, zf_ouuid, link_project_code_request=link_project_code_request)
        print("The response of DefaultApi->patch_accounting_projectcodes_mapping_mappingitemid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->patch_accounting_projectcodes_mapping_mappingitemid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mapping_item_id** | **str**| Unique id of the item to which a project code needs to be linked | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **link_project_code_request** | [**LinkProjectCodeRequest**](LinkProjectCodeRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_contracts_contractuuid_billing_method**
> ApiResponseDTOOfContractDTO patch_contracts_contractuuid_billing_method(contractuuid, zf_tuuid, zf_ouuid, update_contract_billing_method_request=update_contract_billing_method_request)

Update billing method of a contract (Change of Mode PayG to/from Credit).

Update billing method of a contract (Change of Mode PayG to/from Credit).

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.models.update_contract_billing_method_request import UpdateContractBillingMethodRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_contract_billing_method_request = {"billingMethod":"credit","effectiveStartDate":"string"} # UpdateContractBillingMethodRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update billing method of a contract (Change of Mode PayG to/from Credit).
        api_response = api_instance.patch_contracts_contractuuid_billing_method(contractuuid, zf_tuuid, zf_ouuid, update_contract_billing_method_request=update_contract_billing_method_request)
        print("The response of DefaultApi->patch_contracts_contractuuid_billing_method:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->patch_contracts_contractuuid_billing_method: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_contract_billing_method_request** | [**UpdateContractBillingMethodRequest**](UpdateContractBillingMethodRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_accounting_costcenters_mapping_filter**
> ApiResponseDTOOfPagedResponseModelDTOOfCostCenterMappingItemDTO post_accounting_costcenters_mapping_filter(continuation_token=continuation_token, paged_cost_center_mapping_query_params=paged_cost_center_mapping_query_params)

Retrieves a paged list of all categories (only property groups for now) that are mapped or need to be mapped to a cost centers. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

Retrieves a paged list of all categories (only property groups for now) that are mapped or need to be mapped to a cost centers.
This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_cost_center_mapping_item_dto import ApiResponseDTOOfPagedResponseModelDTOOfCostCenterMappingItemDTO
from masterdata_client.models.paged_cost_center_mapping_query_params import PagedCostCenterMappingQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)
    paged_cost_center_mapping_query_params = {"onlyUnlinked":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # PagedCostCenterMappingQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieves a paged list of all categories (only property groups for now) that are mapped or need to be mapped to a cost centers. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
        api_response = api_instance.post_accounting_costcenters_mapping_filter(continuation_token=continuation_token, paged_cost_center_mapping_query_params=paged_cost_center_mapping_query_params)
        print("The response of DefaultApi->post_accounting_costcenters_mapping_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_accounting_costcenters_mapping_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 
 **paged_cost_center_mapping_query_params** | [**PagedCostCenterMappingQueryParams**](PagedCostCenterMappingQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfCostCenterMappingItemDTO**](ApiResponseDTOOfPagedResponseModelDTOOfCostCenterMappingItemDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_accounting_costunits_mapping_filter**
> ApiResponseDTOOfPagedResponseModelDTOOfCostUnitMappingItemDTO post_accounting_costunits_mapping_filter(continuation_token=continuation_token, paged_cost_unit_mapping_query_params=paged_cost_unit_mapping_query_params)

Retrieves a paged list of cost center categories (only customer groups for now) that are mapped or need to be mapped to a cost units. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

Retrieves a paged list of cost center categories (only customer groups for now) that are mapped or need to be mapped to a cost units.
This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_cost_unit_mapping_item_dto import ApiResponseDTOOfPagedResponseModelDTOOfCostUnitMappingItemDTO
from masterdata_client.models.paged_cost_unit_mapping_query_params import PagedCostUnitMappingQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)
    paged_cost_unit_mapping_query_params = {"onlyUnlinked":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # PagedCostUnitMappingQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieves a paged list of cost center categories (only customer groups for now) that are mapped or need to be mapped to a cost units. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
        api_response = api_instance.post_accounting_costunits_mapping_filter(continuation_token=continuation_token, paged_cost_unit_mapping_query_params=paged_cost_unit_mapping_query_params)
        print("The response of DefaultApi->post_accounting_costunits_mapping_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_accounting_costunits_mapping_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 
 **paged_cost_unit_mapping_query_params** | [**PagedCostUnitMappingQueryParams**](PagedCostUnitMappingQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfCostUnitMappingItemDTO**](ApiResponseDTOOfPagedResponseModelDTOOfCostUnitMappingItemDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_accounting_itemcodes_mapping_filter**
> ApiResponseDTOOfPagedResponseModelDTOOfItemCodeMappingItemDTO post_accounting_itemcodes_mapping_filter(continuation_token=continuation_token, paged_item_code_mapping_query_params=paged_item_code_mapping_query_params)

Retrieves a paged list of item code mapping items. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

Retrieves a paged list of item code mapping items.
This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_item_code_mapping_item_dto import ApiResponseDTOOfPagedResponseModelDTOOfItemCodeMappingItemDTO
from masterdata_client.models.paged_item_code_mapping_query_params import PagedItemCodeMappingQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)
    paged_item_code_mapping_query_params = {"name":"string","accountingCode":"string","category":"string","onlyUnlinked":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # PagedItemCodeMappingQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieves a paged list of item code mapping items. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
        api_response = api_instance.post_accounting_itemcodes_mapping_filter(continuation_token=continuation_token, paged_item_code_mapping_query_params=paged_item_code_mapping_query_params)
        print("The response of DefaultApi->post_accounting_itemcodes_mapping_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_accounting_itemcodes_mapping_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 
 **paged_item_code_mapping_query_params** | [**PagedItemCodeMappingQueryParams**](PagedItemCodeMappingQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfItemCodeMappingItemDTO**](ApiResponseDTOOfPagedResponseModelDTOOfItemCodeMappingItemDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_accounting_projectcodes_mapping_filter**
> ApiResponseDTOOfPagedResponseModelDTOOfProjectCodeMappingItemDTO post_accounting_projectcodes_mapping_filter(continuation_token=continuation_token, paged_project_code_mapping_query_params=paged_project_code_mapping_query_params)

Retrieves a paged list of project code mapping items. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

Retrieves a paged list of project code mapping items.
This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_project_code_mapping_item_dto import ApiResponseDTOOfPagedResponseModelDTOOfProjectCodeMappingItemDTO
from masterdata_client.models.paged_project_code_mapping_query_params import PagedProjectCodeMappingQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)
    paged_project_code_mapping_query_params = {"name":"string","accountingCode":"string","category":"string","onlyUnlinked":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # PagedProjectCodeMappingQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieves a paged list of project code mapping items. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
        api_response = api_instance.post_accounting_projectcodes_mapping_filter(continuation_token=continuation_token, paged_project_code_mapping_query_params=paged_project_code_mapping_query_params)
        print("The response of DefaultApi->post_accounting_projectcodes_mapping_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_accounting_projectcodes_mapping_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 
 **paged_project_code_mapping_query_params** | [**PagedProjectCodeMappingQueryParams**](PagedProjectCodeMappingQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfProjectCodeMappingItemDTO**](ApiResponseDTOOfPagedResponseModelDTOOfProjectCodeMappingItemDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts**
> ApiResponseDTOOfContractDTO post_contracts(zf_tuuid, zf_ouuid, create_contract_request=create_contract_request)

Create new contract.

Create new contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.models.create_contract_request import CreateContractRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    create_contract_request = {"contractorId":"string","contractNumber":"string","supplyStartDate":"string","supplyEndDate":"string","contractedServiceLocations":[{"__type":"MigrateContractServiceLocationRequest","reference":"string","serviceLocationExternalId":"string","serviceLocationId":"string","utilityType":"none","estimatedConsumptions":[{"consumerGroupId":"string","unitOfMeasure":"none","meteringType":"none","direction":"offtake","consumptionQuantity":0}]}],"attachmentSignatures":[{"culture":"string","attachmentFileName":"string","errorCode":0,"origin":"customer","productAttachmentId":"string","attachmentFileId":"string","entityAttachmentGroupId":"string","signDate":"string","viewedDate":"string"}],"productId":"string","invoiceAddress":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":"aut","localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"externalContractReference":"string","billingProperties":{"type":"CreateContractBillingPropertiesCreditRequest","invoiceFrequency":"monthly","advanceFrequency":"none","contractualAdvanceAmount":0,"firstInvoiceStartDateTime":"string","firstInvoiceEndDateTime":"string","paymentTermsId":"string","expectAdvancesToBeImportedPeriodically":true,"deviatingFirstAdvanceStartDate":"string","advanceCalculationType":"fixed","advancePeriodPercentages":[{"periodIndex":0,"percentage":0}]}} # CreateContractRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Create new contract.
        api_response = api_instance.post_contracts(zf_tuuid, zf_ouuid, create_contract_request=create_contract_request)
        print("The response of DefaultApi->post_contracts:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **create_contract_request** | [**CreateContractRequest**](CreateContractRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_bulk_block**
> ApiResponseDTO post_contracts_bulk_block(zf_tuuid, zf_ouuid, bulk_block_contract_request=bulk_block_contract_request)

Mark multiple contracts as blocked in bulk.

Mark multiple contracts as blocked in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_block_contract_request import BulkBlockContractRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_block_contract_request = {"onlyValidate":true,"queryParams":{"serviceLocationId":"string","propertyGroupIds":["string"],"utilityTypes":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","productIds":["string"],"excludeTerminatedContracts":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","comment":"string"} # BulkBlockContractRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Mark multiple contracts as blocked in bulk.
        api_response = api_instance.post_contracts_bulk_block(zf_tuuid, zf_ouuid, bulk_block_contract_request=bulk_block_contract_request)
        print("The response of DefaultApi->post_contracts_bulk_block:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_bulk_block: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_block_contract_request** | [**BulkBlockContractRequest**](BulkBlockContractRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_bulk_estimate**
> ApiResponseDTO post_contracts_bulk_estimate(zf_tuuid, zf_ouuid, bulk_recalculate_eav_contract_request=bulk_recalculate_eav_contract_request)

Trigger recalculation of EAV for multiple contracts in bulk.

Trigger recalculation of EAV for multiple contracts in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_recalculate_eav_contract_request import BulkRecalculateEavContractRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_recalculate_eav_contract_request = {"onlyValidate":true,"queryParams":{"serviceLocationId":"string","propertyGroupIds":["string"],"utilityTypes":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","productIds":["string"],"excludeTerminatedContracts":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkRecalculateEavContractRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Trigger recalculation of EAV for multiple contracts in bulk.
        api_response = api_instance.post_contracts_bulk_estimate(zf_tuuid, zf_ouuid, bulk_recalculate_eav_contract_request=bulk_recalculate_eav_contract_request)
        print("The response of DefaultApi->post_contracts_bulk_estimate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_bulk_estimate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_recalculate_eav_contract_request** | [**BulkRecalculateEavContractRequest**](BulkRecalculateEavContractRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_bulk_sign**
> ApiResponseDTOOfContractDTO post_contracts_bulk_sign(zf_tuuid, zf_ouuid, bulk_sign_contract_request=bulk_sign_contract_request)

Sign multiple contracts in bulk.

Sign multiple contracts in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.models.bulk_sign_contract_request import BulkSignContractRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_sign_contract_request = {"onlyValidate":true,"queryParams":{"serviceLocationId":"string","propertyGroupIds":["string"],"utilityTypes":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","productIds":["string"],"excludeTerminatedContracts":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","mutationDateTime":"string","keepExistingInvoiceOnEndDate":true,"createBillingCompletenessesFromExistingInvoices":true} # BulkSignContractRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Sign multiple contracts in bulk.
        api_response = api_instance.post_contracts_bulk_sign(zf_tuuid, zf_ouuid, bulk_sign_contract_request=bulk_sign_contract_request)
        print("The response of DefaultApi->post_contracts_bulk_sign:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_bulk_sign: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_sign_contract_request** | [**BulkSignContractRequest**](BulkSignContractRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_bulk_terminate**
> ApiResponseDTO post_contracts_bulk_terminate(zf_tuuid, zf_ouuid, bulk_terminate_contract_request=bulk_terminate_contract_request)

Terminate multiple signed contracts in bulk.

Terminate multiple signed contracts in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_terminate_contract_request import BulkTerminateContractRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_terminate_contract_request = {"onlyValidate":true,"queryParams":{"serviceLocationId":"string","propertyGroupIds":["string"],"utilityTypes":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","productIds":["string"],"excludeTerminatedContracts":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","mutationDateTime":"string","keepExistingInvoiceOnEndDate":true,"createPrepaymentCorrectionForChargedCosts":true} # BulkTerminateContractRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Terminate multiple signed contracts in bulk.
        api_response = api_instance.post_contracts_bulk_terminate(zf_tuuid, zf_ouuid, bulk_terminate_contract_request=bulk_terminate_contract_request)
        print("The response of DefaultApi->post_contracts_bulk_terminate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_bulk_terminate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_terminate_contract_request** | [**BulkTerminateContractRequest**](BulkTerminateContractRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_bulk_unblock**
> ApiResponseDTO post_contracts_bulk_unblock(zf_tuuid, zf_ouuid, bulk_unblock_contract_request=bulk_unblock_contract_request)

Mark multiple contracts as unblocked in bulk.

Mark multiple contracts as unblocked in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_unblock_contract_request import BulkUnblockContractRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_unblock_contract_request = {"onlyValidate":true,"queryParams":{"serviceLocationId":"string","propertyGroupIds":["string"],"utilityTypes":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","productIds":["string"],"excludeTerminatedContracts":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkUnblockContractRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Mark multiple contracts as unblocked in bulk.
        api_response = api_instance.post_contracts_bulk_unblock(zf_tuuid, zf_ouuid, bulk_unblock_contract_request=bulk_unblock_contract_request)
        print("The response of DefaultApi->post_contracts_bulk_unblock:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_bulk_unblock: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_unblock_contract_request** | [**BulkUnblockContractRequest**](BulkUnblockContractRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_bulk_updateconsumptiongroups**
> ApiResponseDTOOfContractDTO post_contracts_bulk_updateconsumptiongroups(zf_tuuid, zf_ouuid, bulk_update_contract_consumption_group_for_utility_request=bulk_update_contract_consumption_group_for_utility_request)

Update consumptiongroup on multiple contracts in bulk.

Update consumptiongroup on multiple contracts in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.models.bulk_update_contract_consumption_group_for_utility_request import BulkUpdateContractConsumptionGroupForUtilityRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_update_contract_consumption_group_for_utility_request = {"onlyValidate":true,"queryParams":{"serviceLocationId":"string","propertyGroupIds":["string"],"utilityTypes":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","productIds":["string"],"excludeTerminatedContracts":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","utilityType":"none","contractServiceEstimatedConsumption":{"consumerGroupId":"string","unitOfMeasure":"none","consumptionQuantity":0,"startDate":"string","direction":"offtake"}} # BulkUpdateContractConsumptionGroupForUtilityRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update consumptiongroup on multiple contracts in bulk.
        api_response = api_instance.post_contracts_bulk_updateconsumptiongroups(zf_tuuid, zf_ouuid, bulk_update_contract_consumption_group_for_utility_request=bulk_update_contract_consumption_group_for_utility_request)
        print("The response of DefaultApi->post_contracts_bulk_updateconsumptiongroups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_bulk_updateconsumptiongroups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_update_contract_consumption_group_for_utility_request** | [**BulkUpdateContractConsumptionGroupForUtilityRequest**](BulkUpdateContractConsumptionGroupForUtilityRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_bulk_updateproduct**
> ApiResponseDTOOfContractDTO post_contracts_bulk_updateproduct(zf_tuuid, zf_ouuid, bulk_update_contract_product_request=bulk_update_contract_product_request)

Update product on multiple contracts in bulk.

Update product on multiple contracts in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.models.bulk_update_contract_product_request import BulkUpdateContractProductRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_update_contract_product_request = {"onlyValidate":true,"queryParams":{"serviceLocationId":"string","propertyGroupIds":["string"],"utilityTypes":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","productIds":["string"],"excludeTerminatedContracts":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","startDate":"string","productId":"string","parameter":"fromcontractstartdate"} # BulkUpdateContractProductRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update product on multiple contracts in bulk.
        api_response = api_instance.post_contracts_bulk_updateproduct(zf_tuuid, zf_ouuid, bulk_update_contract_product_request=bulk_update_contract_product_request)
        print("The response of DefaultApi->post_contracts_bulk_updateproduct:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_bulk_updateproduct: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_update_contract_product_request** | [**BulkUpdateContractProductRequest**](BulkUpdateContractProductRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_contractuuid_block**
> ApiResponseDTOOfContractDTO post_contracts_contractuuid_block(contractuuid, zf_tuuid, zf_ouuid, block_contract_request=block_contract_request)

Mark a contract as blocked for billing.

Mark a contract as blocked for billing.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.models.block_contract_request import BlockContractRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    block_contract_request = {"comment":"string"} # BlockContractRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Mark a contract as blocked for billing.
        api_response = api_instance.post_contracts_contractuuid_block(contractuuid, zf_tuuid, zf_ouuid, block_contract_request=block_contract_request)
        print("The response of DefaultApi->post_contracts_contractuuid_block:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_contractuuid_block: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **block_contract_request** | [**BlockContractRequest**](BlockContractRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_contractuuid_changeadvanceamount**
> ApiResponseDTOOfContractDTO post_contracts_contractuuid_changeadvanceamount(contractuuid, zf_tuuid, zf_ouuid, change_draft_contract_advance_amount_request=change_draft_contract_advance_amount_request)

Update the advance amount for a draft contract.

Update the advance amount for a draft contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.models.change_draft_contract_advance_amount_request import ChangeDraftContractAdvanceAmountRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    change_draft_contract_advance_amount_request = {"newAdvanceAmount":0} # ChangeDraftContractAdvanceAmountRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update the advance amount for a draft contract.
        api_response = api_instance.post_contracts_contractuuid_changeadvanceamount(contractuuid, zf_tuuid, zf_ouuid, change_draft_contract_advance_amount_request=change_draft_contract_advance_amount_request)
        print("The response of DefaultApi->post_contracts_contractuuid_changeadvanceamount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_contractuuid_changeadvanceamount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **change_draft_contract_advance_amount_request** | [**ChangeDraftContractAdvanceAmountRequest**](ChangeDraftContractAdvanceAmountRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_contractuuid_consumptiongroups**
> ApiResponseDTOOfContractDTO post_contracts_contractuuid_consumptiongroups(contractuuid, zf_tuuid, zf_ouuid, update_contract_consumption_groups_request=update_contract_consumption_groups_request)

Updates the consumption groups and their estimated values for services provided on a contract.

Updates the consumption groups and their estimated values for services provided on a contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.models.update_contract_consumption_groups_request import UpdateContractConsumptionGroupsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_contract_consumption_groups_request = {"services":[{"utilityType":"none","estimatedConsumptions":[{"consumerGroupId":"string","unitOfMeasure":"none","consumptionQuantity":0,"startDate":"string","direction":"offtake"}]}]} # UpdateContractConsumptionGroupsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Updates the consumption groups and their estimated values for services provided on a contract.
        api_response = api_instance.post_contracts_contractuuid_consumptiongroups(contractuuid, zf_tuuid, zf_ouuid, update_contract_consumption_groups_request=update_contract_consumption_groups_request)
        print("The response of DefaultApi->post_contracts_contractuuid_consumptiongroups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_contractuuid_consumptiongroups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_contract_consumption_groups_request** | [**UpdateContractConsumptionGroupsRequest**](UpdateContractConsumptionGroupsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**404** | Not Found |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_contractuuid_sign**
> ApiResponseDTOOfContractDTO post_contracts_contractuuid_sign(contractuuid, zf_tuuid, zf_ouuid, sign_contract_request=sign_contract_request)

Sign a contract.

Sign a contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.models.sign_contract_request import SignContractRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    sign_contract_request = {"mutationDateTime":"string","keepExistingInvoiceOnEndDate":true,"createBillingCompletenessesFromExistingInvoices":true} # SignContractRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Sign a contract.
        api_response = api_instance.post_contracts_contractuuid_sign(contractuuid, zf_tuuid, zf_ouuid, sign_contract_request=sign_contract_request)
        print("The response of DefaultApi->post_contracts_contractuuid_sign:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_contractuuid_sign: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **sign_contract_request** | [**SignContractRequest**](SignContractRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_contractuuid_terminate**
> ApiResponseDTOOfContractDTO post_contracts_contractuuid_terminate(contractuuid, zf_tuuid, zf_ouuid, terminate_contract_request=terminate_contract_request)

Terminate a signed contract.

Terminate a signed contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.models.terminate_contract_request import TerminateContractRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    terminate_contract_request = {"mutationDateTime":"string","keepExistingInvoiceOnEndDate":true,"createPrepaymentCorrectionForChargedCosts":true} # TerminateContractRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Terminate a signed contract.
        api_response = api_instance.post_contracts_contractuuid_terminate(contractuuid, zf_tuuid, zf_ouuid, terminate_contract_request=terminate_contract_request)
        print("The response of DefaultApi->post_contracts_contractuuid_terminate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_contractuuid_terminate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **terminate_contract_request** | [**TerminateContractRequest**](TerminateContractRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_contractuuid_unblock**
> ApiResponseDTOOfContractDTO post_contracts_contractuuid_unblock(contractuuid, zf_tuuid, zf_ouuid, body=body)

Mark a contract as unblocked for billing.

Mark a contract as unblocked for billing.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    body = None # object | Propagates notification that operations should be canceled. (optional)

    try:
        # Mark a contract as unblocked for billing.
        api_response = api_instance.post_contracts_contractuuid_unblock(contractuuid, zf_tuuid, zf_ouuid, body=body)
        print("The response of DefaultApi->post_contracts_contractuuid_unblock:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_contractuuid_unblock: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **body** | **object**| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_contractuuid_updatebillingdetails**
> ApiResponseDTOOfContractDTO post_contracts_contractuuid_updatebillingdetails(contractuuid, zf_tuuid, zf_ouuid, update_contract_billing_details_request=update_contract_billing_details_request)

Update billing details of a contract.

Update billing details of a contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.models.update_contract_billing_details_request import UpdateContractBillingDetailsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_contract_billing_details_request = {"paymentTermsId":"string"} # UpdateContractBillingDetailsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update billing details of a contract.
        api_response = api_instance.post_contracts_contractuuid_updatebillingdetails(contractuuid, zf_tuuid, zf_ouuid, update_contract_billing_details_request=update_contract_billing_details_request)
        print("The response of DefaultApi->post_contracts_contractuuid_updatebillingdetails:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_contractuuid_updatebillingdetails: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_contract_billing_details_request** | [**UpdateContractBillingDetailsRequest**](UpdateContractBillingDetailsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_contractuuid_updateexternalcontractreference**
> ApiResponseDTOOfContractDTO post_contracts_contractuuid_updateexternalcontractreference(contractuuid, zf_tuuid, zf_ouuid, update_external_contract_reference_request=update_external_contract_reference_request)

Update the external contract reference.

Update the external contract reference.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.models.update_external_contract_reference_request import UpdateExternalContractReferenceRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_external_contract_reference_request = {"externalContractReference":"string"} # UpdateExternalContractReferenceRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update the external contract reference.
        api_response = api_instance.post_contracts_contractuuid_updateexternalcontractreference(contractuuid, zf_tuuid, zf_ouuid, update_external_contract_reference_request=update_external_contract_reference_request)
        print("The response of DefaultApi->post_contracts_contractuuid_updateexternalcontractreference:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_contractuuid_updateexternalcontractreference: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_external_contract_reference_request** | [**UpdateExternalContractReferenceRequest**](UpdateExternalContractReferenceRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_contractuuid_updateproduct**
> ApiResponseDTOOfContractDTO post_contracts_contractuuid_updateproduct(contractuuid, zf_tuuid, zf_ouuid, update_contract_product_request=update_contract_product_request)

Update product of a contract.

Update product of a contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.models.update_contract_product_request import UpdateContractProductRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_contract_product_request = {"startDate":"string","productId":"string","parameter":"fromcontractstartdate"} # UpdateContractProductRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update product of a contract.
        api_response = api_instance.post_contracts_contractuuid_updateproduct(contractuuid, zf_tuuid, zf_ouuid, update_contract_product_request=update_contract_product_request)
        print("The response of DefaultApi->post_contracts_contractuuid_updateproduct:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_contractuuid_updateproduct: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_contract_product_request** | [**UpdateContractProductRequest**](UpdateContractProductRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_entityid_customproperties**
> ApiResponseDTOOfContractDTO post_contracts_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)

/Contracts/{entityId}/customproperties - POST

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.models.update_custom_entity_properties_request import UpdateCustomEntityPropertiesRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_custom_entity_properties_request = {"properties":[{"customEntityPropertyTypeId":"string","values":[{"startDateTime":"string","endDateTime":"string","valueDecimal":0,"valueString":"string","valueBoolean":true,"valueNumber":0,"valueDateTime":"string","valueDropdown":["string"]}]}]} # UpdateCustomEntityPropertiesRequest |  (optional)

    try:
        # /Contracts/{entityId}/customproperties - POST
        api_response = api_instance.post_contracts_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)
        print("The response of DefaultApi->post_contracts_entityid_customproperties:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_entityid_customproperties: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **str**|  | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_custom_entity_properties_request** | [**UpdateCustomEntityPropertiesRequest**](UpdateCustomEntityPropertiesRequest.md)|  | [optional] 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_filter**
> ApiResponseDTOOfPagedResponseModelDTOOfContractDTO post_contracts_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_contracts_query_params=get_contracts_query_params)

Retrieve contracts based on the provided query parameters.

Retrieve contracts based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_contract_dto import ApiResponseDTOOfPagedResponseModelDTOOfContractDTO
from masterdata_client.models.get_contracts_query_params import GetContractsQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | Allows to order the contracts. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)
    get_contracts_query_params = {"serviceLocationId":"string","propertyGroupIds":["string"],"utilityTypes":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","productIds":["string"],"excludeTerminatedContracts":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetContractsQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve contracts based on the provided query parameters.
        api_response = api_instance.post_contracts_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_contracts_query_params=get_contracts_query_params)
        print("The response of DefaultApi->post_contracts_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **order_by** | **str**| Allows to order the contracts. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 
 **get_contracts_query_params** | [**GetContractsQueryParams**](GetContractsQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfContractDTO**](ApiResponseDTOOfPagedResponseModelDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response of contracts. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_filter_overviewcount**
> ApiResponseDTOOfContractOverviewCountDTO post_contracts_filter_overviewcount(zf_tuuid, zf_ouuid, get_contracts_query_params=get_contracts_query_params)

Retrieve the overview count of contracts based on the provided query parameters.

Retrieve the overview count of contracts based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_overview_count_dto import ApiResponseDTOOfContractOverviewCountDTO
from masterdata_client.models.get_contracts_query_params import GetContractsQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    get_contracts_query_params = {"serviceLocationId":"string","propertyGroupIds":["string"],"utilityTypes":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","productIds":["string"],"excludeTerminatedContracts":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetContractsQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve the overview count of contracts based on the provided query parameters.
        api_response = api_instance.post_contracts_filter_overviewcount(zf_tuuid, zf_ouuid, get_contracts_query_params=get_contracts_query_params)
        print("The response of DefaultApi->post_contracts_filter_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_filter_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **get_contracts_query_params** | [**GetContractsQueryParams**](GetContractsQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfContractOverviewCountDTO**](ApiResponseDTOOfContractOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The overview count of contracts. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_filter_uniqueutilitytypes**
> ApiResponseDTOOfPagedResponseModelDTOOfUtilityType post_contracts_filter_uniqueutilitytypes(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, get_contracts_query_params=get_contracts_query_params)

Retrieve unique utilityTypes for the filters.

Retrieve unique utilityTypes for the filters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_utility_type import ApiResponseDTOOfPagedResponseModelDTOOfUtilityType
from masterdata_client.models.get_contracts_query_params import GetContractsQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | Allows to order the contracts. (optional)
    get_contracts_query_params = {"serviceLocationId":"string","propertyGroupIds":["string"],"utilityTypes":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","productIds":["string"],"excludeTerminatedContracts":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetContractsQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve unique utilityTypes for the filters.
        api_response = api_instance.post_contracts_filter_uniqueutilitytypes(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, get_contracts_query_params=get_contracts_query_params)
        print("The response of DefaultApi->post_contracts_filter_uniqueutilitytypes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_contracts_filter_uniqueutilitytypes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **order_by** | **str**| Allows to order the contracts. | [optional] 
 **get_contracts_query_params** | [**GetContractsQueryParams**](GetContractsQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfUtilityType**](ApiResponseDTOOfPagedResponseModelDTOOfUtilityType.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Unique utilityTypes for the contracts. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_customergroups**
> ApiResponseDTOOfCustomerGroupDTO post_customergroups(zf_tuuid, zf_ouuid, create_customer_group_request=create_customer_group_request)

Create new customer group, which gives the possibility to group customers togather and apply the same settings to them.

Create new customer group, which gives the possibility to group customers togather and apply the same settings to them.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_group_dto import ApiResponseDTOOfCustomerGroupDTO
from masterdata_client.models.create_customer_group_request import CreateCustomerGroupRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    create_customer_group_request = {"name":"string","settings":{"automaticSettlement":true},"costUnitId":"string"} # CreateCustomerGroupRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Create new customer group, which gives the possibility to group customers togather and apply the same settings to them.
        api_response = api_instance.post_customergroups(zf_tuuid, zf_ouuid, create_customer_group_request=create_customer_group_request)
        print("The response of DefaultApi->post_customergroups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_customergroups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **create_customer_group_request** | [**CreateCustomerGroupRequest**](CreateCustomerGroupRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerGroupDTO**](ApiResponseDTOOfCustomerGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_customergroups_filter**
> ApiResponseDTOOfPagedResponseModelDTOOfCustomerGroupDTO post_customergroups_filter(zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token, base_query_params=base_query_params)

Retrieve customer groups based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

Retrieve customer groups based on the provided query parameters.
This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_customer_group_dto import ApiResponseDTOOfPagedResponseModelDTOOfCustomerGroupDTO
from masterdata_client.models.base_query_params import BaseQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    order_by = 'order_by_example' # str | Allows to order the customer groups. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)
    base_query_params = {"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # BaseQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve customer groups based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
        api_response = api_instance.post_customergroups_filter(zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token, base_query_params=base_query_params)
        print("The response of DefaultApi->post_customergroups_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_customergroups_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **order_by** | **str**| Allows to order the customer groups. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 
 **base_query_params** | [**BaseQueryParams**](BaseQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfCustomerGroupDTO**](ApiResponseDTOOfPagedResponseModelDTOOfCustomerGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response of customer groups. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_customergroups_filter_overviewcount**
> ApiResponseDTOOfCustomerGroupOverviewCountDTO post_customergroups_filter_overviewcount(zf_tuuid, zf_ouuid, base_query_params=base_query_params)

Retrieve the overview count of customer groups based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

Retrieve the overview count of customer groups based on the provided query parameters.
This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_group_overview_count_dto import ApiResponseDTOOfCustomerGroupOverviewCountDTO
from masterdata_client.models.base_query_params import BaseQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    base_query_params = {"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # BaseQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve the overview count of customer groups based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
        api_response = api_instance.post_customergroups_filter_overviewcount(zf_tuuid, zf_ouuid, base_query_params=base_query_params)
        print("The response of DefaultApi->post_customergroups_filter_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_customergroups_filter_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **base_query_params** | [**BaseQueryParams**](BaseQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerGroupOverviewCountDTO**](ApiResponseDTOOfCustomerGroupOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The overview count of customer groups. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_customergroups_search**
> ApiResponseDTOOfCustomerGroupDTO post_customergroups_search(zf_tuuid, zf_ouuid, search_customer_request=search_customer_request)

Retrieve customer group by name.

Retrieve customer group by name.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_group_dto import ApiResponseDTOOfCustomerGroupDTO
from masterdata_client.models.search_customer_request import SearchCustomerRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    search_customer_request = {"name":"string"} # SearchCustomerRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve customer group by name.
        api_response = api_instance.post_customergroups_search(zf_tuuid, zf_ouuid, search_customer_request=search_customer_request)
        print("The response of DefaultApi->post_customergroups_search:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_customergroups_search: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **search_customer_request** | [**SearchCustomerRequest**](SearchCustomerRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerGroupDTO**](ApiResponseDTOOfCustomerGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_customergroups_uuid_settings_automaticsettlement**
> ApiResponseDTOOfCustomerGroupDTO post_customergroups_uuid_settings_automaticsettlement(uuid, zf_tuuid, zf_ouuid, update_customer_group_settings_automatic_settlement_request=update_customer_group_settings_automatic_settlement_request)

Update auto-settlement settings of customer group.

Update auto-settlement settings of customer group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_group_dto import ApiResponseDTOOfCustomerGroupDTO
from masterdata_client.models.update_customer_group_settings_automatic_settlement_request import UpdateCustomerGroupSettingsAutomaticSettlementRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    uuid = 'uuid_example' # str | The ID of the customer group.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_customer_group_settings_automatic_settlement_request = {"automaticSettlement":true} # UpdateCustomerGroupSettingsAutomaticSettlementRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update auto-settlement settings of customer group.
        api_response = api_instance.post_customergroups_uuid_settings_automaticsettlement(uuid, zf_tuuid, zf_ouuid, update_customer_group_settings_automatic_settlement_request=update_customer_group_settings_automatic_settlement_request)
        print("The response of DefaultApi->post_customergroups_uuid_settings_automaticsettlement:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_customergroups_uuid_settings_automaticsettlement: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The ID of the customer group. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_customer_group_settings_automatic_settlement_request** | [**UpdateCustomerGroupSettingsAutomaticSettlementRequest**](UpdateCustomerGroupSettingsAutomaticSettlementRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerGroupDTO**](ApiResponseDTOOfCustomerGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_customergroups_uuid_updatename**
> ApiResponseDTOOfCustomerGroupDTO post_customergroups_uuid_updatename(uuid, zf_tuuid, zf_ouuid, update_customer_group_name_request=update_customer_group_name_request)

Update name of customer group.

Update name of customer group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_group_dto import ApiResponseDTOOfCustomerGroupDTO
from masterdata_client.models.update_customer_group_name_request import UpdateCustomerGroupNameRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    uuid = 'uuid_example' # str | The ID of the customer group.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_customer_group_name_request = {"name":"string"} # UpdateCustomerGroupNameRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update name of customer group.
        api_response = api_instance.post_customergroups_uuid_updatename(uuid, zf_tuuid, zf_ouuid, update_customer_group_name_request=update_customer_group_name_request)
        print("The response of DefaultApi->post_customergroups_uuid_updatename:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_customergroups_uuid_updatename: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The ID of the customer group. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_customer_group_name_request** | [**UpdateCustomerGroupNameRequest**](UpdateCustomerGroupNameRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerGroupDTO**](ApiResponseDTOOfCustomerGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_customers_annualstatement_year_filter_overviewcount**
> ApiResponseDTOOfCustomerAnnualStatementOverviewCountDTO post_customers_annualstatement_year_filter_overviewcount(year, zf_tuuid, zf_ouuid, name=name, id=id, get_customers_query_params=get_customers_query_params)

Retrieve the overview count of annual statements for filtered customers based on the provided query parameters.

Retrieve the overview count of annual statements for filtered customers based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_annual_statement_overview_count_dto import ApiResponseDTOOfCustomerAnnualStatementOverviewCountDTO
from masterdata_client.models.get_customers_query_params import GetCustomersQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    year = 56 # int | Year for which the annual statements are supposed to be created.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    get_customers_query_params = {"customerTypes":["string"],"defaultPaymentMethod":"string","propertyGroupIds":["string"],"excludePropertyGroupId":"string","customerGroupId":"string","excludeCustomerGroupId":"string","customerGroupName":"string","nameContains":"string","activationCode":"string","priorityServiceRegisterPropertyTypeId":"string","vulnerabilityRegisterPropertyTypeId":"string","priorityServiceRegisterIds":["string"],"vulnerabilityRegisterIds":["string"],"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetCustomersQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve the overview count of annual statements for filtered customers based on the provided query parameters.
        api_response = api_instance.post_customers_annualstatement_year_filter_overviewcount(year, zf_tuuid, zf_ouuid, name=name, id=id, get_customers_query_params=get_customers_query_params)
        print("The response of DefaultApi->post_customers_annualstatement_year_filter_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_customers_annualstatement_year_filter_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **int**| Year for which the annual statements are supposed to be created. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **get_customers_query_params** | [**GetCustomersQueryParams**](GetCustomersQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerAnnualStatementOverviewCountDTO**](ApiResponseDTOOfCustomerAnnualStatementOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The overview count of annual statements for filtered customers. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_customers_bulk_createannualstatement**
> ApiResponseDTO post_customers_bulk_createannualstatement(zf_tuuid, zf_ouuid, bulk_create_annual_statement_request=bulk_create_annual_statement_request)

Create and generate annual statements for multiple customers in bulk.

Create and generate annual statements for multiple customers in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_create_annual_statement_request import BulkCreateAnnualStatementRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_create_annual_statement_request = {"onlyValidate":true,"queryParams":{"customerTypes":["string"],"defaultPaymentMethod":"string","propertyGroupIds":["string"],"excludePropertyGroupId":"string","customerGroupId":"string","excludeCustomerGroupId":"string","customerGroupName":"string","nameContains":"string","activationCode":"string","priorityServiceRegisterPropertyTypeId":"string","vulnerabilityRegisterPropertyTypeId":"string","priorityServiceRegisterIds":["string"],"vulnerabilityRegisterIds":["string"],"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","onlyWhereLatestNotGenerated":true,"year":0} # BulkCreateAnnualStatementRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Create and generate annual statements for multiple customers in bulk.
        api_response = api_instance.post_customers_bulk_createannualstatement(zf_tuuid, zf_ouuid, bulk_create_annual_statement_request=bulk_create_annual_statement_request)
        print("The response of DefaultApi->post_customers_bulk_createannualstatement:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_customers_bulk_createannualstatement: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_create_annual_statement_request** | [**BulkCreateAnnualStatementRequest**](BulkCreateAnnualStatementRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_customers_entityid_customproperties**
> ApiResponseDTOOfCustomerDTO post_customers_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)

/Customers/{entityId}/customproperties - POST

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_dto import ApiResponseDTOOfCustomerDTO
from masterdata_client.models.update_custom_entity_properties_request import UpdateCustomEntityPropertiesRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_custom_entity_properties_request = {"properties":[{"customEntityPropertyTypeId":"string","values":[{"startDateTime":"string","endDateTime":"string","valueDecimal":0,"valueString":"string","valueBoolean":true,"valueNumber":0,"valueDateTime":"string","valueDropdown":["string"]}]}]} # UpdateCustomEntityPropertiesRequest |  (optional)

    try:
        # /Customers/{entityId}/customproperties - POST
        api_response = api_instance.post_customers_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)
        print("The response of DefaultApi->post_customers_entityid_customproperties:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_customers_entityid_customproperties: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **str**|  | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_custom_entity_properties_request** | [**UpdateCustomEntityPropertiesRequest**](UpdateCustomEntityPropertiesRequest.md)|  | [optional] 

### Return type

[**ApiResponseDTOOfCustomerDTO**](ApiResponseDTOOfCustomerDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meters**
> ApiResponseDTOOfMeterDTO post_meters(zf_tuuid, zf_ouuid, create_meter_request=create_meter_request)

Create new meter.

Create new meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_meter_dto import ApiResponseDTOOfMeterDTO
from masterdata_client.models.create_meter_request import CreateMeterRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    create_meter_request = {"serialNumber":"string","meterType":"individual","meterTag":"string","modelId":"string","mutationDateTime":"string","channels":[{"dataFrequency":"pt1m","meteringType":"none","utilityType":"none","direction":"offtake","incrementationType":"delta","timeOfUse":"string","unitOfMeasure":"none","externalIdentifier":"string","description":"string","relationExternalReference":"string","resetDay":0,"resetMonth":0,"resetHour":0}],"readingFrequency":"hourly","nextExpectedReadingDate":"string","parentRelation":{"parentMeterId":"string","externalReference":"string"}} # CreateMeterRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Create new meter.
        api_response = api_instance.post_meters(zf_tuuid, zf_ouuid, create_meter_request=create_meter_request)
        print("The response of DefaultApi->post_meters:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meters: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **create_meter_request** | [**CreateMeterRequest**](CreateMeterRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfMeterDTO**](ApiResponseDTOOfMeterDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meters_bulk_delete**
> ApiResponseDTOOfboolean post_meters_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_meter_request=bulk_delete_meter_request)

Soft-delete multiple meters in bulk.

Soft-delete multiple meters in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from masterdata_client.models.bulk_delete_meter_request import BulkDeleteMeterRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_delete_meter_request = {"onlyValidate":true,"queryParams":{"servicelocationIds":["string"],"propertyGroupIds":["string"],"meterType":"individual","receivedMeteringDataStart":"string","receivedMeteringDataEnd":"string","nextExpectedReadingDateStart":"string","nextExpectedReadingDateEnd":"string","parentSerialNumber":"string","filterByReadingFrequency":true,"readingFrequency":"hourly","customerId":"string","meterTypeGroup":"string","meterSerialNumbers":["string"],"modelIds":["string"],"meterName":"string","showDeleted":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkDeleteMeterRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Soft-delete multiple meters in bulk.
        api_response = api_instance.post_meters_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_meter_request=bulk_delete_meter_request)
        print("The response of DefaultApi->post_meters_bulk_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meters_bulk_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_delete_meter_request** | [**BulkDeleteMeterRequest**](BulkDeleteMeterRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | No Content |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meters_bulk_reconfigure_from_model**
> ApiResponseDTOOfboolean post_meters_bulk_reconfigure_from_model(zf_tuuid, zf_ouuid, bulk_reconfigure_meter_from_model_request=bulk_reconfigure_meter_from_model_request)

Reconfigure multiple meters from a model's channel templates in bulk.

Reconfigure multiple meters from a model's channel templates in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from masterdata_client.models.bulk_reconfigure_meter_from_model_request import BulkReconfigureMeterFromModelRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_reconfigure_meter_from_model_request = {"onlyValidate":true,"queryParams":{"servicelocationIds":["string"],"propertyGroupIds":["string"],"meterType":"individual","receivedMeteringDataStart":"string","receivedMeteringDataEnd":"string","nextExpectedReadingDateStart":"string","nextExpectedReadingDateEnd":"string","parentSerialNumber":"string","filterByReadingFrequency":true,"readingFrequency":"hourly","customerId":"string","meterTypeGroup":"string","meterSerialNumbers":["string"],"modelIds":["string"],"meterName":"string","showDeleted":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","mutationDateTime":"string","modelId":"string","useBeginningOfMeter":true} # BulkReconfigureMeterFromModelRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Reconfigure multiple meters from a model's channel templates in bulk.
        api_response = api_instance.post_meters_bulk_reconfigure_from_model(zf_tuuid, zf_ouuid, bulk_reconfigure_meter_from_model_request=bulk_reconfigure_meter_from_model_request)
        print("The response of DefaultApi->post_meters_bulk_reconfigure_from_model:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meters_bulk_reconfigure_from_model: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_reconfigure_meter_from_model_request** | [**BulkReconfigureMeterFromModelRequest**](BulkReconfigureMeterFromModelRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meters_bulk_uninstall**
> ApiResponseDTOOfboolean post_meters_bulk_uninstall(zf_tuuid, zf_ouuid, bulk_uninstall_meter_request=bulk_uninstall_meter_request)

Uninstall multiple installed meters in bulk.

Uninstall multiple installed meters in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from masterdata_client.models.bulk_uninstall_meter_request import BulkUninstallMeterRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_uninstall_meter_request = {"onlyValidate":true,"queryParams":{"servicelocationIds":["string"],"propertyGroupIds":["string"],"meterType":"individual","receivedMeteringDataStart":"string","receivedMeteringDataEnd":"string","nextExpectedReadingDateStart":"string","nextExpectedReadingDateEnd":"string","parentSerialNumber":"string","filterByReadingFrequency":true,"readingFrequency":"hourly","customerId":"string","meterTypeGroup":"string","meterSerialNumbers":["string"],"modelIds":["string"],"meterName":"string","showDeleted":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","removeDate":"string"} # BulkUninstallMeterRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Uninstall multiple installed meters in bulk.
        api_response = api_instance.post_meters_bulk_uninstall(zf_tuuid, zf_ouuid, bulk_uninstall_meter_request=bulk_uninstall_meter_request)
        print("The response of DefaultApi->post_meters_bulk_uninstall:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meters_bulk_uninstall: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_uninstall_meter_request** | [**BulkUninstallMeterRequest**](BulkUninstallMeterRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meters_entityid_customproperties**
> ApiResponseDTOOfMeterDTO post_meters_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)

/Meters/{entityId}/customproperties - POST

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_meter_dto import ApiResponseDTOOfMeterDTO
from masterdata_client.models.update_custom_entity_properties_request import UpdateCustomEntityPropertiesRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_custom_entity_properties_request = {"properties":[{"customEntityPropertyTypeId":"string","values":[{"startDateTime":"string","endDateTime":"string","valueDecimal":0,"valueString":"string","valueBoolean":true,"valueNumber":0,"valueDateTime":"string","valueDropdown":["string"]}]}]} # UpdateCustomEntityPropertiesRequest |  (optional)

    try:
        # /Meters/{entityId}/customproperties - POST
        api_response = api_instance.post_meters_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)
        print("The response of DefaultApi->post_meters_entityid_customproperties:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meters_entityid_customproperties: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **str**|  | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_custom_entity_properties_request** | [**UpdateCustomEntityPropertiesRequest**](UpdateCustomEntityPropertiesRequest.md)|  | [optional] 

### Return type

[**ApiResponseDTOOfMeterDTO**](ApiResponseDTOOfMeterDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meters_filter**
> ApiResponseDTOOfPagedResponseModelDTOOfMeterDTO post_meters_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_meters_query_params=get_meters_query_params)

Retrieve meters based on the provided query parameters.

Retrieve meters based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_meter_dto import ApiResponseDTOOfPagedResponseModelDTOOfMeterDTO
from masterdata_client.models.get_meters_query_params import GetMetersQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | Allows to order the meters. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)
    get_meters_query_params = {"servicelocationIds":["string"],"propertyGroupIds":["string"],"meterType":"individual","receivedMeteringDataStart":"string","receivedMeteringDataEnd":"string","nextExpectedReadingDateStart":"string","nextExpectedReadingDateEnd":"string","parentSerialNumber":"string","filterByReadingFrequency":true,"readingFrequency":"hourly","customerId":"string","meterTypeGroup":"string","meterSerialNumbers":["string"],"modelIds":["string"],"meterName":"string","showDeleted":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetMetersQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve meters based on the provided query parameters.
        api_response = api_instance.post_meters_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_meters_query_params=get_meters_query_params)
        print("The response of DefaultApi->post_meters_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meters_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **order_by** | **str**| Allows to order the meters. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 
 **get_meters_query_params** | [**GetMetersQueryParams**](GetMetersQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfMeterDTO**](ApiResponseDTOOfPagedResponseModelDTOOfMeterDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response of meters. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meters_filter_overviewcount**
> ApiResponseDTOOfMeterOverviewCountDTO post_meters_filter_overviewcount(zf_tuuid, zf_ouuid, get_meters_query_params=get_meters_query_params)

Retrieve the overview count of meters based on the provided query parameters.

Retrieve the overview count of meters based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_meter_overview_count_dto import ApiResponseDTOOfMeterOverviewCountDTO
from masterdata_client.models.get_meters_query_params import GetMetersQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    get_meters_query_params = {"servicelocationIds":["string"],"propertyGroupIds":["string"],"meterType":"individual","receivedMeteringDataStart":"string","receivedMeteringDataEnd":"string","nextExpectedReadingDateStart":"string","nextExpectedReadingDateEnd":"string","parentSerialNumber":"string","filterByReadingFrequency":true,"readingFrequency":"hourly","customerId":"string","meterTypeGroup":"string","meterSerialNumbers":["string"],"modelIds":["string"],"meterName":"string","showDeleted":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetMetersQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve the overview count of meters based on the provided query parameters.
        api_response = api_instance.post_meters_filter_overviewcount(zf_tuuid, zf_ouuid, get_meters_query_params=get_meters_query_params)
        print("The response of DefaultApi->post_meters_filter_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meters_filter_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **get_meters_query_params** | [**GetMetersQueryParams**](GetMetersQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfMeterOverviewCountDTO**](ApiResponseDTOOfMeterOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The overview count of meters. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meters_meteruuid_channels**
> ApiResponseDTOOfMeterDTO post_meters_meteruuid_channels(meteruuid, zf_tuuid, zf_ouuid, update_meter_channels_request=update_meter_channels_request)

Update channels configured on a meter.

Update channels configured on a meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_meter_dto import ApiResponseDTOOfMeterDTO
from masterdata_client.models.update_meter_channels_request import UpdateMeterChannelsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_meter_channels_request = {"mutationDateTime":"string","modelId":"string","channelTemplates":[{"dataFrequency":"pt1m","meteringType":"none","utilityType":"none","direction":"offtake","incrementationType":"delta","timeOfUse":"string","unitOfMeasure":"none","externalIdentifier":"string","description":"string","relationExternalReference":"string","resetDay":0,"resetMonth":0,"resetHour":0}],"useBeginningOfMeter":true} # UpdateMeterChannelsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update channels configured on a meter.
        api_response = api_instance.post_meters_meteruuid_channels(meteruuid, zf_tuuid, zf_ouuid, update_meter_channels_request=update_meter_channels_request)
        print("The response of DefaultApi->post_meters_meteruuid_channels:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meters_meteruuid_channels: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_meter_channels_request** | [**UpdateMeterChannelsRequest**](UpdateMeterChannelsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfMeterDTO**](ApiResponseDTOOfMeterDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meters_meteruuid_delete**
> ApiResponseDTOOfboolean post_meters_meteruuid_delete(meteruuid, zf_tuuid, zf_ouuid, body=body)

Soft-delete a meter that was never installed, freeing its serial number for reuse.

Soft-delete a meter that was never installed, freeing its serial number for reuse.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    body = None # object | Propagates notification that operations should be canceled. (optional)

    try:
        # Soft-delete a meter that was never installed, freeing its serial number for reuse.
        api_response = api_instance.post_meters_meteruuid_delete(meteruuid, zf_tuuid, zf_ouuid, body=body)
        print("The response of DefaultApi->post_meters_meteruuid_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meters_meteruuid_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **body** | **object**| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meters_meteruuid_details**
> ApiResponseDTOOfMeterDTO post_meters_meteruuid_details(meteruuid, zf_tuuid, zf_ouuid, update_meter_details_request=update_meter_details_request)

Update details of a meter.

Update details of a meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_meter_dto import ApiResponseDTOOfMeterDTO
from masterdata_client.models.update_meter_details_request import UpdateMeterDetailsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_meter_details_request = {"meterType":"individual","nextExpectedReadingDate":"string","meterReadingFrequency":"hourly"} # UpdateMeterDetailsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update details of a meter.
        api_response = api_instance.post_meters_meteruuid_details(meteruuid, zf_tuuid, zf_ouuid, update_meter_details_request=update_meter_details_request)
        print("The response of DefaultApi->post_meters_meteruuid_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meters_meteruuid_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_meter_details_request** | [**UpdateMeterDetailsRequest**](UpdateMeterDetailsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfMeterDTO**](ApiResponseDTOOfMeterDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meters_meteruuid_install**
> ApiResponseDTOOfMeterDTO post_meters_meteruuid_install(meteruuid, zf_tuuid, zf_ouuid, install_meter_request=install_meter_request)

Install an uninstalled meter.

Install an uninstalled meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_meter_dto import ApiResponseDTOOfMeterDTO
from masterdata_client.models.install_meter_request import InstallMeterRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    install_meter_request = {"mutationDateTime":"string","serviceLocationId":"string","propertyGroupId":"string","addressInstalled":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":"aut","localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"channelTemplates":[{"dataFrequency":"pt1m","meteringType":"none","utilityType":"none","direction":"offtake","incrementationType":"delta","timeOfUse":"string","unitOfMeasure":"none","externalIdentifier":"string","description":"string","relationExternalReference":"string","resetDay":0,"resetMonth":0,"resetHour":0}],"nextExpectedReadingDate":"string","readingFrequency":"hourly"} # InstallMeterRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Install an uninstalled meter.
        api_response = api_instance.post_meters_meteruuid_install(meteruuid, zf_tuuid, zf_ouuid, install_meter_request=install_meter_request)
        print("The response of DefaultApi->post_meters_meteruuid_install:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meters_meteruuid_install: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **install_meter_request** | [**InstallMeterRequest**](InstallMeterRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfMeterDTO**](ApiResponseDTOOfMeterDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meters_meteruuid_metertag**
> ApiResponseDTOOfMeterDTO post_meters_meteruuid_metertag(meteruuid, zf_tuuid, zf_ouuid, update_meter_tag_request=update_meter_tag_request)

Update meter tag.

Update meter tag.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_meter_dto import ApiResponseDTOOfMeterDTO
from masterdata_client.models.update_meter_tag_request import UpdateMeterTagRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_meter_tag_request = {"meterTag":"string"} # UpdateMeterTagRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update meter tag.
        api_response = api_instance.post_meters_meteruuid_metertag(meteruuid, zf_tuuid, zf_ouuid, update_meter_tag_request=update_meter_tag_request)
        print("The response of DefaultApi->post_meters_meteruuid_metertag:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meters_meteruuid_metertag: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_meter_tag_request** | [**UpdateMeterTagRequest**](UpdateMeterTagRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfMeterDTO**](ApiResponseDTOOfMeterDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meters_meteruuid_submeter_add**
> ApiResponseDTOOfMeterDTO post_meters_meteruuid_submeter_add(meteruuid, zf_tuuid, zf_ouuid, add_sub_meter_request=add_sub_meter_request)

Set this meter as a parent meter of another meter.

Set this meter as a parent meter of another meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.add_sub_meter_request import AddSubMeterRequest
from masterdata_client.models.api_response_dtoof_meter_dto import ApiResponseDTOOfMeterDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter, which is supposed to be a parent meter.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    add_sub_meter_request = {"subMeterId":"string","externalReference":"string"} # AddSubMeterRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Set this meter as a parent meter of another meter.
        api_response = api_instance.post_meters_meteruuid_submeter_add(meteruuid, zf_tuuid, zf_ouuid, add_sub_meter_request=add_sub_meter_request)
        print("The response of DefaultApi->post_meters_meteruuid_submeter_add:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meters_meteruuid_submeter_add: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter, which is supposed to be a parent meter. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **add_sub_meter_request** | [**AddSubMeterRequest**](AddSubMeterRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfMeterDTO**](ApiResponseDTOOfMeterDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meters_meteruuid_uninstall**
> ApiResponseDTOOfMeterDTO post_meters_meteruuid_uninstall(meteruuid, zf_tuuid, zf_ouuid, uninstall_meter_request=uninstall_meter_request)

Uninstall an installed meter.

Uninstall an installed meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_meter_dto import ApiResponseDTOOfMeterDTO
from masterdata_client.models.uninstall_meter_request import UninstallMeterRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    uninstall_meter_request = {"removeDate":"string"} # UninstallMeterRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Uninstall an installed meter.
        api_response = api_instance.post_meters_meteruuid_uninstall(meteruuid, zf_tuuid, zf_ouuid, uninstall_meter_request=uninstall_meter_request)
        print("The response of DefaultApi->post_meters_meteruuid_uninstall:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meters_meteruuid_uninstall: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **uninstall_meter_request** | [**UninstallMeterRequest**](UninstallMeterRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfMeterDTO**](ApiResponseDTOOfMeterDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meters_meteruuid_updateparentrelation**
> ApiResponseDTOOfMeterDTO post_meters_meteruuid_updateparentrelation(meteruuid, zf_tuuid, zf_ouuid, update_parent_relation_request=update_parent_relation_request)

Set this meter as a sub-meter of another meter.

Set this meter as a sub-meter of another meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_meter_dto import ApiResponseDTOOfMeterDTO
from masterdata_client.models.update_parent_relation_request import UpdateParentRelationRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter, which is supposed to be a sub-meter.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_parent_relation_request = {"meterId":"string","externalReference":"string"} # UpdateParentRelationRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Set this meter as a sub-meter of another meter.
        api_response = api_instance.post_meters_meteruuid_updateparentrelation(meteruuid, zf_tuuid, zf_ouuid, update_parent_relation_request=update_parent_relation_request)
        print("The response of DefaultApi->post_meters_meteruuid_updateparentrelation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meters_meteruuid_updateparentrelation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter, which is supposed to be a sub-meter. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_parent_relation_request** | [**UpdateParentRelationRequest**](UpdateParentRelationRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfMeterDTO**](ApiResponseDTOOfMeterDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meters_meteruuid_validate**
> ApiResponseDTOOfMeterDTO post_meters_meteruuid_validate(meteruuid, zf_tuuid, zf_ouuid)

Trigger meter validation.

Trigger meter validation.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_meter_dto import ApiResponseDTOOfMeterDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Trigger meter validation.
        api_response = api_instance.post_meters_meteruuid_validate(meteruuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->post_meters_meteruuid_validate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meters_meteruuid_validate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfMeterDTO**](ApiResponseDTOOfMeterDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_moverequests**
> ApiResponseDTOOfMoveRequestDTO post_moverequests(zf_tuuid, zf_ouuid, create_move_request_request=create_move_request_request)

Create new move request.

Create new move request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_move_request_dto import ApiResponseDTOOfMoveRequestDTO
from masterdata_client.models.create_move_request_request import CreateMoveRequestRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    create_move_request_request = {"moveRequestType":"movein","mutationDateTime":"string","customerDetails":{"internalId":"string","accountNumber":"string","salutation":"string","initials":"string","firstName":"string","lastName":"string","birthDate":"string","ssin":"string","ssinCountry":"aut","customerType":"person","companyName":"string","organizationNumber":"string","vatNumber":"string","defaultPaymentMethod":"sct","invoiceAddress":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":"aut","localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"bankAccount":"string","emailAddress":"string","telephoneNumber":"string","mobileTelephoneNumber":"string","website":"string","culture":"string"},"externalContractId":"string","externalId":"string","moveRequestNumber":"string","serviceLocationDetails":{"address":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":"aut","localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"services":[{"utilityType":"none"}],"internalId":"string"},"measurementDetails":[{"internalMeterId":"string","externalChannelIdentifier":"string","meterSerialNumber":"string","utilityType":"none","unitOfMeasure":"none","timeOfUse":"string","value":0}],"attachmentSignatures":[{"origin":"customer","culture":"string","productAttachmentId":"string","entityAttachmentGroupId":"string","signDate":"string","viewedDate":"string"}],"customMessage":"string","productId":"string","billingProperties":{"type":"ContractDetailsBillingPropertiesBaseDTO.Credit","billingMethod":"credit","invoiceFrequency":"monthly","advanceFrequency":"none","advanceAmount":0,"paymentTermsId":"string","deviatingFirstAdvanceStartDate":"string","advanceCalculationType":"fixed","advancePeriodPercentages":[{"periodIndex":0,"percentage":0}]}} # CreateMoveRequestRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Create new move request.
        api_response = api_instance.post_moverequests(zf_tuuid, zf_ouuid, create_move_request_request=create_move_request_request)
        print("The response of DefaultApi->post_moverequests:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_moverequests: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **create_move_request_request** | [**CreateMoveRequestRequest**](CreateMoveRequestRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfMoveRequestDTO**](ApiResponseDTOOfMoveRequestDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_moverequests_bulk_reject**
> ApiResponseDTO post_moverequests_bulk_reject(zf_tuuid, zf_ouuid, bulk_reject_move_request=bulk_reject_move_request)

Reject multiple uncompleted move requests in bulk.

This action is irreversible.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_reject_move_request import BulkRejectMoveRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_reject_move_request = {"onlyValidate":true,"queryParams":{"locationId":"string","moveRequestTypeId":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkRejectMoveRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Reject multiple uncompleted move requests in bulk.
        api_response = api_instance.post_moverequests_bulk_reject(zf_tuuid, zf_ouuid, bulk_reject_move_request=bulk_reject_move_request)
        print("The response of DefaultApi->post_moverequests_bulk_reject:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_moverequests_bulk_reject: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_reject_move_request** | [**BulkRejectMoveRequest**](BulkRejectMoveRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_moverequests_bulk_setnew**
> ApiResponseDTO post_moverequests_bulk_setnew(zf_tuuid, zf_ouuid, bulk_set_move_request_to_new=bulk_set_move_request_to_new)

Mark multiple uncompleted move requests as new in bulk.

Mark multiple uncompleted move requests as new in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_set_move_request_to_new import BulkSetMoveRequestToNew
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_set_move_request_to_new = {"onlyValidate":true,"queryParams":{"locationId":"string","moveRequestTypeId":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkSetMoveRequestToNew | Propagates notification that operations should be canceled. (optional)

    try:
        # Mark multiple uncompleted move requests as new in bulk.
        api_response = api_instance.post_moverequests_bulk_setnew(zf_tuuid, zf_ouuid, bulk_set_move_request_to_new=bulk_set_move_request_to_new)
        print("The response of DefaultApi->post_moverequests_bulk_setnew:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_moverequests_bulk_setnew: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_set_move_request_to_new** | [**BulkSetMoveRequestToNew**](BulkSetMoveRequestToNew.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_moverequests_bulk_setpending**
> ApiResponseDTO post_moverequests_bulk_setpending(zf_tuuid, zf_ouuid, bulk_set_move_request_to_pending_request=bulk_set_move_request_to_pending_request)

Mark multiple uncompleted move requests as pending in bulk.

Mark multiple uncompleted move requests as pending in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_set_move_request_to_pending_request import BulkSetMoveRequestToPendingRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_set_move_request_to_pending_request = {"onlyValidate":true,"queryParams":{"locationId":"string","moveRequestTypeId":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","newStatus":"new"} # BulkSetMoveRequestToPendingRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Mark multiple uncompleted move requests as pending in bulk.
        api_response = api_instance.post_moverequests_bulk_setpending(zf_tuuid, zf_ouuid, bulk_set_move_request_to_pending_request=bulk_set_move_request_to_pending_request)
        print("The response of DefaultApi->post_moverequests_bulk_setpending:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_moverequests_bulk_setpending: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_set_move_request_to_pending_request** | [**BulkSetMoveRequestToPendingRequest**](BulkSetMoveRequestToPendingRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_moverequests_filter**
> ApiResponseDTOOfPagedResponseModelDTOOfMoveRequestDTO post_moverequests_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_move_requests_query_params=get_move_requests_query_params)

Retrieve move requests based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

Retrieve move requests based on the provided query parameters.
This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_move_request_dto import ApiResponseDTOOfPagedResponseModelDTOOfMoveRequestDTO
from masterdata_client.models.get_move_requests_query_params import GetMoveRequestsQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | Allows to order the move requests. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)
    get_move_requests_query_params = {"locationId":"string","moveRequestTypeId":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetMoveRequestsQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve move requests based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
        api_response = api_instance.post_moverequests_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_move_requests_query_params=get_move_requests_query_params)
        print("The response of DefaultApi->post_moverequests_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_moverequests_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **order_by** | **str**| Allows to order the move requests. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 
 **get_move_requests_query_params** | [**GetMoveRequestsQueryParams**](GetMoveRequestsQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfMoveRequestDTO**](ApiResponseDTOOfPagedResponseModelDTOOfMoveRequestDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response of move requests. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_moverequests_filter_overviewcount**
> ApiResponseDTOOfMoveRequestOverviewCountDTO post_moverequests_filter_overviewcount(zf_tuuid, zf_ouuid, get_move_requests_query_params=get_move_requests_query_params)

Retrieve the overview count of move requests based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

Retrieve the overview count of move requests based on the provided query parameters.
This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_move_request_overview_count_dto import ApiResponseDTOOfMoveRequestOverviewCountDTO
from masterdata_client.models.get_move_requests_query_params import GetMoveRequestsQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    get_move_requests_query_params = {"locationId":"string","moveRequestTypeId":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetMoveRequestsQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve the overview count of move requests based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
        api_response = api_instance.post_moverequests_filter_overviewcount(zf_tuuid, zf_ouuid, get_move_requests_query_params=get_move_requests_query_params)
        print("The response of DefaultApi->post_moverequests_filter_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_moverequests_filter_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **get_move_requests_query_params** | [**GetMoveRequestsQueryParams**](GetMoveRequestsQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfMoveRequestOverviewCountDTO**](ApiResponseDTOOfMoveRequestOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The overview count of move requests. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_moverequests_moverequestuuid_process**
> ApiResponseDTOOfMoveRequestDTO post_moverequests_moverequestuuid_process(moverequestuuid, zf_tuuid, zf_ouuid)

Process uncompleted move request.

In case of a move-in request, this action will create and sign a contract. In case of move-out request, this action will terminate existing contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_move_request_dto import ApiResponseDTOOfMoveRequestDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Process uncompleted move request.
        api_response = api_instance.post_moverequests_moverequestuuid_process(moverequestuuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->post_moverequests_moverequestuuid_process:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_moverequests_moverequestuuid_process: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfMoveRequestDTO**](ApiResponseDTOOfMoveRequestDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_moverequests_moverequestuuid_reject**
> ApiResponseDTOOfMoveRequestDTO post_moverequests_moverequestuuid_reject(moverequestuuid, zf_tuuid, zf_ouuid)

Reject uncompleted move request.

This action can only be executed on move requests, which are not yet rejected or processed.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_move_request_dto import ApiResponseDTOOfMoveRequestDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Reject uncompleted move request.
        api_response = api_instance.post_moverequests_moverequestuuid_reject(moverequestuuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->post_moverequests_moverequestuuid_reject:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_moverequests_moverequestuuid_reject: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfMoveRequestDTO**](ApiResponseDTOOfMoveRequestDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_moverequests_moverequestuuid_setnew**
> ApiResponseDTOOfMoveRequestDTO post_moverequests_moverequestuuid_setnew(moverequestuuid, zf_tuuid, zf_ouuid)

Mark uncompleted move request as new.

This action can only be executed on move requests, which are not yet rejected or processed.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_move_request_dto import ApiResponseDTOOfMoveRequestDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Mark uncompleted move request as new.
        api_response = api_instance.post_moverequests_moverequestuuid_setnew(moverequestuuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->post_moverequests_moverequestuuid_setnew:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_moverequests_moverequestuuid_setnew: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfMoveRequestDTO**](ApiResponseDTOOfMoveRequestDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_moverequests_moverequestuuid_setpending**
> ApiResponseDTOOfMoveRequestDTO post_moverequests_moverequestuuid_setpending(moverequestuuid, zf_tuuid, zf_ouuid, set_move_request_to_pending_request=set_move_request_to_pending_request)

Mark uncompleted move request as pending.

This action can only be executed on move requests, which are not yet rejected or processed.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_move_request_dto import ApiResponseDTOOfMoveRequestDTO
from masterdata_client.models.set_move_request_to_pending_request import SetMoveRequestToPendingRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    set_move_request_to_pending_request = {"newStatus":"new"} # SetMoveRequestToPendingRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Mark uncompleted move request as pending.
        api_response = api_instance.post_moverequests_moverequestuuid_setpending(moverequestuuid, zf_tuuid, zf_ouuid, set_move_request_to_pending_request=set_move_request_to_pending_request)
        print("The response of DefaultApi->post_moverequests_moverequestuuid_setpending:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_moverequests_moverequestuuid_setpending: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **set_move_request_to_pending_request** | [**SetMoveRequestToPendingRequest**](SetMoveRequestToPendingRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfMoveRequestDTO**](ApiResponseDTOOfMoveRequestDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_moverequests_moverequestuuid_updatecustomerdetails**
> ApiResponseDTOOfMoveRequestDTO post_moverequests_moverequestuuid_updatecustomerdetails(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_customer_details_request=update_move_request_customer_details_request)

Update customer details of a move request.

Update customer details of a move request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_move_request_dto import ApiResponseDTOOfMoveRequestDTO
from masterdata_client.models.update_move_request_customer_details_request import UpdateMoveRequestCustomerDetailsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_move_request_customer_details_request = {"accountNumber":"string","salutation":"string","initials":"string","firstName":"string","lastName":"string","birthDate":"string","ssin":"string","ssinCountry":"aut","customerType":"person","companyName":"string","organizationNumber":"string","vatNumber":"string","defaultPaymentMethod":"sct","invoiceAddress":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":"aut","localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"countryCode":"string","bankAccount":"string","emailAddress":"string","telephoneNumber":"string","mobileTelephoneNumber":"string","website":"string","culture":"string","internalId":"string","customerGroupId":"string"} # UpdateMoveRequestCustomerDetailsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update customer details of a move request.
        api_response = api_instance.post_moverequests_moverequestuuid_updatecustomerdetails(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_customer_details_request=update_move_request_customer_details_request)
        print("The response of DefaultApi->post_moverequests_moverequestuuid_updatecustomerdetails:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_moverequests_moverequestuuid_updatecustomerdetails: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_move_request_customer_details_request** | [**UpdateMoveRequestCustomerDetailsRequest**](UpdateMoveRequestCustomerDetailsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfMoveRequestDTO**](ApiResponseDTOOfMoveRequestDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_moverequests_moverequestuuid_updatedetails**
> ApiResponseDTOOfMoveRequestDTO post_moverequests_moverequestuuid_updatedetails(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_request=update_move_request_request)

Update details of a move request.

Update details of a move request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_move_request_dto import ApiResponseDTOOfMoveRequestDTO
from masterdata_client.models.update_move_request_request import UpdateMoveRequestRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_move_request_request = {"productId":"string","usePropertyGroupProduct":true,"contractNumber":"string","estimations":[{"utilityType":"string","unitOfMeasure":"string","meteringType":"string","value":0,"consumerGroupId":"string"}],"billingProperties":{"type":"ContractDetailsBillingPropertiesBaseDTO.Credit","billingMethod":"credit","invoiceFrequency":"monthly","advanceFrequency":"none","advanceAmount":0,"paymentTermsId":"string","deviatingFirstAdvanceStartDate":"string","advanceCalculationType":"fixed","advancePeriodPercentages":[{"periodIndex":0,"percentage":0}]}} # UpdateMoveRequestRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update details of a move request.
        api_response = api_instance.post_moverequests_moverequestuuid_updatedetails(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_request=update_move_request_request)
        print("The response of DefaultApi->post_moverequests_moverequestuuid_updatedetails:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_moverequests_moverequestuuid_updatedetails: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_move_request_request** | [**UpdateMoveRequestRequest**](UpdateMoveRequestRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfMoveRequestDTO**](ApiResponseDTOOfMoveRequestDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_moverequests_moverequestuuid_updatemeasurementdetails**
> ApiResponseDTOOfMoveRequestDTO post_moverequests_moverequestuuid_updatemeasurementdetails(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_measurement_details_request=update_move_request_measurement_details_request)

Update measurement details of a move request.

Update measurement details of a move request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_move_request_dto import ApiResponseDTOOfMoveRequestDTO
from masterdata_client.models.update_move_request_measurement_details_request import UpdateMoveRequestMeasurementDetailsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_move_request_measurement_details_request = {"measurements":[{"internalMeterId":"string","externalChannelIdentifier":"string","meterSerialNumber":"string","utilityType":"none","unitOfMeasure":"none","timeOfUse":"string","value":0}]} # UpdateMoveRequestMeasurementDetailsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update measurement details of a move request.
        api_response = api_instance.post_moverequests_moverequestuuid_updatemeasurementdetails(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_measurement_details_request=update_move_request_measurement_details_request)
        print("The response of DefaultApi->post_moverequests_moverequestuuid_updatemeasurementdetails:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_moverequests_moverequestuuid_updatemeasurementdetails: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_move_request_measurement_details_request** | [**UpdateMoveRequestMeasurementDetailsRequest**](UpdateMoveRequestMeasurementDetailsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfMoveRequestDTO**](ApiResponseDTOOfMoveRequestDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_moverequests_moverequestuuid_updatemutationdatetime**
> ApiResponseDTOOfMoveRequestDTO post_moverequests_moverequestuuid_updatemutationdatetime(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_mutation_date_time_request=update_move_request_mutation_date_time_request)

Update mutation date of a move request.

Mutation date is a sign date in case of move-in requests, or termination date in case of move-out request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_move_request_dto import ApiResponseDTOOfMoveRequestDTO
from masterdata_client.models.update_move_request_mutation_date_time_request import UpdateMoveRequestMutationDateTimeRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_move_request_mutation_date_time_request = {"mutationDateTime":"string"} # UpdateMoveRequestMutationDateTimeRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update mutation date of a move request.
        api_response = api_instance.post_moverequests_moverequestuuid_updatemutationdatetime(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_mutation_date_time_request=update_move_request_mutation_date_time_request)
        print("The response of DefaultApi->post_moverequests_moverequestuuid_updatemutationdatetime:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_moverequests_moverequestuuid_updatemutationdatetime: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_move_request_mutation_date_time_request** | [**UpdateMoveRequestMutationDateTimeRequest**](UpdateMoveRequestMutationDateTimeRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfMoveRequestDTO**](ApiResponseDTOOfMoveRequestDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_moverequests_moverequestuuid_updateservicelocationdetails**
> ApiResponseDTOOfMoveRequestDTO post_moverequests_moverequestuuid_updateservicelocationdetails(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_service_location_details_request=update_move_request_service_location_details_request)

Update location details of a move request.

Update location details of a move request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_move_request_dto import ApiResponseDTOOfMoveRequestDTO
from masterdata_client.models.update_move_request_service_location_details_request import UpdateMoveRequestServiceLocationDetailsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_move_request_service_location_details_request = {"address":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":"aut","localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"services":[{"utilityType":"none"}],"internalId":"string"} # UpdateMoveRequestServiceLocationDetailsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update location details of a move request.
        api_response = api_instance.post_moverequests_moverequestuuid_updateservicelocationdetails(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_service_location_details_request=update_move_request_service_location_details_request)
        print("The response of DefaultApi->post_moverequests_moverequestuuid_updateservicelocationdetails:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_moverequests_moverequestuuid_updateservicelocationdetails: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_move_request_service_location_details_request** | [**UpdateMoveRequestServiceLocationDetailsRequest**](UpdateMoveRequestServiceLocationDetailsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfMoveRequestDTO**](ApiResponseDTOOfMoveRequestDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_propertygroups**
> ApiResponseDTOOfPropertyGroupDTO post_propertygroups(zf_tuuid, zf_ouuid, create_property_group_request=create_property_group_request)

Create new location group.

Create new location group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_property_group_dto import ApiResponseDTOOfPropertyGroupDTO
from masterdata_client.models.create_property_group_request import CreatePropertyGroupRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    create_property_group_request = {"name":"string","type":"building","address":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":"aut","localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"managementRelations":[{"customerId":"string","managementRelationType":"owner"}],"serviceLocations":["string"],"costCenterId":"string","propertyGroupBillingConfiguration":{"companyBankAccountId":"string","advanceFrequency":"none","invoiceFrequency":"monthly","invoiceDay":0,"invoiceMonth":0,"productId":"string","paymentTermsId":"string","timeOfUseCalendarIds":{}},"propertyGroupPrepaymentConfiguration":{"prepaymentProfileId":"string"}} # CreatePropertyGroupRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Create new location group.
        api_response = api_instance.post_propertygroups(zf_tuuid, zf_ouuid, create_property_group_request=create_property_group_request)
        print("The response of DefaultApi->post_propertygroups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_propertygroups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **create_property_group_request** | [**CreatePropertyGroupRequest**](CreatePropertyGroupRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPropertyGroupDTO**](ApiResponseDTOOfPropertyGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_propertygroups_entityid_customproperties**
> ApiResponseDTOOfPropertyGroupDTO post_propertygroups_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)

/PropertyGroups/{entityId}/customproperties - POST

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_property_group_dto import ApiResponseDTOOfPropertyGroupDTO
from masterdata_client.models.update_custom_entity_properties_request import UpdateCustomEntityPropertiesRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_custom_entity_properties_request = {"properties":[{"customEntityPropertyTypeId":"string","values":[{"startDateTime":"string","endDateTime":"string","valueDecimal":0,"valueString":"string","valueBoolean":true,"valueNumber":0,"valueDateTime":"string","valueDropdown":["string"]}]}]} # UpdateCustomEntityPropertiesRequest |  (optional)

    try:
        # /PropertyGroups/{entityId}/customproperties - POST
        api_response = api_instance.post_propertygroups_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)
        print("The response of DefaultApi->post_propertygroups_entityid_customproperties:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_propertygroups_entityid_customproperties: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **str**|  | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_custom_entity_properties_request** | [**UpdateCustomEntityPropertiesRequest**](UpdateCustomEntityPropertiesRequest.md)|  | [optional] 

### Return type

[**ApiResponseDTOOfPropertyGroupDTO**](ApiResponseDTOOfPropertyGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_propertygroups_filter**
> ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupDTO post_propertygroups_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_property_groups_query_params=get_property_groups_query_params)

Retrieve location groups based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

Retrieve location groups based on the provided query parameters.
This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_property_group_dto import ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupDTO
from masterdata_client.models.get_property_groups_query_params import GetPropertyGroupsQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | Allows to order the location groups. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)
    get_property_groups_query_params = {"nameContains":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetPropertyGroupsQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve location groups based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
        api_response = api_instance.post_propertygroups_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_property_groups_query_params=get_property_groups_query_params)
        print("The response of DefaultApi->post_propertygroups_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_propertygroups_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **order_by** | **str**| Allows to order the location groups. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 
 **get_property_groups_query_params** | [**GetPropertyGroupsQueryParams**](GetPropertyGroupsQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupDTO**](ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response of location groups. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_propertygroups_filter_overviewcount**
> ApiResponseDTOOfPropertyGroupOverviewCountDTO post_propertygroups_filter_overviewcount(zf_tuuid, zf_ouuid, get_property_groups_query_params=get_property_groups_query_params)

Retrieve the overview count of location groups based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

Retrieve the overview count of location groups based on the provided query parameters.
This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_property_group_overview_count_dto import ApiResponseDTOOfPropertyGroupOverviewCountDTO
from masterdata_client.models.get_property_groups_query_params import GetPropertyGroupsQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    get_property_groups_query_params = {"nameContains":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetPropertyGroupsQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve the overview count of location groups based on the provided query parameters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
        api_response = api_instance.post_propertygroups_filter_overviewcount(zf_tuuid, zf_ouuid, get_property_groups_query_params=get_property_groups_query_params)
        print("The response of DefaultApi->post_propertygroups_filter_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_propertygroups_filter_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **get_property_groups_query_params** | [**GetPropertyGroupsQueryParams**](GetPropertyGroupsQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPropertyGroupOverviewCountDTO**](ApiResponseDTOOfPropertyGroupOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The overview count of location groups. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_propertygroups_propertygroupuuid**
> ApiResponseDTOOfPropertyGroupDTO post_propertygroups_propertygroupuuid(propertygroupuuid, zf_tuuid, zf_ouuid, update_property_group_request=update_property_group_request)

Update details of a location group.

Update details of a location group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_property_group_dto import ApiResponseDTOOfPropertyGroupDTO
from masterdata_client.models.update_property_group_request import UpdatePropertyGroupRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    propertygroupuuid = 'propertygroupuuid_example' # str | The ID of the location group.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_property_group_request = {"name":"string","type":"building","address":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":"aut","localizedDisplay":"string","lineOne":"string","lineTwo":"string"}} # UpdatePropertyGroupRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update details of a location group.
        api_response = api_instance.post_propertygroups_propertygroupuuid(propertygroupuuid, zf_tuuid, zf_ouuid, update_property_group_request=update_property_group_request)
        print("The response of DefaultApi->post_propertygroups_propertygroupuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_propertygroups_propertygroupuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupuuid** | **str**| The ID of the location group. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_property_group_request** | [**UpdatePropertyGroupRequest**](UpdatePropertyGroupRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPropertyGroupDTO**](ApiResponseDTOOfPropertyGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_propertygroups_propertygroupuuid_communicationconfiguration**
> ApiResponseDTOOfPropertyGroupDTO post_propertygroups_propertygroupuuid_communicationconfiguration(propertygroupuuid, zf_tuuid, zf_ouuid, update_property_group_communication_configuration_request=update_property_group_communication_configuration_request)

Update communication configuration of a location group.

Update communication configuration of a location group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_property_group_dto import ApiResponseDTOOfPropertyGroupDTO
from masterdata_client.models.update_property_group_communication_configuration_request import UpdatePropertyGroupCommunicationConfigurationRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    propertygroupuuid = 'propertygroupuuid_example' # str | The ID of the location group.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_property_group_communication_configuration_request = {"companyName":"string","vatAccountNumber":"string","companyAccountNumber":"string","primaryColor":"string","secondaryColor":"string","address":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":"aut","localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"logo":"string","contactDetails":{"emailAddress":"string","telephone":"string","website":"string","telephoneInterruptions":"string"}} # UpdatePropertyGroupCommunicationConfigurationRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update communication configuration of a location group.
        api_response = api_instance.post_propertygroups_propertygroupuuid_communicationconfiguration(propertygroupuuid, zf_tuuid, zf_ouuid, update_property_group_communication_configuration_request=update_property_group_communication_configuration_request)
        print("The response of DefaultApi->post_propertygroups_propertygroupuuid_communicationconfiguration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_propertygroups_propertygroupuuid_communicationconfiguration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupuuid** | **str**| The ID of the location group. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_property_group_communication_configuration_request** | [**UpdatePropertyGroupCommunicationConfigurationRequest**](UpdatePropertyGroupCommunicationConfigurationRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPropertyGroupDTO**](ApiResponseDTOOfPropertyGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_propertygroups_propertygroupuuid_managementrelations**
> ApiResponseDTOOfPropertyGroupDTO post_propertygroups_propertygroupuuid_managementrelations(propertygroupuuid, zf_tuuid, zf_ouuid, update_property_group_management_relations_request=update_property_group_management_relations_request)

Update management relations of a location group.

Update management relations of a location group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_property_group_dto import ApiResponseDTOOfPropertyGroupDTO
from masterdata_client.models.update_property_group_management_relations_request import UpdatePropertyGroupManagementRelationsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    propertygroupuuid = 'propertygroupuuid_example' # str | The ID of the location group.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_property_group_management_relations_request = {"managementRelations":[{"customerId":"string","managementRelationType":"owner"}]} # UpdatePropertyGroupManagementRelationsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update management relations of a location group.
        api_response = api_instance.post_propertygroups_propertygroupuuid_managementrelations(propertygroupuuid, zf_tuuid, zf_ouuid, update_property_group_management_relations_request=update_property_group_management_relations_request)
        print("The response of DefaultApi->post_propertygroups_propertygroupuuid_managementrelations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_propertygroups_propertygroupuuid_managementrelations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupuuid** | **str**| The ID of the location group. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_property_group_management_relations_request** | [**UpdatePropertyGroupManagementRelationsRequest**](UpdatePropertyGroupManagementRelationsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPropertyGroupDTO**](ApiResponseDTOOfPropertyGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_propertygroups_propertygroupuuid_servicelocations**
> ApiResponseDTOOfPropertyGroupDTO post_propertygroups_propertygroupuuid_servicelocations(propertygroupuuid, zf_tuuid, zf_ouuid, property_group_service_locations_request=property_group_service_locations_request)

Add locations to a location group.

If provided locations are already in another location group, they will be moved.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_property_group_dto import ApiResponseDTOOfPropertyGroupDTO
from masterdata_client.models.property_group_service_locations_request import PropertyGroupServiceLocationsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    propertygroupuuid = 'propertygroupuuid_example' # str | The ID of the location group.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    property_group_service_locations_request = {"serviceLocations":["string"],"referenceDate":"string"} # PropertyGroupServiceLocationsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Add locations to a location group.
        api_response = api_instance.post_propertygroups_propertygroupuuid_servicelocations(propertygroupuuid, zf_tuuid, zf_ouuid, property_group_service_locations_request=property_group_service_locations_request)
        print("The response of DefaultApi->post_propertygroups_propertygroupuuid_servicelocations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_propertygroups_propertygroupuuid_servicelocations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupuuid** | **str**| The ID of the location group. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **property_group_service_locations_request** | [**PropertyGroupServiceLocationsRequest**](PropertyGroupServiceLocationsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPropertyGroupDTO**](ApiResponseDTOOfPropertyGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_servicelocations_bulk_archive**
> ApiResponseDTOOfboolean post_servicelocations_bulk_archive(zf_tuuid, zf_ouuid, bulk_archive_service_location_request=bulk_archive_service_location_request)

Archive multiple service locations in bulk.

Archive multiple service locations in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from masterdata_client.models.bulk_archive_service_location_request import BulkArchiveServiceLocationRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_archive_service_location_request = {"onlyValidate":true,"queryParams":{"hasUtilityTypes":["string"],"hasNotUtilityTypes":["string"],"customerId":"string","propertyGroupIds":["string"],"excludeServiceLocationsSuppliedInContractId":"string","excludeServiceLocationsInPropertyGroupId":"string","referenceDateTime":"string","excludeArchived":true,"isAutoRestored":true,"postalCode":"string","city":"string","streetNumber":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","mutationDateTime":"string"} # BulkArchiveServiceLocationRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Archive multiple service locations in bulk.
        api_response = api_instance.post_servicelocations_bulk_archive(zf_tuuid, zf_ouuid, bulk_archive_service_location_request=bulk_archive_service_location_request)
        print("The response of DefaultApi->post_servicelocations_bulk_archive:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_servicelocations_bulk_archive: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_archive_service_location_request** | [**BulkArchiveServiceLocationRequest**](BulkArchiveServiceLocationRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | No Content |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_servicelocations_bulk_recalculateeav**
> ApiResponseDTO post_servicelocations_bulk_recalculateeav(zf_tuuid, zf_ouuid, bulk_recalculate_eav_service_location_request=bulk_recalculate_eav_service_location_request)

Trigger recalculation of EAV for multiple locations in bulk.

The recalculation will happen on an active contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_recalculate_eav_service_location_request import BulkRecalculateEavServiceLocationRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_recalculate_eav_service_location_request = {"onlyValidate":true,"queryParams":{"hasUtilityTypes":["string"],"hasNotUtilityTypes":["string"],"customerId":"string","propertyGroupIds":["string"],"excludeServiceLocationsSuppliedInContractId":"string","excludeServiceLocationsInPropertyGroupId":"string","referenceDateTime":"string","excludeArchived":true,"isAutoRestored":true,"postalCode":"string","city":"string","streetNumber":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkRecalculateEavServiceLocationRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Trigger recalculation of EAV for multiple locations in bulk.
        api_response = api_instance.post_servicelocations_bulk_recalculateeav(zf_tuuid, zf_ouuid, bulk_recalculate_eav_service_location_request=bulk_recalculate_eav_service_location_request)
        print("The response of DefaultApi->post_servicelocations_bulk_recalculateeav:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_servicelocations_bulk_recalculateeav: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_recalculate_eav_service_location_request** | [**BulkRecalculateEavServiceLocationRequest**](BulkRecalculateEavServiceLocationRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_servicelocations_bulk_restore**
> ApiResponseDTOOfboolean post_servicelocations_bulk_restore(zf_tuuid, zf_ouuid, bulk_restore_service_location_request=bulk_restore_service_location_request)

Restore multiple archived service locations in bulk.

Restore multiple archived service locations in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from masterdata_client.models.bulk_restore_service_location_request import BulkRestoreServiceLocationRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_restore_service_location_request = {"onlyValidate":true,"queryParams":{"hasUtilityTypes":["string"],"hasNotUtilityTypes":["string"],"customerId":"string","propertyGroupIds":["string"],"excludeServiceLocationsSuppliedInContractId":"string","excludeServiceLocationsInPropertyGroupId":"string","referenceDateTime":"string","excludeArchived":true,"isAutoRestored":true,"postalCode":"string","city":"string","streetNumber":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkRestoreServiceLocationRequest |  (optional)

    try:
        # Restore multiple archived service locations in bulk.
        api_response = api_instance.post_servicelocations_bulk_restore(zf_tuuid, zf_ouuid, bulk_restore_service_location_request=bulk_restore_service_location_request)
        print("The response of DefaultApi->post_servicelocations_bulk_restore:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_servicelocations_bulk_restore: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_restore_service_location_request** | [**BulkRestoreServiceLocationRequest**](BulkRestoreServiceLocationRequest.md)|  | [optional] 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | No Content |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_servicelocations_entityid_customproperties**
> ApiResponseDTOOfServiceLocationDTO post_servicelocations_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)

/ServiceLocations/{entityId}/customproperties - POST

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_service_location_dto import ApiResponseDTOOfServiceLocationDTO
from masterdata_client.models.update_custom_entity_properties_request import UpdateCustomEntityPropertiesRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_custom_entity_properties_request = {"properties":[{"customEntityPropertyTypeId":"string","values":[{"startDateTime":"string","endDateTime":"string","valueDecimal":0,"valueString":"string","valueBoolean":true,"valueNumber":0,"valueDateTime":"string","valueDropdown":["string"]}]}]} # UpdateCustomEntityPropertiesRequest |  (optional)

    try:
        # /ServiceLocations/{entityId}/customproperties - POST
        api_response = api_instance.post_servicelocations_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)
        print("The response of DefaultApi->post_servicelocations_entityid_customproperties:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_servicelocations_entityid_customproperties: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **str**|  | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_custom_entity_properties_request** | [**UpdateCustomEntityPropertiesRequest**](UpdateCustomEntityPropertiesRequest.md)|  | [optional] 

### Return type

[**ApiResponseDTOOfServiceLocationDTO**](ApiResponseDTOOfServiceLocationDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_contract_service**
> ApiResponseDTO remove_contract_service(contract_id, zf_tuuid, zf_ouuid, remove_contract_service_request=remove_contract_service_request)

RemoveContractService

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.remove_contract_service_request import RemoveContractServiceRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    contract_id = 'contract_id_example' # str | 
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    remove_contract_service_request = {"utilityType":"none"} # RemoveContractServiceRequest |  (optional)

    try:
        # RemoveContractService
        api_response = api_instance.remove_contract_service(contract_id, zf_tuuid, zf_ouuid, remove_contract_service_request=remove_contract_service_request)
        print("The response of DefaultApi->remove_contract_service:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->remove_contract_service: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **str**|  | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **remove_contract_service_request** | [**RemoveContractServiceRequest**](RemoveContractServiceRequest.md)|  | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_contracted_services**
> ApiResponseDTOOfContractDTO remove_contracted_services(contractuuid, zf_tuuid, zf_ouuid, remove_contracted_services_request=remove_contracted_services_request)

Remove locations and/or services from being supplied on a contract.

Remove locations and/or services from being supplied on a contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_contract_dto import ApiResponseDTOOfContractDTO
from masterdata_client.models.remove_contracted_services_request import RemoveContractedServicesRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    remove_contracted_services_request = {"supplyEndDate":"string","services":[{"serviceLocationId":"string","utilityType":"none","estimatedConsumptions":[{"consumerGroupId":"string","unitOfMeasure":"none","meteringType":"none","direction":"offtake"}]}]} # RemoveContractedServicesRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Remove locations and/or services from being supplied on a contract.
        api_response = api_instance.remove_contracted_services(contractuuid, zf_tuuid, zf_ouuid, remove_contracted_services_request=remove_contracted_services_request)
        print("The response of DefaultApi->remove_contracted_services:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->remove_contracted_services: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **remove_contracted_services_request** | [**RemoveContractedServicesRequest**](RemoveContractedServicesRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfContractDTO**](ApiResponseDTOOfContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reset_customer_portal_account**
> ApiResponseDTOOfCustomerDTO reset_customer_portal_account(customeruuid, zf_tuuid, zf_ouuid, reset_customer_portal_account_request=reset_customer_portal_account_request)

Reset portal account of a customer, which will delete the customer portal account and reset the portal properties.

Reset portal account of a customer, which will delete the customer portal account and reset the portal properties.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_customer_dto import ApiResponseDTOOfCustomerDTO
from masterdata_client.models.reset_customer_portal_account_request import ResetCustomerPortalAccountRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    reset_customer_portal_account_request = {"communicationEmail":"string","sendCommunication":true} # ResetCustomerPortalAccountRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Reset portal account of a customer, which will delete the customer portal account and reset the portal properties.
        api_response = api_instance.reset_customer_portal_account(customeruuid, zf_tuuid, zf_ouuid, reset_customer_portal_account_request=reset_customer_portal_account_request)
        print("The response of DefaultApi->reset_customer_portal_account:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->reset_customer_portal_account: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **reset_customer_portal_account_request** | [**ResetCustomerPortalAccountRequest**](ResetCustomerPortalAccountRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCustomerDTO**](ApiResponseDTOOfCustomerDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_customer_communication_via_email**
> ApiResponseDTO send_customer_communication_via_email(customeruuid, sub_type, zf_tuuid, zf_ouuid)

Send email to a customer.

Send email to a customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    sub_type = 'sub_type_example' # str | The type of email to be sent.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Send email to a customer.
        api_response = api_instance.send_customer_communication_via_email(customeruuid, sub_type, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->send_customer_communication_via_email:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->send_customer_communication_via_email: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **sub_type** | **str**| The type of email to be sent. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_service_location_address**
> ApiResponseDTOOfServiceLocationDTO update_service_location_address(servicelocationuuid, zf_tuuid, zf_ouuid, update_service_location_address_request=update_service_location_address_request)

Update addres of a location.

Update addres of a location.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_service_location_dto import ApiResponseDTOOfServiceLocationDTO
from masterdata_client.models.update_service_location_address_request import UpdateServiceLocationAddressRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    servicelocationuuid = 'servicelocationuuid_example' # str | The ID of the location.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_service_location_address_request = {"address":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":"aut","localizedDisplay":"string","lineOne":"string","lineTwo":"string"}} # UpdateServiceLocationAddressRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update addres of a location.
        api_response = api_instance.update_service_location_address(servicelocationuuid, zf_tuuid, zf_ouuid, update_service_location_address_request=update_service_location_address_request)
        print("The response of DefaultApi->update_service_location_address:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->update_service_location_address: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servicelocationuuid** | **str**| The ID of the location. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_service_location_address_request** | [**UpdateServiceLocationAddressRequest**](UpdateServiceLocationAddressRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfServiceLocationDTO**](ApiResponseDTOOfServiceLocationDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_service_location_external_id**
> ApiResponseDTOOfServiceLocationDTO update_service_location_external_id(servicelocationuuid, zf_tuuid, zf_ouuid, update_external_id_request=update_external_id_request)

Update external ID of a location.

Update external ID of a location.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_service_location_dto import ApiResponseDTOOfServiceLocationDTO
from masterdata_client.models.update_external_id_request import UpdateExternalIdRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    servicelocationuuid = 'servicelocationuuid_example' # str | The ID of the location.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_external_id_request = {"externalId":"string"} # UpdateExternalIdRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update external ID of a location.
        api_response = api_instance.update_service_location_external_id(servicelocationuuid, zf_tuuid, zf_ouuid, update_external_id_request=update_external_id_request)
        print("The response of DefaultApi->update_service_location_external_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->update_service_location_external_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servicelocationuuid** | **str**| The ID of the location. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_external_id_request** | [**UpdateExternalIdRequest**](UpdateExternalIdRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfServiceLocationDTO**](ApiResponseDTOOfServiceLocationDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_service_location_management_details**
> update_service_location_management_details(servicelocationuuid, zf_tuuid, zf_ouuid, update_management_relations_request=update_management_relations_request)

Update management relations of a location.

Update management relations of a location.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.update_management_relations_request import UpdateManagementRelationsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    servicelocationuuid = 'servicelocationuuid_example' # str | The ID of the location.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_management_relations_request = {"managementRelations":[{"customerId":"string","managementRelationType":"owner"}]} # UpdateManagementRelationsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update management relations of a location.
        api_instance.update_service_location_management_details(servicelocationuuid, zf_tuuid, zf_ouuid, update_management_relations_request=update_management_relations_request)
    except Exception as e:
        print("Exception when calling DefaultApi->update_service_location_management_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servicelocationuuid** | **str**| The ID of the location. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_management_relations_request** | [**UpdateManagementRelationsRequest**](UpdateManagementRelationsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_service_location_product**
> ApiResponseDTOOfServiceLocationDTO update_service_location_product(servicelocationuuid, zf_tuuid, zf_ouuid, update_service_location_product_request=update_service_location_product_request)

Update product for a location.

Update product for a location.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_service_location_dto import ApiResponseDTOOfServiceLocationDTO
from masterdata_client.models.update_service_location_product_request import UpdateServiceLocationProductRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    servicelocationuuid = 'servicelocationuuid_example' # str | The ID of the location.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_service_location_product_request = {"productId":"string"} # UpdateServiceLocationProductRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update product for a location.
        api_response = api_instance.update_service_location_product(servicelocationuuid, zf_tuuid, zf_ouuid, update_service_location_product_request=update_service_location_product_request)
        print("The response of DefaultApi->update_service_location_product:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->update_service_location_product: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servicelocationuuid** | **str**| The ID of the location. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_service_location_product_request** | [**UpdateServiceLocationProductRequest**](UpdateServiceLocationProductRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfServiceLocationDTO**](ApiResponseDTOOfServiceLocationDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_service_location_services**
> ApiResponseDTOOfServiceLocationDTO update_service_location_services(servicelocationuuid, zf_tuuid, zf_ouuid, update_service_location_services_request=update_service_location_services_request)

Update which services are enabled on the service location. Only services that were never supplied can be removed.

Update which services are enabled on the service location. Only services that were never supplied can be removed.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dtoof_service_location_dto import ApiResponseDTOOfServiceLocationDTO
from masterdata_client.models.update_service_location_services_request import UpdateServiceLocationServicesRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.DefaultApi(api_client)
    servicelocationuuid = 'servicelocationuuid_example' # str | The ID of the service location.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_service_location_services_request = {"servicesToAdd":["none"],"servicesToRemove":["none"],"onlyValidate":true,"queryParams":{"hasUtilityTypes":["string"],"hasNotUtilityTypes":["string"],"customerId":"string","propertyGroupIds":["string"],"excludeServiceLocationsSuppliedInContractId":"string","excludeServiceLocationsInPropertyGroupId":"string","referenceDateTime":"string","excludeArchived":true,"isAutoRestored":true,"postalCode":"string","city":"string","streetNumber":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # UpdateServiceLocationServicesRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Update which services are enabled on the service location. Only services that were never supplied can be removed.
        api_response = api_instance.update_service_location_services(servicelocationuuid, zf_tuuid, zf_ouuid, update_service_location_services_request=update_service_location_services_request)
        print("The response of DefaultApi->update_service_location_services:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->update_service_location_services: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servicelocationuuid** | **str**| The ID of the service location. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_service_location_services_request** | [**UpdateServiceLocationServicesRequest**](UpdateServiceLocationServicesRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfServiceLocationDTO**](ApiResponseDTOOfServiceLocationDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

