# PaymentOverviewCountDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**PaymentOverviewCountDTO**](PaymentOverviewCountDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.payment_overview_count_dto_api_response_dto import PaymentOverviewCountDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentOverviewCountDTOApiResponseDTO from a JSON string
payment_overview_count_dto_api_response_dto_instance = PaymentOverviewCountDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentOverviewCountDTOApiResponseDTO.to_json())

# convert the object into a dict
payment_overview_count_dto_api_response_dto_dict = payment_overview_count_dto_api_response_dto_instance.to_dict()
# create an instance of PaymentOverviewCountDTOApiResponseDTO from a dict
payment_overview_count_dto_api_response_dto_from_dict = PaymentOverviewCountDTOApiResponseDTO.from_dict(payment_overview_count_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


