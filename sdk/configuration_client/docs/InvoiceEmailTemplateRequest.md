# InvoiceEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.invoice_email_template_request import InvoiceEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceEmailTemplateRequest from a JSON string
invoice_email_template_request_instance = InvoiceEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(InvoiceEmailTemplateRequest.to_json())

# convert the object into a dict
invoice_email_template_request_dict = invoice_email_template_request_instance.to_dict()
# create an instance of InvoiceEmailTemplateRequest from a dict
invoice_email_template_request_from_dict = InvoiceEmailTemplateRequest.from_dict(invoice_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


