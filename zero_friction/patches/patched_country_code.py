"""Patched country code enum allowing unknown API values."""

import json
from enum import Enum
from typing import Self


class PatchedCountryCode(str, Enum):
    """Patched country code enum.

    Accepts country codes returned by the API that are not included in the generated SDK.
    """

    AUT = "aut"
    BEL = "bel"
    BGR = "bgr"
    CYP = "cyp"
    CZE = "cze"
    DNK = "dnk"
    EST = "est"
    FIN = "fin"
    FRA = "fra"
    DEU = "deu"
    GRC = "grc"
    HUN = "hun"
    IRL = "irl"
    ITA = "ita"
    LVA = "lva"
    LTU = "ltu"
    LUX = "lux"
    MLT = "mlt"
    NLD = "nld"
    POL = "pol"
    PRT = "prt"
    ROU = "rou"
    SVK = "svk"
    ESP = "esp"
    SWE = "swe"
    GBR = "gbr"
    CHE = "che"
    ISL = "isl"
    NOR = "nor"
    RUS = "rus"
    BLR = "blr"
    UKR = "ukr"
    MDA = "mda"
    SRB = "srb"
    ALB = "alb"
    MNE = "mne"
    MKD = "mkd"
    TUR = "tur"
    LIE = "lie"
    SMR = "smr"
    AND = "and"
    MCO = "mco"
    BIH = "bih"
    BRA = "bra"
    USA = "usa"
    SGP = "sgp"
    ZAF = "zaf"
    CUW = "cuw"

    @classmethod
    def _missing_(cls, value: object) -> Self:
        """Allow unknown country codes."""
        value = str(value)

        member = str.__new__(cls, value)
        member._name_ = value.upper()
        member._value_ = value
        return member

    @classmethod
    def from_json(cls, json_str: str) -> Self:
        """Create a country code instance from JSON."""
        return cls(json.loads(json_str))
