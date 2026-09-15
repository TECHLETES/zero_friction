# RemoveContractServiceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**utility_type** | [**UtilityType**](UtilityType.md) |  | 

## Example

```python
from masterdata_client.models.remove_contract_service_request import RemoveContractServiceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of RemoveContractServiceRequest from a JSON string
remove_contract_service_request_instance = RemoveContractServiceRequest.from_json(json)
# print the JSON string representation of the object
print(RemoveContractServiceRequest.to_json())

# convert the object into a dict
remove_contract_service_request_dict = remove_contract_service_request_instance.to_dict()
# create an instance of RemoveContractServiceRequest from a dict
remove_contract_service_request_from_dict = RemoveContractServiceRequest.from_dict(remove_contract_service_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


