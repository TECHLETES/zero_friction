# UpdateMasterDataParametersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**excluded_utility_types** | [**List[UtilityType]**](UtilityType.md) |  | 

## Example

```python
from configuration_client.models.update_master_data_parameters_request import UpdateMasterDataParametersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateMasterDataParametersRequest from a JSON string
update_master_data_parameters_request_instance = UpdateMasterDataParametersRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateMasterDataParametersRequest.to_json())

# convert the object into a dict
update_master_data_parameters_request_dict = update_master_data_parameters_request_instance.to_dict()
# create an instance of UpdateMasterDataParametersRequest from a dict
update_master_data_parameters_request_from_dict = UpdateMasterDataParametersRequest.from_dict(update_master_data_parameters_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


