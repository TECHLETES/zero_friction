# InvoiceDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**InvoiceDTOPagedResponseModelDTO**](InvoiceDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.invoice_dto_paged_response_model_dto_api_response_dto import InvoiceDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceDTOPagedResponseModelDTOApiResponseDTO from a JSON string
invoice_dto_paged_response_model_dto_api_response_dto_instance = InvoiceDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
invoice_dto_paged_response_model_dto_api_response_dto_dict = invoice_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of InvoiceDTOPagedResponseModelDTOApiResponseDTO from a dict
invoice_dto_paged_response_model_dto_api_response_dto_from_dict = InvoiceDTOPagedResponseModelDTOApiResponseDTO.from_dict(invoice_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


