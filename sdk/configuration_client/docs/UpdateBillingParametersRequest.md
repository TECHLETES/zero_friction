# UpdateBillingParametersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**skip_approval** | **bool** |  | [optional]
**skip_payment** | **bool** |  | [optional]
**enable_ubl** | **bool** |  | [optional]
**disable_automatic_billing_processes** | **bool** |  | [optional]
**days_after_invoice_checkpoint_date_to_create_invoice** | **int** |  | [optional]
**days_before_advance_start_date_to_create_advance** | **int** |  | [optional]
**enable_invoice_collection** | **bool** |  | [optional]
**collection_border_invoice_created_date_time** | **datetime** |  | [optional]
**collection_write_off_handling** | [**WriteOffHandlingType**](WriteOffHandlingType.md) |  |
**group_invoice_collection_by_customer** | **bool** |  | [optional]
**do_not_credit_advances_when_unpaid** | **bool** |  | [optional]
**advance_amount_lower_threshold** | **float** |  | [optional]
**default_tax_code_for_person_advances** | **str** |  |
**default_tax_code_for_organisation_advances** | **str** |  |
**estimated_measurements_enabled** | **bool** |  | [optional]
**enable_automatic_estimated_measurement** | **bool** |  | [optional]
**days_after_checkpoint_automatic_estimated_measurement** | **int** |  | [optional]
**consumption_invoice_end_date_deviation_local_days** | **int** |  | [optional]
**ai_invoice_validation_integration_enabled** | **bool** |  | [optional]
**ai_invoice_validation_auto_approve_min_score_invoice** | **int** |  | [optional]
**ai_invoice_validation_auto_approve_min_score_end_note** | **int** |  | [optional]
**ai_invoice_validation_auto_approve_min_score_advance** | **int** |  | [optional]
**advance_calculation_parameters** | [**UpdateAdvanceCalculationParametersRequest**](UpdateAdvanceCalculationParametersRequest.md) |  | [optional]
**advance_percentage_parameters** | [**UpdateAdvancePercentageParametersRequest**](UpdateAdvancePercentageParametersRequest.md) |  |

## Example

```python
from configuration_client.models.update_billing_parameters_request import UpdateBillingParametersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateBillingParametersRequest from a JSON string
update_billing_parameters_request_instance = UpdateBillingParametersRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateBillingParametersRequest.to_json())

# convert the object into a dict
update_billing_parameters_request_dict = update_billing_parameters_request_instance.to_dict()
# create an instance of UpdateBillingParametersRequest from a dict
update_billing_parameters_request_from_dict = UpdateBillingParametersRequest.from_dict(update_billing_parameters_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
