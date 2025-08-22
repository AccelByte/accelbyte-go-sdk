#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test_ws.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8000"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

export JUSTICE_BASE_URL="$AB_BASE_URL"
export APP_CLIENT_ID="$AB_CLIENT_ID"
export APP_CLIENT_SECRET="$AB_CLIENT_SECRET"

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
echo "1..105"

#- 1 AcceptFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsNotif\nfriendId: 0CGdK8goBPbVccMW' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: v2Hjl3Uq8h9KN0Yd\nfriendId: X7JE3ArZselfNh6Q' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: hKmuZtdDvwZNsVhP\ncode: 64' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: BygbvArUuvL1sg1V\nuserId: 9avSEE9u21FBTGJU' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: piBBfBM7cZcOXzVM\nblockUserId: EieZJxUYgnaBtqPa\nnamespace: BELiev1v7lOxE8jz' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: hFq1XTVlM4EpO8Gs\nblockUserId: KAsov3eS4yIaoG0W\ncode: 59\nnamespace: Ub9dbUJ5YXbV5R5x' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: YBu8cVuI0NwkBjqD' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: wSNeDxhcvKVRVRZY\nfriendId: a0fFcIMC9Jgfev46' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: 9DcKE0GeZ9Zq6Lud\ncode: 94' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: j4yqQg2aYEu0doct\ngameMode: O9K6hjLha9qpOJXm\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: xqb9nJYNTbpHZz4f\ncode: 11' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: DHw1SgaeFmZeoe0q\nfrom: JbDk8xBXpTIY21K9\npayload: rJM8oGAEfGgsiODZ\nsentAt: 1985-05-15T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: mS4XDOsyGWzweRzm\nuserId: 9kNArl8VcOCSrndL' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: AP45kz7rsQCoDvyb' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: HtaqEb079OKvnaWg\nnamespace: 52hEduEHIxjHTMpo' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [RFfpYzk1CrEX4Oga,WWWIG1Gn4lb4Omkh,c3Zv6R5BRDaXMCAI]\ncustomAttribute: OoqmkS8mCjZb5Yd0\ndeployment: 0mhCuBm6jbBJO2jc\ngameVersion: nV5RYe6fxkMt7G45\nimageVersion: EJIX51sQPHt9inbo\nip: tqzWVtSxDeI37s0k\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: g81LMbMo9oZ9rUWW\nmatchId: rgLMBXPhAYXHlETW\nmessage: cLjEjvGkwqshSbqH\nnamespace: X3LksrGhhAbKEgI8\npodName: 13FdbAVEiQohHwr7\nport: 75\nports: {"R59af0c4RxXEK6u7":33,"mdHzFPP7ZU2BegFr":18,"6WmGhQvgIkI4a8Aw":31}\nprotocol: pNMJ8Qtkrxa9kIhW\nprovider: nXabOJD3VSX4xbD5\nregion: 63Fu3LXw7GiDKZKH\nsessionId: symqTIkD4PZ4kFxP\nstatus: xnX6LCM9w7tJ3P1p' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: bPFQKDI3jWvDzVq8' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: SAExi4tIU9CBPX6H\nuserId: dhd5J8IYVcQ3d0yK' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: WzgbOnYD4IEaIYfk' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: 3uDp6BKuPw0orIhz\nactivity: [bYbk9W3SDXiSnsKl,DerzvX2iDI38mCSE,XWSGPfYa265ROF0V]\navailability: [1p6VMqU1QimQinY7,J19bdkXAoR3ZXMQr,qKWpNWDCOhLlUGGj]\ncode: 57\nfriendIds: [bZHFJVijK4qkyAGp,C1bWcFoi3EY1qo3g,NJhvzqUp5MRkIT2k]\nlastSeenAt: [1971-01-15T00:00:00Z,1994-11-14T00:00:00Z,1976-11-11T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: GPfNdYG2W1ScRxtV' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: ujdzwsvsfn2cgwu7\nattributes: {"pzlN4CS5DLeNm2L4":"jMV6vjGfhaSVWthM","46K1up9gh1yWPb1E":"F6vJpFPjRgKigx3y","1xVua23Ki9fsIhqt":"iSDj97bY79ImXWhL"}\ncode: 13' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: cmDSRFOAep9U1vg7\nfriendId: tG0zjXiaT0kwrvxm' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: zkJEMRwitTLutcrc\ncode: 84\nfriendshipStatus: nhK82uZHyJbwA7O3' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: izykwFSwuQP9BIw0\nkey: Jya2nPKuwR7RlAZF' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: Tyf49FMMJQfqYCm0\ncode: 22\nvalue: 62hcpPpyoVbUDsjM' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: rgcHklM5XpQTBy9x' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: q8pLE2bOBrx882jn\nchannelSlug: xu5NCugQvQWyO3JD\ncode: 72' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: 3DxNmncLkLy7tYYz' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: wSPcvg9TxbYkduI5\ncode: 91\nuserIds: [5VbRyBarJc6pYdCO,2gu7JwhKKr9WIu1L,IWSaioASc1QwDg2q]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: ojEba4MqWLAG4tvO\nfriendId: Dx4oC6livs4syn42' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: 5tjIZOhyU6Anjwcy\ncode: 85\nfriendIds: [Ad1rtBm0rT01jSE6,6hmZKuKtfNNbGaxr,Gmi8g5twAX2wpj9w]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: MCGn0ULWBrTZgwPQ' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: giaUdtL3DXt1hV67' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: cOj9iD58n5EiupPN\ncode: 89\nfriendIds: [ioh50q9MYmRlyok6,ZDWjTb1J4yIUtVnS,lTtejYEjxwLsLf88]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [SMJKhwVCdfauqSre,qpH7c9yeNedn85vR,2hYPIiFshN5QsL7H]\nmatchId: ch917ALmYbptmWUB\nmessage: NKSFOoNrETAiW1wK\npartyMember: [9VRwbGsV8CbSC1ot,ZvrEAUQ0eUxvfcHc,UcisC1OYLgoxOGpU]\nreadyDuration: 42\nstatus: rYKfLsLBz5QMySpy' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: WmAmOEIVb7iSqooc\nfrom: Z6byWD9qI2LQ6az9\npayload: vhfN9YNUHu2yOOHP\nsentAt: 1977-07-22T00:00:00Z\nto: 81PrZNEaikQtt17m\ntopic: voXUctQpRyXlKbHA' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: jr05LOv9ZxyGSNpT\nfrom: 3uCUZUZevgnjKbE0\npayload: zNDOXuf5mEptz1VV\nsentAt: 1976-12-27T00:00:00Z\nto: angMQcjMSTH0993a\ntopic: Dzz7q3vWa7aIaXva' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: b4zTS9hYixx4oUo5' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: ggahYEXACPJAlLpE\ncode: 6' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: zOJMor2QOVLkNOkC\ncode: 33\nonlineFriendIds: [HSOAbTn6M1QrKW3B,k8rrwnuEbQfgXvU8,9s7mAgVzWDLF8Gw8]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: HY8hiVHyPyZiocNV\nfrom: bd3L51KMnWqPsfuj\npayload: F75RFhvrki0FehKM\nreceivedAt: 1991-03-12T00:00:00Z\nto: cEcZoHSrnbrlznIb' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: BdFcbeSeTKgoMBg4\nfrom: cLfVYQO2zd6Cz4zy\npayload: a5ZWMPK9ACSZINcH\nreceivedAt: 1995-11-04T00:00:00Z\nto: ArwzU4FQTBSw07pD' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: AFbL6zrtA0CDZeHS\ncode: 53' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: 5vf85FJ1EbO4VQzM' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: iMLhprwex2JtocaE\ncode: 18\ninvitationToken: gPPuwytpi1YbsX9m\ninvitees: MKDKZaZH4TzKB9wz\nleaderId: hg96SQhpFCo8CqNz\nmembers: L5Tnh0LXgbczRFWV\npartyId: zB8wNhh93pFPi5Hg' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"ZkhQtBqPa5KlknMi":{},"diR28HuNPDiHDMfo":{},"ZQRjmywanp6tdmF9":{}}\ninvitees: [LHaSkWUPzNQPJKv0,LU6gRbA9VV25BK6O,AM3MiCXGJckMvKIf]\nleader: VxPhN1V3I1xPpD0e\nmembers: [534f03Uk4wGM0d9D,yzKWuEcA84jwHMel,DCZ03Ogsc81qXrv7]\nnamespace: cUimDNbPj9qtRq71\npartyId: S4iLNVolbzOokbZk\nupdatedAt: 1989-04-04T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: hwX9tQy9FS2YKReN\ninvitationToken: 9JuF38VVV8ZwjnHv\npartyId: p7rPOh9tNfNPdtm8' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: QjS1rcP3QZzKWpMj' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: DQGoaJUkhpQq3xYR\ncode: 69\ncustomAttributes: {"RnL6dh4rRSa2Qvo7":{},"ikWQtBCx9oCb8eur":{},"5Rppg69UXEzCuxTm":{}}\ninvitationToken: N5YrKhpnt9UBnBIB\ninvitees: 31vHCyAcsu25yUOt\nleaderId: riY8FFJ9xPvBOxmu\nmembers: W3qF0iU49YPsgI6R\npartyId: ycKzOHajgovYXdqI' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: YCAhdpjQC5wtOSkP\ninviterId: xbrs5DABZPEOREos' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: jUsGpaaLu2Q9WNIX\nfriendId: rGFfiYBDeIUtrAog' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: 39Egr3StRTAH4zAL\ncode: 78' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: Hz4D6F64TsVfajKx' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: lmNiYUeZUAO9sBWH\ninvitationToken: 8MHi8C2zyuR67Bd9\npartyId: D7MLUTBiQOFagZTU' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: hAe4Gb94WJZiXem3\ncode: 1\ninvitationToken: gmylg6U6PC4wvXY3\ninvitees: 7IGxesDBTTUb8l0q\nleaderId: PW5B6S0Bis4r6Y4g\nmembers: tqeTY3CWjSWJPUtF\npartyId: my456hcDhmqbGbfZ' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: inJ5v7HlL43fumgB\npartyId: 4e8G2nE1oESP30iG\nuserId: sXa2rJAibDhPt1pZ' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: hFF0x46I4KEnD2p1\nmemberId: DHkNz77cN10JrxFb' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: YaI3ahLKIW7e1NE4\ncode: 90' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: g6W8m73pauFqbhbR\nuserId: 332XbQooMrWiWUG4' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: HZkbfWV7XjG7tEmA\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: dAolJmAmqvAJiC4C\ncode: 75' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: Mjq3UofxTVEZOmuW\nnewLeaderUserId: tdp8bCg4G1c8Ogkb' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: cavjW6JeZM7Y66CS\ncode: 50\ninvitationToken: bvB9wzdzlOsSggh2\ninvitees: 0xo6991hDl40FAQQ\nleaderId: lktS4FTQ33iDYZxq\nmembers: BW1FLVXB5SQsK6q8\npartyId: f1ulJxamD4s68MRl' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: HLk5qNUrD1U1Kbga\npartyId: cMo4KzMtK4gkhEYl\nuserId: SKxJ5WWP5DsnTrTw' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: DEVsChYu1vdKWM8t\ninvitationToken: HkWRSUSw75DoA7QJ\npartyId: tUJGPXOql4dfgn37' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: JvqVaIsC6alWy1Eo\ncode: 45\npartyId: POGGacPBbqLW86tM' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: mH1KXo1UyAqlLbpH\nfriendId: xWkujA8p63SQkKLw' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: KdUo9T1KSBz8CFdz\nchat: j3oq3OC3eiyEjeAd\ncode: 38\nfriendId: d6NyW6xcVLnBxUbD' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: wzMTpmZDo6zldTxZ\nfrom: fq8JCH8atiOcjS3O\npayload: C05fUup77sTjXajM\nreceivedAt: 1988-04-12T00:00:00Z\nto: olE6Cya7LnWvUOwn' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: 49DnWcA6fVJC9JiV\nfrom: tL95W0Ya9B1bRTf1\npayload: aA2IXHR7hdRrqCTl\nreceivedAt: 1996-03-11T00:00:00Z\nto: I46bgWB1WiYAdWwP' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: eljIeP0Y8T9tAAUj\ncode: 84' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: xfMS9ByyFwVFFTn2\ntoken: isAuDUQUymSDmIrS' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: yQSp98zqsaydzXdB\ncode: 62' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: E8t4zdKR3LrtqSU8' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: pUr0SvEtl6As5INg\nfriendId: c7aklegD2OpbI5m1' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: Y8WMMNxXveUw3wD1\ncode: 23' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 35' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: YA5eALElomR0Ljse' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: ZazMzt7RpNXZp0Ed\nfriendId: rgLHs1Fz84eW3nwv' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: wHXWgLWslArIMIgW\ncode: 18' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: VN7NsFTkCSzVd1YP\nchannelSlug: tlNf9HnlfiNzh9Z3\npayload: C5LccYRVtFu2wlZc' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: g9OI9KIiVJg3f68w\ncode: 17' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: nB2B9gqjXjBesebQ\nuserId: KO3ZTvGrrzZoMrOC' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: w8qoPpM6gSedd60y\nmatchId: iTsg9HsO1dJqlROk' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: 5dYFKqZJvXRaIL4Y\ncode: 45' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: ZRbn759928KEeS1K\nkey: vXd2R2VgN09lyZ3F\nnamespace: hwOL1j6aWuhJhsHg\nvalue: Y78VpAZxcXBXCKzj' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: Ll6WTjRe5ou39oaT\ncode: 53' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: SwGwArmPofLEUbGu\nactivity: M33hKD55jreR20Nv\navailability: 2' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: Qi868t8gRE8DPnav\ncode: 83' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: P9yNqHpm6Eg5J9op' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: cPddR6kFiJ0buewZ\nmessage: DVWaPRo8UaiyTddd' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: 3a0kVud7tlEMYJpb\nextraAttributes: beJqn1QaNTPA1Oca\ngameMode: FAGhY5sEcb9bjTGF\npartyAttributes: {"fVqNi30zgxLrJcWi":{},"pAy6LXRbmCLWDyHY":{},"ppUCXlBvT0xLZVcu":{}}\npriority: 18\ntempParty: AavT4NOrT16GNjbN' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: WN6ntwL8GRypObL2\ncode: 5' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: o65Erzqsm0sxbUZ9\nuserId: IxBmaLPfXKlWvRZ9' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: Srq9qGWBfrM5bq9M\nnamespace: oIqDBItlVGtpUE4f\nunblockedUserId: m7ume9A5wurBs5cV' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: tUwlckeogZ0VadgU\ncode: 51\nnamespace: tH5gpeTeSwzk6sE3\nunblockedUserId: 7xvELkIN3REc1YxT' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: yLGfrlmAbDNmuCwy' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: Wag1XKVev5QVfbhB\nfriendId: Sz5rtHBE2B8x7HcD' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: V9PmJsEXaZphvxpb\ncode: 12' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: JZDEb0Pi57PhwgRR' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: vbvtiQ6y7gql9CG1\ncode: 13\nplayerCount: 47' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: AgS7MfIv8t7TQ3Rg\navailability: 85\nlastSeenAt: 1986-03-25T00:00:00Z\nuserId: Ps4kRG2TjrDJNopk' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE