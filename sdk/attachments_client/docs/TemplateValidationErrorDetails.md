# TemplateValidationErrorDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**originator_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**originator_id** | **str** |  | [optional] 
**message** | [**ErrorCodeMessage**](ErrorCodeMessage.md) |  | [optional] 
**subject_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**subject_id** | **str** |  | [optional] 

## Example

```python
from attachments_client.models.template_validation_error_details import TemplateValidationErrorDetails

# TODO update the JSON string below
json = "{}"
# create an instance of TemplateValidationErrorDetails from a JSON string
template_validation_error_details_instance = TemplateValidationErrorDetails.from_json(json)
# print the JSON string representation of the object
print(TemplateValidationErrorDetails.to_json())

# convert the object into a dict
template_validation_error_details_dict = template_validation_error_details_instance.to_dict()
# create an instance of TemplateValidationErrorDetails from a dict
template_validation_error_details_from_dict = TemplateValidationErrorDetails.from_dict(template_validation_error_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


