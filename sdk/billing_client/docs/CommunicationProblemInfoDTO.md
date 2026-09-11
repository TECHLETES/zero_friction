# CommunicationProblemInfoDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional]
**failure_reason_code** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) |  | [optional]
**failure_details** | **str** |  | [optional]
**failed_at** | **datetime** |  | [optional]

## Example

```python
from billing_client.models.communication_problem_info_dto import CommunicationProblemInfoDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CommunicationProblemInfoDTO from a JSON string
communication_problem_info_dto_instance = CommunicationProblemInfoDTO.from_json(json)
# print the JSON string representation of the object
print(CommunicationProblemInfoDTO.to_json())

# convert the object into a dict
communication_problem_info_dto_dict = communication_problem_info_dto_instance.to_dict()
# create an instance of CommunicationProblemInfoDTO from a dict
communication_problem_info_dto_from_dict = CommunicationProblemInfoDTO.from_dict(communication_problem_info_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
