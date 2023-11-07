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
echo "1..27"

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

#- 2 AdminListAchievements
samples/cli/sample-apps Achievement adminListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '11' \
    --offset '68' \
    --sortBy 'createdAt:asc' \
    --tags '["ojLPHzOB64oErjDs", "n6WyrF9iROFQRRr5", "5Tz35GPbEl3U1UA8"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "aCkb3iGZun8hsVXt", "customAttributes": {"UaUB5qAIsWm3z1Sn": {}, "ai3Jv0o4iHxCsUVF": {}, "eeQMV7IjyqAbCEDh": {}}, "defaultLanguage": "DGDxpmBGUV3SmYHE", "description": {"sdWQLaC4j0y56voU": "CxfdyOVUEfdoTtW4", "eJ6HJKiYCPIvIaiX": "hSmXt3wjGHGT1LKh", "wG9vp3kNxMedfrp1": "IVdesYqYDZzyoEV7"}, "global": false, "goalValue": 0.7854921774694082, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "ysgdAgOT8UtiS18Q", "url": "jNg6gZ67ck1haX2O"}, {"slug": "jMcPfZkuoUTpuOdl", "url": "wbjgrUH1LWs5uLLK"}, {"slug": "BDB0EhuW4IUIhbwz", "url": "hfzIEG8vSx9WAUYW"}], "name": {"nTe1YgSEYw4CipQX": "ZJKu3WiZ5cKWY9sn", "Nwa6deTagqp3bnw2": "bU3xqdYHJDR1qom9", "d5xzPbG1ORd43fmX": "xLKMCv6FKmQS4xiA"}, "statCode": "fezNb1Ov4wYSjinr", "tags": ["k7aWRGQZkJDDAv6H", "TArxmAJkixcLhS4r", "lsan2OB3T7dqWunj"], "unlockedIcons": [{"slug": "vhFRCkCLs6Ki4ULm", "url": "OiR5nDDd4teZZY0I"}, {"slug": "ng0GWzp6WjoVMnM9", "url": "s4hgmqEdfL8OeFB0"}, {"slug": "t8lAcln3fnO2Y0iH", "url": "894FM5IiUQHKEYir"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["of6hULeFYC2stPdC", "PandwZ5OHbURLzrj", "sCM1ldjU5vN2urV0"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '554HJrgdaW15GoUg' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '3xKDbJEMK512TQgv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '7RNgu8Hb3r6np8nt' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"R9CzdK1uQjFQgBOj": {}, "0aacz8JGCqFhKIVx": {}, "YZVILMeVXM1C6umz": {}}, "defaultLanguage": "k9omUgbdDuouhuk3", "description": {"Eg6zlE4OR8k7PRJS": "yk7w9qasTQZ8DyVW", "QpaoWdYs8mbMRNRB": "LqoMwwyy4Bhau50m", "J0wlkbLDrveVTVhT": "ymHnvTdH9OvzbTI3"}, "global": true, "goalValue": 0.26699491829955246, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "rALYQ6W70lKaFMmf", "url": "1wR0DBiAC6iOYPZp"}, {"slug": "gv6ZND5AQ54xocST", "url": "GOujMXTcJzxXWG9R"}, {"slug": "s6FXyWvCMDPSLLKE", "url": "qAOrG3UDJ6aBwlY5"}], "name": {"lXcABeWysEcRl2Ux": "pNoZ2n5HFILQNk1i", "REOCRndwSxeYNxmG": "6wYb7dth9B4KijFe", "lgO8hQd6J3H1l1wO": "rtlJYFvErth8MKQN"}, "statCode": "GAQU3gYY14KUt3x8", "tags": ["Ua0PqoyG3RbW2rqo", "vxraq1WwryapiBW7", "0XoViOFcAKmpnS41"], "unlockedIcons": [{"slug": "wFJthhRJvZFsato2", "url": "v8CRJrpv804XAWvF"}, {"slug": "QCF7c6p6rULSjMCo", "url": "NX3dgZgnDOpKWqPU"}, {"slug": "acoQocUrKEwUqAms", "url": "rGQ9QgBsOShMYo83"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'boRZiQ6FosXDFgHz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'iVWMyZM9Urjb8LUj' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 96}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'UHAIvrNLlhoIMBuG' \
    --limit '33' \
    --offset '30' \
    --sortBy 'd0zhq3Zy9EZWgMIB' \
    --status 'v4H2cowzcuMjkCrP' \
    --tags '["FFVcmI2mtrYX9iS6", "h0RRQepRysPGe8h5", "EYHSJj4TFa3e9mcZ"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'Ity4fdcCN423FVFT' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '36' \
    --sortBy 'cKTLo3i7EyfNwmbf' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'y6skYNSGRBV0r71x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --name 'XjKby9bhlnAtD540' \
    --offset '23' \
    --sortBy 'fuUtulqiQRYcx7Xe' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'MMiHr2nhyC2q07sa' \
    --limit '30' \
    --offset '0' \
    --preferUnlocked 'true' \
    --sortBy '5inkhchM33rC2IJk' \
    --tags '["UBlnRvIN1zRlmul4", "JA4vp38iMiff2t3V", "AGMcWGCDiy06VzJD"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'xZZKmtxxZbAG3iLO' \
    --namespace $AB_NAMESPACE \
    --userId '5mBKzarMU02YGqU5' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'wIn9XzidMkUop9Ry' \
    --namespace $AB_NAMESPACE \
    --userId 'KHgrX2uYJ0Mmqdiy' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'v3HokN2CJkwwuMUm' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'lxxGazR0JyyYjHrS' \
    --achievementCodes 'Rkr53V2sYC5zZocC' \
    --limit '92' \
    --offset '85' \
    --sortBy 'CggTgb7uPQoAzmFo' \
    --tags '["EqX7jSs1TmL0mnBq", "q0PKCh38NZQyPuLr", "ODYvZxuyxXt36I4P"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '0' \
    --offset '50' \
    --sortBy 'updatedAt:desc' \
    --tags '["gLoxoyzXF7uCfdVH", "YTPotwStjRpi7Rzt", "kQ0enezZupdQkks3"]' \
    --language '0iJZCxCDc7HhlrEU' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'BqN1hvCTiQQH45dS' \
    --namespace $AB_NAMESPACE \
    --language 'QeSb1thtVTJ3wLj3' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '6tLutLk7geNDzgrd' \
    --limit '93' \
    --offset '5' \
    --sortBy '9jAur93a6kjuo1KT' \
    --status '4hVuq6PxK8P20KOf' \
    --tags '["kCT2d0va9pu4UI7Z", "1YJ2lKnD6OBmPE3C", "09t3T1WVErOfY8Df"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'U3E5cw7ksd927sQx' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '87' \
    --sortBy 'Sk3zchokV3TVKqKp' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --name 'v0pZt6SE0MmVvEjT' \
    --offset '23' \
    --sortBy 'a8BPVvawpzWzgrZw' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'ExPX1c5UOgDAoAO2' \
    --limit '87' \
    --offset '94' \
    --preferUnlocked 'false' \
    --sortBy '05xQeAVQYWf1nLYf' \
    --tags '["bzn33uV4r0VzBiWa", "TIaw74jE1hRuLMDc", "QoiXuptoDJZNXnSY"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'tYPIivxgwRAlsQEK' \
    --namespace $AB_NAMESPACE \
    --userId 'kUDZK3d3xi0yzHVK' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '6ueOPuhQnHlkiJMu' \
    --achievementCodes 'EqcnN9DFWxyEWGlN' \
    --limit '87' \
    --offset '70' \
    --sortBy 'tfL2zqMxRSPQaIQq' \
    --tags '["GhverJDrVlv0TWjz", "lBJ5jl7mfGCasexK", "UViek84m8b0z1b86"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'Hei7LWzfVM3yuvo9' \
    --namespace $AB_NAMESPACE \
    --userId 'mfLSJaFjkTuFVPrF' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE