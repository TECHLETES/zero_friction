# ApiResponseDTOOfCalculateInstallmentsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**CalculateInstallmentsResponse**](CalculateInstallmentsResponse.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.api_response_dtoof_calculate_installments_response import ApiResponseDTOOfCalculateInstallmentsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfCalculateInstallmentsResponse from a JSON string
api_response_dtoof_calculate_installments_response_instance = ApiResponseDTOOfCalculateInstallmentsResponse.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfCalculateInstallmentsResponse.to_json())

# convert the object into a dict
api_response_dtoof_calculate_installments_response_dict = api_response_dtoof_calculate_installments_response_instance.to_dict()
# create an instance of ApiResponseDTOOfCalculateInstallmentsResponse from a dict
api_response_dtoof_calculate_installments_response_from_dict = ApiResponseDTOOfCalculateInstallmentsResponse.from_dict(api_response_dtoof_calculate_installments_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


