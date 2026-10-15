"""Compatibility wrapper for the generated customers API client."""

from typing import Any

from masterdata_client.api.default_api import DefaultApi

# If your generated model class has a different name, adjust the string in _RESPONSE_TYPE below
# and optionally import the class for type hints:
# from masterdata_client.model.customer_dto_api_response_dto import CustomerDTOApiResponseDTO


class PatchedCustomersApi:
    """
    Provide a drop-in replacement for the generated customer lookup method.

    Calls the correct endpoint and preserves the original signature so existing call sites keep working.
    All other attributes and methods fall through to the original CustomersApi.
    """

    _PATH = "/api/md/Customers/ByAccountNumber"
    _METHOD = "GET"
    _AUTH = [
        "BearerAuth"
    ]  # adjust if your generated client uses a different auth scheme name
    _RESPONSE_TYPE = "ApiResponseDTOOfCustomerDTO"  # exact generated response model

    def __init__(self, customers_api: DefaultApi):
        """Wrap a generated customers API instance."""
        self.api_client = customers_api.api_client
        self._orig = DefaultApi(self.api_client)  # for passthrough of other methods

    # Keep the same signature your generated method exposes
    def get_customer_by_account_number(
        self,
        customer_account_number: str,
        zf_tuuid: str,
        zf_ouuid: str,
        _request_timeout: float | tuple[float, float] | None = None,
        _request_auth: dict[str, Any] | None = None,
        _content_type: str | None = None,
        _headers: dict[str, Any] | None = None,
        _host_index: int = 0,
        # ) -> CustomerDTOApiResponseDTO:
    ) -> Any:
        """
        Replace the generated method.

        Hits /api/md/Customers/ByAccountNumber?customerAccountNumber=... with required Zero Friction headers.
        """
        _host: str | None = None
        _collection_formats: dict[str, str] = {}

        _path_params: dict[str, str] = {}
        _query_params: list[tuple[str, str]] = [
            ("customerAccountNumber", customer_account_number)
        ]
        _header_params: dict[str, str | None] = _headers or {}
        _form_params: list[tuple[str, str]] = []
        _files: dict[str, Any] = {}
        _body_params: bytes | None = None

        # add required tenant headers
        _header_params["zf-tuuid"] = zf_tuuid
        _header_params["zf-ouuid"] = zf_ouuid

        if "Accept" not in _header_params:
            _header_params["Accept"] = self.api_client.select_header_accept(
                ["text/plain", "application/json", "text/json"]
            )
        if _content_type:
            _header_params["Content-Type"] = _content_type

        # reuse the same auth settings labels your generator uses
        _auth_settings: list[str] = ["apiKeyQuery", "apiKeyHeader"]

        # build the serialized request with the corrected resource_path
        _param = self.api_client.param_serialize(
            method="GET",
            resource_path="/Customers/ByAccountNumber",
            path_params=_path_params,
            query_params=_query_params,
            header_params=_header_params,
            body=_body_params,
            post_params=_form_params,
            files=_files,
            auth_settings=_auth_settings,
            collection_formats=_collection_formats,
            _host=_host,
            _request_auth=_request_auth,
        )

        _response_types_map: dict[str, str | None] = {
            "200": self._RESPONSE_TYPE,
            "404": "ProblemDetails",
        }

        # call through the ApiClient
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout,
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        ).data

    def __getattr__(self, name: str) -> Any:
        """Delegate unknown attributes to the original generated client."""
        # passthrough for any other methods or attributes
        return getattr(self._orig, name)
