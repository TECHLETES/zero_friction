# DeferredOffSessionCollectPreviewDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number_of_invoices** | **int** |  | [optional]
**total_amount** | **float** |  | [optional]

## Example

```python
from billing_client.models.deferred_off_session_collect_preview_dto import DeferredOffSessionCollectPreviewDTO

# TODO update the JSON string below
json = "{}"
# create an instance of DeferredOffSessionCollectPreviewDTO from a JSON string
deferred_off_session_collect_preview_dto_instance = DeferredOffSessionCollectPreviewDTO.from_json(json)
# print the JSON string representation of the object
print(DeferredOffSessionCollectPreviewDTO.to_json())

# convert the object into a dict
deferred_off_session_collect_preview_dto_dict = deferred_off_session_collect_preview_dto_instance.to_dict()
# create an instance of DeferredOffSessionCollectPreviewDTO from a dict
deferred_off_session_collect_preview_dto_from_dict = DeferredOffSessionCollectPreviewDTO.from_dict(deferred_off_session_collect_preview_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
