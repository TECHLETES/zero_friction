# LinkCostUnitRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cost_unit_id** | **str** |  | [optional]

## Example

```python
from masterdata_client.models.link_cost_unit_request import LinkCostUnitRequest

# TODO update the JSON string below
json = "{}"
# create an instance of LinkCostUnitRequest from a JSON string
link_cost_unit_request_instance = LinkCostUnitRequest.from_json(json)
# print the JSON string representation of the object
print(LinkCostUnitRequest.to_json())

# convert the object into a dict
link_cost_unit_request_dict = link_cost_unit_request_instance.to_dict()
# create an instance of LinkCostUnitRequest from a dict
link_cost_unit_request_from_dict = LinkCostUnitRequest.from_dict(link_cost_unit_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
