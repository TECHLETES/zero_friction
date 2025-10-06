# ContractLocationsAddedEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.contract_locations_added_email_template_request import ContractLocationsAddedEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ContractLocationsAddedEmailTemplateRequest from a JSON string
contract_locations_added_email_template_request_instance = ContractLocationsAddedEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(ContractLocationsAddedEmailTemplateRequest.to_json())

# convert the object into a dict
contract_locations_added_email_template_request_dict = contract_locations_added_email_template_request_instance.to_dict()
# create an instance of ContractLocationsAddedEmailTemplateRequest from a dict
contract_locations_added_email_template_request_from_dict = ContractLocationsAddedEmailTemplateRequest.from_dict(contract_locations_added_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


