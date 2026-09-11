# DebtorDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** |  | [optional]
**display_name** | **str** |  | [optional]
**customer_account_number** | **str** |  | [optional]
**customer_type** | [**CustomerType**](CustomerType.md) |  | [optional]
**customer_group** | [**CustomerGroupReferenceDTO**](CustomerGroupReferenceDTO.md) |  | [optional]

## Example

```python
from billing_client.models.debtor_dto import DebtorDTO

# TODO update the JSON string below
json = "{}"
# create an instance of DebtorDTO from a JSON string
debtor_dto_instance = DebtorDTO.from_json(json)
# print the JSON string representation of the object
print(DebtorDTO.to_json())

# convert the object into a dict
debtor_dto_dict = debtor_dto_instance.to_dict()
# create an instance of DebtorDTO from a dict
debtor_dto_from_dict = DebtorDTO.from_dict(debtor_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
