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
    --body '{"message": "mDkPRbIFGQoh9Fq3", "operations": [{"consumeItems": [{"inventoryId": "bf5btexQy56uzY2Z", "qty": 82, "slotId": "KNw8TduL8K2GwS61", "sourceItemId": "QoDRfWMqRhHmRQmj"}, {"inventoryId": "0QMB7ich5OxW4Bq3", "qty": 78, "slotId": "PIIotbBt7bglNgxG", "sourceItemId": "FPhHZTOOOkAKe6QB"}, {"inventoryId": "sYtGwStNJXgjbiF7", "qty": 97, "slotId": "RivYnAaBnIzMcYNh", "sourceItemId": "HVwF0sdYZDwyYpQv"}], "createItems": [{"customAttributes": {"HWYkJX5RkitzptW3": {}, "1GlkG7YxCDZrmdDT": {}, "22voIDqViHvOe4ix": {}}, "inventoryConfigurationCode": "e35fbLK2ADSN8isQ", "inventoryId": "VuyPOpsksgHNskQw", "qty": 23, "serverCustomAttributes": {"6b9Txu32wYJgsjUB": {}, "L9iCjnR6OZjLUcEA": {}, "Feauy7ehseK0JHeG": {}}, "slotId": "T1zqo3y3X6lOqaVw", "slotUsed": 63, "source": "OTHER", "sourceItemId": "ezNo22fnVg5ZwDmW", "tags": ["JovLOrf41wbJDeKT", "1HzDD1m2L81qdeZr", "WrWR6bXHIHiZMCLs"], "toSpecificInventory": false, "type": "sz1mwIb28PXDSNvh"}, {"customAttributes": {"BDRLA9vjQVbcdh5S": {}, "Qd3AE4vH7ihlHL5S": {}, "3SvtiYaG6MIykszu": {}}, "inventoryConfigurationCode": "mufxXSu2VAoJo7Bx", "inventoryId": "3RUkYCSYUk2T9i4x", "qty": 34, "serverCustomAttributes": {"51ebZeYpVLpE56XD": {}, "0kWjQf46nHxlkhO5": {}, "P7tOJr04rjzosZmY": {}}, "slotId": "ltauxMb2weOiLJuf", "slotUsed": 99, "source": "ECOMMERCE", "sourceItemId": "hXGuY1Ufqxta7LUz", "tags": ["CaulgEgNPuqkB96w", "rMiJyfCMhwuxlLEP", "PCT0G6dsu2GAR3ZS"], "toSpecificInventory": false, "type": "ApbLu76CzV6ekQt0"}, {"customAttributes": {"uFK3ngGBs0numppK": {}, "lNku1TspLib5OpVA": {}, "use9PhIUV6QrDKb2": {}}, "inventoryConfigurationCode": "cmIu4vdsrXX7H8OT", "inventoryId": "blWF2dGslt68tfGx", "qty": 58, "serverCustomAttributes": {"6IfOrDASFl6Itpyg": {}, "N2ntQ9xN1kuR0Joi": {}, "2rFnGDgQlpgciGI3": {}}, "slotId": "2CC80kCFT7UmjvZR", "slotUsed": 79, "source": "OTHER", "sourceItemId": "ovYtK3Zg7QH2qXAf", "tags": ["LqTkL6pdbQt6xZ4j", "wvmPv4pbfMZvwupu", "m3wZ5V3sRCqczxJV"], "toSpecificInventory": false, "type": "oVIPC9zRaK11GmcC"}], "removeItems": [{"inventoryId": "hdBV2R9rmwnnr7hI", "slotId": "I4XJryXTA0QgD8nA", "sourceItemId": "sMz4dg6eYr7br6zC"}, {"inventoryId": "bhdHUiD942ob3tvU", "slotId": "ejH1dygMGedV78Zs", "sourceItemId": "Jn3VhXIn6KRtjTKs"}, {"inventoryId": "RjA0XIcPS1qqfb95", "slotId": "VooBkJZdckthVHm9", "sourceItemId": "yRRzq2117BilPS1b"}], "targetUserId": "X18pxE3vYrymA2Up", "updateItems": [{"customAttributes": {"G4aBTkeMRcoXn59R": {}, "pLQSfG4SBALy2Lzl": {}, "UZqKH9WWXn1X3yrH": {}}, "inventoryId": "gMLvUKi5fmgW92l4", "serverCustomAttributes": {"FC01tesbEL0KpT9i": {}, "qg1qbcTb4IQxWU0n": {}, "ctQvAST2z6fKH3RU": {}}, "slotId": "xTGUany9JIK16lDi", "sourceItemId": "smVmjfTkdFPui3fB", "tags": ["xjGB95HA9qyn3uYq", "wW2AHCz4nosgCbJe", "nu7d9LEZV9LHCEHk"], "type": "THXhfQ9L6foGGWzt"}, {"customAttributes": {"v9RhoNLBdmYlcmPn": {}, "7jJilRnIxcj6z3dJ": {}, "1tmZJ24L11CiT9iK": {}}, "inventoryId": "XYTCaEAvcNoc694c", "serverCustomAttributes": {"TZXdZIcjplprgK8z": {}, "A7YZywtNseF9rKsl": {}, "fEx0e7jCIXFe2qtb": {}}, "slotId": "aUvye5ZzLhB9ROEU", "sourceItemId": "zIXKeFhSUyQLyuBW", "tags": ["BDggAxbhkUfy3zic", "KPylmFDklHWqx5eE", "f17Xprmcq5HVXycr"], "type": "AJ6cfepFM6PuuCrl"}, {"customAttributes": {"jXpSGiSVRjKpZLmi": {}, "98SjQJB0Pm2JsdNL": {}, "XacKxB5qyqZCDAfi": {}}, "inventoryId": "SqQYoJfVd87rkqqG", "serverCustomAttributes": {"E8yphqiUHPe9UbKs": {}, "ZHIAaO2oZ8YcWdoX": {}, "ac1qoq6kpPZMLJ8T": {}}, "slotId": "ZNUHfJoOwGo0XAjx", "sourceItemId": "HTBtWz5TJCmpwA52", "tags": ["o2Qz0E2oxKtqNS8c", "8Evyqj8zZE20YOZl", "KpSUhiNCCRdCj5Pt"], "type": "mMy1mZKYsIVtemBx"}]}, {"consumeItems": [{"inventoryId": "bTU5Yb8O5x7saQgZ", "qty": 95, "slotId": "YJZOjO3A1HhYe9Gi", "sourceItemId": "ywscTGie6XFW3LB8"}, {"inventoryId": "sfAAWB3ZSrZawD0C", "qty": 19, "slotId": "dNcKaqph74PbckWe", "sourceItemId": "LQb8VpbIoV5LrnOa"}, {"inventoryId": "EuPZMhE1HOfFZDiL", "qty": 37, "slotId": "WVu6NvIu0lTPvC95", "sourceItemId": "QZrrzEzamd6cjeQU"}], "createItems": [{"customAttributes": {"eaPuQbHQGGkLJHJ9": {}, "dsjuVZwqiVzJ34Fw": {}, "6fB5Ex3HuH3WDltt": {}}, "inventoryConfigurationCode": "nbCRHqDXONFmU4it", "inventoryId": "x1Jhq5Z9WvUlhrKn", "qty": 47, "serverCustomAttributes": {"iErwU9qvKOZQYbuT": {}, "qejTZrcjuy5NHhCH": {}, "NIdQ5KiVIYoEVAJO": {}}, "slotId": "VFfoGrTKMwjTyg4g", "slotUsed": 16, "source": "ECOMMERCE", "sourceItemId": "rUu5hjmk1rGNTmAl", "tags": ["NPEQAHJcqRRNIy4P", "Gt4hbxJsPE93T6wY", "yJgTYaEK2WdXGguz"], "toSpecificInventory": true, "type": "2T8C0UsQHok9mtig"}, {"customAttributes": {"HU17hBi0oDYKeBPs": {}, "uBxgtiZKDepOOlR8": {}, "cpru0jGJw3uTtY0N": {}}, "inventoryConfigurationCode": "BwSXRAw0XloFDTl9", "inventoryId": "NZwYhPeIXCx7WeQN", "qty": 86, "serverCustomAttributes": {"jejNJsol9QpvGyOw": {}, "XdbG4SL2oPaqnvrV": {}, "9lEWDvASeZNoz3iC": {}}, "slotId": "eTsowHwjnoSIQkmM", "slotUsed": 23, "source": "ECOMMERCE", "sourceItemId": "E81wJJldptaLgh40", "tags": ["PVowOl5J8N2R6SgU", "mWyW1KPYYrl6MvD8", "tMyX6OLmLbmtTeid"], "toSpecificInventory": false, "type": "Jduu1ksCd1OJGSLW"}, {"customAttributes": {"2PT4GYSHizN84Yo9": {}, "4mGjKL7STCUjupzL": {}, "RE6tkHoYBGqP9s5x": {}}, "inventoryConfigurationCode": "wKMwyndsrgmBPJ1I", "inventoryId": "UJp1ORCRtH7VLNuf", "qty": 68, "serverCustomAttributes": {"LKTG5WJkLDXQAkHr": {}, "kjTkFRW6onyKvAXD": {}, "QrbOdQLtMXHlvhZR": {}}, "slotId": "PmLY2DfHzfjO12nf", "slotUsed": 96, "source": "OTHER", "sourceItemId": "NnW8ki0vyP3yUAPt", "tags": ["PAFQWJArqDbVcPNG", "piLsutQ9b1gq72Er", "yv1ad6VEUqxP5LLi"], "toSpecificInventory": false, "type": "HMsJDtU29ScZUJjL"}], "removeItems": [{"inventoryId": "8IMrw9nvhtpRcWxq", "slotId": "LsT3fAZDL77RXZOM", "sourceItemId": "rG4Nfm0n2azCqgCD"}, {"inventoryId": "Z6Vk8C9psOZYlBJ3", "slotId": "XQWMgYevWthK88gt", "sourceItemId": "r6ZC4AJ3aWsYetob"}, {"inventoryId": "7rpGXpKJFTf54e7C", "slotId": "SrPesU9aHnaXcyn9", "sourceItemId": "STRVKKu4roJzxPk2"}], "targetUserId": "aXuCKCrkzJk7d196", "updateItems": [{"customAttributes": {"6VD8KXmUV5CE12rH": {}, "byDzheX6oPG9NEGj": {}, "KS46GtnOcXJx08kW": {}}, "inventoryId": "lOBcAeCH08VR5lex", "serverCustomAttributes": {"xHun5Kmm6xsgHT12": {}, "9eKG3WiKfHXbjcBk": {}, "fQ39vq94a2gPyF7e": {}}, "slotId": "Pnf7x5uofqbAwykQ", "sourceItemId": "snianfwsBfn6l8w2", "tags": ["Hm3esm7kgucxYe0e", "wx3st58Z5x92A4Br", "gQjiiDgsHQtCB2Ui"], "type": "lQ79AuwrL818Fw5X"}, {"customAttributes": {"sNgHfmo8HyMFqrFk": {}, "6AyeoymKpFCye3e6": {}, "VQ6aQhztD8wFfGdf": {}}, "inventoryId": "nzmq2dM0bXDPzEFa", "serverCustomAttributes": {"fWyjOE3S3oVzQMAK": {}, "uPp3pgI2fN6cTDIz": {}, "QKlCs3meRQjn1C7u": {}}, "slotId": "8w3k78zgoXJ6LtNh", "sourceItemId": "DLCXfwGfZjOUbvbd", "tags": ["jmam0WxeqQwlx9u8", "Y3xwKzIyYUUNbJCD", "xsL03HoArB0XC1xB"], "type": "GVzpzznkyQ7GgnHx"}, {"customAttributes": {"YEacwsMatiuKAma2": {}, "KLaRoLMos33tyH9X": {}, "OKliFPNDpnntSgE7": {}}, "inventoryId": "yGAT2eh8DMqryIxi", "serverCustomAttributes": {"pR3rakeRLkiIzKG5": {}, "cHxHcOjWGrJUop4t": {}, "HOH6XKPTT7XRitN7": {}}, "slotId": "qcH9E7ZbdHuwKz0K", "sourceItemId": "Bq2Z6QGwl43wyf03", "tags": ["dvvqPf0GrHgiv8yW", "cvIX0hDPMUoYBSIb", "WfXSpu79lSMjZT8E"], "type": "5vcIgnCzbBpp1fCZ"}]}, {"consumeItems": [{"inventoryId": "f7hUEeIVdkLLOA5E", "qty": 77, "slotId": "tKDJczkz3cJEgFrR", "sourceItemId": "fL90wUYsJevhjUt5"}, {"inventoryId": "g8zJq27VpqjyABZI", "qty": 72, "slotId": "BGsf53Bp4FECvX9i", "sourceItemId": "LOgx3Xb0M0KfmsgD"}, {"inventoryId": "OR2GgAwqkFWg0fDW", "qty": 64, "slotId": "qhobO891E9gOKU2r", "sourceItemId": "zXKQumM0dwnBLPeY"}], "createItems": [{"customAttributes": {"JNyGRtUJkhtyfq88": {}, "HVdINyUTEUlzAE8X": {}, "TzNMRqv5V58EiRlB": {}}, "inventoryConfigurationCode": "GjMiARMlljrDe34D", "inventoryId": "9gYlXFy0YsTgXVKZ", "qty": 55, "serverCustomAttributes": {"C3VMqA55OfEuVqxh": {}, "IqRAFMAL7HRY8BXr": {}, "GOqgo1L1wjift1D8": {}}, "slotId": "xwTrbtmbJu9AnNkh", "slotUsed": 74, "source": "ECOMMERCE", "sourceItemId": "l5STn19o258fk4gG", "tags": ["ZNHSpX2VOGyrNle4", "lCgdv9vl5f9PQ0gH", "V59IYczb75fxeZ8L"], "toSpecificInventory": false, "type": "qITvbCJoXV8SHp2q"}, {"customAttributes": {"1JJeQyUfmG8fM1QE": {}, "pzL0dTspB8qecKaV": {}, "zWOD8fA29DTnamNa": {}}, "inventoryConfigurationCode": "k7FhhUazMEt3RyfL", "inventoryId": "zHyqYNO5CPDBzcCR", "qty": 1, "serverCustomAttributes": {"VmbVJ6DUUzo6aVDx": {}, "hNy79UnDMPHPmd88": {}, "Tqx7GbhPSWmzpiOC": {}}, "slotId": "10L61vVPTMM7FpLh", "slotUsed": 85, "source": "ECOMMERCE", "sourceItemId": "wUOqpG1RzRhJxBcw", "tags": ["XvnrwNOOMej2nI29", "QyLLYqXd5cbWu7ay", "gRR7vmCQWyf1B4pW"], "toSpecificInventory": true, "type": "ucqoNzNBWLpogBwp"}, {"customAttributes": {"3ZCZS75aHMuK9QLv": {}, "6beJIdTKb9gKCZRO": {}, "xayJY73kdgxTJdIl": {}}, "inventoryConfigurationCode": "IJGeBSJYRiFqTlGR", "inventoryId": "0hJbY9DnOpCVYzKF", "qty": 18, "serverCustomAttributes": {"V1yjzo7iqzHnnoHO": {}, "msuLcAAk3CFtvqjT": {}, "KpL6GpWXZT1bHd99": {}}, "slotId": "Xy1pe5NxZX6IJTE5", "slotUsed": 97, "source": "OTHER", "sourceItemId": "b2nyse5zEWBZNmli", "tags": ["V6mxjbzwc5pBrQZo", "isqnWlZZ4MbQkCUj", "Da4rF7K0t2rDXweO"], "toSpecificInventory": false, "type": "K0HyMVVEJy3pPFUe"}], "removeItems": [{"inventoryId": "WntR4mJgn2QIkRFw", "slotId": "GK36yLrfaI5i6kY0", "sourceItemId": "Vinidci7ZT1YowZt"}, {"inventoryId": "qG1ifuZXVOXWNZtr", "slotId": "cMMM9xv8sJYGPW2v", "sourceItemId": "VFJUWjVLweYyJ6di"}, {"inventoryId": "VwiI4DBj7az9z3qh", "slotId": "nk4wQY4A55NCh9Tg", "sourceItemId": "SoN9LRXcY2tbZoyg"}], "targetUserId": "NsJzQJLyIIoRQsex", "updateItems": [{"customAttributes": {"oqPcdaJ1nh5yhSJz": {}, "bavFSS9yBNtbZndG": {}, "JdXks50Exe8xfCGz": {}}, "inventoryId": "0vTTEkouAAs0MJCy", "serverCustomAttributes": {"0kijAWuJkCDhBH2A": {}, "tV3zqKRS79TCZGwU": {}, "hxqKNgwoagDNa82d": {}}, "slotId": "OBK4M3kOO1DFqhT1", "sourceItemId": "V3fF6Ce6F5G4FakO", "tags": ["39VSV5g6iSh88TaO", "Yx3cq4hJkzwOeF0e", "sf8FxhEcBntrgGIo"], "type": "KtDkH3kb0Pbw8aAv"}, {"customAttributes": {"7r1cwMYXmgXSeyCL": {}, "NvdAGsFzrXhk97UE": {}, "kOxfP8S0Otr0Zeq0": {}}, "inventoryId": "aKKgpCuUg1vOJ7OS", "serverCustomAttributes": {"EgEEKucdF66CfRXQ": {}, "RC3sRKHkHDE5Bebn": {}, "kblVzBKUwV1P7Z0C": {}}, "slotId": "6Wua5HHw7H0OS9Zg", "sourceItemId": "Y4show7r7rLrwW3X", "tags": ["8eX3w2scYP3IDsnh", "AH6SXGvQCs4ypJuE", "dUa2CH4bSF6Gs2e6"], "type": "ejb4jGs64gBzhZp0"}, {"customAttributes": {"LHv55KEqX2wkxfYq": {}, "xqG9PNRm4LmeTO7w": {}, "kkk1NcZgnZdvJcJB": {}}, "inventoryId": "UlN2QOoYfFeT8nXa", "serverCustomAttributes": {"EDUgdq121mV5Nl33": {}, "DgzJlBTs5Nd2l4RA": {}, "JD1DtMHVGgdEA0PJ": {}}, "slotId": "0kIW6dfL3vQideJD", "sourceItemId": "SJDwmYj2wcXOa5mp", "tags": ["xrOg8M443MMGpZIw", "OxGV2IvtDJIa2iNa", "XOvZl5ErL6RMsnUB"], "type": "ac7ssokCw0WMJASH"}]}], "requestId": "dcobawOM6m5wAtq2"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '68' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["KeYokIVQiTCbAdQG", "Hs8dIk4z9BggsDPJ", "74tcshJLk6IxhCtH"], "serviceName": "vLaLolV38xDMGnkv", "targetInventoryCode": "k5w5s655MnNcRft4"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'd7deKFTTBxDhsl3D' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["EdiEHnHisWcGZXea", "3K6WhW7cxavOUzcY", "rBJmDysy8cAw65nx"], "serviceName": "65o5T80RLevXBrFP", "targetInventoryCode": "diIT5LIK1uzkCTdP"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'iq1lcoAnj3dU25p8' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'zKc8MWRxcsBH0WRg' \
    --limit '6' \
    --offset '71' \
    --sortBy 'updatedAt:asc' \
    --userId 'tA4gZsnTrVHbPeug' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "d4dRMNEJDfyEdbrE", "userId": "JFBNF9XCf8ioFqrj"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'WNn1y8fh86Wqiik8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'jPWIqptpZqhUbWJB' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 50}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'XMMP6XHFD8wHgWdD' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "5qej7zJeGNFqYDNh"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'Js9F022uw0bwDIMO' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '67' \
    --sortBy 'updatedAt' \
    --sourceItemId 'wVdJl6dfAwqAbvaL' \
    --tags 'mBbNaIxHkwY6v5pb' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId '0AiZ2AwszvAuiBUp' \
    --namespace $AB_NAMESPACE \
    --slotId 'FR72aST22Qr5RaYL' \
    --sourceItemId 'DsMs02E7tdzF9Pcc' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'Kd1ZzuNlBz7Pu2RB' \
    --limit '35' \
    --offset '40' \
    --sortBy 'code' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "uXBfjDLqR11Jjn0f", "description": "Way2z1HxWXYpaNEC", "initialMaxSlots": 61, "maxInstancesPerUser": 23, "maxUpgradeSlots": 35, "name": "Rzmm2o9A4wEB1fXi"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'Jxcz2CPnhcrcrL86' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'uAPXTmJFh5qctMcG' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Wc2PL5w4MWWufuhO", "description": "Ye6k6HtYu4CWW9JY", "initialMaxSlots": 29, "maxInstancesPerUser": 15, "maxUpgradeSlots": 86, "name": "vW5qKL3VhzD3SQZF"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'dGoc2pwrDWBlvTPy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '59' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "osbqsNvjbDnkeAb5"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'J3zLbRqurzRvvJXk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '81' \
    --owner 'XCuPmL7AKmi2LOeH' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "drcsL00VU72f6jVl", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'LG12Hux7r57oGMqh' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'onYP2FcNuHFGUGiK' \
    --namespace $AB_NAMESPACE \
    --userId 'H8xH4MJVNDcPldGh' \
    --body '{"qty": 60, "slotId": "2EyUggmiW9WEHRz2", "sourceItemId": "G5bUT56YPP6O96St"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'szRVRNLzE9MpqZU0' \
    --namespace $AB_NAMESPACE \
    --userId 'F9gLgiRh058b8Vrp' \
    --body '[{"customAttributes": {"FbbhljtzubwnTgUS": {}, "sTCt5hbZSgTLGMgC": {}, "X3mK1roqMiV7KT0v": {}}, "serverCustomAttributes": {"fdgGcC6BkkZ5zs7M": {}, "FXhnFFUtP5f8rMQb": {}, "kuQv8Ds8Do1uCxNV": {}}, "slotId": "Bd4KjnDuqIrnmYJJ", "sourceItemId": "3BaiDTWCuV80ayA4", "tags": ["tK4rGB5zMHjLi9nJ", "8l8nXuvnlSgoWh6H", "ImlqO8XpwNVKrzuQ"], "type": "xwtpTQT2HCGsKlRY"}, {"customAttributes": {"1b4azkFMRY0GX2Gr": {}, "BQQ3DxfBvnMvU9UJ": {}, "s6mK2JtJJQcgIA3c": {}}, "serverCustomAttributes": {"PZfrfQ2CGTWdjWjE": {}, "KeO3TINZRy3irehr": {}, "Bt3tqwv8xeaEMinT": {}}, "slotId": "yxVc1jhVaKlMlCOs", "sourceItemId": "daCffYu3XzaPqnuD", "tags": ["OzPXi4FR6xtK0GGd", "zIDkZNxBYPpcIsN8", "L7R6oIQbLLQlQ5dp"], "type": "kPDkSnnQUSyEWmRn"}, {"customAttributes": {"NTFrXAIWpWOOwVxJ": {}, "cHotaqOu6NtdKsfH": {}, "VR1LzzNhPOVZJkkm": {}}, "serverCustomAttributes": {"8SRlUQxWlKwtsObA": {}, "ZE0jYTKkTN6uomOP": {}, "VzplMuxm0STmg3Ys": {}}, "slotId": "tHbdI2xM5P0yNe1b", "sourceItemId": "8wZ42kNSvleBTUVV", "tags": ["WlN51DFwEiLso10o", "QIujbiHr2jANAOgW", "rJMmuK9xBF4WUNmh"], "type": "UzDLotzD2vKW32KR"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'nYjrLrrBYS74ldic' \
    --namespace $AB_NAMESPACE \
    --userId 'CiXcuIfehAmQH6lY' \
    --body '{"customAttributes": {"LmqP4tdprWOv0JYy": {}, "UchlSyQYjl5sTpbM": {}, "yxDfNo1fUqGA1ffm": {}}, "qty": 47, "serverCustomAttributes": {"8Cbeg5pzq6jJvpfd": {}, "XRYMZGFIYTNDBodt": {}, "F0WhvIuCPtTyp7Fj": {}}, "slotId": "t6fkKbTr00glHFF7", "slotUsed": 56, "source": "OTHER", "sourceItemId": "9Mn81pJma1qTPC5i", "tags": ["aowKJuKDp4vClIkG", "FabVAv8XrGjvWCr2", "YUq2dDfKJ3QS20mo"], "type": "59DDPLtVAxD5I2dY"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'zA49Mj2C9mAhzixX' \
    --namespace $AB_NAMESPACE \
    --userId '9iwZZKcjH35pyizE' \
    --body '[{"slotId": "3PyNXbZFD9oxf1gX", "sourceItemId": "HYRNlSRX95GZm0XL"}, {"slotId": "7OArDnEW2YlI7UN0", "sourceItemId": "lkrYMZAt8a2G7b8C"}, {"slotId": "OBQbkpBKiwSjSP5j", "sourceItemId": "Ih8GuTNmw5067fEh"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'Jrjm28AOv5PVMMZ4' \
    --namespace $AB_NAMESPACE \
    --userId 'y8BVXN3X8MI852xM' \
    --body '[{"customAttributes": {"RVm7Sf82GYhWe8VC": {}, "0thW4Nw6XJt1AguS": {}, "qmD1x4pUhMC2fKug": {}}, "qty": 30, "serverCustomAttributes": {"4oAN700xM7COIAXk": {}, "rNm85zziPUXuvfEs": {}, "0WbZ3uxiY5l3yuyS": {}}, "slotId": "k4uAWESn26Zu13Ht", "slotUsed": 60, "source": "ECOMMERCE", "sourceItemId": "TDwtL7W2n9CMK6A1", "tags": ["822CXugSpVAdGJxb", "qaVeXO8fMpkqJGm2", "HkYJ5FMRxMAcUeWN"], "type": "zRwFhr4E1LUvJfVw"}, {"customAttributes": {"DBrNxAifJlBQM2MF": {}, "XWeq59p2z0wt6R94": {}, "dnm8jfHYyqIE7XaA": {}}, "qty": 54, "serverCustomAttributes": {"YOklNkDxPCzK50lR": {}, "VQeg96WAtP0Q8giU": {}, "FQwHUDYF4VoRiJA7": {}}, "slotId": "8Tx1eIsRfgLVX3yO", "slotUsed": 64, "source": "ECOMMERCE", "sourceItemId": "qwvVO4PTr7NVORn3", "tags": ["dJDeZvqkTqP9Enyj", "S1KC2wa6Lj3IpHQz", "mkMOhjsZlEtrOdKx"], "type": "C2zcC2ZhhNA7Tx1F"}, {"customAttributes": {"Sh4Kj4ChEUsoEuKT": {}, "vZJjPgyGgh3vGqt8": {}, "OjRJf7kZaZTQlkq9": {}}, "qty": 4, "serverCustomAttributes": {"en9V2GoeqN9Ic60E": {}, "mkPTKPXdfSE7DcH3": {}, "AVK123RR5AB8i90O": {}}, "slotId": "5rYqDFcOJxEeUDmP", "slotUsed": 84, "source": "OTHER", "sourceItemId": "QIuGDWvLbUov1ocV", "tags": ["g5cY49TBREWS83Nv", "2WwifADsRTPrNjNL", "rwG6eOY6bVxJayg7"], "type": "FsjeioTbf9MfaYm3"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'nIjNmXGaQwlSjfKO' \
    --namespace $AB_NAMESPACE \
    --userId 'nycqGjWmVulIHgYZ' \
    --body '{"incMaxSlots": 80}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'G2YL6JdOtVbBtR2T' \
    --body '{"customAttributes": {"9xE2Xa5xZaw1aNiR": {}, "ZKRBKhTfdJU8cs1S": {}, "CtzOKhFRqb9GRwYO": {}}, "inventoryConfigurationCode": "CM3QfAFhuAi1lNId", "qty": 50, "serverCustomAttributes": {"ogkBjZ4EagswcUuI": {}, "DQlXatGQ0mY5zL9j": {}, "GXr1u9gUQTTPZs8K": {}}, "slotId": "naHUTfjYd23hDFKH", "slotUsed": 23, "source": "ECOMMERCE", "sourceItemId": "zHkZwxJ96YoGiwmY", "tags": ["CJaFqQLew8YJglPX", "5OxTR7gRLpuNcDcq", "dxOMjip5IZU2XPLm"], "type": "ttsQeqZz9UiFMuE7"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'pucMLAub4OiSWy3W' \
    --body '[{"customAttributes": {"qyCJ4kdt0EPm1AtP": {}, "GN5TxXfy64ZkmVuz": {}, "l7BAVdOdBc6sbMo3": {}}, "inventoryConfigurationCode": "yUJZWXtM0ykBfRVF", "qty": 94, "serverCustomAttributes": {"lVLoxvCz5rtmjsZK": {}, "rQLUUO76l6tmunMn": {}, "Sm8k47x97G5JchNx": {}}, "slotId": "o4FGoe1qIQhw9CCV", "slotUsed": 71, "source": "OTHER", "sourceItemId": "6ZwtDoUsYxcPPWN1", "tags": ["DPOc0BdRt6uEsI4H", "mQfhhNo3MFXsP3kR", "hTckJAyK68JaWzsW"], "type": "GCH2SwHrvqZjJFaQ"}, {"customAttributes": {"AKhntv7dd6NNqH59": {}, "Ug5xxxsyIJumv2vZ": {}, "BKLhmQEi9LTiI3tr": {}}, "inventoryConfigurationCode": "6PERexYctB38iuvO", "qty": 21, "serverCustomAttributes": {"wrOghtWAPoWXlDUe": {}, "0Xlm4IBIItTCjCBj": {}, "nEfm5lckms9vHkXP": {}}, "slotId": "AY3dofTjjjs1JXKE", "slotUsed": 43, "source": "ECOMMERCE", "sourceItemId": "YCj5xpTskYm2A9YI", "tags": ["6pgb7p8YOUr99mP2", "E33OTtIawDN0TgOJ", "W8IRRA0DAFsr2lDI"], "type": "uaXdQG5vHAeTGBCM"}, {"customAttributes": {"kqK8QN6NaqgmXFLK": {}, "YxsKa1BeHcvTAWsv": {}, "mXlHfUgsrm2LyeUG": {}}, "inventoryConfigurationCode": "MLYo0oxO6wLSMPoy", "qty": 91, "serverCustomAttributes": {"1JhWjg7GkT8mKaNJ": {}, "h4dlp69ne3MiZjo9": {}, "u0aL2eQ1oodk1Cim": {}}, "slotId": "SDpSjYCsIR6aaATK", "slotUsed": 94, "source": "ECOMMERCE", "sourceItemId": "QY3HetqYHwMnolPl", "tags": ["NKVNLMHt22z6O2GW", "XvaIFiViHqWSOSMl", "KsrvKOcQ5JT266aQ"], "type": "t6CWo61Gqq5GNYam"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'BsyYdMfQcPcwAuG1' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'xQurR9931I5PKMfH' \
    --body '{"entitlementType": "IYn2zKmxOtgBgXIj", "inventoryConfig": {"slotUsed": 28}, "itemId": "7SWZsQnAT6ufVtun", "itemType": "g9UXsE9RbUHmzf0e", "items": [{"bundledQty": 41, "entitlementType": "foEjrJpB5KUgdFch", "inventoryConfig": {"slotUsed": 32}, "itemId": "U3cX1QVuu4I1CpnY", "itemType": "zB3c3pGf8iT6Rxa6", "sku": "fCEu1re8hJsPCiPu", "stackable": false, "useCount": 68}, {"bundledQty": 70, "entitlementType": "G3hErI2pNCIgDchw", "inventoryConfig": {"slotUsed": 12}, "itemId": "kDtEhx1FYAGTptrF", "itemType": "q5qtsCDC4fLyZ7Wk", "sku": "mM0wwRMqNLeu8YNt", "stackable": false, "useCount": 40}, {"bundledQty": 14, "entitlementType": "DwqvB22CueqbVCcS", "inventoryConfig": {"slotUsed": 46}, "itemId": "a55Whhc264MzG0Qy", "itemType": "j0lrvAKA9tbVZ1hb", "sku": "Ad8Kxz29giGmqE9y", "stackable": false, "useCount": 26}], "quantity": 23, "sku": "AffF5u9d5FvkHKcG", "stackable": true, "useCount": 75}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'UoDgevIto3wWOjBi' \
    --limit '71' \
    --offset '24' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '39' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '67' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'lwAM0cWfNi1HlnEX' \
    --limit '46' \
    --offset '42' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'JbbDQ1YEjJj1NiE0' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 96, "slotId": "qlLyLe4qJDRVUVW0", "sourceItemId": "Xp7EFWtFeMQpxGjI"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'y6yED0zC3kNbgwic' \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '83' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'ueJmkv0lawB9wO5v' \
    --tags 'HsrEoSToWjCiimmz' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'HhrgHnTI1g9ITSGR' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"NeYfqr0Gxkxtfij9": {}, "yfPhS5lvxVxzZl6m": {}, "yF3UJsoeP5wMJeNk": {}}, "slotId": "gfU3QOfbocX4RmNa", "sourceItemId": "677JQsPNANQUTLMX", "tags": ["SkPSS9hrTBiXWD3Y", "qxypjMbTYZaPzD1s", "0lnq6N4cHQJpkPow"]}, {"customAttributes": {"BRv6VGqSM64Ru5cH": {}, "mB5IBO90QCWYFhFf": {}, "SLC96nxUBUV6KuMM": {}}, "slotId": "oJ8moVAHQGZHzZb4", "sourceItemId": "y4hETNog8o9C0HYq", "tags": ["S5Me8Vu63FtBw03D", "1BzlS1AqvVeZ8J3r", "K0K2HUf8oKPn9J9F"]}, {"customAttributes": {"uzUYqxqyvhO74EGe": {}, "EevaMq5NVAKLaiM5": {}, "4YQjpEdCbjVHp4s7": {}}, "slotId": "qri37AR3MAdufi4H", "sourceItemId": "Q7cuYWVThISdVJJa", "tags": ["ORTCtTuiou7ph5VA", "oE0pedogbYEePVDa", "uhFLszrHZTk5fYLv"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'RfTf2mJ4cs5qH2Rk' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "HHxauFlw1bxC7nOM", "sourceItemId": "ToxhdBteAf4T2pSw"}, {"slotId": "rO2WHQf6U3pND6iV", "sourceItemId": "WQ0GXYGc5M3mCmKJ"}, {"slotId": "MfVrOhP3GHCEgqvA", "sourceItemId": "H83DaZVQHYoIwwKl"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'c4t49OMZJAROrKv3' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 26, "slotId": "bfoPJNscP6ZOqmB6", "sourceItemId": "TZiEgje0vuCATzBw"}, {"qty": 79, "slotId": "O4JkCoaV15th4CCF", "sourceItemId": "BLZ2FCxO2YLDUsjR"}, {"qty": 0, "slotId": "lnPpCWCC5BrFG8EG", "sourceItemId": "PrrI9CsMkaJHSkQA"}], "srcInventoryId": "UaYL11ClYsWvyGw7"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'TsD6DarKUnZqjJHF' \
    --namespace $AB_NAMESPACE \
    --slotId 'TpywSpw2H2btKwaa' \
    --sourceItemId 'oUwG9YJRGZLYuYP1' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE