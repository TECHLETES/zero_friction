# PrepaymentTransactionDTO


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
**meter** | [**MeterReference**](MeterReference.md) |  | [optional] 
**channel_identfier** | **str** |  | [optional] 
**customer_id** | **str** |  | [optional] 
**contract_id** | **str** |  | [optional] 
**processed_date_time** | **datetime** |  | [optional] 
**amount** | **float** |  | [optional] 
**type** | [**PrepaymentTransactionType**](PrepaymentTransactionType.md) |  | [optional] 
**origin** | [**PrepaymentTransactionOrigin**](PrepaymentTransactionOrigin.md) |  | [optional] 
**status** | [**PrepaymentTransactionStatus**](PrepaymentTransactionStatus.md) |  | [optional] 
**external_reference** | **str** |  | [optional] 
**operation_id** | **str** |  | [optional] 
**deleted** | **bool** |  | [optional] 

## Example

```python
from metering_client.models.prepayment_transaction_dto import PrepaymentTransactionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PrepaymentTransactionDTO from a JSON string
prepayment_transaction_dto_instance = PrepaymentTransactionDTO.from_json(json)
# print the JSON string representation of the object
print(PrepaymentTransactionDTO.to_json())

# convert the object into a dict
prepayment_transaction_dto_dict = prepayment_transaction_dto_instance.to_dict()
# create an instance of PrepaymentTransactionDTO from a dict
prepayment_transaction_dto_from_dict = PrepaymentTransactionDTO.from_dict(prepayment_transaction_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


