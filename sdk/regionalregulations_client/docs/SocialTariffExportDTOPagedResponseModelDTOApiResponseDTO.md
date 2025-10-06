# SocialTariffExportDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**SocialTariffExportDTOPagedResponseModelDTO**](SocialTariffExportDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from regionalregulations_client.models.social_tariff_export_dto_paged_response_model_dto_api_response_dto import SocialTariffExportDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SocialTariffExportDTOPagedResponseModelDTOApiResponseDTO from a JSON string
social_tariff_export_dto_paged_response_model_dto_api_response_dto_instance = SocialTariffExportDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(SocialTariffExportDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
social_tariff_export_dto_paged_response_model_dto_api_response_dto_dict = social_tariff_export_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of SocialTariffExportDTOPagedResponseModelDTOApiResponseDTO from a dict
social_tariff_export_dto_paged_response_model_dto_api_response_dto_from_dict = SocialTariffExportDTOPagedResponseModelDTOApiResponseDTO.from_dict(social_tariff_export_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


