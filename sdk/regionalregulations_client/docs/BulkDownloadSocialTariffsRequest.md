# BulkDownloadSocialTariffsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**BaseQueryParams**](BaseQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**social_tariff_ids** | **List[str]** |  | [optional] 

## Example

```python
from regionalregulations_client.models.bulk_download_social_tariffs_request import BulkDownloadSocialTariffsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkDownloadSocialTariffsRequest from a JSON string
bulk_download_social_tariffs_request_instance = BulkDownloadSocialTariffsRequest.from_json(json)
# print the JSON string representation of the object
print(BulkDownloadSocialTariffsRequest.to_json())

# convert the object into a dict
bulk_download_social_tariffs_request_dict = bulk_download_social_tariffs_request_instance.to_dict()
# create an instance of BulkDownloadSocialTariffsRequest from a dict
bulk_download_social_tariffs_request_from_dict = BulkDownloadSocialTariffsRequest.from_dict(bulk_download_social_tariffs_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


