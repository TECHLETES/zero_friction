# BulkMarkCollectionCaseManuallyClosedRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetCollectionCasesQueryParams**](GetCollectionCasesQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**write_off_fees** | **bool** |  | [optional] 
**write_off_handling_type** | [**WriteOffHandlingType**](WriteOffHandlingType.md) |  | [optional] 

## Example

```python
from billing_client.models.bulk_mark_collection_case_manually_closed_request import BulkMarkCollectionCaseManuallyClosedRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkMarkCollectionCaseManuallyClosedRequest from a JSON string
bulk_mark_collection_case_manually_closed_request_instance = BulkMarkCollectionCaseManuallyClosedRequest.from_json(json)
# print the JSON string representation of the object
print(BulkMarkCollectionCaseManuallyClosedRequest.to_json())

# convert the object into a dict
bulk_mark_collection_case_manually_closed_request_dict = bulk_mark_collection_case_manually_closed_request_instance.to_dict()
# create an instance of BulkMarkCollectionCaseManuallyClosedRequest from a dict
bulk_mark_collection_case_manually_closed_request_from_dict = BulkMarkCollectionCaseManuallyClosedRequest.from_dict(bulk_mark_collection_case_manually_closed_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


