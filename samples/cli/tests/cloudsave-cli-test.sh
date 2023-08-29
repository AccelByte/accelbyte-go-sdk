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
echo "1..94"

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

#- 2 AdminListAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminListAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '71' \
    --query '2Cj6AgntZa2my0l9' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["crHDGhR29D0jdH9s", "NEB43k15tlGonyUL", "Aix6hJurz8mA61NS"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'gG1mnRhkgIKf7nIP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'WiOJbo205wuPSENL' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'AF3WfOy2t9MGZk1B' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'OzgcVxrsagDcITpG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '45' \
    --query 'ljRMAlPDhtryAm19' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "dVgtLZxUAQ8WsC3o", "key": "z5Xh7DTWpeB8M5gp", "set_by": "laoYQoE6KTpRmNuc"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key '4dN03o7NbhrxI1EN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key '4wT1I3JafuaqsSVN' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "qQUJScA63CjgQ1Yk", "file_location": "x0y7YJiehxUZ8kB8"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'tEYH2k5mlyZkzmbw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'D2KC8qMtjrsIUwcc' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "Tw2ZaNL6uNqhNSsw"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key '5unHp0eaIZZCOVQq' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "OWRRyd132Q7ocVdf"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key '28kEa1qJHUeV9oZd' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "qB0zQjsy5Ar4w0zW", "value": {"f2oKpVTfaaOQvNv4": {}, "Yf2MRTYArGgTyUJS": {}, "b9qbrR7yElFv8BFX": {}}}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'ro8ylglfvgRL8Fhl' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "UF9c709OWpLAIQ9g", "updatedAt": "WI9lnsjiKbm4RAI6", "value": {"fUdUJQIHZS3HVmFF": {}, "g2PLOJ8EvupBd21I": {}, "ptC7X5975wem6dnr": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 17 GetPluginConfig
samples/cli/sample-apps Cloudsave getPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetPluginConfig' test.out

#- 18 CreatePluginConfig
samples/cli/sample-apps Cloudsave createPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "DRRtT0uYMcfZPsuL"}, "customConfig": {"GRPCAddress": "PArx1UpTVfygQ04K"}, "customFunction": {"afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 18 'CreatePluginConfig' test.out

#- 19 DeletePluginConfig
samples/cli/sample-apps Cloudsave deletePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeletePluginConfig' test.out

#- 20 UpdatePluginConfig
samples/cli/sample-apps Cloudsave updatePluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "B3f9zCY5Q8cuwAdm"}, "customConfig": {"GRPCAddress": "vjDTxnGGabaG1lCm"}, "customFunction": {"afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'uDiux672xdKcQMG3' \
    --limit '37' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'sJzbVP0704FggKZs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'hxirJDrRTeiBZy5e' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'eJC6DfZeN8M4kdfM' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'O0ZfevSe9IHqTL3w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'Zn36b1oAu3FajDpW' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["MT7kSCxr8b8Ungz3", "3CHr8tzmRmp2kR5k", "GNEqiOK21YZYSvi5"]}' \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["DVZgCwoF2KSj4OFl", "74s5W2Q4O8CD7mSV", "P1ZLHhgPS3alUYYE"], "user_id": "mYxnKWBqHGqmdYM8"}, {"keys": ["L2mfgSsAPM5FR1Y3", "tIzrwtSsthhYWyOq", "ebSWPy8vTVVVL6ay"], "user_id": "EZ9FaetjxM1yIrzn"}, {"keys": ["984OMesfdPBUiF6J", "HQd5Fn9xGgwX9aqE", "F363scfzUiTVPFge"], "user_id": "FGTnSlJRmhuMLdby"}]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'yLCWs9hlCxhkiXxS' \
    --limit '84' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '52m8OHyjnXqi6EVf' \
    --body '{"keys": ["fbspdOFdgwMirx7D", "xklpUFzB8wdlWGma", "Y1k50WuvgQhPKV8D"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'Lh0ta5K28T4hwVaO' \
    --namespace $AB_NAMESPACE \
    --userId 'gmpKhj7YpmcWR2LH' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'nt9AAHCmjZGNldH8' \
    --namespace $AB_NAMESPACE \
    --userId 'kBQNsqI4QKgZTNhV' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'hxfJG6myKfCPGgv6' \
    --namespace $AB_NAMESPACE \
    --userId 'wc8zNikHsUHKK9WO' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'tAjZwqyXkHJxqq0m' \
    --namespace $AB_NAMESPACE \
    --userId 'ixJQyXZEKCRup3IC' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'tM81t62119H73ani' \
    --limit '93' \
    --offset '6' \
    --query 'T9EmATrbs9KGuwSR' \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'u2Z57lRUEImrVSOp' \
    --body '{"file_type": "MPBBBna1c421DtlP", "is_public": false, "key": "F9Qa4JZUPcW14VN4", "set_by": "56sFJ1GiQDFQBtBf"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key '59fd9POaPOuLfm6T' \
    --namespace $AB_NAMESPACE \
    --userId 'k4S9FnrnyzNP9PvL' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'G55BQOcWEs2j0jvs' \
    --namespace $AB_NAMESPACE \
    --userId 'xtL2am6ZTZu6VIjU' \
    --body '{"content_type": "EW50XtNUd5A8bte2", "file_location": "gOAa17ILm1C8CyCI"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key '2r5n6ukyZIGRq1cw' \
    --namespace $AB_NAMESPACE \
    --userId 'uExSGb8cB0cMfjRS' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key '4gLzV4yJwkNywBs1' \
    --namespace $AB_NAMESPACE \
    --userId 'ALwIgrv8pU1JBBYx' \
    --body '{"is_public": true, "set_by": "YGFHbHgMMV2fQ6nF"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'PhZQn1k72tB8Kj2A' \
    --namespace $AB_NAMESPACE \
    --userId 'mMgWj4wkqvtNXBr9' \
    --body '{"file_type": "C80zvSCKgEOciK52"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key '0qPDVF0h68en8Mau' \
    --namespace $AB_NAMESPACE \
    --userId 'P0nUaves1fhiFBtw' \
    --body '{"updatedAt": "vldP6t5WcetBnU2H", "value": {"BnQjLS0v7gxM3r72": {}, "1JvStyiAE7DgPuMn": {}, "Hfy8nqq0qLwgBHE1": {}}}' \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'GtTz5PSf5IQsomUJ' \
    --namespace $AB_NAMESPACE \
    --userId 'aVGvpUE1WtxaP6cV' \
    --body '{"set_by": "b1t5iQr1QzYnPKfg", "updatedAt": "5ZBwzo83dsUhuY6J", "value": {"IC7FJtXGH77A2W77": {}, "1FZzhfBI9ERVFBuj": {}, "mBB0LiAS6xu6JOcF": {}}}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'okRTGGAktCDQQvaI' \
    --namespace $AB_NAMESPACE \
    --userId 'Y3m6VDRsV8GddNhR' \
    --body '{"set_by": "HfIeRDQlnjdWfsk1", "updatedAt": "9o1l6lqdH1IUWDS9", "value": {"pGtcIvazJ42EFQl5": {}, "Le18NCel8Ol7Eezd": {}, "VnAFUZWwAIRvWwrh": {}}}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'DqmI5tq3BTqElplQ' \
    --limit '16' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'gogrMdnk0h4O2ZOQ' \
    --namespace $AB_NAMESPACE \
    --userId 'HnzS1ILUZZwgMtB7' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetPlayerRecordHandlerV1' test.out

#- 47 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'qNXTFBghlRisS2Or' \
    --namespace $AB_NAMESPACE \
    --userId 'zlkHMYlw59WON1Ec' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerRecordHandlerV1' test.out

#- 48 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'jyN4TALlvESjAvur' \
    --namespace $AB_NAMESPACE \
    --userId 'IydrR5Sj7ickgqn1' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerRecordHandlerV1' test.out

#- 49 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'yetaX2ni70WAm9PB' \
    --namespace $AB_NAMESPACE \
    --userId 'd8O5q7bNhFv1q3tM' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeletePlayerRecordHandlerV1' test.out

#- 50 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'pTRFwOtmJQur3JeB' \
    --namespace $AB_NAMESPACE \
    --userId 'nxETVyqRAh4tVfdu' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'Lf4UxAVZ0Nc5hrkd' \
    --namespace $AB_NAMESPACE \
    --userId 'bGIRDgAEv9S3eH7g' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 52 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'aLX19Kk41FTNA448' \
    --namespace $AB_NAMESPACE \
    --userId 'JsQWgn3NPEDcZCQ8' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 53 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'z2WqqxkJduKMgMJ0' \
    --namespace $AB_NAMESPACE \
    --userId 'frFgI01pey5hZ6DP' \
    > test.out 2>&1
eval_tap $? 53 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 54 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'dr1PTMOabTeWI19u' \
    --namespace $AB_NAMESPACE \
    --userId 'bmoWDygF3PzbQWf7' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 55 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '19' \
    --query 'Jozgx5Dugj7czGbt' \
    > test.out 2>&1
eval_tap $? 55 'ListGameBinaryRecordsV1' test.out

#- 56 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "FhmjhMn0QPh1S3xu", "key": "nSF76CI66uTBa6d1"}' \
    > test.out 2>&1
eval_tap $? 56 'PostGameBinaryRecordV1' test.out

#- 57 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["oFXMm6TiDZ4llnFw", "BSQpyeWNzRjTNYUq", "YlBeNuhJlomSSyqU"]}' \
    > test.out 2>&1
eval_tap $? 57 'BulkGetGameBinaryRecordV1' test.out

#- 58 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'iADfOBrsM0U8TXWN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetGameBinaryRecordV1' test.out

#- 59 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'nHLAhZmHDxk4n1il' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "eCZSOh5ZVJHlUYoW", "file_location": "gm9QBsWuuwvB9Cry"}' \
    > test.out 2>&1
eval_tap $? 59 'PutGameBinaryRecordV1' test.out

#- 60 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'lJHI2GtqIu3sH1GH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteGameBinaryRecordV1' test.out

#- 61 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'W0DffPLujZayfhaW' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "5IXyLrogIQM8fp0b"}' \
    > test.out 2>&1
eval_tap $? 61 'PostGameBinaryPresignedURLV1' test.out

#- 62 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'YruyFsaqO65XJaCZ' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "zdg4Nx8DeKnMOSMn", "value": {"5EcoIIPp2T37BPyt": {}, "Pi3BvBiiosYjNMwl": {}, "Xi4Oh0cEAkItqOK7": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'PutGameRecordConcurrentHandlerV1' test.out

#- 63 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["qmmghdFouO97IDmv", "o8zwbs2NHSjIOKYm", "HWIKhWiNHVVo2WS4"]}' \
    > test.out 2>&1
eval_tap $? 63 'GetGameRecordsBulk' test.out

#- 64 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'LoLTwwhnl41bgQhO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetGameRecordHandlerV1' test.out

#- 65 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'iRqXOuGWYNBfjp7S' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 65 'PutGameRecordHandlerV1' test.out

#- 66 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'OO7782xpenozOcQP' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameRecordHandlerV1' test.out

#- 67 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'Pwh62ftrtJBPdnbW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'DeleteGameRecordHandlerV1' test.out

#- 68 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'qI3GgUCQlVaHDd4z' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Mr6P1h1IahxVrKKW", "Ag60CnIJulQA02AO", "YA46TQZJkVoatrN2"]}' \
    > test.out 2>&1
eval_tap $? 68 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 69 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'wWpuvcM1iUOjt0SA' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Cg4txWK1WjK5mtiW", "TnDdxDYGbhHrQY0r", "oMUvV775C6WDondo"]}' \
    > test.out 2>&1
eval_tap $? 69 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 70 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '94' \
    --query 'jy6qakcSnnmlkhoM' \
    > test.out 2>&1
eval_tap $? 70 'ListMyBinaryRecordsV1' test.out

#- 71 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["DBonrogvo9cJJOJL", "QuSrIwSsFctGtyZK", "NlLindjxxpIBqiD9"]}' \
    > test.out 2>&1
eval_tap $? 71 'BulkGetMyBinaryRecordV1' test.out

#- 72 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 72 'RetrievePlayerRecords' test.out

#- 73 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["voUdT7X78FJqEfzr", "Vv2IUqsJZkk92gi9", "7waavWkvW1GKQToD"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetPlayerRecordsBulkHandlerV1' test.out

#- 74 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'XUkzMfpgNlcXXVyl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 75 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xybQqTO2eZBJ6rMy' \
    --body '{"file_type": "ds1pir5A2mrkLTJf", "is_public": false, "key": "5RlGIIJ7yMs1lQBP"}' \
    > test.out 2>&1
eval_tap $? 75 'PostPlayerBinaryRecordV1' test.out

#- 76 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'UBTK7w0U2hHdrQQg' \
    --limit '62' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 76 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 77 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gFvLrRvMImQWa4BY' \
    --body '{"keys": ["FOWYzaCG8r7rfk8V", "6vxYBwDIxYxxUwcf", "RNOwjwn8ZJcEfqPE"]}' \
    > test.out 2>&1
eval_tap $? 77 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 78 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'I1EDGEbX8oPRpKkX' \
    --namespace $AB_NAMESPACE \
    --userId 'xzVPXnnwne7kHNzR' \
    > test.out 2>&1
eval_tap $? 78 'GetPlayerBinaryRecordV1' test.out

#- 79 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'KboVgemTzKn3JH8z' \
    --namespace $AB_NAMESPACE \
    --userId 'ZW4n2lMQlOxGU883' \
    --body '{"content_type": "asASt4rYS1LW32tL", "file_location": "IJjKafTgCBotNSlE"}' \
    > test.out 2>&1
eval_tap $? 79 'PutPlayerBinaryRecordV1' test.out

#- 80 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'R6BUHbwpusMybuq7' \
    --namespace $AB_NAMESPACE \
    --userId 'y6e82XKXoXEvGKNB' \
    > test.out 2>&1
eval_tap $? 80 'DeletePlayerBinaryRecordV1' test.out

#- 81 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'nFH8LyLMWHILeOk6' \
    --namespace $AB_NAMESPACE \
    --userId 'qTJQEGNqbgO8oHKC' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 81 'PutPlayerBinaryRecorMetadataV1' test.out

#- 82 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'CKeGLfz8V3Z07jRa' \
    --namespace $AB_NAMESPACE \
    --userId '2R9cr2rvadkpTQfX' \
    --body '{"file_type": "BsobDCE5SMlKZwzo"}' \
    > test.out 2>&1
eval_tap $? 82 'PostPlayerBinaryPresignedURLV1' test.out

#- 83 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'NV5iBa9yTrofQrI9' \
    --namespace $AB_NAMESPACE \
    --userId 'oN2eMGQa5kbGYvcR' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerPublicBinaryRecordsV1' test.out

#- 84 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'f8cpzNMoQuSWBdmN' \
    --namespace $AB_NAMESPACE \
    --userId 'Pnt6kA9RjB0emkgu' \
    --body '{"updatedAt": "Tx1dguVZpytrNUJf", "value": {"hNloC9NMVW6fcg9s": {}, "bXp8xFpAyZhwfGwP": {}, "SV0eIHfjcagOZ9wb": {}}}' \
    > test.out 2>&1
eval_tap $? 84 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 85 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key '1dXMg60RIrNOofMC' \
    --namespace $AB_NAMESPACE \
    --userId 'mrLftzj7onqImmgY' \
    --body '{"updatedAt": "V2UTMXX1WML0avVx", "value": {"ne1brAWO1QKo4HzR": {}, "HWZe6rxfbJgqo8CB": {}, "gyqh3E5EhJ8M8urc": {}}}' \
    > test.out 2>&1
eval_tap $? 85 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 86 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'HxSAJJVIaxl8Voaa' \
    --limit '96' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 86 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 87 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'NcUXjcGd7UlFPgFB' \
    --body '{"keys": ["1qMHJm3mU3t1Wkq7", "ito2I06o9qflVeoz", "1EjiAqaT9fR5gj5h"]}' \
    > test.out 2>&1
eval_tap $? 87 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 88 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'KivToPMn12ns14zA' \
    --namespace $AB_NAMESPACE \
    --userId 'bH0fPVbsmK4FRB6c' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerRecordHandlerV1' test.out

#- 89 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'PNosxzlHJcCE2shh' \
    --namespace $AB_NAMESPACE \
    --userId '3H5zjRD8anrFrNeE' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerRecordHandlerV1' test.out

#- 90 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'g50nz0q6Cgn2pIAT' \
    --namespace $AB_NAMESPACE \
    --userId 'IhQ1tBDpEn8Gtk4f' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 90 'PostPlayerRecordHandlerV1' test.out

#- 91 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'Exk6dwFP88CDF70m' \
    --namespace $AB_NAMESPACE \
    --userId 'Nubxx715oFUGIhag' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerRecordHandlerV1' test.out

#- 92 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key '1i7GveHrmwvGxA03' \
    --namespace $AB_NAMESPACE \
    --userId 'nga9lHGNu2aFENx5' \
    > test.out 2>&1
eval_tap $? 92 'GetPlayerPublicRecordHandlerV1' test.out

#- 93 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'iH692dQ1lYKgMPDT' \
    --namespace $AB_NAMESPACE \
    --userId 'ZxzLc9t79StG7shp' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 93 'PutPlayerPublicRecordHandlerV1' test.out

#- 94 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'AnoHozsdEpfUsfy6' \
    --namespace $AB_NAMESPACE \
    --userId 'fS1k3iPi4fDYyXlb' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 94 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE