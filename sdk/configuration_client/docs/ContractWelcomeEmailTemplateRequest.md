# ContractWelcomeEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.contract_welcome_email_template_request import ContractWelcomeEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ContractWelcomeEmailTemplateRequest from a JSON string
contract_welcome_email_template_request_instance = ContractWelcomeEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(ContractWelcomeEmailTemplateRequest.to_json())

# convert the object into a dict
contract_welcome_email_template_request_dict = contract_welcome_email_template_request_instance.to_dict()
# create an instance of ContractWelcomeEmailTemplateRequest from a dict
contract_welcome_email_template_request_from_dict = ContractWelcomeEmailTemplateRequest.from_dict(contract_welcome_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


