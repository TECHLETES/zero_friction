# BulkLinkVatCodesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**PagedVatCodesMappingQueryParams**](PagedVatCodesMappingQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**vat_code_id** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.bulk_link_vat_codes_request import BulkLinkVatCodesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkLinkVatCodesRequest from a JSON string
bulk_link_vat_codes_request_instance = BulkLinkVatCodesRequest.from_json(json)
# print the JSON string representation of the object
print(BulkLinkVatCodesRequest.to_json())

# convert the object into a dict
bulk_link_vat_codes_request_dict = bulk_link_vat_codes_request_instance.to_dict()
# create an instance of BulkLinkVatCodesRequest from a dict
bulk_link_vat_codes_request_from_dict = BulkLinkVatCodesRequest.from_dict(bulk_link_vat_codes_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


