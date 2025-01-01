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
echo "1..39"

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

#- 2 GetHealthcheckInfo
samples/cli/sample-apps Matchmaking getHealthcheckInfo \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 HandlerV3Healthz
samples/cli/sample-apps Matchmaking handlerV3Healthz \
    > test.out 2>&1
eval_tap $? 3 'HandlerV3Healthz' test.out

#- 4 GetAllChannelsHandler
eval_tap 0 4 'GetAllChannelsHandler # SKIP deprecated' test.out

#- 5 CreateChannelHandler
eval_tap 0 5 'CreateChannelHandler # SKIP deprecated' test.out

#- 6 GetMatchPoolMetric
eval_tap 0 6 'GetMatchPoolMetric # SKIP deprecated' test.out

#- 7 DeleteChannelHandler
eval_tap 0 7 'DeleteChannelHandler # SKIP deprecated' test.out

#- 8 StoreMatchResults
eval_tap 0 8 'StoreMatchResults # SKIP deprecated' test.out

#- 9 Rebalance
eval_tap 0 9 'Rebalance # SKIP deprecated' test.out

#- 10 QueueSessionHandler
eval_tap 0 10 'QueueSessionHandler # SKIP deprecated' test.out

#- 11 DequeueSessionHandler
eval_tap 0 11 'DequeueSessionHandler # SKIP deprecated' test.out

#- 12 QuerySessionHandler
eval_tap 0 12 'QuerySessionHandler # SKIP deprecated' test.out

#- 13 UpdatePlayTimeWeight
eval_tap 0 13 'UpdatePlayTimeWeight # SKIP deprecated' test.out

#- 14 GetAllPartyInAllChannel
eval_tap 0 14 'GetAllPartyInAllChannel # SKIP deprecated' test.out

#- 15 BulkGetSessions
eval_tap 0 15 'BulkGetSessions # SKIP deprecated' test.out

#- 16 ExportChannels
eval_tap 0 16 'ExportChannels # SKIP deprecated' test.out

#- 17 ImportChannels
eval_tap 0 17 'ImportChannels # SKIP deprecated' test.out

#- 18 GetSingleMatchmakingChannel
eval_tap 0 18 'GetSingleMatchmakingChannel # SKIP deprecated' test.out

#- 19 UpdateMatchmakingChannel
eval_tap 0 19 'UpdateMatchmakingChannel # SKIP deprecated' test.out

#- 20 CleanAllMocks
eval_tap 0 20 'CleanAllMocks # SKIP deprecated' test.out

#- 21 GetAllMockMatches
eval_tap 0 21 'GetAllMockMatches # SKIP deprecated' test.out

#- 22 GetMockMatchesByTimestamp
eval_tap 0 22 'GetMockMatchesByTimestamp # SKIP deprecated' test.out

#- 23 GetAllMockTickets
eval_tap 0 23 'GetAllMockTickets # SKIP deprecated' test.out

#- 24 CreateMockTickets
eval_tap 0 24 'CreateMockTickets # SKIP deprecated' test.out

#- 25 BulkCreateMockTickets
eval_tap 0 25 'BulkCreateMockTickets # SKIP deprecated' test.out

#- 26 GetMockTicketsByTimestamp
eval_tap 0 26 'GetMockTicketsByTimestamp # SKIP deprecated' test.out

#- 27 GetAllPartyInChannel
eval_tap 0 27 'GetAllPartyInChannel # SKIP deprecated' test.out

#- 28 GetAllSessionsInChannel
eval_tap 0 28 'GetAllSessionsInChannel # SKIP deprecated' test.out

#- 29 AddUserIntoSessionInChannel
eval_tap 0 29 'AddUserIntoSessionInChannel # SKIP deprecated' test.out

#- 30 DeleteSessionInChannel
eval_tap 0 30 'DeleteSessionInChannel # SKIP deprecated' test.out

#- 31 DeleteUserFromSessionInChannel
eval_tap 0 31 'DeleteUserFromSessionInChannel # SKIP deprecated' test.out

#- 32 GetStatData
eval_tap 0 32 'GetStatData # SKIP deprecated' test.out

#- 33 SearchSessions
eval_tap 0 33 'SearchSessions # SKIP deprecated' test.out

#- 34 GetSessionHistoryDetailed
eval_tap 0 34 'GetSessionHistoryDetailed # SKIP deprecated' test.out

#- 35 PublicGetMessages
eval_tap 0 35 'PublicGetMessages # SKIP deprecated' test.out

#- 36 PublicGetAllMatchmakingChannel
eval_tap 0 36 'PublicGetAllMatchmakingChannel # SKIP deprecated' test.out

#- 37 PublicGetSingleMatchmakingChannel
eval_tap 0 37 'PublicGetSingleMatchmakingChannel # SKIP deprecated' test.out

#- 38 SearchSessionsV2
eval_tap 0 38 'SearchSessionsV2 # SKIP deprecated' test.out

#- 39 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 39 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE