# ApiResponseDTOOfPropertyGroupForecastingConfigurationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**PropertyGroupForecastingConfigurationDTO**](PropertyGroupForecastingConfigurationDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from forecasting_client.models.api_response_dtoof_property_group_forecasting_configuration_dto import ApiResponseDTOOfPropertyGroupForecastingConfigurationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfPropertyGroupForecastingConfigurationDTO from a JSON string
api_response_dtoof_property_group_forecasting_configuration_dto_instance = ApiResponseDTOOfPropertyGroupForecastingConfigurationDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfPropertyGroupForecastingConfigurationDTO.to_json())

# convert the object into a dict
api_response_dtoof_property_group_forecasting_configuration_dto_dict = api_response_dtoof_property_group_forecasting_configuration_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfPropertyGroupForecastingConfigurationDTO from a dict
api_response_dtoof_property_group_forecasting_configuration_dto_from_dict = ApiResponseDTOOfPropertyGroupForecastingConfigurationDTO.from_dict(api_response_dtoof_property_group_forecasting_configuration_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


