# BulkLinkItemCodesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**PagedItemCodeMappingQueryParams**](PagedItemCodeMappingQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]
**item_code_id** | **str** |  | [optional]

## Example

```python
from masterdata_client.models.bulk_link_item_codes_request import BulkLinkItemCodesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkLinkItemCodesRequest from a JSON string
bulk_link_item_codes_request_instance = BulkLinkItemCodesRequest.from_json(json)
# print the JSON string representation of the object
print(BulkLinkItemCodesRequest.to_json())

# convert the object into a dict
bulk_link_item_codes_request_dict = bulk_link_item_codes_request_instance.to_dict()
# create an instance of BulkLinkItemCodesRequest from a dict
bulk_link_item_codes_request_from_dict = BulkLinkItemCodesRequest.from_dict(bulk_link_item_codes_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
