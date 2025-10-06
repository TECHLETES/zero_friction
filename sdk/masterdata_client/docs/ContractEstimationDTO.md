# ContractEstimationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional] 
**value** | **float** |  | [optional] 
**consumer_group_id** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.contract_estimation_dto import ContractEstimationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContractEstimationDTO from a JSON string
contract_estimation_dto_instance = ContractEstimationDTO.from_json(json)
# print the JSON string representation of the object
print(ContractEstimationDTO.to_json())

# convert the object into a dict
contract_estimation_dto_dict = contract_estimation_dto_instance.to_dict()
# create an instance of ContractEstimationDTO from a dict
contract_estimation_dto_from_dict = ContractEstimationDTO.from_dict(contract_estimation_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


