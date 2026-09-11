# ApiResponseDTOOfPaymentPlanRecalculatedScenarioDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**PaymentPlanRecalculatedScenarioDTO**](PaymentPlanRecalculatedScenarioDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.api_response_dtoof_payment_plan_recalculated_scenario_dto import ApiResponseDTOOfPaymentPlanRecalculatedScenarioDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfPaymentPlanRecalculatedScenarioDTO from a JSON string
api_response_dtoof_payment_plan_recalculated_scenario_dto_instance = ApiResponseDTOOfPaymentPlanRecalculatedScenarioDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfPaymentPlanRecalculatedScenarioDTO.to_json())

# convert the object into a dict
api_response_dtoof_payment_plan_recalculated_scenario_dto_dict = api_response_dtoof_payment_plan_recalculated_scenario_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfPaymentPlanRecalculatedScenarioDTO from a dict
api_response_dtoof_payment_plan_recalculated_scenario_dto_from_dict = ApiResponseDTOOfPaymentPlanRecalculatedScenarioDTO.from_dict(api_response_dtoof_payment_plan_recalculated_scenario_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


