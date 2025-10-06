# InvoiceDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**InvoiceDTO**](InvoiceDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceDTOApiResponseDTO from a JSON string
invoice_dto_api_response_dto_instance = InvoiceDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceDTOApiResponseDTO.to_json())

# convert the object into a dict
invoice_dto_api_response_dto_dict = invoice_dto_api_response_dto_instance.to_dict()
# create an instance of InvoiceDTOApiResponseDTO from a dict
invoice_dto_api_response_dto_from_dict = InvoiceDTOApiResponseDTO.from_dict(invoice_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


