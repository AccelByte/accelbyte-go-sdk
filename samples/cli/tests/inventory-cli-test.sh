#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..44"

#- 1 Login
samples/cli/sample-apps login \
    -u 'admin' \
    -p 'admin' \
    > test.out 2>&1
eval_tap $? 1 'Login' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 AdminCreateChainingOperations
samples/cli/sample-apps Inventory adminCreateChainingOperations \
    --namespace $AB_NAMESPACE \
    --body '{"message": "V7T5PxkA8Csd65MR", "operations": [{"consumeItems": [{"dateRangeValidation": true, "inventoryId": "24HD6qW3YtxqzUFU", "options": ["wT8eFsaIyvL45WjX", "jbHiV5CC57w10ZgT", "tnE0y8VlYDLctMzH"], "qty": 46, "slotId": "f3r5jlWDyNBVQ397", "sourceItemId": "J72rGfduQKA3E2sF"}, {"dateRangeValidation": false, "inventoryId": "Mg0EQLX0NWDEIYW9", "options": ["rrKjebDZ0M0h8mBp", "QzgBaixGjAnpvZeC", "LgyexMPSQe1PNZi3"], "qty": 21, "slotId": "JpMhs216PqCDY4il", "sourceItemId": "KN5YJ8maOlULqn9F"}, {"dateRangeValidation": true, "inventoryId": "9bOZH1bvc4545K7b", "options": ["r2qPi4LVg5svKjDa", "Am1voaVWgfONgdR7", "pbkh4K0j8MeUPfEV"], "qty": 44, "slotId": "mJ54WueFV1V5RLCO", "sourceItemId": "Udz828m3BGyVe5Rn"}], "createItems": [{"customAttributes": {"Mmz5dS80Z18nNVkX": {}, "KFzY16pMf87J3FWz": {}, "BlVbuW8KruSJvwCq": {}}, "inventoryConfigurationCode": "zQkHDHU66bIGE3ho", "inventoryId": "KlGBxwYzxWXUQM8Z", "qty": 50, "serverCustomAttributes": {"WkeN31KrDfZpadhp": {}, "iMKv3taM7dFp3PR5": {}, "OWjpGJfab45ZVqm8": {}}, "slotId": "JbZzrCEFXo7Z7yZb", "slotUsed": 56, "source": "ECOMMERCE", "sourceItemId": "pYlcBFYU0z95BfwU", "tags": ["T9AD1mQH9FhXiaqP", "6Hqni1jdA03b1I54", "XaLp2P4ninSgyx89"], "toSpecificInventory": true, "type": "RUUZ6Mjzu16bAhRh"}, {"customAttributes": {"Mfp3xchQwb7AEbfY": {}, "4NF52UzJ9tFfx8tI": {}, "X29xFpFH8e1cdbhD": {}}, "inventoryConfigurationCode": "euaJnzTASuKRgaZB", "inventoryId": "5NtQrkusYfnTPA3s", "qty": 2, "serverCustomAttributes": {"ZgKpXoNo1FrNnSB4": {}, "SESXm04bSy62mHea": {}, "cMrIbK5ZYi1eKyiJ": {}}, "slotId": "m2LivihOOwJv6XSI", "slotUsed": 29, "source": "ECOMMERCE", "sourceItemId": "h8Gf2cI6CyLu20kF", "tags": ["BRUpgcNTcJPTAMOd", "gsnm2rFMdK6oa3Sc", "WrAfhcLbXOaeMPTB"], "toSpecificInventory": true, "type": "SW6TFoJ479b5nHVq"}, {"customAttributes": {"A5qLwGo0fGF7nGzt": {}, "zpLmJhznOg8hSSuH": {}, "w5wgOLpWlbnFPEdd": {}}, "inventoryConfigurationCode": "oHS6jusyo7qOBMoK", "inventoryId": "8gnqtcTBDtlRbBdV", "qty": 70, "serverCustomAttributes": {"O3OdqHF20pxGzCZb": {}, "yn4HoED85MzrEI8W": {}, "UKEgTFTSPkldiNqA": {}}, "slotId": "8ZI4mszTjljmWUoH", "slotUsed": 46, "source": "ECOMMERCE", "sourceItemId": "nXvLQJsNz4SGYTZr", "tags": ["3hEOpHCMehQugL7i", "4Qzq32jbzPXLYXMJ", "vqzjx9hwQeeuwcbc"], "toSpecificInventory": true, "type": "che7gzbGrbx4ezxB"}], "removeItems": [{"inventoryId": "HwvYbO1j0sEvQ7h1", "slotId": "NOgFpaHJJqpnhQHU", "sourceItemId": "GJoYHMVSk5WBirbL"}, {"inventoryId": "YGEyICeOBEUEXf3b", "slotId": "ZQejQxG4ssQY7il6", "sourceItemId": "qNcidovaraoBPIqc"}, {"inventoryId": "QvwcaWaH3EaZVJ5d", "slotId": "R96WmHI65B6gdo0j", "sourceItemId": "t1XFCFXaBbGpStSD"}], "targetUserId": "PZRMsF92sy9fHsce", "updateItems": [{"customAttributes": {"KEiZPxsEp85hHzaM": {}, "050dtEntZ4GoX51g": {}, "4IKVnx2lnTuvKKdh": {}}, "inventoryId": "dwHggNSmvcnFUbCK", "serverCustomAttributes": {"mEI51J337kWCnxz2": {}, "e9bpDZ8ZQAtZpbf7": {}, "ONAQlWDWknLJwlch": {}}, "slotId": "oIRJuCTxxySerzZy", "sourceItemId": "4hjYztzg3MoAbNk5", "tags": ["OAKqAi8Ew1aSvlcM", "OyE5ZIs4xJwtJDhr", "dkeoL6wFFS2uJP5e"], "type": "6DA0WWum6We0ns3Z"}, {"customAttributes": {"Jj1yeFsvMA1V0Zuq": {}, "RzRWwy8ILbzkmznC": {}, "MdbAY6irMLxhNiLS": {}}, "inventoryId": "fEWV1wuowSJX5cro", "serverCustomAttributes": {"lyhyZHWtaIfGM9BO": {}, "aqFFAPyY8UOUxaJ8": {}, "BTKrYDay6kGA4Uwp": {}}, "slotId": "bJOdu3lClm1Ol5EG", "sourceItemId": "kfkEQnVPJ4aGW0BI", "tags": ["ucd5cneyZGXW8xUU", "cEAFsnf9urgL8YPH", "J602M2JKaN4SDZLH"], "type": "rbdMtAflXg92NGyc"}, {"customAttributes": {"lh8L16JwLEK2KPN8": {}, "3ouCLEprevnDwCdR": {}, "01BuCR3gaV5XFFve": {}}, "inventoryId": "XamjHxgHBQCwFm2W", "serverCustomAttributes": {"BFcifvt1UHq3krwE": {}, "Ty8zDsRzdeL29NZe": {}, "rd6ZWU11XAtqYquu": {}}, "slotId": "GteA8MdHkmWLY0AH", "sourceItemId": "ZVsOx7CzzJ2WFE2u", "tags": ["5CKYYwsnyzzwB3oK", "hKjs1PoInEbq57N2", "Zb1qe95vG44dtyOb"], "type": "7pdR3Y0J2gDYK5gk"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "YmH0eoIyZtwhSMzn", "options": ["rrNBPGA9lBoxuak6", "2RS75CUEIE1tyh9R", "q4D05BBPs5trfrba"], "qty": 4, "slotId": "PUHzlovR1oNcD99X", "sourceItemId": "7FhYFMXywlga7CEY"}, {"dateRangeValidation": false, "inventoryId": "fT78PQPFpyHI5KoR", "options": ["UMVgbdnLJt0K5QQ1", "6FJ3tjayMuu0U6So", "G2LEdVlHMvBBJI8t"], "qty": 34, "slotId": "PmDsV57xWFDei0Rs", "sourceItemId": "fFeC6UPJgMdOsKWM"}, {"dateRangeValidation": false, "inventoryId": "2BxwZn2UFmLiE8Jf", "options": ["o29W60fwG0eNeB3T", "rSwEfBmlcvjkhqVo", "EeQerVfvqwlwAAUh"], "qty": 50, "slotId": "0wqoCA9XE1d1iHCc", "sourceItemId": "pcyb1Xv5jK8Ywtxg"}], "createItems": [{"customAttributes": {"DBD2aw0xsrBRqfbI": {}, "36R2ROQRfVAP2MmU": {}, "y57cWu6mX3OWkzxS": {}}, "inventoryConfigurationCode": "9JrSvtFvIqLvKoCZ", "inventoryId": "iG7XaZJApS4QhDhk", "qty": 69, "serverCustomAttributes": {"DYkElNEl2GeAKGop": {}, "CNrcN6IGj07oWsCd": {}, "Wz4DwI5uMbdXwAYS": {}}, "slotId": "BN4h3P7ucTyW1tmh", "slotUsed": 90, "source": "OTHER", "sourceItemId": "6VZKd43cScSoxqKw", "tags": ["VU1k0NP73iLcUMN1", "Ri1oy9yQ8MkHDEp1", "sYr8VJixS3UJVjnS"], "toSpecificInventory": false, "type": "5Zv7dqfPK1soPETM"}, {"customAttributes": {"VMIo1icKTnoqvXd5": {}, "6MFV5Ww5qh6cmqyp": {}, "dkxMQpLVzorBF5Cv": {}}, "inventoryConfigurationCode": "6DUm6TDQ0AyMevp1", "inventoryId": "CG90BWI9TYeFvvIN", "qty": 5, "serverCustomAttributes": {"FtPupHtitfVDn7g1": {}, "uBzgWcJOZsZUQtqw": {}, "nlTHJMfEhjGBPkjD": {}}, "slotId": "TBaLK4v3k3UZexH2", "slotUsed": 4, "source": "OTHER", "sourceItemId": "vfWJHUGXtslqGYEa", "tags": ["6F7akc8MyC6SIrvV", "PrCpheyyAui7QA2J", "Cdbl3iulr4PXjV5C"], "toSpecificInventory": true, "type": "Ag8JInZUVsEsGRUz"}, {"customAttributes": {"YWXtIo7kibdKESgi": {}, "e0o0fiEz5OaXO3r4": {}, "D4IVoH6MsmWitWZM": {}}, "inventoryConfigurationCode": "ffrTcgKP3pS5LPIU", "inventoryId": "ifVGWwbKvnLclYFO", "qty": 7, "serverCustomAttributes": {"ZCAua6CDpHcsoCbB": {}, "K4CNRJi23cvnE3yj": {}, "sVVXc6tM3ip5aa46": {}}, "slotId": "eo73kbjZX60K2DBe", "slotUsed": 54, "source": "ECOMMERCE", "sourceItemId": "dfZEUrcgwwQmupin", "tags": ["syJSHeO5qSUeCM86", "KCs31mXQNjRR091d", "SJQy4KO195VQzuuj"], "toSpecificInventory": true, "type": "ScQwmkhI2TClZEy5"}], "removeItems": [{"inventoryId": "uiEHS6TH4GP2cf0D", "slotId": "CGuRFF7alqHwGqgb", "sourceItemId": "tlHLM7HhpUeBFm1l"}, {"inventoryId": "5MfuXUMHQymogPaj", "slotId": "QDsXWj5QC6SgSm2x", "sourceItemId": "wCMpfMtwWQfD6eBO"}, {"inventoryId": "VujjByG6wCpqvDdK", "slotId": "Swjd1eHitrKDL9oA", "sourceItemId": "K3vyQBvZyIEjaLQP"}], "targetUserId": "zKAQCxykKZku7AJx", "updateItems": [{"customAttributes": {"cPErW89TIakhiNR0": {}, "QkpOm4ZLA29E9Ezp": {}, "Se6u9i0hAxTklHas": {}}, "inventoryId": "spRl7yhB1FSw2XOZ", "serverCustomAttributes": {"s08hn3WCxbuf1TFz": {}, "hwEyQWMgckzUrx2G": {}, "u1I2E4Qz9yB3vKD2": {}}, "slotId": "LigkDkfwOpMpbHHb", "sourceItemId": "o6y8Qz4H2vIdwvNJ", "tags": ["jFMr0ia0GuafFDHS", "uC2ykFFNLt65XO89", "wvp8V5uUek0cLapP"], "type": "uA0g9ArvgKvh3oMT"}, {"customAttributes": {"gZCBcr5bjf1nTLPj": {}, "QqmQvdSngDiC2MA5": {}, "hIZ87ADagaJsNT9N": {}}, "inventoryId": "C1Inx8f8M5VpxlV9", "serverCustomAttributes": {"XMtjIyIjF8uG7zgu": {}, "K2fiV73dNvfWtLJx": {}, "vdCrUWcy4xmG18Ky": {}}, "slotId": "Xdjuorl4xOV7okrg", "sourceItemId": "o43Oc2uXB1waN4Hh", "tags": ["K1RVXYBTyyCoRmvW", "MiYGrZUdnqvDsmgL", "jfyBGxbyZJwCdJhz"], "type": "B2UMQDvjYJj4zAHY"}, {"customAttributes": {"2aTKEELQB7JtobpA": {}, "AhVZX2QOgAaD44Z5": {}, "ETklO0OWQ6ty0KPi": {}}, "inventoryId": "VSfN5gmhd5y6sDk5", "serverCustomAttributes": {"3HL9Iz5Bch23ualR": {}, "HDFVANx9LIm1DU6p": {}, "RPbDh5dyzmFerl6I": {}}, "slotId": "cW8ccgUJo13lLukZ", "sourceItemId": "bfqzjNFYWZJMYa00", "tags": ["SFucyydI6vRUAjdb", "oJTxA3acDcnIwOoT", "GAbfyxPyT7GDxOXC"], "type": "fvEI3zE0C9fBKtpP"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "wBhJ7JLUuhmBoBqV", "options": ["TyVaWd3QW3tg6Juh", "jS3PTALAeFqosRzi", "hXN6pfU181MGenxE"], "qty": 13, "slotId": "18g9CGP4QayDrkUj", "sourceItemId": "RRbPSrmaBtE9f6r6"}, {"dateRangeValidation": false, "inventoryId": "LuR4ipIq2kpKS8j1", "options": ["ZRKHihvM8SPB0Iyp", "TFqb0UiigPDtZE30", "paioN6K8cgxkgu2u"], "qty": 83, "slotId": "yl1t4jCV2vPBnDYd", "sourceItemId": "glLXBtFGUBtuBTQE"}, {"dateRangeValidation": false, "inventoryId": "FVuhTBwU9A2GpHSD", "options": ["kzErd1iCTZiXYPCy", "UCY74GToYvBBQeJ9", "4SGuIas5Q9UY95MM"], "qty": 64, "slotId": "Eeu4mSbGnqezOEoY", "sourceItemId": "C3gd41ZF4BKqF3RO"}], "createItems": [{"customAttributes": {"nBwBPXc8VzaTCqBN": {}, "QtLjMb7AIeSOsWO7": {}, "ax4eFDHMcwZBzIxI": {}}, "inventoryConfigurationCode": "EzcOM0bVubnm4a6z", "inventoryId": "qf1445x1uQVXIm5i", "qty": 25, "serverCustomAttributes": {"2l33GmOrHak0zUiR": {}, "eSEUAdDZ6GVqar0B": {}, "vQGvbezh1Rw4hf8L": {}}, "slotId": "MK0MY2kaqJF8wE3Q", "slotUsed": 5, "source": "OTHER", "sourceItemId": "lP3IyWnFK941Jk90", "tags": ["UVcB8awCh5RS9R8G", "pMegXfxsuvRmhrU5", "At00ckaOIncnujAB"], "toSpecificInventory": false, "type": "GJGAa5cAbP1fAbe1"}, {"customAttributes": {"nR46Ocx6zUi03v1s": {}, "qJe20tqrwpnvaObv": {}, "PYHdlkbIesFKWHpz": {}}, "inventoryConfigurationCode": "QX0tf0NyHidgmYpe", "inventoryId": "d7as3VHC3uGcJyYH", "qty": 9, "serverCustomAttributes": {"rEfYRP66xqDhz5po": {}, "IbnW5I0u1QpE5AjG": {}, "9JRYGqb7gfW6LvTu": {}}, "slotId": "AM48VGt1Okc9rsCg", "slotUsed": 13, "source": "ECOMMERCE", "sourceItemId": "dvZ9AqGfrdbqj98A", "tags": ["QRGPhD3WVhlFmj0n", "Wv7fgAuO3aRszQDL", "29m92xmPcaRR6t6t"], "toSpecificInventory": false, "type": "LDJjfJEnqmbj039o"}, {"customAttributes": {"fZbopCUYQrxPKuH8": {}, "YQJcujP7DQuNbElf": {}, "wjniqz34v9GH8u3R": {}}, "inventoryConfigurationCode": "bYk6gtgzu9hBLTXs", "inventoryId": "FN5L4lTOAWkxiEsg", "qty": 84, "serverCustomAttributes": {"KKgzrQD7UoiAnm7g": {}, "QnhbkZ9k1gLwxcU8": {}, "5y0vfiQ54aVWy2ot": {}}, "slotId": "mxvrLgUlLFYQnHAE", "slotUsed": 26, "source": "OTHER", "sourceItemId": "ApSoPxM07FdfOJ9Y", "tags": ["XhF6shtuHsFM6ziN", "njXkM1gQV2dlyeLN", "dvkf7op9wSWYcG6O"], "toSpecificInventory": false, "type": "Mt6WrQDI4S0u080I"}], "removeItems": [{"inventoryId": "IgBVV66VEnhYugOk", "slotId": "GXeslD9wtX5AgHZ4", "sourceItemId": "OuEwYSN1my2Ooxue"}, {"inventoryId": "wTMOl1r9x5cr1PBC", "slotId": "VvI7MrI0adzJwfgS", "sourceItemId": "mklSqS46Ab0I3HMg"}, {"inventoryId": "5ugga416Hsnw8uSt", "slotId": "VJwXGRljy4GMpbkr", "sourceItemId": "hEptDubm0cDVlwO8"}], "targetUserId": "6OxuPTopiWkNUFsv", "updateItems": [{"customAttributes": {"VhnkEi2VMy9SoBHo": {}, "MQd36okZpoP34USe": {}, "DZib4sDDlCKmgcVu": {}}, "inventoryId": "9Jk7L1ZLUExch7Yf", "serverCustomAttributes": {"VkMWp4JdhauuHPYb": {}, "gNmdTfJGH9AnQvXX": {}, "pezVF30PNE07aRlx": {}}, "slotId": "qpGoZf4RstaG3AHa", "sourceItemId": "fbCUdMl4UoVAT5Xx", "tags": ["EfTDMUYWp2N3slpH", "e1wYP3OodL7sx6TK", "zwKACdORCP1hF3se"], "type": "pt7Rkn26REB1pwu6"}, {"customAttributes": {"P6IjuTpNxpjO42go": {}, "4FeWYEXU0ZBbzA52": {}, "O7iuVGjyaOuVsUpJ": {}}, "inventoryId": "CdOtpsCWdF1ovAJP", "serverCustomAttributes": {"gUAJCpUUcr7GiwxS": {}, "yPYHQlqYSMuMUh6i": {}, "HKWC8oEWwni2GEeh": {}}, "slotId": "EoMNRhEhaOr3dApf", "sourceItemId": "U8HeZUKJrNHnMpwR", "tags": ["gwz3Xc42rkMWujjY", "RFkWSE0cNKyqOTds", "DBLpxiOR93O31HPr"], "type": "PDJoo3LIrIjRm0iN"}, {"customAttributes": {"jMWYSLfrdhCXbqAP": {}, "51WzFBv7YkKv4fI4": {}, "b3CqAcFkIvGxaZql": {}}, "inventoryId": "PmvJO4KN9Tzta1KM", "serverCustomAttributes": {"pX5Djt1PQAdf0Q0i": {}, "jMiIoD1WzaQ2EKVv": {}, "XW9fW0lWhVIsPVmm": {}}, "slotId": "cyzU9rViKYBNH8vu", "sourceItemId": "aGHszJsrCgaJ2cv4", "tags": ["eHXUGGl8eLXoZ3gD", "30cTIyuQ57Ds7Wrf", "Bk5oyKkXfDGpqcSA"], "type": "VppcJVdr9fnUkEE7"}]}], "requestId": "ziS5Qnaeta6wsUQo"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '71' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["jLWyJ5Hl6iFjyNUJ", "clH2fUytVntiGRGI", "mqXO50p1QDUNxfsr"], "serviceName": "IlP4mRhwIseGQoFy", "targetInventoryCode": "SkDrzyxUJuv2XLnc"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'kT81hgFr93uZLx99' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["gJ8qFcs3rZiDHc2X", "cRKb4M9whbYayUte", "K1CNKRBvWBXjpUs1"], "serviceName": "rTtgejX45jAlsGTZ", "targetInventoryCode": "YhH0onu5z5I5oNpU"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'kxd3BoTXvcraNS4Z' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'KvztNl89Bc4JsHp1' \
    --limit '14' \
    --offset '44' \
    --sortBy 'inventoryConfigurationCode:asc' \
    --userId '1u8za4Cq3NqNlXJf' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "1OPyFU41D79QUf3M", "userId": "0smidC0pKMmVnGwl"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'XdJSTXK24iUh2xO8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'yrbz4Nd0L1qTvpcd' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 0}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'k3dlMv6heukSp7CJ' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "59SXzb260vAWPJ2o"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'ylZH2fTPo3XSsEvg' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '81' \
    --sortBy 'updatedAt' \
    --sourceItemId '6pn8T91cC9gzUMQm' \
    --tags 'sAXOYHwCucBbFl3F' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'FTra9VJZC1eJY0yZ' \
    --namespace $AB_NAMESPACE \
    --slotId 'tpd0YtUG8W7S7Ab4' \
    --sourceItemId 'Lnsih4d5gpTDbDY4' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'MwlnjgUpBX4jtRm4' \
    --limit '38' \
    --offset '46' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Wslpxny88I0IsmM3", "description": "MBNJfQUzrn2gasss", "initialMaxSlots": 0, "maxInstancesPerUser": 53, "maxUpgradeSlots": 76, "name": "dBc66pJ8OjRVLGts"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId '4Qc128ZyZRd241kO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'bgSp06SLGnUyo1fR' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ilyyMhLEQAbY0w32", "description": "o30sE43T04H6v29i", "initialMaxSlots": 19, "maxInstancesPerUser": 67, "maxUpgradeSlots": 99, "name": "fuJivD8Sx9YxzykA"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'THXuVeHC7YUUqMhv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '27' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "wplaju9xRqDRaRKz"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'wggQ762UnEbB8th7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '8' \
    --owner 're0Yqy7oTKis7t2O' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "u96q9FjsnG53O5Ib", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'DBXgwtKbB0MeNQgl' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'BbRTJG5iCrVy2URW' \
    --namespace $AB_NAMESPACE \
    --userId 'RQL3KOvub5h7roL6' \
    --dateRangeValidation 'ycC8iSTujRKfmYtO' \
    --body '{"options": ["Npxml4477O2pAKd5", "OuXpEyXm4YDdnONG", "X9oLoxGqewJXlkT8"], "qty": 76, "slotId": "zOxEojIityRST4kY", "sourceItemId": "fNGTkeBtCwpT0Ezd"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'nBm2jbQZyQkjKJIG' \
    --namespace $AB_NAMESPACE \
    --userId 'zMF4jUOn33dtlxKA' \
    --body '[{"customAttributes": {"T5UH67BYOwLkWDJR": {}, "CBcMxPG7WgGOFSLK": {}, "TdVsRoQDk4E6SdpP": {}}, "serverCustomAttributes": {"FV16XPyQOW27nQxu": {}, "h4ALXqbzcx4fR3mP": {}, "Urcp2IQYVxqSMjns": {}}, "slotId": "yMRzeUuvh1LGsPBh", "sourceItemId": "flFsiYXdQbfZQ25P", "tags": ["Xq5Suj8doO0sAVXr", "ws0YQ7fnTQSI541i", "hAMbg8oTRocCRAUq"], "type": "ORN3KwXOFgtVncAj"}, {"customAttributes": {"aeJllHBwnV48ozAu": {}, "ZDlRdgJn1Bm3d9hc": {}, "bqbBC20Cq1ibd2Pg": {}}, "serverCustomAttributes": {"usrl5a3ek0W8pNhL": {}, "67M1OjqRrPfL54HR": {}, "kW625BcjwwMqmRKs": {}}, "slotId": "Nf9rpneaU5b7TSLn", "sourceItemId": "YApBO3Ow8QASQXjH", "tags": ["WD1jBebGn05AP0MH", "pkx5I5aUR90by0yH", "0Lk39F5Q9YE66BtJ"], "type": "Eg1TVwvQNwWN06Iu"}, {"customAttributes": {"QA3GG9Dgq6NYgiYt": {}, "5JfE8A38D2Clk2aQ": {}, "XpsKU8rKyFX17U2e": {}}, "serverCustomAttributes": {"NFwHtOU1JJJmwSdh": {}, "zPNRdH5rfeOL0BJQ": {}, "gC49pq8S9YtTCz6B": {}}, "slotId": "FPCtwMeOtVCNHtOg", "sourceItemId": "EuJCrfin6HhsHvys", "tags": ["F8m0l43xcDiMKzKR", "MEb3UrdsiB9m4XOj", "Fh1nyCTMGGkCFPX9"], "type": "s2KN04YwyyTma2aU"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'hR6zKIbAl173Qdhl' \
    --namespace $AB_NAMESPACE \
    --userId '8bN18BQ91KTeUtcH' \
    --body '{"customAttributes": {"zrwbJG0Hlc8O6NJp": {}, "bTILsdNCs1YPfAhK": {}, "9I0uZ6pmbj7sMW5R": {}}, "qty": 57, "serverCustomAttributes": {"iKTHxrPDIK2hpAvp": {}, "1LDSzIYoz763APD6": {}, "d9oCD3RvI6htC0Kx": {}}, "slotId": "fcqzLEWBRuXFYe9j", "slotUsed": 95, "source": "ECOMMERCE", "sourceItemId": "Y9iq1iJDa5PouaKO", "tags": ["rLZ1pSesUDqlt2fv", "fpZ5HOaN6t0tb7SY", "Zt1hxxLoP96mEGSB"], "type": "MdAS8v5ZukDALpye"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId '8ezt6nCKNnjblgHH' \
    --namespace $AB_NAMESPACE \
    --userId 'wzNaSpME4OGL15pG' \
    --body '[{"slotId": "GEE3fBNcaNfiZana", "sourceItemId": "RKTFE7g3ErWX0Pdm"}, {"slotId": "ZT7kK1oajTinmMDw", "sourceItemId": "OdNoriShqDUGWnNi"}, {"slotId": "rcOt3JqrYsSCPe6v", "sourceItemId": "OYgYH0JfRTQMhS0M"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'jBbyW2zskPiHkIkS' \
    --namespace $AB_NAMESPACE \
    --userId 'khuSe7Oumjjj8wtb' \
    --body '[{"customAttributes": {"gpheKk2Q6e6ZtCf5": {}, "zseTodYQr5fJ8B8d": {}, "qEqg6KLUYk2GiHr3": {}}, "qty": 87, "serverCustomAttributes": {"pDbjxaB4C4m3JAAM": {}, "vojLWtq3N0JsyuDX": {}, "kaVEjkLWL2d7v97e": {}}, "slotId": "pJCoXIMihUB2VXqD", "slotUsed": 76, "source": "OTHER", "sourceItemId": "GI3xCz1o5m0naC9U", "tags": ["z804TA1CczSCmgJJ", "xvXfCPmywLmcDnVG", "aimMmGflGY9P3Vs4"], "type": "Z94UHwyXSw2aR86T"}, {"customAttributes": {"6INFOViTtY4aK42Q": {}, "JvyjCmNsuN0jIGl3": {}, "a2DISd3jSEAiy2Pn": {}}, "qty": 77, "serverCustomAttributes": {"yixSZXMKMTjPFi81": {}, "e42vqG1xYjOc9azt": {}, "s7tPg9tM2DK8Px6A": {}}, "slotId": "HzShPoSWgBPtXKlZ", "slotUsed": 82, "source": "OTHER", "sourceItemId": "0YPRUTUkL61xjPds", "tags": ["Lr000qFTLEu6YFTo", "bvyQUwyGQ61TFhdv", "HnRUOs2lXLF2K8bR"], "type": "XKZgKk6ReyeG2dUf"}, {"customAttributes": {"U0EKzKbaokxtjlou": {}, "OcOpZgE04qJZ6TDr": {}, "YfELofZPxjZOumrc": {}}, "qty": 59, "serverCustomAttributes": {"RP32aYHHLmrS6f6L": {}, "Ajk2UAff2P8YvYyS": {}, "YYTz3s7Hy8k5AgyY": {}}, "slotId": "UmKR3xtaNplwaL0L", "slotUsed": 24, "source": "ECOMMERCE", "sourceItemId": "nZsKgOGcFusfEWbD", "tags": ["wEhs2UbdPpO6BC8p", "r6ebEi872iPsxovs", "r0hquwxcq9zmzpg4"], "type": "qQtwypHyK2AbigZq"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'JXewxg1oSTD7rtnf' \
    --namespace $AB_NAMESPACE \
    --userId 'mumKCh4Rgcx1Le4A' \
    --body '{"incMaxSlots": 65}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'KSE3DmBbcUMIkq3E' \
    --body '{"customAttributes": {"ZkSYHdWT8Rtt3qry": {}, "xLX1lGmk0FaWivBT": {}, "ulOgRIGSridOVWSC": {}}, "inventoryConfigurationCode": "2Ot2y9El74KZIKJk", "qty": 26, "serverCustomAttributes": {"0K9McZual6KK9vSG": {}, "fFIanKanhGTOu4RM": {}, "t3XZApbe9kBxW9Aq": {}}, "slotId": "tCvUln9pZQaw57sj", "slotUsed": 94, "source": "ECOMMERCE", "sourceItemId": "m3i2rQvlbMbF0X7q", "tags": ["Btd9HVJYjjLFNqc9", "A3Txt0LJhLd8oKNT", "BTGLxbZQl4O9k2w7"], "type": "9iCQ3tN4xWnnjXYr"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'EVY7VZCu3Fz9j2Eq' \
    --body '[{"customAttributes": {"VDKE92gkAZqQYviZ": {}, "AFp9I1LVdiqATXsC": {}, "qD94d92i93IQHl5h": {}}, "inventoryConfigurationCode": "ttQpQEKceZ8HYgwr", "qty": 44, "serverCustomAttributes": {"wIKKVSoM3DRDe8R6": {}, "vhyLWbAM9jyGepbm": {}, "hN8xbv3fxq4tvUWM": {}}, "slotId": "MQYXEbRFotyHRP1G", "slotUsed": 55, "source": "OTHER", "sourceItemId": "M3v9KyKvKyHaem3H", "tags": ["NHb0zPE3BAvZAuV9", "z0dvVYzCVSCUJX5K", "jJC3XN2hifthccgL"], "type": "cx3CJAHseMOOExtD"}, {"customAttributes": {"elgBKotuHVAU0NOH": {}, "l2pOnTbzRDOyyEnI": {}, "YBFRRs57Q8Nif74p": {}}, "inventoryConfigurationCode": "GGCZeQJZGlWhzmGH", "qty": 54, "serverCustomAttributes": {"E9svQ0G9s399RKGv": {}, "gyEhnNI5EI0mj6a0": {}, "B9sel9X1iVdGnXEt": {}}, "slotId": "T5U42QgiW6gApaGP", "slotUsed": 94, "source": "ECOMMERCE", "sourceItemId": "LzoN5Mj9Iog6u8GS", "tags": ["riPduUF93IHLEcG5", "mXzS72VPDCB8JZeL", "CzDsmioTiIf1EMWU"], "type": "OBdg811GlSHknr5l"}, {"customAttributes": {"fu5EfrYinmQCGipI": {}, "skQKU6ySgMIC6GMZ": {}, "CPmA1pk19884HVHs": {}}, "inventoryConfigurationCode": "iW0YeXzRqBc2ZBJM", "qty": 57, "serverCustomAttributes": {"zK6re7buYlyoqgwu": {}, "TWIAipMGljtzoR3n": {}, "2I85nSzSP3pqDGhe": {}}, "slotId": "dVp5vPor7hyCclzv", "slotUsed": 37, "source": "OTHER", "sourceItemId": "bQsN3eGqVdzDaLHc", "tags": ["wqDatgLee5dJJtWi", "62Xjdo5LVSRuVuJ4", "NWvQP2wGlR4qr4HX"], "type": "NRt1p3zlwuFyQ18F"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'KPjTFX7xq3CBvKY5' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'MtyC5Lp6UBH3LTMe' \
    --body '{"entitlementType": "wtxTmqnlyI5feuAd", "inventoryConfig": {"slotUsed": 59}, "itemId": "tqKByAXcw10JIVUC", "itemType": "XajLdDhdH5hjpG0k", "items": [{"bundledQty": 95, "entitlementType": "0H7NubZ3K09YkiL7", "inventoryConfig": {"slotUsed": 41}, "itemId": "emTxwdouHdVuYCAt", "itemType": "XkeWEIfRLoNVV6n4", "sku": "NWyzogCQQX9Lzocv", "stackable": false, "useCount": 79}, {"bundledQty": 4, "entitlementType": "N5WElvzVdxlx11YT", "inventoryConfig": {"slotUsed": 87}, "itemId": "NRKwaUjhuFBBoTpq", "itemType": "s9nbTTi7yHTT5z5Z", "sku": "dFmg8IQbPpvHb6yf", "stackable": false, "useCount": 36}, {"bundledQty": 28, "entitlementType": "ZAHxgQn9XrMUXQRM", "inventoryConfig": {"slotUsed": 100}, "itemId": "wwkUMlD9GQ8bj1VI", "itemType": "7XVLpBWPF6tC9JSh", "sku": "JngrGAF9CrKkFkVB", "stackable": false, "useCount": 10}], "quantity": 44, "sku": "rxhL9rLMJpmC5wAO", "stackable": true, "useCount": 45}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'aXYEduyAAKAwDcL1' \
    --limit '14' \
    --offset '12' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '14' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '9' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '1lXL6cDM1GQl99rM' \
    --limit '70' \
    --offset '23' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'jazh7MMbofiDMKZu' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["jmG4JKOmyjh0sPl6", "ToKV5liPWiWcMNzA", "FfLhNA6YF3LkXsOj"], "qty": 89, "slotId": "OS4y0HS2z51850pL", "sourceItemId": "N8O87H7bSlXGXelN"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'GJQwa464vWxIdEcV' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '49' \
    --sortBy 'updatedAt' \
    --sourceItemId 'Y4sjLF8ZmSEXjnoj' \
    --tags 'pUmC3PHuIh5OQD2O' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId '8RzAHMxjGdcrbTSX' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"RF6Lc0wLBDx26JAU": {}, "7lf3d5acdMO8mfzv": {}, "zusQTf53hpfCkhba": {}}, "slotId": "5nibn8FcuhoUagj4", "sourceItemId": "AgSofx7aTBhg3639", "tags": ["AgCUhpiZH06Epio5", "LjWz2LowbFMeZMSo", "Y3SLF25A98YlzDtJ"]}, {"customAttributes": {"xVUzQaykW0JQdEpz": {}, "GsWWuz36GCnOulM5": {}, "gZ4WbiuCIfkRW4BJ": {}}, "slotId": "0XRKOSGo9UTbk1g7", "sourceItemId": "WIjG27VSlm002JfM", "tags": ["HYWVBNGKDflw0tk3", "MMDKhoDeCi21QsVa", "Bu4KVMYjrsCGO9jn"]}, {"customAttributes": {"qq1QhZiN5ztycKlr": {}, "k1AJZdc5DRHhrJI3": {}, "3XVoMnuKs1oIp4sb": {}}, "slotId": "ZOZ0fTeT8c33Jjtl", "sourceItemId": "MTBU6NVDlXFEBCuj", "tags": ["vBFp0fOpZVQTsGjU", "wnNo4WL3wJRvjJSX", "Fl7liSCYZ14mgP9n"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'EaQXvaZ7pBDzLTlX' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "A313G8yYyUmnIEZ0", "sourceItemId": "d90rcYE5S2V4qZD6"}, {"slotId": "jmA4VKyd19GncyFK", "sourceItemId": "846EiUP5n10DPBno"}, {"slotId": "tRaRg1eMCaESQm45", "sourceItemId": "WThINIbPW3rOqhk1"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'h7TtEFCua2hv4kJS' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 66, "slotId": "DBKWg4YVX143TPaE", "sourceItemId": "W4YniYcW5BNst4RX"}, {"qty": 52, "slotId": "wuEiEKduRJMLjSTP", "sourceItemId": "mwcgPQyHUWV7E0I5"}, {"qty": 21, "slotId": "piIpoe6N3JFtqlDA", "sourceItemId": "YU0PGtFan0DxLy2H"}], "srcInventoryId": "hDsB04s5paKMRzfG"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'HaDfrJc57PJhLZLV' \
    --namespace $AB_NAMESPACE \
    --slotId '1JSc9DIlRXmJq5eG' \
    --sourceItemId 'AyzGLEd1vWnIGJMo' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE