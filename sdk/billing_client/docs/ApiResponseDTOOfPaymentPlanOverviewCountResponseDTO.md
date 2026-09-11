# ApiResponseDTOOfPaymentPlanOverviewCountResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**PaymentPlanOverviewCountResponseDTO**](PaymentPlanOverviewCountResponseDTO.md) |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from billing_client.models.api_response_dtoof_payment_plan_overview_count_response_dto import ApiResponseDTOOfPaymentPlanOverviewCountResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfPaymentPlanOverviewCountResponseDTO from a JSON string
api_response_dtoof_payment_plan_overview_count_response_dto_instance = ApiResponseDTOOfPaymentPlanOverviewCountResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfPaymentPlanOverviewCountResponseDTO.to_json())

# convert the object into a dict
api_response_dtoof_payment_plan_overview_count_response_dto_dict = api_response_dtoof_payment_plan_overview_count_response_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfPaymentPlanOverviewCountResponseDTO from a dict
api_response_dtoof_payment_plan_overview_count_response_dto_from_dict = ApiResponseDTOOfPaymentPlanOverviewCountResponseDTO.from_dict(api_response_dtoof_payment_plan_overview_count_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
