# FinancialPeriodDTOListApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**List[FinancialPeriodDTO]**](FinancialPeriodDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.financial_period_dto_list_api_response_dto import FinancialPeriodDTOListApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FinancialPeriodDTOListApiResponseDTO from a JSON string
financial_period_dto_list_api_response_dto_instance = FinancialPeriodDTOListApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(FinancialPeriodDTOListApiResponseDTO.to_json())

# convert the object into a dict
financial_period_dto_list_api_response_dto_dict = financial_period_dto_list_api_response_dto_instance.to_dict()
# create an instance of FinancialPeriodDTOListApiResponseDTO from a dict
financial_period_dto_list_api_response_dto_from_dict = FinancialPeriodDTOListApiResponseDTO.from_dict(financial_period_dto_list_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


