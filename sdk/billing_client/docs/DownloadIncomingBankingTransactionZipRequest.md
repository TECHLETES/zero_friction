# DownloadIncomingBankingTransactionZipRequest

Represents a request to download banking transaction documents as a ZIP file.  This DTO is used to retrieve transaction-related documents for multiple transactions at once.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**incoming_banking_transaction_ids** | **List[str]** | An array of IDs for the incoming banking transactions whose documents should be included in the ZIP file. | [optional] 

## Example

```python
from billing_client.models.download_incoming_banking_transaction_zip_request import DownloadIncomingBankingTransactionZipRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DownloadIncomingBankingTransactionZipRequest from a JSON string
download_incoming_banking_transaction_zip_request_instance = DownloadIncomingBankingTransactionZipRequest.from_json(json)
# print the JSON string representation of the object
print(DownloadIncomingBankingTransactionZipRequest.to_json())

# convert the object into a dict
download_incoming_banking_transaction_zip_request_dict = download_incoming_banking_transaction_zip_request_instance.to_dict()
# create an instance of DownloadIncomingBankingTransactionZipRequest from a dict
download_incoming_banking_transaction_zip_request_from_dict = DownloadIncomingBankingTransactionZipRequest.from_dict(download_incoming_banking_transaction_zip_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


