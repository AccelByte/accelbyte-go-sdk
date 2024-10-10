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
echo "1..46"

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

#- 2 AuthCheck
samples/cli/sample-apps Ams authCheck \
    > test.out 2>&1
eval_tap $? 2 'AuthCheck' test.out

#- 3 PortalHealthCheck
samples/cli/sample-apps Ams portalHealthCheck \
    > test.out 2>&1
eval_tap $? 3 'PortalHealthCheck' test.out

#- 4 AdminAccountGet
samples/cli/sample-apps Ams adminAccountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminAccountGet' test.out

#- 5 AdminAccountCreate
samples/cli/sample-apps Ams adminAccountCreate \
    --namespace $AB_NAMESPACE \
    --body '{"name": "M5t1ky5TCXl4XGqU"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminAccountCreate' test.out

#- 6 AdminAccountLinkTokenGet
samples/cli/sample-apps Ams adminAccountLinkTokenGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminAccountLinkTokenGet' test.out

#- 7 AdminAccountLinkTokenPost
samples/cli/sample-apps Ams adminAccountLinkTokenPost \
    --namespace $AB_NAMESPACE \
    --body '{"token": "jz333z0KJHPmuwkJ"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'xqFPUx7JJQ8yPDKj' \
    --count '235' \
    --endDate '3rbcgkwxeAg9QrXC' \
    --fleetID 'AnVhLDMTXGTZ2mT8' \
    --imageID 'wPwWNBfIPWiXydCA' \
    --maxSize '47' \
    --minSize '79' \
    --offset '8' \
    --region '6nGSiNgqe3Ucfssi' \
    --serverId 'eUpHZzFrzI1NI1hp' \
    --startDate '7CatRjzhmEL38D4I' \
    --status 'ESkxMw8FPR35GDFf' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType '7MqK2NvcC8hfpNVo' \
    --fleetId 'M8vq42Mlh8p6NVtZ' \
    --uploadedBefore '1981-01-09' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'hYnMAyIbJC9K4pvy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID '4G1V3WRXFpnG8mos' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '468' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "zCmhmUNUM95Y8jVB", "expiresAt": "1987-03-14T00:00:00Z", "imageId": "HtlilE57Ei6Tq67B", "name": "2DiftpYwm0Nj9Qv8"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID '9cl1oxuXh7GvGfAf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'WagTnzvZ3KVoE6ae' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetList' test.out

#- 18 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["zdUrdbmrP5IfgiYn", "vGAuPHFi5cyVDpS6", "j0HpvHZGRs0NXxax"], "dsHostConfiguration": {"instanceId": "doy91bss0bmX9uiI", "serversPerVm": 7}, "imageDeploymentProfile": {"commandLine": "SJwEITFFPOS7vME1", "imageId": "QLB2c2hKU61GtVvF", "portConfigurations": [{"name": "EqO6RYfYJW85UGkx", "protocol": "qOpyWfcGSMVewgrQ"}, {"name": "nFEg70Pi8gl7u2hr", "protocol": "HiLWV0hxsHfa9Kj7"}, {"name": "RDCSB14ZQSVClFVV", "protocol": "e6THbrHp52svjjGZ"}], "timeout": {"creation": 11, "drain": 72, "session": 27, "unresponsive": 53}}, "name": "Nemr7Hk88kcaRyUS", "onDemand": true, "regions": [{"bufferSize": 20, "dynamicBuffer": false, "maxServerCount": 85, "minServerCount": 46, "region": "XHEB4ngnxRdqTR9G"}, {"bufferSize": 51, "dynamicBuffer": false, "maxServerCount": 62, "minServerCount": 36, "region": "SmAgXu1ar53ODulJ"}, {"bufferSize": 93, "dynamicBuffer": false, "maxServerCount": 5, "minServerCount": 58, "region": "FR3a6F0U0lu499cp"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 13}, "success": {"collect": true, "percentage": 29}}, "logs": {"crashed": {"collect": true, "percentage": 70}, "success": {"collect": false, "percentage": 73}}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'yBfE9DZHsuhafU7d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '3alf4GCLVXsw8W7y' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["ch0oQYe6wQ5PMGat", "3hdkgNt4ebbNTa1Z", "D6mb68Qnb15h6qvr"], "dsHostConfiguration": {"instanceId": "xJve4fNo1aZMnYFx", "serversPerVm": 86}, "imageDeploymentProfile": {"commandLine": "StZNzrYUVSAxK6vP", "imageId": "MJ8EXrBgQk45CsrZ", "portConfigurations": [{"name": "jnWtpGlaGaXxFHZO", "protocol": "ZHmdkw4eltdjXClI"}, {"name": "HF6lx52gjgG1vBCE", "protocol": "o6huSGteV57YHlcF"}, {"name": "ozza1cvSydTGSHTj", "protocol": "ckfSzhMYBOsbASyq"}], "timeout": {"creation": 14, "drain": 19, "session": 75, "unresponsive": 36}}, "name": "15NZFHHZppTS2LEJ", "onDemand": false, "regions": [{"bufferSize": 24, "dynamicBuffer": true, "maxServerCount": 10, "minServerCount": 28, "region": "zLkguVCyiuIeEsi1"}, {"bufferSize": 38, "dynamicBuffer": false, "maxServerCount": 10, "minServerCount": 67, "region": "S3uHmRR9TCxBi1fL"}, {"bufferSize": 3, "dynamicBuffer": false, "maxServerCount": 0, "minServerCount": 27, "region": "HZ1zkS2bHkUZnrcm"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 44}, "success": {"collect": false, "percentage": 25}}, "logs": {"crashed": {"collect": false, "percentage": 14}, "success": {"collect": false, "percentage": 12}}}}' \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'XuAPc5kUJJ8Ba6qr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'U5KIYGQpiJJG6sNm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'z3g6tSnXAv5Wo9ts' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 1}, "success": {"collect": true, "percentage": 12}}, "logs": {"crashed": {"collect": true, "percentage": 35}, "success": {"collect": true, "percentage": 4}}}' \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'XPCEz5ntPUdkq58m' \
    --namespace $AB_NAMESPACE \
    --count '43' \
    --offset '32' \
    --region 'AmlBKVUVNNLfxvLj' \
    --serverId 'XwZwP9eijKioJfTa' \
    --sortBy 'a7QFHsmhl4tcok5b' \
    --sortDirection 'desc' \
    --status 'creating' \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID '5woPc6gbSv01aZCp' \
    --namespace $AB_NAMESPACE \
    --count '1' \
    --offset '11' \
    --reason 'RRV28num8DTSHqpF' \
    --region 'oiyusBGmCnJnox7M' \
    --serverId 'BOM3jrgA9wUmTitS' \
    --sortDirection '2S0Sp3qxieKbtH7A' \
    --status 'uOkeECjfyMraWir3' \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'ImagesStorage' test.out

#- 28 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'ktHOJ89UbaCzvd98' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImageGet' test.out

#- 29 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'yTlpiNeNGTWNbYQJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageMarkForDeletion' test.out

#- 30 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'QQDTVGFFsrJOUhqK' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["fa8vadpsxHUrutzB", "iVZDiULLpufrr6us", "VjEbb06sLGvqu8R2"], "isProtected": true, "name": "uRoPvBMiVIV7KtZu", "removedTags": ["Zibwi3gLML8eDIsH", "VdBaJC3n7oWrwFpu", "iGNXGdyDagjr1LZX"]}' \
    > test.out 2>&1
eval_tap $? 30 'ImagePatch' test.out

#- 31 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'JrAUZYaAnc2WCgyB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageUnmarkForDeletion' test.out

#- 32 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'zyot8IlS4fl6JEIc' \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsGet' test.out

#- 33 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'zYmoOVsI6zhFSkfu' \
    --body '{"status": "HpTCa4yPILFXkEhj"}' \
    > test.out 2>&1
eval_tap $? 33 'QoSRegionsUpdate' test.out

#- 34 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'InfoRegions' test.out

#- 35 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'u7CKBGk5H1FKCrZA' \
    > test.out 2>&1
eval_tap $? 35 'FleetServerInfo' test.out

#- 36 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID '2nppKdLPRt2XiVtT' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerConnectionInfo' test.out

#- 37 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'gYI068xvPMXLrFYc' \
    > test.out 2>&1
eval_tap $? 37 'ServerHistory' test.out

#- 38 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'InfoSupportedInstances' test.out

#- 39 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'AccountGet' test.out

#- 40 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'GoZSP1IElXeuNhz0' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "dUZb15iGZGKfvIvW", "sessionId": "CaFrkkISFOgte1X5"}' \
    > test.out 2>&1
eval_tap $? 40 'FleetClaimByID' test.out

#- 41 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'XG8aXtup3HzZ9Xdz' \
    > test.out 2>&1
eval_tap $? 41 'LocalWatchdogConnect' test.out

#- 42 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["T7sAmSIcJrZujFYc", "bwLepmacziYKX3dy", "bcY2o34ai7r0ZVA4"], "regions": ["1TRQCIQwy5oa7U0A", "r2n4QjRtjoCOIv10", "6bShgUjHCUNqCkqq"], "sessionId": "pTVVmIKs5WnNBbTA"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByKeys' test.out

#- 43 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'Iy3AC01fYlAKPH4u' \
    > test.out 2>&1
eval_tap $? 43 'WatchdogConnect' test.out

#- 44 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 44 'UploadURLGet' test.out

#- 45 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 45 'Func1' test.out

#- 46 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 46 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE