# BulkDeleteSocialTariffsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**ReadExportsQueryParams**](ReadExportsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from regionalregulations_client.models.bulk_delete_social_tariffs_request import BulkDeleteSocialTariffsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkDeleteSocialTariffsRequest from a JSON string
bulk_delete_social_tariffs_request_instance = BulkDeleteSocialTariffsRequest.from_json(json)
# print the JSON string representation of the object
print(BulkDeleteSocialTariffsRequest.to_json())

# convert the object into a dict
bulk_delete_social_tariffs_request_dict = bulk_delete_social_tariffs_request_instance.to_dict()
# create an instance of BulkDeleteSocialTariffsRequest from a dict
bulk_delete_social_tariffs_request_from_dict = BulkDeleteSocialTariffsRequest.from_dict(bulk_delete_social_tariffs_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


