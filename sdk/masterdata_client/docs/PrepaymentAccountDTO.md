# PrepaymentAccountDTO


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
**status** | [**PrepaymentAccountStatus**](PrepaymentAccountStatus.md) |  | [optional] 
**meter** | [**MeterReference**](MeterReference.md) |  | [optional] 
**share_balance_across_utilities** | **bool** |  | [optional] 
**channel_identifier** | **str** |  | [optional] 
**customer_id** | **str** |  | [optional] 
**contract_id** | **str** |  | [optional] 
**service_location_id** | **str** |  | [optional] 
**external_reference** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**balance** | **float** |  | [optional] 
**debt** | **float** |  | [optional] 
**emergency_credit** | **float** |  | [optional] 
**balance_until** | **datetime** |  | [optional] 
**last_time_received_prepayment_transactions** | **datetime** |  | [optional] 
**prepayment_transactions_until** | **datetime** |  | [optional] 

## Example

```python
from masterdata_client.models.prepayment_account_dto import PrepaymentAccountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PrepaymentAccountDTO from a JSON string
prepayment_account_dto_instance = PrepaymentAccountDTO.from_json(json)
# print the JSON string representation of the object
print(PrepaymentAccountDTO.to_json())

# convert the object into a dict
prepayment_account_dto_dict = prepayment_account_dto_instance.to_dict()
# create an instance of PrepaymentAccountDTO from a dict
prepayment_account_dto_from_dict = PrepaymentAccountDTO.from_dict(prepayment_account_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


