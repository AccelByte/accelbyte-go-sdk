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
echo "1..37"

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
    --body '{"name": "0YNv1e3lQxMKzQJ6"}' \
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
    --body '{"token": "helZ5dvm6wMwvv34"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'E8zaXkzH1ljllYGU' \
    --count '226' \
    --endDate 'xUHv6b1PzSLnsRco' \
    --fleetID 'k4O3e5HVvKcpf4L0' \
    --imageID 'zXyE7uMpvkEozL7K' \
    --maxSize '4' \
    --minSize '87' \
    --offset '13' \
    --region 'ECMiKjOHidvoycFF' \
    --serverId 'zjkJsioptfvsitJP' \
    --startDate 'WelGWHan5fiWU84v' \
    --status 'P7hbbSmrIBlhtINR' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'rnprH4x8y6pl5ZX3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'Y80Jaqgcz0agafrE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactGetURL' test.out

#- 12 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetList' test.out

#- 13 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["8wkk1GUcPBeurVw3", "MeSnEe8GEWP2ajHl", "vsh40apO8BGUTcNl"], "dsHostConfiguration": {"instanceId": "UnG5KJ8XKuFU7OsX", "instanceType": "5e45dNg4CbWozLzX", "serversPerVm": 18}, "imageDeploymentProfile": {"commandLine": "9AlkuG4iY0oDVVNb", "imageId": "qwtOzfzqFDEVtNdc", "portConfigurations": [{"name": "HmjDHbs4B9DM3zHM", "protocol": "VH61dxnTwOrVcUqp"}, {"name": "GNEBCtPJu1OKo61X", "protocol": "wZr2LjT2XkV5a4Wo"}, {"name": "DpYeLaCO0P3Y05vu", "protocol": "s2rkIuRApZPbbUXz"}], "timeout": {"creation": 97, "drain": 2, "session": 72, "unresponsive": 51}}, "name": "M4BJKrBCJq2Tcoa7", "regions": [{"bufferSize": 12, "maxServerCount": 90, "minServerCount": 6, "region": "iwOZuycMinkZ7APZ"}, {"bufferSize": 96, "maxServerCount": 1, "minServerCount": 80, "region": "rC2HeQpW218YikoI"}, {"bufferSize": 1, "maxServerCount": 34, "minServerCount": 79, "region": "CilsoLNnYuvPCMUP"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 68}, "success": {"collect": false, "percentage": 18}}, "logs": {"crashed": {"collect": true, "percentage": 42}, "success": {"collect": true, "percentage": 20}}}}' \
    > test.out 2>&1
eval_tap $? 13 'FleetCreate' test.out

#- 14 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'fM2LwGsQGbEgWovF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetGet' test.out

#- 15 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'DJODV0h0iWLI1w9t' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["2MtlI13bi33Ciqad", "irM90p3AzVKcAgkV", "IQOzrnWLEfKFTdiT"], "dsHostConfiguration": {"instanceId": "sQ3RfzobrEQjlpRN", "instanceType": "iTFlWJrJgJBweyoh", "serversPerVm": 13}, "imageDeploymentProfile": {"commandLine": "AXTB6RNAeAdSBAUN", "imageId": "FcqmqWCxG7a84Lea", "portConfigurations": [{"name": "beDlvEUxgueD8ihn", "protocol": "Aa14Q2VNXcAiEl5s"}, {"name": "ZIXgIwT9pDop6OXh", "protocol": "axv2qsTusjzS48Vo"}, {"name": "qsiBsmRVxwqI3N2c", "protocol": "mc4bRScTFFkW0bcV"}], "timeout": {"creation": 58, "drain": 21, "session": 96, "unresponsive": 93}}, "name": "tsib7bEuaMI29RVM", "regions": [{"bufferSize": 94, "maxServerCount": 28, "minServerCount": 86, "region": "wnq7K5ACeUET8bNm"}, {"bufferSize": 16, "maxServerCount": 28, "minServerCount": 65, "region": "wRCxbGRTvItUYT5o"}, {"bufferSize": 18, "maxServerCount": 4, "minServerCount": 40, "region": "AMounGYigmuEyiFT"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 60}, "success": {"collect": true, "percentage": 98}}, "logs": {"crashed": {"collect": true, "percentage": 74}, "success": {"collect": false, "percentage": 47}}}}' \
    > test.out 2>&1
eval_tap $? 15 'FleetUpdate' test.out

#- 16 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'XxtyGZTwZGOrljJU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'FleetDelete' test.out

#- 17 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'xTgYgOfTCaRFOzqs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetArtifactSamplingRulesGet' test.out

#- 18 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID '4rDKYodFzN87Mu7o' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 91}, "success": {"collect": true, "percentage": 31}}, "logs": {"crashed": {"collect": true, "percentage": 56}, "success": {"collect": false, "percentage": 1}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetArtifactSamplingRulesSet' test.out

#- 19 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'hKJynwMVnrJvXNFE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetServers' test.out

#- 20 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'JvIiSrbR2pINo6Yx' \
    --namespace $AB_NAMESPACE \
    --count '96' \
    --offset '52' \
    --reason 'qwoQvPmcv5ydCQP0' \
    --region 'uMg5PIrLuCkx3lQQ' \
    --serverId 'AusGwdLgPKNWUGN0' \
    --sortDirection 'l7MT95qqWuA8eReL' \
    --status 'JvnUzs7HA3z8WzbS' \
    > test.out 2>&1
eval_tap $? 20 'FleetServerHistory' test.out

#- 21 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'ImageList' test.out

#- 22 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'PXAqXg78yn6k9BAE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'ImageGet' test.out

#- 23 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID '99nfSEzBBxu6dpim' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["08NRtwQSkxr29kxd", "AKCkK1zlkaL3O24u", "KS6WdqLOhwuBZLQz"], "isProtected": true, "name": "4UY6i02IKOlciImZ", "removedTags": ["6tdebEF0r2VKCXER", "wEcouRcKSbgX1E4p", "Pu5BPWcxfQzwqaeR"]}' \
    > test.out 2>&1
eval_tap $? 23 'ImagePatch' test.out

#- 24 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'CbXQF9YtZzd0XRZf' \
    > test.out 2>&1
eval_tap $? 24 'QoSRegionsGet' test.out

#- 25 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'ChaDtwTMAwqyoM7n' \
    --body '{"status": "u1Pai9CcXscATvL3"}' \
    > test.out 2>&1
eval_tap $? 25 'QoSRegionsUpdate' test.out

#- 26 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'InfoRegions' test.out

#- 27 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'L5jvlGMNihF0RNNl' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerInfo' test.out

#- 28 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'PxbQg9LbNYWrfRSl' \
    > test.out 2>&1
eval_tap $? 28 'ServerHistory' test.out

#- 29 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'InfoSupportedInstances' test.out

#- 30 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'AccountGet' test.out

#- 31 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID '4LK68VkaB2dZGCRj' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "JXPA4e8qBZQDu0C4", "sessionId": "UfJOkKJMmIMi3bBt"}' \
    > test.out 2>&1
eval_tap $? 31 'FleetClaimByID' test.out

#- 32 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'HFgZvzJ2IPAFe8Ew' \
    > test.out 2>&1
eval_tap $? 32 'LocalWatchdogConnect' test.out

#- 33 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["xo1PmNCQ460zzYXD", "ALx1kS9RFyRPqjnP", "6jUMypXJZvmwf6ES"], "regions": ["PikPv4u71qWqKfQ5", "G08eHgDCRB9waK7L", "R2Pdx4HsaqweFwUJ"], "sessionId": "3aSlVmTMxBw58Uf4"}' \
    > test.out 2>&1
eval_tap $? 33 'FleetClaimByKeys' test.out

#- 34 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'aMADiywvcaLMwnBh' \
    > test.out 2>&1
eval_tap $? 34 'WatchdogConnect' test.out

#- 35 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 35 'UploadURLGet' test.out

#- 36 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 36 'Func1' test.out

#- 37 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 37 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE