# ServiceLocationDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**previous_contract_details** | [**MoveRequestContractDetailsDTO**](MoveRequestContractDetailsDTO.md) |  | [optional] 
**current_contract_details** | [**MoveRequestContractDetailsDTO**](MoveRequestContractDetailsDTO.md) |  | [optional] 
**owner** | [**ManagementRelationDTO**](ManagementRelationDTO.md) |  | [optional] 
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**services** | [**List[ServiceLocationServiceDetailsDTO]**](ServiceLocationServiceDetailsDTO.md) |  | [optional] 
**linked** | **bool** |  | [optional] 
**internal_id** | **str** |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.service_location_details_dto import ServiceLocationDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceLocationDetailsDTO from a JSON string
service_location_details_dto_instance = ServiceLocationDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(ServiceLocationDetailsDTO.to_json())

# convert the object into a dict
service_location_details_dto_dict = service_location_details_dto_instance.to_dict()
# create an instance of ServiceLocationDetailsDTO from a dict
service_location_details_dto_from_dict = ServiceLocationDetailsDTO.from_dict(service_location_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


