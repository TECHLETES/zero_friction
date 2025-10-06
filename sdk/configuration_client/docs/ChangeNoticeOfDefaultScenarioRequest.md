# ChangeNoticeOfDefaultScenarioRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pdf_template** | [**NoticeOfDefaultPdfTemplateRequest**](NoticeOfDefaultPdfTemplateRequest.md) |  | [optional] 
**email_template** | [**NoticeOfDefaultEmailTemplateRequest**](NoticeOfDefaultEmailTemplateRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.change_notice_of_default_scenario_request import ChangeNoticeOfDefaultScenarioRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeNoticeOfDefaultScenarioRequest from a JSON string
change_notice_of_default_scenario_request_instance = ChangeNoticeOfDefaultScenarioRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeNoticeOfDefaultScenarioRequest.to_json())

# convert the object into a dict
change_notice_of_default_scenario_request_dict = change_notice_of_default_scenario_request_instance.to_dict()
# create an instance of ChangeNoticeOfDefaultScenarioRequest from a dict
change_notice_of_default_scenario_request_from_dict = ChangeNoticeOfDefaultScenarioRequest.from_dict(change_notice_of_default_scenario_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


