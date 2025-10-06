# PropertyGroupBillingConfigurationDTO

Represents a billing configuration for a property group.  This DTO contains comprehensive information about billing settings, including frequencies, components, and localization.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**property_group** | [**PropertyGroupReferenceDTO**](PropertyGroupReferenceDTO.md) | Reference to the property group associated with this configuration. | [optional] 
**company_bank_account_id** | **str** | The unique identifier of the company bank account. | [optional] 
**advance_frequency** | [**AdvanceFrequency**](AdvanceFrequency.md) | The frequency at which advance payments are made. | [optional] 
**invoice_frequency** | [**InvoiceFrequency**](InvoiceFrequency.md) | The frequency at which invoices are generated. | [optional] 
**invoice_day** | **int** | The day of the month when invoices are generated. | [optional] 
**invoice_month** | **int** | The month when invoices are generated (for yearly frequency). | [optional] 
**product_id** | **str** | The unique identifier of the product. | [optional] 
**payment_terms_id** | **str** | The unique identifier of the payment terms. | [optional] 
**required_incoming_invoice_components** | [**List[IncomingInvoiceComponentDTO]**](IncomingInvoiceComponentDTO.md) | List of required incoming invoice components. | [optional] 
**calculation_configurations** | [**List[PropertyGroupCalculationConfigurationDTO]**](PropertyGroupCalculationConfigurationDTO.md) | List of calculation configurations for this property group. | [optional] 
**cost_allocation_enabled** | **bool** | Indicates whether cost allocation is enabled for this configuration. | [optional] 
**cost_allocation_validated** | **bool** | Indicates whether the cost allocation has been validated. | [optional] 
**note_to_customer** | **str** | A note to be included for the customer. | [optional] 
**localisation_level** | [**LocalisationLevel**](LocalisationLevel.md) | The level of localization for this configuration. | [optional] 
**localised_fields** | **List[str]** | List of fields that have been localized. | [optional] 
**translated_fields** | **Dict[str, Optional[Dict[str, str]]]** | Dictionary of translated fields by culture. | [optional] 

## Example

```python
from billing_client.models.property_group_billing_configuration_dto import PropertyGroupBillingConfigurationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupBillingConfigurationDTO from a JSON string
property_group_billing_configuration_dto_instance = PropertyGroupBillingConfigurationDTO.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupBillingConfigurationDTO.to_json())

# convert the object into a dict
property_group_billing_configuration_dto_dict = property_group_billing_configuration_dto_instance.to_dict()
# create an instance of PropertyGroupBillingConfigurationDTO from a dict
property_group_billing_configuration_dto_from_dict = PropertyGroupBillingConfigurationDTO.from_dict(property_group_billing_configuration_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


