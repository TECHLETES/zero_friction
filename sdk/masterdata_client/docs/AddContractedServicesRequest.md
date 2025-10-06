# AddContractedServicesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**supply_start_date** | **datetime** |  | [optional] 
**supply_end_date** | **datetime** |  | [optional] 
**services** | [**List[ChangeContractServiceLocationRequest]**](ChangeContractServiceLocationRequest.md) |  | [optional] 

## Example

```python
from masterdata_client.models.add_contracted_services_request import AddContractedServicesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AddContractedServicesRequest from a JSON string
add_contracted_services_request_instance = AddContractedServicesRequest.from_json(json)
# print the JSON string representation of the object
print(AddContractedServicesRequest.to_json())

# convert the object into a dict
add_contracted_services_request_dict = add_contracted_services_request_instance.to_dict()
# create an instance of AddContractedServicesRequest from a dict
add_contracted_services_request_from_dict = AddContractedServicesRequest.from_dict(add_contracted_services_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


