# ContractServiceLocationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**property_group_id** | **str** |  | [optional] 
**services** | [**List[ContractedServiceDTO]**](ContractedServiceDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.contract_service_location_dto import ContractServiceLocationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContractServiceLocationDTO from a JSON string
contract_service_location_dto_instance = ContractServiceLocationDTO.from_json(json)
# print the JSON string representation of the object
print(ContractServiceLocationDTO.to_json())

# convert the object into a dict
contract_service_location_dto_dict = contract_service_location_dto_instance.to_dict()
# create an instance of ContractServiceLocationDTO from a dict
contract_service_location_dto_from_dict = ContractServiceLocationDTO.from_dict(contract_service_location_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


