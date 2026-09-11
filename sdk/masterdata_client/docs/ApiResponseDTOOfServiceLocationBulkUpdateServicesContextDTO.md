# ApiResponseDTOOfServiceLocationBulkUpdateServicesContextDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**ServiceLocationBulkUpdateServicesContextDTO**](ServiceLocationBulkUpdateServicesContextDTO.md) |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from masterdata_client.models.api_response_dtoof_service_location_bulk_update_services_context_dto import ApiResponseDTOOfServiceLocationBulkUpdateServicesContextDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfServiceLocationBulkUpdateServicesContextDTO from a JSON string
api_response_dtoof_service_location_bulk_update_services_context_dto_instance = ApiResponseDTOOfServiceLocationBulkUpdateServicesContextDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfServiceLocationBulkUpdateServicesContextDTO.to_json())

# convert the object into a dict
api_response_dtoof_service_location_bulk_update_services_context_dto_dict = api_response_dtoof_service_location_bulk_update_services_context_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfServiceLocationBulkUpdateServicesContextDTO from a dict
api_response_dtoof_service_location_bulk_update_services_context_dto_from_dict = ApiResponseDTOOfServiceLocationBulkUpdateServicesContextDTO.from_dict(api_response_dtoof_service_location_bulk_update_services_context_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
