# ServiceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_identifier** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**status_history** | [**List[ServiceStatusHistoryDTO]**](ServiceStatusHistoryDTO.md) |  | [optional] 
**contracts** | [**List[ServiceContractDTO]**](ServiceContractDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.service_dto import ServiceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceDTO from a JSON string
service_dto_instance = ServiceDTO.from_json(json)
# print the JSON string representation of the object
print(ServiceDTO.to_json())

# convert the object into a dict
service_dto_dict = service_dto_instance.to_dict()
# create an instance of ServiceDTO from a dict
service_dto_from_dict = ServiceDTO.from_dict(service_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


