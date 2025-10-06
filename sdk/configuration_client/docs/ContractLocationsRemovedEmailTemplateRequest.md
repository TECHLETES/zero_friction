# ContractLocationsRemovedEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.contract_locations_removed_email_template_request import ContractLocationsRemovedEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ContractLocationsRemovedEmailTemplateRequest from a JSON string
contract_locations_removed_email_template_request_instance = ContractLocationsRemovedEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(ContractLocationsRemovedEmailTemplateRequest.to_json())

# convert the object into a dict
contract_locations_removed_email_template_request_dict = contract_locations_removed_email_template_request_instance.to_dict()
# create an instance of ContractLocationsRemovedEmailTemplateRequest from a dict
contract_locations_removed_email_template_request_from_dict = ContractLocationsRemovedEmailTemplateRequest.from_dict(contract_locations_removed_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


