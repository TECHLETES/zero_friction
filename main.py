# main.py

from utils.secrets import get_secret

API_KEY = get_secret("op://Vaanster/Vaanster ZeroFriction Standard API/credential")


if __name__ == "__main__":
    print(f"testing secret retrieval: {API_KEY}")  # Bad indentation
