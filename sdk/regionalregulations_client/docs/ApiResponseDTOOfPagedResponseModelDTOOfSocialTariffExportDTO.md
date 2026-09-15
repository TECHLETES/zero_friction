# ApiResponseDTOOfPagedResponseModelDTOOfSocialTariffExportDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**PagedResponseModelDTOOfSocialTariffExportDTO**](PagedResponseModelDTOOfSocialTariffExportDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from regionalregulations_client.models.api_response_dtoof_paged_response_model_dtoof_social_tariff_export_dto import ApiResponseDTOOfPagedResponseModelDTOOfSocialTariffExportDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfSocialTariffExportDTO from a JSON string
api_response_dtoof_paged_response_model_dtoof_social_tariff_export_dto_instance = ApiResponseDTOOfPagedResponseModelDTOOfSocialTariffExportDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfPagedResponseModelDTOOfSocialTariffExportDTO.to_json())

# convert the object into a dict
api_response_dtoof_paged_response_model_dtoof_social_tariff_export_dto_dict = api_response_dtoof_paged_response_model_dtoof_social_tariff_export_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfSocialTariffExportDTO from a dict
api_response_dtoof_paged_response_model_dtoof_social_tariff_export_dto_from_dict = ApiResponseDTOOfPagedResponseModelDTOOfSocialTariffExportDTO.from_dict(api_response_dtoof_paged_response_model_dtoof_social_tariff_export_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


