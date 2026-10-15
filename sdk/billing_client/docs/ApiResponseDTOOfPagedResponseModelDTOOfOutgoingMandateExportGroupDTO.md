# ApiResponseDTOOfPagedResponseModelDTOOfOutgoingMandateExportGroupDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**PagedResponseModelDTOOfOutgoingMandateExportGroupDTO**](PagedResponseModelDTOOfOutgoingMandateExportGroupDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.api_response_dtoof_paged_response_model_dtoof_outgoing_mandate_export_group_dto import ApiResponseDTOOfPagedResponseModelDTOOfOutgoingMandateExportGroupDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfOutgoingMandateExportGroupDTO from a JSON string
api_response_dtoof_paged_response_model_dtoof_outgoing_mandate_export_group_dto_instance = ApiResponseDTOOfPagedResponseModelDTOOfOutgoingMandateExportGroupDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfPagedResponseModelDTOOfOutgoingMandateExportGroupDTO.to_json())

# convert the object into a dict
api_response_dtoof_paged_response_model_dtoof_outgoing_mandate_export_group_dto_dict = api_response_dtoof_paged_response_model_dtoof_outgoing_mandate_export_group_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfOutgoingMandateExportGroupDTO from a dict
api_response_dtoof_paged_response_model_dtoof_outgoing_mandate_export_group_dto_from_dict = ApiResponseDTOOfPagedResponseModelDTOOfOutgoingMandateExportGroupDTO.from_dict(api_response_dtoof_paged_response_model_dtoof_outgoing_mandate_export_group_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


