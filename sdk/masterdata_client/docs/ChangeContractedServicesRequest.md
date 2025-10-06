# ChangeContractedServicesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services** | [**List[ChangeContractServiceLocationRequest]**](ChangeContractServiceLocationRequest.md) |  | [optional] 

## Example

```python
from masterdata_client.models.change_contracted_services_request import ChangeContractedServicesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeContractedServicesRequest from a JSON string
change_contracted_services_request_instance = ChangeContractedServicesRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeContractedServicesRequest.to_json())

# convert the object into a dict
change_contracted_services_request_dict = change_contracted_services_request_instance.to_dict()
# create an instance of ChangeContractedServicesRequest from a dict
change_contracted_services_request_from_dict = ChangeContractedServicesRequest.from_dict(change_contracted_services_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


