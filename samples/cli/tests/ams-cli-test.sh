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
echo "1..35"

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

#- 4 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AccountGet' test.out

#- 5 AccountCreate
samples/cli/sample-apps Ams accountCreate \
    --namespace $AB_NAMESPACE \
    --body '{"name": "pi4iTDZlBhEtzMSz"}' \
    > test.out 2>&1
eval_tap $? 5 'AccountCreate' test.out

#- 6 AccountLinkTokenGet
samples/cli/sample-apps Ams accountLinkTokenGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AccountLinkTokenGet' test.out

#- 7 AccountLink
samples/cli/sample-apps Ams accountLink \
    --namespace $AB_NAMESPACE \
    --body '{"token": "eIEBblCXRdRUyqFt"}' \
    > test.out 2>&1
eval_tap $? 7 'AccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'pAswiT92IQlIQLt8' \
    --endDate 'Conps8dRyQdcH1OQ' \
    --fleetID 'bhEqSVn9S044vOhi' \
    --imageID 'IcvjgSsgO3njjoHs' \
    --maxSize '76' \
    --minSize '85' \
    --region 'yHUYTvDjHIAnJNiC' \
    --startDate 'eaOJxhp1UqF5dw9V' \
    --status 'ggKA0fNIFfsaUUqk' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'bcUU71Mm2LVMICeL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'kWI0xAfmphO0JOab' \
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
    --body '{"active": false, "claimKeys": ["OhfehjMbP0sKVByl", "weBJsgRvvf2e09Kg", "XbZROUVFINCkgDJs"], "dsHostConfiguration": {"instanceId": "ewEYHe4hWDDPQswW", "instanceType": "dykTax5I954UYb3I", "serversPerVm": 95}, "imageDeploymentProfile": {"commandLine": "pOEBPkQ6UoyBFex3", "imageId": "YojpjglTCxD31HIb", "portConfigurations": [{"name": "Ys15mowJdfiSpEcM", "protocol": "UQgJ7G2KWcQrPQkF"}, {"name": "RAIWoPBljoBsgF42", "protocol": "47pno90DZCucGWdO"}, {"name": "WmAHB9wV9MiQzcvz", "protocol": "cuEOWL3iU7dImPC9"}], "timeout": {"creation": 82, "drain": 23, "session": 74, "unresponsive": 52}}, "name": "RuNH3aCxFtDWasx0", "regions": [{"bufferSize": 73, "maxServerCount": 23, "minServerCount": 91, "region": "yfIHIljNAqEM59Rm"}, {"bufferSize": 53, "maxServerCount": 67, "minServerCount": 58, "region": "lEOn0y655uzEeEie"}, {"bufferSize": 82, "maxServerCount": 13, "minServerCount": 83, "region": "hMW6r0EZI5M3tGyy"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 97}, "success": {"collect": false, "percentage": 90}}, "logs": {"crashed": {"collect": true, "percentage": 3}, "success": {"collect": false, "percentage": 100}}}}' \
    > test.out 2>&1
eval_tap $? 13 'FleetCreate' test.out

#- 14 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'rva3VeyG4soWeYIA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetGet' test.out

#- 15 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '6G9GdWAWvhBOF3SZ' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["VXgMh3gVzht4CxDo", "SrERlxuTvmz3QnBn", "0xmCvuG9My6UvFVQ"], "dsHostConfiguration": {"instanceId": "nsBnRXf5mdKeMhao", "instanceType": "6jY53PBUGuDkXQDt", "serversPerVm": 51}, "imageDeploymentProfile": {"commandLine": "z99u18H5d8q3phSZ", "imageId": "nN6qANsaG7E2hrlj", "portConfigurations": [{"name": "7yvzLlDFmz9scdT7", "protocol": "d8eXOlpBnncx3fmn"}, {"name": "i8UpJKqQvDFjQiJM", "protocol": "5Qr6jfaLTIpEWNl7"}, {"name": "CFqtHyOSPeKTh876", "protocol": "cw11jETL1YKWJLik"}], "timeout": {"creation": 24, "drain": 29, "session": 20, "unresponsive": 61}}, "name": "L53h1INtC4kD4cvd", "regions": [{"bufferSize": 16, "maxServerCount": 5, "minServerCount": 71, "region": "LuiIdR9wQaMmuRa5"}, {"bufferSize": 5, "maxServerCount": 57, "minServerCount": 29, "region": "s18uspU4zUyaqEIO"}, {"bufferSize": 80, "maxServerCount": 66, "minServerCount": 42, "region": "NGDuTC4D92bgNyrN"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 50}, "success": {"collect": true, "percentage": 4}}, "logs": {"crashed": {"collect": false, "percentage": 60}, "success": {"collect": true, "percentage": 64}}}}' \
    > test.out 2>&1
eval_tap $? 15 'FleetUpdate' test.out

#- 16 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'WmWyEyaRhWLxRwJN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'FleetDelete' test.out

#- 17 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'GS6bncrV3Es9Cy8C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetArtifactSamplingRulesGet' test.out

#- 18 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'gOIBW7bDwzMkjH9P' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 42}, "success": {"collect": false, "percentage": 34}}, "logs": {"crashed": {"collect": true, "percentage": 51}, "success": {"collect": false, "percentage": 91}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetArtifactSamplingRulesSet' test.out

#- 19 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID '5U6hzfmppoYwrEIR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetServers' test.out

#- 20 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'Yx7jT1Qj2v4FDV7P' \
    --namespace $AB_NAMESPACE \
    --count '33' \
    --offset '4' \
    --reason 'T8rxtOst2V2vk9KS' \
    --region 'AluSeV3y1YXBKMwO' \
    --serverId 'OS3sp3vUTmGYxxq1' \
    --sortDirection 'lnf5OZ4krZiFdqel' \
    --status 'xQZeRxqoTVA1zjCp' \
    > test.out 2>&1
eval_tap $? 20 'FleetServerHistory' test.out

#- 21 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'ImageList' test.out

#- 22 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'XyLS9CtTWq02WiZE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'ImageGet' test.out

#- 23 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID '2H8CdAH2RlJBGJXv' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["i1R3Yq1OKyEdjecS", "SJcedPQzcsA07PN1", "IaBUdaX1VOjemIGD"], "isProtected": false, "name": "dydT2EUBIYMJj7TB", "removedTags": ["i2eGr9mYJlf6oEu8", "U0OqwX1fYRxoIOz3", "8Q5DMRrbJhzx84H0"]}' \
    > test.out 2>&1
eval_tap $? 23 'ImagePatch' test.out

#- 24 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'Q4rcM1SzqHgl49Yu' \
    > test.out 2>&1
eval_tap $? 24 'QoSRegionsGet' test.out

#- 25 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'Lb4Px7kqsQrKWqBV' \
    --body '{"status": "IyoioaBlqmm7H4Tz"}' \
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
    --serverID 'mAlVKXVDo4qDTutj' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerInfo' test.out

#- 28 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'TgFZg62bOVQXzUuI' \
    > test.out 2>&1
eval_tap $? 28 'ServerHistory' test.out

#- 29 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'InfoSupportedInstances' test.out

#- 30 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'lWfKEFcBhG8q0wAd' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "e98v5MwXOPek5M1D"}' \
    > test.out 2>&1
eval_tap $? 30 'FleetClaimByID' test.out

#- 31 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'DzVp4LzTuZn9yliU' \
    > test.out 2>&1
eval_tap $? 31 'LocalWatchdogConnect' test.out

#- 32 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["4IqD34eCcnq2iQU6", "yPduJx0j2yBOKeg9", "RxLbBSh1ZE24R60o"], "regions": ["9aHCNIV9CZWcHa1C", "Z4KJ6ppBQ4mXBlFb", "9aw85oDmOnkFC9EB"]}' \
    > test.out 2>&1
eval_tap $? 32 'FleetClaimByKeys' test.out

#- 33 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'TORINbUVKPYOwlYG' \
    > test.out 2>&1
eval_tap $? 33 'WatchdogConnect' test.out

#- 34 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 34 'Func1' test.out

#- 35 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 35 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE