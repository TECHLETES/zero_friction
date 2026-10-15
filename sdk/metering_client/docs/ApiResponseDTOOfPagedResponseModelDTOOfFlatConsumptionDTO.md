# ApiResponseDTOOfPagedResponseModelDTOOfFlatConsumptionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**PagedResponseModelDTOOfFlatConsumptionDTO**](PagedResponseModelDTOOfFlatConsumptionDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_flat_consumption_dto import ApiResponseDTOOfPagedResponseModelDTOOfFlatConsumptionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfFlatConsumptionDTO from a JSON string
api_response_dtoof_paged_response_model_dtoof_flat_consumption_dto_instance = ApiResponseDTOOfPagedResponseModelDTOOfFlatConsumptionDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfPagedResponseModelDTOOfFlatConsumptionDTO.to_json())

# convert the object into a dict
api_response_dtoof_paged_response_model_dtoof_flat_consumption_dto_dict = api_response_dtoof_paged_response_model_dtoof_flat_consumption_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfFlatConsumptionDTO from a dict
api_response_dtoof_paged_response_model_dtoof_flat_consumption_dto_from_dict = ApiResponseDTOOfPagedResponseModelDTOOfFlatConsumptionDTO.from_dict(api_response_dtoof_paged_response_model_dtoof_flat_consumption_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


