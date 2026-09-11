# MarkCollectionCaseManuallyClosedRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**write_off_fees** | **bool** |  | [optional]
**write_off_handling_type** | [**WriteOffHandlingType**](WriteOffHandlingType.md) |  |

## Example

```python
from billing_client.models.mark_collection_case_manually_closed_request import MarkCollectionCaseManuallyClosedRequest

# TODO update the JSON string below
json = "{}"
# create an instance of MarkCollectionCaseManuallyClosedRequest from a JSON string
mark_collection_case_manually_closed_request_instance = MarkCollectionCaseManuallyClosedRequest.from_json(json)
# print the JSON string representation of the object
print(MarkCollectionCaseManuallyClosedRequest.to_json())

# convert the object into a dict
mark_collection_case_manually_closed_request_dict = mark_collection_case_manually_closed_request_instance.to_dict()
# create an instance of MarkCollectionCaseManuallyClosedRequest from a dict
mark_collection_case_manually_closed_request_from_dict = MarkCollectionCaseManuallyClosedRequest.from_dict(mark_collection_case_manually_closed_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
