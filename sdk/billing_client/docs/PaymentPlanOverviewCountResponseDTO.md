# PaymentPlanOverviewCountResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional]
**active** | **int** |  | [optional]
**draft** | **int** |  | [optional]
**completed** | **int** |  | [optional]
**overdue** | **int** |  | [optional]
**paused** | **int** |  | [optional]
**cancelled** | **int** |  | [optional]
**ready_for_collection** | **int** |  | [optional]

## Example

```python
from billing_client.models.payment_plan_overview_count_response_dto import PaymentPlanOverviewCountResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentPlanOverviewCountResponseDTO from a JSON string
payment_plan_overview_count_response_dto_instance = PaymentPlanOverviewCountResponseDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentPlanOverviewCountResponseDTO.to_json())

# convert the object into a dict
payment_plan_overview_count_response_dto_dict = payment_plan_overview_count_response_dto_instance.to_dict()
# create an instance of PaymentPlanOverviewCountResponseDTO from a dict
payment_plan_overview_count_response_dto_from_dict = PaymentPlanOverviewCountResponseDTO.from_dict(payment_plan_overview_count_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
