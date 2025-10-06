# ChangeCollectionScenarioRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pdf_template** | [**CollectionPdfTemplateRequest**](CollectionPdfTemplateRequest.md) |  | [optional] 
**email_template** | [**CollectionEmailTemplateRequest**](CollectionEmailTemplateRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.change_collection_scenario_request import ChangeCollectionScenarioRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeCollectionScenarioRequest from a JSON string
change_collection_scenario_request_instance = ChangeCollectionScenarioRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeCollectionScenarioRequest.to_json())

# convert the object into a dict
change_collection_scenario_request_dict = change_collection_scenario_request_instance.to_dict()
# create an instance of ChangeCollectionScenarioRequest from a dict
change_collection_scenario_request_from_dict = ChangeCollectionScenarioRequest.from_dict(change_collection_scenario_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


