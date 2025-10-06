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
**collection_border_invoice_created_date_time** | **datetime** | Only perform collection for invoices created on or after this date | [optional] 
**collection_write_off_handling** | [**WriteOffHandlingType**](WriteOffHandlingType.md) |  | [optional] 
**group_invoice_collection_by_customer** | **bool** |  | [optional] 
**do_not_credit_advances_when_unpaid** | **bool** |  | [optional] 
**advance_amount_lower_threshold** | **float** |  | [optional] 
**default_tax_code_for_person_advances** | **str** |  | [optional] 
**default_tax_code_for_organisation_advances** | **str** |  | [optional] 
**prepayment_parameters** | [**UpdatePrepaymentParametersRequest**](UpdatePrepaymentParametersRequest.md) |  | [optional] 
**advance_calculation_parameters** | [**UpdateAdvanceCalculationParametersRequest**](UpdateAdvanceCalculationParametersRequest.md) |  | [optional] 

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


