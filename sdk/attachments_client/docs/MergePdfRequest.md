# MergePdfRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachment_ids** | **List[str]** |  | [optional] 
**resulting_file_name** | **str** |  | [optional] 

## Example

```python
from attachments_client.models.merge_pdf_request import MergePdfRequest

# TODO update the JSON string below
json = "{}"
# create an instance of MergePdfRequest from a JSON string
merge_pdf_request_instance = MergePdfRequest.from_json(json)
# print the JSON string representation of the object
print(MergePdfRequest.to_json())

# convert the object into a dict
merge_pdf_request_dict = merge_pdf_request_instance.to_dict()
# create an instance of MergePdfRequest from a dict
merge_pdf_request_from_dict = MergePdfRequest.from_dict(merge_pdf_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


