# TemplateDataObject


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_date_time** | **datetime** |  | [optional] 
**id** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**discriminator** | **str** |  | [optional] [readonly] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] [readonly] 
**ttl** | **int** |  | [optional] 
**cid** | **str** |  | [optional] 
**ts** | **int** |  | [optional] 
**user_id** | **str** |  | [optional] 
**require_attention** | **bool** |  | [optional] [readonly] 
**has_errors** | **bool** |  | [optional] 
**has_warnings** | **bool** |  | [optional] 
**organisation_id** | **str** |  | [optional] 
**organization** | [**OrganizationDataObject**](OrganizationDataObject.md) |  | [optional] 
**culture** | [**CultureInfo**](CultureInfo.md) |  | [optional] 
**decimal_and_currency_culture** | [**CultureInfo**](CultureInfo.md) |  | [optional] 
**validation_errors** | [**List[TemplateValidationErrorDetails]**](TemplateValidationErrorDetails.md) |  | [optional] 

## Example

```python
from attachments_client.models.template_data_object import TemplateDataObject

# TODO update the JSON string below
json = "{}"
# create an instance of TemplateDataObject from a JSON string
template_data_object_instance = TemplateDataObject.from_json(json)
# print the JSON string representation of the object
print(TemplateDataObject.to_json())

# convert the object into a dict
template_data_object_dict = template_data_object_instance.to_dict()
# create an instance of TemplateDataObject from a dict
template_data_object_from_dict = TemplateDataObject.from_dict(template_data_object_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


