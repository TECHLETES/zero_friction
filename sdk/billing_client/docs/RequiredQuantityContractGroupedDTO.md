# RequiredQuantityContractGroupedDTO

Represents required quantities grouped by contract

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_item_id** | **str** | Unique identifier of the billing item | [optional] 
**required_quantities** | [**List[RequiredQuantityDTO]**](RequiredQuantityDTO.md) | List of required quantities for this contract | [optional] 

## Example

```python
from billing_client.models.required_quantity_contract_grouped_dto import RequiredQuantityContractGroupedDTO

# TODO update the JSON string below
json = "{}"
# create an instance of RequiredQuantityContractGroupedDTO from a JSON string
required_quantity_contract_grouped_dto_instance = RequiredQuantityContractGroupedDTO.from_json(json)
# print the JSON string representation of the object
print(RequiredQuantityContractGroupedDTO.to_json())

# convert the object into a dict
required_quantity_contract_grouped_dto_dict = required_quantity_contract_grouped_dto_instance.to_dict()
# create an instance of RequiredQuantityContractGroupedDTO from a dict
required_quantity_contract_grouped_dto_from_dict = RequiredQuantityContractGroupedDTO.from_dict(required_quantity_contract_grouped_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


