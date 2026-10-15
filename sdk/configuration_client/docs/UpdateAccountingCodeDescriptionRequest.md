# UpdateAccountingCodeDescriptionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **str** |  | 

## Example

```python
from configuration_client.models.update_accounting_code_description_request import UpdateAccountingCodeDescriptionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateAccountingCodeDescriptionRequest from a JSON string
update_accounting_code_description_request_instance = UpdateAccountingCodeDescriptionRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateAccountingCodeDescriptionRequest.to_json())

# convert the object into a dict
update_accounting_code_description_request_dict = update_accounting_code_description_request_instance.to_dict()
# create an instance of UpdateAccountingCodeDescriptionRequest from a dict
update_accounting_code_description_request_from_dict = UpdateAccountingCodeDescriptionRequest.from_dict(update_accounting_code_description_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


