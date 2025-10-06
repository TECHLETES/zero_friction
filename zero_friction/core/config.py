import os
from dotenv import load_dotenv
from .auth import get_headers, get_oauth_response, get_oauth_token
from datetime import datetime, timedelta, timezone

# Load environment variables from .env file
load_dotenv()

ZF_TENANT_ID = os.getenv('ZF_TENANT_ID')
ZF_ORG_ID = os.getenv('ZF_ORG_ID')
ZF_API_KEY = os.getenv('ZF_API_KEY')

class ZeroFrictionConfig:
    def __init__(
            self, 
            rate_limit_per_minute: int = 600, 
            max_retries: int = 6,
            debug_mode: bool = False
    ):
        self.zf_tuuid = os.getenv("ZF_TENANT_ID")
        self.zf_ouuid = os.getenv("ZF_ORG_ID")
        self.headers = get_headers()
        self.rate_limit_per_minute = rate_limit_per_minute
        self.debug_mode = debug_mode
        self.max_retries = max_retries

        oauth_response, oauth_token = get_oauth_response()
        self.update_token(oauth_token, oauth_response.get("expires_in", 3599))

    def as_kwargs(self) -> dict:
        return {
            "zf_tuuid": self.zf_tuuid,
            "zf_ouuid": self.zf_ouuid,
            "_headers": self.headers
        }
    
    def as_headers(self) -> dict:
        return {
            "Authorization": f"Bearer {self.oauth_token}",
            "apim-sub": ZF_API_KEY,
            "zf-tuuid": ZF_TENANT_ID,
            "zf-ouuid": ZF_ORG_ID,
            "Content-Type": "application/json",
            "Cache-Control": "no-cache"
        }
    
    def is_token_expired(self, buffer_sec: int = 60) -> bool:
        """Return True if token is expired or will expire soon."""
        if self.token_expires_at is None:
            return False
        return (
            datetime.now(timezone.utc) + timedelta(seconds=buffer_sec)
            >= self.token_expires_at
        )

    def update_token(self, oauth_token, expires_in):
        self.oauth_token = oauth_token
        self.token_expires_at = datetime.now(timezone.utc) + timedelta(seconds=expires_in)

    def refresh_token(self):
        oauth_response, oauth_token = get_oauth_response()
        self.update_token(oauth_token, oauth_response.get("expires_in", 3599))