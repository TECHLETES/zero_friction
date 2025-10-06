# PaymentDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**PaymentDTO**](PaymentDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.payment_dto_api_response_dto import PaymentDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentDTOApiResponseDTO from a JSON string
payment_dto_api_response_dto_instance = PaymentDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentDTOApiResponseDTO.to_json())

# convert the object into a dict
payment_dto_api_response_dto_dict = payment_dto_api_response_dto_instance.to_dict()
# create an instance of PaymentDTOApiResponseDTO from a dict
payment_dto_api_response_dto_from_dict = PaymentDTOApiResponseDTO.from_dict(payment_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


