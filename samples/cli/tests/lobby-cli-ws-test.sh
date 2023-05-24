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

export AB_BASE_URL="http://127.0.0.1:8080"
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
echo "1..1"

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

#- 2 AcceptFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsNotif\nfriendId: kppk8qsF5EUBK2po' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: rMJDJrsGXUnxU44Q\nfriendId: e2re7VeKiZn4qKDD' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: sBZ0EQHnmXjqVt0d\ncode: 2' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: bia3JVd7pUMGjwps\nuserId: vBcUvFIo4rnuF0Lz' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: 9hB9wTdgmAVc8XLk\nblockUserId: JnxxxG08oEmDnTQ5\nnamespace: vXrb4aPApSA8lhAE' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: C5XQ2S8XmQi9i5aR\nblockUserId: w6f8vHX1LqqirN9H\ncode: 84\nnamespace: 7Pdmp5pYeaUf4e7c' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: vDVxWRd7sjcpOqTl' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: pehj7gU9Gk3f08by\nfriendId: OqwHsH8pH3d0I50f' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: 1iE95fvzFBStUq8R\ncode: 3' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: uFcOXZaln0qncHyx\ngameMode: kioneE0PzUBbtt5q\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: DVrDiFGBf7b7apZz\ncode: 78' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: pp0R8Gb8xN0uMOs1\nfrom: Q5ViSIu2zWKSG5O9\npayload: MYfMinKw863aNkvM\nsentAt: pcUtqGZrRHs9TPrU' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: Q3JUSweyIKuI9Wf1\nuserId: 7vp0huSaGAcvAgdd' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: 8WhUh9a74atrZzqm' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: JdeFEVykOdMhUrev\nnamespace: h9j1jJklhYaV6M4r' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [hAbyHscnDIf5qW5x,CyCTGHY1lMKujygP,rq7zjdWPvcARb91V]\ncustomAttribute: n4fljnY1H8c2svgy\ndeployment: 6EZg12oJuOrcInLT\ngameVersion: 1UNiBt2xA2j0LafX\nimageVersion: ySYhxMRgeMWIhv1l\nip: 1vbNnS7kCPV9MD1v\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: uQnlXeddGXwNmLHy\nmatchId: ELfu3lFJkfaOUl4n\nmessage: pbDCGqTemxwobQbP\nnamespace: W4ftgvUzm0ZRpeDu\npodName: c9xV0OG7mdZXDBrz\nport: 19\nports: {"yD8CJvr0FTTIW2A3":96,"tCnlSNSgIXsY86Ej":63,"7WMD3v3Lwggh0rGY":78}\nprotocol: 5z0c15SmeGdhDOvF\nprovider: dGHVunG7x43MDE2T\nregion: Fflr36mTTZP14d3N\nsessionId: MM4qEMJWBKUuqxBF\nstatus: MOzf5TJmizK35ZwO' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: 5SIVfcsW8j7wQF2H' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: S0rLyEOvzKClRDSO\nuserId: VhTo1EvF6u8kuX7Q' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: 6GldkIZljXpfkeLZ' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: s59VzvJTF8WQ7HJC\nactivity: [Wk1PXQtnjyYQ8a9t,yU1ldKTD1dVMkvkQ,jcMRud8D2vXcoGmc]\navailability: [34,73,16]\ncode: 46\nfriendIds: [cjowX0oeD0npFAA8,UWaJuaPZafsmUP30,vX8DmcBnvkrXrPLz]\nlastSeenAt: [Mps0VFeIRiBDR3yh,F94cZQI9NdmS9Tha,mKqFqaFy0BOcsgjT]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: iCEwYiu5gEWkSjyl' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: DX3bmKPQFcwsNtvl\nattributes: {"wZxD2ENLJU7tN9ZD":"eIcKRFB0lnjwpwy9","cF0IVY7ShFKxHFbW":"KfUTg8CJeW3Kuz3b","9a0kcBnAUGKj181r":"Lodb5526HcSzsLoA"}\ncode: 65' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: lNHmLRQpXGfod0yY\nfriendId: xBw5lJG2xU9Aek5X' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: CcEtXIWARFqV6uTI\ncode: 100\nfriendshipStatus: tCAICxTDN2nGQ54S' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: SDajFHcM0rF1Tb02\nkey: 78DvBIjOijlhrFO7' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: UJx8y6aoHiWp4ru1\ncode: 55\nvalue: QV7Ys8S05sKRjq1I' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: KF3WGTpp1VvfKV42' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: psHw6hWpr5A9W89c\nchannelSlug: 6m2HEKvKRis8Asgt\ncode: 13' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: LTfkaFNlj9iAbq18' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: TYfKqWDL9t1wQSye\ncode: 10\nuserIds: [OmbOd2KkzMdftxJH,z0uRZQ5pyI8bgWJk,vBF4qf8D4qyydVyH]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: UsQHsDeEZbUI7CJ8\nfriendId: ZLZpSu4I4t6UPUVc' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: evPG23cyTGeB54bI\ncode: 51\nfriendIds: [Xdt1GpsfhLn495Rp,jPjAFJYUkR2OgQ7z,agI60HnBWkDuOSBO]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: WXtA5lqir1hJ0YDc' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: WIgLbHY7n7wIEosO' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: Udkx8yA6EUrEfMO2\ncode: 15\nfriendIds: [IG2z2vFdd1Sstsxk,ARLLBcKBvVJDlHFh,sosY9AY67i7eCZEf]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [71Z99nQvFKyoyIxc,EXE6aiAUpi7ZsSPp,4phte3ZJXlseNfCZ]\nmatchId: G3FGvgzElg7mDlTf\nmessage: 6cr9RFha8lQCgUyF\npartyMember: [uCJEkvk3DFkpGMC5,ahnoFk8Di5hyMdjY,vkjYzGh1wW9LLi85]\nreadyDuration: 84\nstatus: 8a4zIv8WlD5G3yJT' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: SwtA4A8ltzHmUYld\nfrom: hudfRoIPyC0l9yFY\npayload: ZjefPCUclJWyUgMv\nsentAt: 93\nto: 4Iucnwr4GvCr5Y6I\ntopic: WuFIdFHO5oakdv9R' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: YpjspvpYFV3kFfzG' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: L8jcKmLXUM7yWDY0\ncode: 5' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: P4XLbsqKMq6LqpeY\ncode: 90\nonlineFriendIds: [xgJPNa4Dpw1Lwtov,H2Au1T1B2vGBJOAo,zuEyR5dHXbs5DH3N]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: FeKdrYbB1kT9lt1t\nfrom: xPT2LcWxYAWd0rk0\npayload: NeTEsFqNhQywJZ7r\nreceivedAt: 17\nto: nmcLpNFNBKgTdNdY' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: hCTRqjpwfiOXNZ9O\nfrom: c1qQi6MVBV1MOghb\npayload: Xh5rCYWBuOyw7jOr\nreceivedAt: 100\nto: fymyvNP4QDvm1lQS' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: TXzg4Av5ZxPTe672\ncode: 91' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: o9tm1Ypzwz1BFQdA' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: uSre4TwVV3gTMLsf\ncode: 19\ninvitationToken: GM6MpdEC4lH45IuS\ninvitees: Qbn8kgzAWoWdIc8f\nleaderId: IualmBDmATJWwL6K\nmembers: yYCT6RAQlu2lP8CP\npartyId: BEuGd7HZs9UTP6wz' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"v8pi5xp4WddA1ab3":{},"IiD90aNdtVmA1ipm":{},"pO0XKrcai8qY4x8l":{}}\ninvitees: [DM2PKgmVW0B9ou0K,5E6QQVEH75K7hJWm,krN8YJHhRLGL5mwq]\nleader: RxbNEEXTT8b6ifS9\nmembers: [OzReXqN7IOPkuXMX,F0wugxcLuAbcgm0T,aQx0RvRhisHrzUZE]\nnamespace: HV9Ic7gf8D0nUvmO\npartyId: fCSL39mWKyhQfzln\nupdatedAt: 8' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: PjElwZibIEzUCZi6\ninvitationToken: QoA1aXjhL7eY2ejq\npartyId: Yqk8Axsz3XuXtJFc' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: vfvayqqvCYjle9Sn' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: qpJUBXWsltC4rCn6\ncode: 30\ncustomAttributes: {"lotCKqQiKkqTwU29":{},"yLViLCXTPvLpYMln":{},"rgo3WImpfyWH7knL":{}}\ninvitationToken: spTc4atecXEmDgXm\ninvitees: tUcyiukEMP7kSobn\nleaderId: n4HXimmWPbwdFU1p\nmembers: z6pxib1orihSE8tT\npartyId: lVD29RC57Eqz7G2r' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: tdRRHIeYZg3C8LDD\ninviterId: Q9WXv0X48WfzPdGd' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: VgATeZFif84RqqRc\nfriendId: ia7U2hDxXb2npHhw' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: npbUZSywayUCK0SD\ncode: 24' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: Z3z8sIBpt7nLdTX8' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: sJRISTsd5eYSRGXG\ninvitationToken: f7giY7c9Qs0SkPyp\npartyId: ZR8ho5tnAligxkGC' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: XiNLCgmdFXv6CqAD\ncode: 13\ninvitationToken: 235Xj1IVUr2lg194\ninvitees: SDC97C18aZmO9U0K\nleaderId: qx38d8RfEdwsAUBK\nmembers: zDaRiDtWqp0JxSZ5\npartyId: 7PJJhE1mH979BYlb' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: HaFPQVTEcQUlOzXZ\npartyId: 8svlm65xqkxy17wV\nuserId: 5goVCJkKVuQlYNvM' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: FN0wCBblWpXwIiWi\nmemberId: GUckAVijc8q6Zdpt' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: owsSXO4qTZ1vr0ce\ncode: 31' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: Qsct65gjsUoMwWZP\nuserId: l6zDuP4jyc5k9OHS' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: q6LFgQlUgY1ujxtP\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: 0mQRArBktCVuidYr\ncode: 97' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: yQCNbBL8mId1e3t9\nnewLeaderUserId: hpf6zn6g3PYgnZIf' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: 6WZebgrDCLcZYAJ1\ncode: 77\ninvitationToken: dHvaMARqngjCuMfo\ninvitees: fhVjkLAGeteQVu1I\nleaderId: OLUnxYltmBYeQ6aP\nmembers: TSLiT1J01M8cUbBH\npartyId: iESZXrQ8tkV3Ov0m' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: aeOedja8ujivGNnv\npartyId: VOQuz2WzsgvhoQZl\nuserId: 9Qw4o0tu6XT4ij3M' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: 71ZKgJO3deHk5X96\ninvitationToken: cn7ctEChUUg3MUAh\npartyId: Rmtn0hoku10xAEKm' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: lXEyZUZvrB13TiQk\ncode: 52\npartyId: Pt64M1YLHbli8NgH' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: CRGkCcoAFWIXYCOU\nfriendId: RbnPCCNKeQINUsMl' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: AxqSbTI2S462XYxj\nchat: xO0hQQgG8FT3LcrM\ncode: 54\nfriendId: qGrFFvV28hSAwnZ7' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: ep9f3lt0sSKwWFan\nfrom: Wzs8Sb7DWx5hw5NS\npayload: LMYWK1AxQ4FO9zho\nreceivedAt: 4\nto: uyJJ2irtAI9QBaXe' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: gUCW15rHp1dFnKup\nfrom: bqzHk1D3RPI6CRkL\npayload: WTuvIlTGm1dNGtnU\nreceivedAt: 72\nto: rVdqMxHDCLmQVRSu' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: P0k7gGvqI4zTTfeP\ncode: 30' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: QmfqwU7Hv4A7bw7w' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: g2eNLVQxwPhVfypE\nfriendId: LLp0h9z0JSE5KC6H' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: Ob7Gl5pzXKsnOYbw\ncode: 58' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 95' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: MhOUT7lHICWiPA72' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: kV9KUiw3yDAcRn6m\nfriendId: KSkuMx8VU0avNGNl' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: wm95P9HO6xqvyfm3\ncode: 100' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: oMMqt8SIF6l6sSW8\nchannelSlug: ownj01XyFSnDIQpS\npayload: DpV2YqA9rG0iaUHR' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: zhR8MtsreWJXYZru\ncode: 50' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: oWJEldqxNzERdKJe\nuserId: uf1R6tXDno6GsXJM' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: xEPDKLORmO8yeX8o\nmatchId: FN2yhkyxvm7x1Rry' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: Tr8lPMyNqWsMbjU8\ncode: 98' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: 9nY76n80zShIrSqN\nkey: PLgETFuEvqXYRSeJ\nnamespace: a3srDZLhUshUl5Uh\nvalue: EeHPmdHoLZUBIsve' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: dRWO1zWmnUxS765q\ncode: 50' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: TrDtXcOb4OABbi9T\nactivity: as9RNDySTGcRzcd1\navailability: 31' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: UzguvC5351lUaXeg\ncode: 14' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: D4NxCFFDV8IEGOT1' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: RtNiBSZ3QNYR269Y\nmessage: ziZthDMMvcSFRBPF' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: PvT6tkAzxcm0uuuM\nextraAttributes: ekkcedmr9i62BwAy\ngameMode: DAXV96s2V5RXVZhl\npartyAttributes: {"P2k46g5IHXNEIVC5":{},"PUjDSVW6DcjLxuBb":{},"fDPRddZAW3CwlmSN":{}}\npriority: 78\ntempParty: j01BRY2sznqSVjVc' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: G46xRP6mgUQc6tEm\ncode: 38' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: zUmMyt3ZRlVzR6W4\nuserId: 1lQQkRnRobkVGyYt' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: SjDxvZwT5tFyGeVG\nnamespace: AKAUpoC2O4XmDq5Q\nunblockedUserId: V3R3JX0GtmmLynVH' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: UgHgt6AxnqonZQBs\ncode: 17\nnamespace: 3damS6B3itLmkT8A\nunblockedUserId: iFwoYeNPdsB0IX88' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: iLBNcCV7uGPjhOgX' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: Up63IvwfTK51VqqS\nfriendId: ZaLYIzDvgCprU3ka' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: p4WFDqmmxjnrbpME\ncode: 97' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: ebUbQTsjD61XTGqC' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: H3k2UgxmDwuITd3f\ncode: 45\nplayerCount: 29' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: SjHLdGr2lt8Z7ZSQ\navailability: 2\nlastSeenAt: BTg8MjqsNhZcWoPl\nuserId: SK7XBQWMACp3Rzme' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE