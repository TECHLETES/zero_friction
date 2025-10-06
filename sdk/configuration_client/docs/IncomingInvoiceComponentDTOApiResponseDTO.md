# IncomingInvoiceComponentDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**IncomingInvoiceComponentDTO**](IncomingInvoiceComponentDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.incoming_invoice_component_dto_api_response_dto import IncomingInvoiceComponentDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingInvoiceComponentDTOApiResponseDTO from a JSON string
incoming_invoice_component_dto_api_response_dto_instance = IncomingInvoiceComponentDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingInvoiceComponentDTOApiResponseDTO.to_json())

# convert the object into a dict
incoming_invoice_component_dto_api_response_dto_dict = incoming_invoice_component_dto_api_response_dto_instance.to_dict()
# create an instance of IncomingInvoiceComponentDTOApiResponseDTO from a dict
incoming_invoice_component_dto_api_response_dto_from_dict = IncomingInvoiceComponentDTOApiResponseDTO.from_dict(incoming_invoice_component_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


