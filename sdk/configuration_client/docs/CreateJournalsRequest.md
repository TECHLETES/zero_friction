# CreateJournalsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**journals** | [**List[CreateJournalRequest]**](CreateJournalRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.create_journals_request import CreateJournalsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateJournalsRequest from a JSON string
create_journals_request_instance = CreateJournalsRequest.from_json(json)
# print the JSON string representation of the object
print(CreateJournalsRequest.to_json())

# convert the object into a dict
create_journals_request_dict = create_journals_request_instance.to_dict()
# create an instance of CreateJournalsRequest from a dict
create_journals_request_from_dict = CreateJournalsRequest.from_dict(create_journals_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


