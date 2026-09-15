# AssignInvoiceToCollectionCaseRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collection_flow_id** | **str** |  | [optional] 
**collection_case_number** | **str** |  | [optional] 
**last_executed_step** | **int** |  | [optional] 
**last_step_executed_at** | **datetime** |  | [optional] 
**status** | [**CollectionFlowStatus**](CollectionFlowStatus.md) |  | [optional] 
**induce_charge** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.assign_invoice_to_collection_case_request import AssignInvoiceToCollectionCaseRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AssignInvoiceToCollectionCaseRequest from a JSON string
assign_invoice_to_collection_case_request_instance = AssignInvoiceToCollectionCaseRequest.from_json(json)
# print the JSON string representation of the object
print(AssignInvoiceToCollectionCaseRequest.to_json())

# convert the object into a dict
assign_invoice_to_collection_case_request_dict = assign_invoice_to_collection_case_request_instance.to_dict()
# create an instance of AssignInvoiceToCollectionCaseRequest from a dict
assign_invoice_to_collection_case_request_from_dict = AssignInvoiceToCollectionCaseRequest.from_dict(assign_invoice_to_collection_case_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


