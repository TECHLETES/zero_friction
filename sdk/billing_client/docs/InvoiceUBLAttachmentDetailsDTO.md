# InvoiceUBLAttachmentDetailsDTO

Represents details of a UBL attachment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[InvoiceUBLValidationErrorDTO]**](InvoiceUBLValidationErrorDTO.md) | List of UBL validation errors | [optional] 
**attachment_id** | **str** | Identifier of the attachment | [optional] 
**attachment_file_name** | **str** | Name of the attachment file | [optional] 

## Example

```python
from billing_client.models.invoice_ubl_attachment_details_dto import InvoiceUBLAttachmentDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceUBLAttachmentDetailsDTO from a JSON string
invoice_ubl_attachment_details_dto_instance = InvoiceUBLAttachmentDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceUBLAttachmentDetailsDTO.to_json())

# convert the object into a dict
invoice_ubl_attachment_details_dto_dict = invoice_ubl_attachment_details_dto_instance.to_dict()
# create an instance of InvoiceUBLAttachmentDetailsDTO from a dict
invoice_ubl_attachment_details_dto_from_dict = InvoiceUBLAttachmentDetailsDTO.from_dict(invoice_ubl_attachment_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


