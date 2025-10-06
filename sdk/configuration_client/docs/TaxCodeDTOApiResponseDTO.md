# TaxCodeDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**TaxCodeDTO**](TaxCodeDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.tax_code_dto_api_response_dto import TaxCodeDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TaxCodeDTOApiResponseDTO from a JSON string
tax_code_dto_api_response_dto_instance = TaxCodeDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(TaxCodeDTOApiResponseDTO.to_json())

# convert the object into a dict
tax_code_dto_api_response_dto_dict = tax_code_dto_api_response_dto_instance.to_dict()
# create an instance of TaxCodeDTOApiResponseDTO from a dict
tax_code_dto_api_response_dto_from_dict = TaxCodeDTOApiResponseDTO.from_dict(tax_code_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


