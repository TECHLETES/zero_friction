# CreateCostCenterRequest

Request model for creating a new cost center.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** | The code of the cost center. | [optional] 
**description** | **str** | Description of the cost center itself.  Currently, we only support the description in one language so this field is not localized. | [optional] 
**metadata** | [**ExternalAccountingMetadataRequest**](ExternalAccountingMetadataRequest.md) | Metadata to track back the origin of the data.  This is required so that we can push the data back to the source accounting system. | [optional] 

## Example

```python
from configuration_client.models.create_cost_center_request import CreateCostCenterRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateCostCenterRequest from a JSON string
create_cost_center_request_instance = CreateCostCenterRequest.from_json(json)
# print the JSON string representation of the object
print(CreateCostCenterRequest.to_json())

# convert the object into a dict
create_cost_center_request_dict = create_cost_center_request_instance.to_dict()
# create an instance of CreateCostCenterRequest from a dict
create_cost_center_request_from_dict = CreateCostCenterRequest.from_dict(create_cost_center_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


