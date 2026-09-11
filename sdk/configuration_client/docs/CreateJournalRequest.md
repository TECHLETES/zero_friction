# CreateJournalRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  |
**description** | **str** |  |
**metadata** | [**ExternalAccountingMetadataRequest**](ExternalAccountingMetadataRequest.md) |  |

## Example

```python
from configuration_client.models.create_journal_request import CreateJournalRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateJournalRequest from a JSON string
create_journal_request_instance = CreateJournalRequest.from_json(json)
# print the JSON string representation of the object
print(CreateJournalRequest.to_json())

# convert the object into a dict
create_journal_request_dict = create_journal_request_instance.to_dict()
# create an instance of CreateJournalRequest from a dict
create_journal_request_from_dict = CreateJournalRequest.from_dict(create_journal_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
