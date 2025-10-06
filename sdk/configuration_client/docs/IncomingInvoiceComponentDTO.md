# IncomingInvoiceComponentDTO


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
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**deleted** | **bool** |  | [optional] 
**localisation_level** | [**LocalisationLevel**](LocalisationLevel.md) |  | [optional] 
**localised_fields** | **List[str]** |  | [optional] 
**translated_fields** | **Dict[str, Optional[Dict[str, str]]]** |  | [optional] 

## Example

```python
from configuration_client.models.incoming_invoice_component_dto import IncomingInvoiceComponentDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingInvoiceComponentDTO from a JSON string
incoming_invoice_component_dto_instance = IncomingInvoiceComponentDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingInvoiceComponentDTO.to_json())

# convert the object into a dict
incoming_invoice_component_dto_dict = incoming_invoice_component_dto_instance.to_dict()
# create an instance of IncomingInvoiceComponentDTO from a dict
incoming_invoice_component_dto_from_dict = IncomingInvoiceComponentDTO.from_dict(incoming_invoice_component_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


