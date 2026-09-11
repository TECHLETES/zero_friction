# ApiResponseDTOOfTaxCodeDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**TaxCodeDTO**](TaxCodeDTO.md) |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.api_response_dtoof_tax_code_dto import ApiResponseDTOOfTaxCodeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfTaxCodeDTO from a JSON string
api_response_dtoof_tax_code_dto_instance = ApiResponseDTOOfTaxCodeDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfTaxCodeDTO.to_json())

# convert the object into a dict
api_response_dtoof_tax_code_dto_dict = api_response_dtoof_tax_code_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfTaxCodeDTO from a dict
api_response_dtoof_tax_code_dto_from_dict = ApiResponseDTOOfTaxCodeDTO.from_dict(api_response_dtoof_tax_code_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
