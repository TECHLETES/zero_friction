# RemoveContractedServicesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**supply_end_date** | **datetime** |  | [optional] 
**services** | [**List[ChangeContractServiceLocationRequest]**](ChangeContractServiceLocationRequest.md) |  | [optional] 

## Example

```python
from masterdata_client.models.remove_contracted_services_request import RemoveContractedServicesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of RemoveContractedServicesRequest from a JSON string
remove_contracted_services_request_instance = RemoveContractedServicesRequest.from_json(json)
# print the JSON string representation of the object
print(RemoveContractedServicesRequest.to_json())

# convert the object into a dict
remove_contracted_services_request_dict = remove_contracted_services_request_instance.to_dict()
# create an instance of RemoveContractedServicesRequest from a dict
remove_contracted_services_request_from_dict = RemoveContractedServicesRequest.from_dict(remove_contracted_services_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


