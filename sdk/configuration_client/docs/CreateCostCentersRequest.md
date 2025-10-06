# CreateCostCentersRequest

Request model for creating new cost centers.  Cost centers should correspond to entries in an external accounting system  to enable proper data synchronization during billing operations.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cost_centers** | [**List[CreateCostCenterRequest]**](CreateCostCenterRequest.md) | List of cost centers to create. | [optional] 

## Example

```python
from configuration_client.models.create_cost_centers_request import CreateCostCentersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateCostCentersRequest from a JSON string
create_cost_centers_request_instance = CreateCostCentersRequest.from_json(json)
# print the JSON string representation of the object
print(CreateCostCentersRequest.to_json())

# convert the object into a dict
create_cost_centers_request_dict = create_cost_centers_request_instance.to_dict()
# create an instance of CreateCostCentersRequest from a dict
create_cost_centers_request_from_dict = CreateCostCentersRequest.from_dict(create_cost_centers_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


