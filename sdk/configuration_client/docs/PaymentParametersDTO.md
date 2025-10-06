# PaymentParametersDTO


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
**retry_parameters** | [**List[PaymentRetryParameterDTO]**](PaymentRetryParameterDTO.md) |  | [optional] 
**block_automatic_settlement** | **bool** |  | [optional] 
**refund_payment_delay_in_days** | **int** |  | [optional] 
**payment_terms_id** | **str** |  | [optional] 
**only_use_invoice_number_in_payment_references** | **bool** |  | [optional] 
**default_collection_flow_id** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.payment_parameters_dto import PaymentParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentParametersDTO from a JSON string
payment_parameters_dto_instance = PaymentParametersDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentParametersDTO.to_json())

# convert the object into a dict
payment_parameters_dto_dict = payment_parameters_dto_instance.to_dict()
# create an instance of PaymentParametersDTO from a dict
payment_parameters_dto_from_dict = PaymentParametersDTO.from_dict(payment_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


