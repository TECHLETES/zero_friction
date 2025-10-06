# CreateServiceLocationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**external_id** | **str** |  | [optional] 
**product_id** | **str** |  | [optional] 
**services** | [**List[CreateServiceRequest]**](CreateServiceRequest.md) |  | [optional] 
**management_relations** | [**List[ManagementRelationRequest]**](ManagementRelationRequest.md) |  | [optional] 

## Example

```python
from masterdata_client.models.create_service_location_request import CreateServiceLocationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateServiceLocationRequest from a JSON string
create_service_location_request_instance = CreateServiceLocationRequest.from_json(json)
# print the JSON string representation of the object
print(CreateServiceLocationRequest.to_json())

# convert the object into a dict
create_service_location_request_dict = create_service_location_request_instance.to_dict()
# create an instance of CreateServiceLocationRequest from a dict
create_service_location_request_from_dict = CreateServiceLocationRequest.from_dict(create_service_location_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


