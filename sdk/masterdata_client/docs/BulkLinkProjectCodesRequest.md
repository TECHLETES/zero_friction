# BulkLinkProjectCodesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**PagedProjectCodeMappingQueryParams**](PagedProjectCodeMappingQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**project_code_id** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_link_project_codes_request import BulkLinkProjectCodesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkLinkProjectCodesRequest from a JSON string
bulk_link_project_codes_request_instance = BulkLinkProjectCodesRequest.from_json(json)
# print the JSON string representation of the object
print(BulkLinkProjectCodesRequest.to_json())

# convert the object into a dict
bulk_link_project_codes_request_dict = bulk_link_project_codes_request_instance.to_dict()
# create an instance of BulkLinkProjectCodesRequest from a dict
bulk_link_project_codes_request_from_dict = BulkLinkProjectCodesRequest.from_dict(bulk_link_project_codes_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


