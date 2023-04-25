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
echo "1..42"

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

#- 2 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'QFm7FYNXPqOz0yAV' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "ZMhj78ZXYmnZYVRw", "updatedAt": "m5D779zi3wKcaP7y", "value": {"owtc7ygdjii4hEyP": {}, "Cm1CUFxUYkiqeosK": {}, "S7o68LBluaEIEuP0": {}}}' \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'FAtwiPsgMMuxlBJT' \
    --limit '54' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'mt1IpMOU6SFbeSr8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'AkCwJTFrJQSqKAhv' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'U7AQKEFb00J79OVf' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'f1nrYDrfJ9AB0gGF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["FAHSAHPnyzogAfEh", "6FhBdD7HfJ3p7CYr", "v2vy0caIhO0dl4Pg"], "user_id": "vzhhoTgZ2cP695DN"}, {"keys": ["fNOQ8fxiGxa4lJlm", "1zMbBCo0E5OUUAL1", "Jgftm1QNarDfz6mk"], "user_id": "kU0qD34QGHzwj9pU"}, {"keys": ["nbS4gs4mEDTjzeoA", "FDtj5nBq1yIM9T6A", "4eawX55tQgglBQqE"], "user_id": "1VmSLXN2EiCUq4WU"}]}' \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'DXdMub83p5zUXXrw' \
    --namespace $AB_NAMESPACE \
    --userId '6rOANK5owmEWae8B' \
    --body '{"set_by": "LjlsWh1oXrWjicDI", "updatedAt": "v5v5ToKXKw9uKpD7", "value": {"sQC8xd3cbuYw1A3A": {}, "gLFhdXKj4dd34VYX": {}, "xO0UyrOKLWfKXIg5": {}}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'KvtoHENwJt47wG73' \
    --namespace $AB_NAMESPACE \
    --userId 'DiXk0UYFK0Q0G6wh' \
    --body '{"set_by": "TAkIjtXzF3BJb6BA", "updatedAt": "XIdKExyji0TDA9m8", "value": {"0nWPAO3VROgqgtvg": {}, "PDkiWQp7jOi2jzF3": {}, "teKXdVSU5KjuvOUW": {}}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'P36t2ZIlKHXEacxa' \
    --limit '16' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key '3Nbe9wbZghlEP3XQ' \
    --namespace $AB_NAMESPACE \
    --userId 'UzCW63h60Bweu4a8' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'lYkq1IdQkYMdDksq' \
    --namespace $AB_NAMESPACE \
    --userId 'K7SAdmtqSFXvEpJn' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'ZNPxY2i19Nhw6KGH' \
    --namespace $AB_NAMESPACE \
    --userId 'RH5WLQiLqEg8MdN6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'jtq36Kuvr4soPfsa' \
    --namespace $AB_NAMESPACE \
    --userId 'XtN2Bkn8DrkDqNsp' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'ghB2NciAQRWD1BVC' \
    --namespace $AB_NAMESPACE \
    --userId 'QD80tsGBnCKce7Ng' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'b4LVJ1QXK6haOLO4' \
    --namespace $AB_NAMESPACE \
    --userId 'RBIjyiKYIJVpWdYf' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'HQkt1nPyOytv1h5N' \
    --namespace $AB_NAMESPACE \
    --userId '8A84v5wu61Fxyv6W' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'osMYODVIjzgw2ZYi' \
    --namespace $AB_NAMESPACE \
    --userId 'V2yuLI5WdDRLqbPE' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'MD1vuXcdjjRPzdpW' \
    --namespace $AB_NAMESPACE \
    --userId 'FYyjgXmUS31SiTxd' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'czRt0nHt7MfqoWjR' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "dvgPEtH7lGNHBstg", "value": {"EKfSNnpPsyxCRH8n": {}, "XjGlWG5fsZhABMiv": {}, "UfMACM46yLV01cPf": {}}}' \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["U7brlsO1l7dHJ90I", "PV2Me9XLmDMbtDd3", "wFZwt5adofXDrzJ7"]}' \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'sjpCeroG7zWt8tGs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'L0GNFyJltVKfrDxo' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'PJQ94PVvzEnqKkIx' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'f1q84BDGfoJ0GNpH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'VwgTrL8sRVC5A0Ti' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["S0t8UIVwcB5wbby8", "fz2nmuaQC27YFrb1", "lhXyXSzFTbXZpPMd"]}' \
    > test.out 2>&1
eval_tap $? 28 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 29 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 29 'RetrievePlayerRecords' test.out

#- 30 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["rGNpkScftxBtXG6I", "tNDIaCsM635pmQcH", "RktDeSnxxjpQa6dA"]}' \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'gUzL5pyk5EUtza9c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'TJxTgaKN1sYPJHuX' \
    --namespace $AB_NAMESPACE \
    --userId 'vH9QTeovBBySbNbz' \
    --body '{"updatedAt": "gAZgtbeNqlXkMmA6", "value": {"RBju5uPvSnLJanoT": {}, "WbUT911Z0aAKTTC0": {}, "XrciUDdkbv77YECE": {}}}' \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key '4S8ybx4bhAW3bu8G' \
    --namespace $AB_NAMESPACE \
    --userId 'MapuhPcF223Cvfa0' \
    --body '{"updatedAt": "nMkAh2MfLstXbGSB", "value": {"pGzfMMf5eMMecw4O": {}, "yoU2YDpMcDQIxrmG": {}, "AXi1Dl1wprsTCMy2": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'r9CoexNmg8AjXLWR' \
    --limit '99' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 34 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 35 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'H5bhq5oAEM8IkOu0' \
    --body '{"keys": ["PZKqxUqVze36pi2T", "WxdJbwiF8FY0wtfj", "gEBTNds5Hoi5p42n"]}' \
    > test.out 2>&1
eval_tap $? 35 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 36 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'bwwSls27SSLGsaxJ' \
    --namespace $AB_NAMESPACE \
    --userId '6VfBsHm7SWDz4cVw' \
    > test.out 2>&1
eval_tap $? 36 'GetPlayerRecordHandlerV1' test.out

#- 37 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'SAmUOBQwQKqbnuyo' \
    --namespace $AB_NAMESPACE \
    --userId 'ax1U8jk5maHR922p' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 37 'PutPlayerRecordHandlerV1' test.out

#- 38 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'FfGmqcbwy8U1FDVM' \
    --namespace $AB_NAMESPACE \
    --userId 'ufHJqtVH9wtarjWS' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 38 'PostPlayerRecordHandlerV1' test.out

#- 39 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'eHPBgYesMKCYiK9j' \
    --namespace $AB_NAMESPACE \
    --userId 'UtLwLxHtZvtjpuMv' \
    > test.out 2>&1
eval_tap $? 39 'DeletePlayerRecordHandlerV1' test.out

#- 40 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'dwCX4cokdJrRczkT' \
    --namespace $AB_NAMESPACE \
    --userId '8Vbf12IiWIGQiLoZ' \
    > test.out 2>&1
eval_tap $? 40 'GetPlayerPublicRecordHandlerV1' test.out

#- 41 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key '0OToNpsRiwORJwDt' \
    --namespace $AB_NAMESPACE \
    --userId 'f4Navdv4uO1aZWw0' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'PutPlayerPublicRecordHandlerV1' test.out

#- 42 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'LfGNjzE4H5HCdZKb' \
    --namespace $AB_NAMESPACE \
    --userId 'W6kcvUzc53IMV1JW' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 42 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE