# InvoiceCommunicationPreferenceDTO

Represents invoice communication preferences

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_type** | [**InvoiceType**](InvoiceType.md) | Type of invoice | [optional] 
**communication_type** | [**CommunicationType**](CommunicationType.md) | Preferred communication type for invoices | [optional] 

## Example

```python
from masterdata_client.models.invoice_communication_preference_dto import InvoiceCommunicationPreferenceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceCommunicationPreferenceDTO from a JSON string
invoice_communication_preference_dto_instance = InvoiceCommunicationPreferenceDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceCommunicationPreferenceDTO.to_json())

# convert the object into a dict
invoice_communication_preference_dto_dict = invoice_communication_preference_dto_instance.to_dict()
# create an instance of InvoiceCommunicationPreferenceDTO from a dict
invoice_communication_preference_dto_from_dict = InvoiceCommunicationPreferenceDTO.from_dict(invoice_communication_preference_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


