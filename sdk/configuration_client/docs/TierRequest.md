# TierRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_from** | **float** |  | [optional]
**min_amount** | **float** |  | [optional]
**max_amount** | **float** |  | [optional]
**percentage** | **float** |  | [optional]

## Example

```python
from configuration_client.models.tier_request import TierRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TierRequest from a JSON string
tier_request_instance = TierRequest.from_json(json)
# print the JSON string representation of the object
print(TierRequest.to_json())

# convert the object into a dict
tier_request_dict = tier_request_instance.to_dict()
# create an instance of TierRequest from a dict
tier_request_from_dict = TierRequest.from_dict(tier_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
