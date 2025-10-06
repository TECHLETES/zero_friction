# BulkSendAnnualStatementViaMailRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetAnnualStatementsQueryParams**](GetAnnualStatementsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from billing_client.models.bulk_send_annual_statement_via_mail_request import BulkSendAnnualStatementViaMailRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkSendAnnualStatementViaMailRequest from a JSON string
bulk_send_annual_statement_via_mail_request_instance = BulkSendAnnualStatementViaMailRequest.from_json(json)
# print the JSON string representation of the object
print(BulkSendAnnualStatementViaMailRequest.to_json())

# convert the object into a dict
bulk_send_annual_statement_via_mail_request_dict = bulk_send_annual_statement_via_mail_request_instance.to_dict()
# create an instance of BulkSendAnnualStatementViaMailRequest from a dict
bulk_send_annual_statement_via_mail_request_from_dict = BulkSendAnnualStatementViaMailRequest.from_dict(bulk_send_annual_statement_via_mail_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


