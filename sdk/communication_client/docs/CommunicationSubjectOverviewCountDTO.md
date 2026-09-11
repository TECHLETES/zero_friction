# CommunicationSubjectOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional]
**failed** | **int** |  | [optional]
**sent** | **int** |  | [optional]
**not_sent** | **int** |  | [optional]

## Example

```python
from communication_client.models.communication_subject_overview_count_dto import CommunicationSubjectOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CommunicationSubjectOverviewCountDTO from a JSON string
communication_subject_overview_count_dto_instance = CommunicationSubjectOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(CommunicationSubjectOverviewCountDTO.to_json())

# convert the object into a dict
communication_subject_overview_count_dto_dict = communication_subject_overview_count_dto_instance.to_dict()
# create an instance of CommunicationSubjectOverviewCountDTO from a dict
communication_subject_overview_count_dto_from_dict = CommunicationSubjectOverviewCountDTO.from_dict(communication_subject_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
