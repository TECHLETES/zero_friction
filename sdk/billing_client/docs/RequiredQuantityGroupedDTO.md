# RequiredQuantityGroupedDTO

Represents grouped required quantities for billing

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_required_quantities** | [**List[RequiredQuantityContractGroupedDTO]**](RequiredQuantityContractGroupedDTO.md) | Required quantities grouped by contract | [optional] 
**location_required_quantities** | [**List[RequiredQuantityLocationGroupedDTO]**](RequiredQuantityLocationGroupedDTO.md) | Required quantities grouped by location | [optional] 

## Example

```python
from billing_client.models.required_quantity_grouped_dto import RequiredQuantityGroupedDTO

# TODO update the JSON string below
json = "{}"
# create an instance of RequiredQuantityGroupedDTO from a JSON string
required_quantity_grouped_dto_instance = RequiredQuantityGroupedDTO.from_json(json)
# print the JSON string representation of the object
print(RequiredQuantityGroupedDTO.to_json())

# convert the object into a dict
required_quantity_grouped_dto_dict = required_quantity_grouped_dto_instance.to_dict()
# create an instance of RequiredQuantityGroupedDTO from a dict
required_quantity_grouped_dto_from_dict = RequiredQuantityGroupedDTO.from_dict(required_quantity_grouped_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


