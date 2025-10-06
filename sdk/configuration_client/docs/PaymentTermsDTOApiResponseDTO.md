# PaymentTermsDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**PaymentTermsDTO**](PaymentTermsDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.payment_terms_dto_api_response_dto import PaymentTermsDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentTermsDTOApiResponseDTO from a JSON string
payment_terms_dto_api_response_dto_instance = PaymentTermsDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentTermsDTOApiResponseDTO.to_json())

# convert the object into a dict
payment_terms_dto_api_response_dto_dict = payment_terms_dto_api_response_dto_instance.to_dict()
# create an instance of PaymentTermsDTOApiResponseDTO from a dict
payment_terms_dto_api_response_dto_from_dict = PaymentTermsDTOApiResponseDTO.from_dict(payment_terms_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


