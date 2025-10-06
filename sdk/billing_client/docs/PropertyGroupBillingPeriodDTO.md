# PropertyGroupBillingPeriodDTO

Represents a billing period for a property group.  Contains information about the period's duration, components, calculations, and lock status.

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
**property_group_id** | **str** | The unique identifier of the property group. | [optional] 
**start_date** | **datetime** | The start date and time of the billing period. | [optional] 
**end_date** | **datetime** | The end date and time of the billing period. | [optional] 
**incoming_invoice_components** | [**List[IncomingInvoiceComponentDetailsDTO]**](IncomingInvoiceComponentDetailsDTO.md) | List of incoming invoice components associated with this billing period. | [optional] 
**calculation_configurations** | [**List[PropertyGroupBillingPeriodCalculationConfigurationDetailsDTO]**](PropertyGroupBillingPeriodCalculationConfigurationDetailsDTO.md) | List of calculation configurations and their details for this billing period. | [optional] 
**locked** | **bool** | Indicates whether the billing period is locked for modifications. | [optional] 

## Example

```python
from billing_client.models.property_group_billing_period_dto import PropertyGroupBillingPeriodDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupBillingPeriodDTO from a JSON string
property_group_billing_period_dto_instance = PropertyGroupBillingPeriodDTO.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupBillingPeriodDTO.to_json())

# convert the object into a dict
property_group_billing_period_dto_dict = property_group_billing_period_dto_instance.to_dict()
# create an instance of PropertyGroupBillingPeriodDTO from a dict
property_group_billing_period_dto_from_dict = PropertyGroupBillingPeriodDTO.from_dict(property_group_billing_period_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


