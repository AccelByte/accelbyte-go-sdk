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
    'type: acceptFriendsNotif\nfriendId: AB5nn59bGWDDG0MY' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: 4NkXQEEdCgQhOJnZ\nfriendId: wVf7DODk63PlSeCN' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: 8ohOBnJRBmSlxtpX\ncode: 59' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: 7LgFZb6KbwygY3bn\nuserId: DFHOYvGaETlDi1it' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: q1iBaFhcvrYLUvm7\nblockUserId: Y0MpeOtRVohHtvpt\nnamespace: LFkUrrs6QS1mGqpf' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: 5Fv1vuS8HAfFUykp\nblockUserId: IJ5i7dJlrg8r9b1I\ncode: 10\nnamespace: hkfq2KSEZrk3lzzx' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: JWdJSlaOohyujIuu' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: qOHHKk66CBeDNoF1\nfriendId: kGcuI7F7ic5SspbT' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: 81iNAA3jvpRpBvOW\ncode: 66' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: G6qX7jZk2Qdwmqkx\ngameMode: 5eBL2tVvv5VjJep9\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: aX8Ld3f7PilwklYt\ncode: 46' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: wvvSdfeZpNRs4hkj\nfrom: 8eWsufol40PVyI6L\npayload: Z9Sm8Sxlnixv2IYM\nsentAt: 1993-06-05T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: sy68070ne5WPLRhW\nuserId: otQOa2cwn0bLvWtL' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: F88Q1zuko7Sa9X7S' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: EfNfazbyocHJVM8m\nnamespace: Xd2KfoovPArXdHfF' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [3Wa6YZ2kQq9cIH8j,SgAsgbn4EV2ldXxY,G7Bc4qZg5Bdzv3gE]\ncustomAttribute: hby8maHMPkfvBLfy\ndeployment: 5Pg2ResBrIOS3V25\ngameVersion: kEbjbivIB3ZPrtjs\nimageVersion: ggmW4S3v4D3C8edt\nip: 9ZnRKFiuBabgnaGo\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: jDBrk58faSM7bof1\nmatchId: 3Mvy0jUouWXbROwV\nmessage: yvHwYP9lltd5cdRM\nnamespace: Y7famKeEpfIURwx4\npodName: TlyavUV9bj07IIHw\nport: 96\nports: {"8hLxoFhFciCvmZDU":70,"DATu7yNggDlzz8w7":38,"InnhjNkJizpyeKSt":44}\nprotocol: JX5PQbS7l8ErmVBq\nprovider: ERVpMJNjta37hgb7\nregion: lBzUn5iH4P0cInzE\nsessionId: M3GgrIYzMVkKui3J\nstatus: gsH0A5hWxRoKhpfS' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: eMncxhsaQbdqozBE' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: WJuemiQBfAyb04nh\nuserId: pMfrcAxoWvVFITqR' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: VLdvP3RWnrBa0mGE' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: L00Xg2wPrIX94wor\nactivity: [ahLde4Eyj1cP67cQ,oZTZxLnUCwyDHhvi,WDhhYfIfm9DRM0j9]\navailability: [hcY2mS9mUOLiAKms,1tJwRY9qsLEo8jMN,sKILhZK3cuUaErBZ]\ncode: 46\nfriendIds: [vXR3Q6zepoqdUajV,J58cXygLPEy8MZfJ,43VzRN50Zh8RMc4k]\nlastSeenAt: [1972-09-16T00:00:00Z,1997-05-04T00:00:00Z,1971-08-28T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: QaD5eZXHs1K1YLyY' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: bZNsVJL08Fb4KWQ0\nattributes: {"UbcFOvXN1IsjdKcU":"IVYYvoZ3gBxea5ad","N1sSTP0oEVxh1BmJ":"19UrsWnjkvSdo4bp","tMimM0VPciLueqrR":"NsmgfYPGFNUQ7sjj"}\ncode: 72' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: yXCgAb5YKanOThuI\nfriendId: 2uNkDmJtRu99G1th' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: GGRTLJsjs6OpCeKw\ncode: 82\nfriendshipStatus: YI2AweCtI4dbkjfq' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: xkQM8carkIFuWl28\nkey: fGZFvW5yUkcWP0PJ' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: N8LOz0mDc182pN6W\ncode: 14\nvalue: jYFZFfT3w7Ntshez' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: KvtzSQKblf3Jdpme' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: 4WqyQhirH95pqAKr\nchannelSlug: PqPA1sJASIzgMU1A\ncode: 28' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: UKOkFuLzQJnYt63U' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: cWa6pEkDoO5MMMol\ncode: 52\nuserIds: [z6gEeZPfFBBdFwWI,DjyOjlR4jUjMz6E1,rjzODUJO5QyCM0fw]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: turK50Dy4Dd3Cbrd\nfriendId: G4hZL5bSN5avO94L' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: wWJO1MYpwmOHIENM\ncode: 92\nfriendIds: [Kzt03gd56IcB1ldP,LzCocPiEMqmcIVfv,G69dPKoTShCvmAqC]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: xHDZ3tIIPgbbOeHs' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: 1r6wejzSQblbXahO' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: Ddw3iSUEyyxn8UJm\ncode: 42\nfriendIds: [U9eGCw8C9TXY96ww,veHuTctPdh7o71CH,2V2D5WXed7PLtDhM]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [QszJtXrbZltHxWPC,phZJDhrBBMSzijxU,T8nX66P7YqwZqBd8]\nmatchId: CKhwHWG003v3sLkn\nmessage: glAm4V9WFFD5QdJK\npartyMember: [9I4s8ngLyJWYrjNM,kef7S9n0x2LIuCrw,St0SWG2QLRcxmZHJ]\nreadyDuration: 16\nstatus: KebOGFdYxprg6LcZ' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: 3p3w0wMjjMfSajj2\nfrom: OHneWpAEKu7Y1xZe\npayload: IFTFM9iN6tqLR0LR\nsentAt: 1982-01-23T00:00:00Z\nto: O7sETCbN4bYagY1K\ntopic: JciI06E50ZHuyAKl' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: GMJxq9DCHNiM4EqR\nfrom: ZRk20xPrMdqP0O4c\npayload: kWl0KXIXMZdqXw9F\nsentAt: 1994-07-07T00:00:00Z\nto: c743LCjRVP0AxsV5\ntopic: UptGrgwBGKKYNRhm' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: Iam2DZN2nt9gQM9k' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: LAFnaYHOp6RWa6Ci\ncode: 74' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: wmW3rG5PGuOhkcCC\ncode: 55\nonlineFriendIds: [2Faw0CXLtHVCxDft,Lnyy9nzwmQTOEonG,A4YxAGOh1GnvHFiJ]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: YczTfpIJWSj1yTnh\nfrom: seByel728MO4XaSv\npayload: t3kcoGJIOE1BXTHe\nreceivedAt: 1998-09-15T00:00:00Z\nto: bDyhsuwT5sqYflJa' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: J9fyurXI4kXRgHSB\nfrom: rQPfvWJecynNnW4C\npayload: qSiwRsCPj4vOHvd4\nreceivedAt: 1997-07-01T00:00:00Z\nto: hEoLlPCcQUEuHG0F' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: cGcWKTrUaI1EooIE\ncode: 22' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: vhurstkMuKfaO2lu' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: 51fQ0srXVObZIJwy\ncode: 6\ninvitationToken: pepgIVxzqidNZdoF\ninvitees: TLdbEJ1i7tHVjER3\nleaderId: D6LcFZW5r7FH9LOK\nmembers: jpvmSQX84Lp3lW9Y\npartyId: jPq5KWQ1z2ClLURk' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"M2AQ9NnUcD8uiOrW":{},"IcwKIF80csIZSmSd":{},"e6Xv22b1QG78hPSc":{}}\ninvitees: [bFcUNzRiV3du0g4P,MsiOHrWvBNtkV4h5,I9FqwyB0UCmpHmyR]\nleader: WEkF8DH1LZHqb9V2\nmembers: [brgbAVLnNVYhMxb5,ZUk5069U7JY5twPq,qL9Gj33iOiH1DVGG]\nnamespace: feip7umLRfNtPJP7\npartyId: OndGkQ7ToKhhtggU\nupdatedAt: 1973-09-05T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: sz27r9tjlF1k1I9o\ninvitationToken: zeA9LWh3jHFSnf0K\npartyId: imjRPdWsZ52sCDfS' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: ZGejMfexD1zhEu2I' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: cvq3L4Gbk84Zuela\ncode: 85\ncustomAttributes: {"JUMN1nFOn2UBf8Fw":{},"PCEkXAYRBcyI2vqS":{},"x8pP1MB8MbF8DCd1":{}}\ninvitationToken: HN6LStpfbzS8AG9B\ninvitees: NqWhnSuxzbQjetxX\nleaderId: Z0HjRD5WZ8e6MSZr\nmembers: zSJn4bdpdjBrA87v\npartyId: Es3AyANXaSr7BGfB' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: HwTwgC4yoJiBS3Ox\ninviterId: RQSS3dtyckdldSGx' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: G4Z14gIh8gbPyvkG\nfriendId: XCzBLEcHIglN71u3' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: a00Zq1mfzJAFxcpG\ncode: 77' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: vIdZ5d0dn1v0K2fJ' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: DSfxcVElYJ3ZaDIn\ninvitationToken: vJeN7j6AweQWYrKW\npartyId: Ee6tZglViYtXCcOa' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: RF8pHKEQ8XZITT0i\ncode: 76\ninvitationToken: JAioMHgiABsVTwrI\ninvitees: cHau2G59I1eT4qih\nleaderId: NolrZmYZEbMRSxbg\nmembers: PE7vePpucd5e9AEU\npartyId: WUoDH5wPwQIxUmZs' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: wLV4O7rntSm26chV\npartyId: 6wakz2pPpA8q1icZ\nuserId: OXpboRcFG4ov0MF8' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: sjSOl2jYyxCFuCzH\nmemberId: YioQA2OZ4cdArnl1' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: SnuycdPJnoD52uj7\ncode: 39' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: IJ66nxsscA1K8TGi\nuserId: O5qAVFJvGOjwtqCt' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: GdneU5oc8Na50Edr\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: lMgEXfpNQb5zb6MA\ncode: 36' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: Ptne6kqnFagScp28\nnewLeaderUserId: LyLLBsyocvMuWDAo' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: WoVWRiaVOQ9UK1Bx\ncode: 42\ninvitationToken: I3RYxbd9AJ0V2rUE\ninvitees: 8yeVAPr8AcftPadJ\nleaderId: KYFDv1XbW6Ynh2jJ\nmembers: umGW4AQMCSKbJ3La\npartyId: HlNLj1mch750FBJW' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: AoAxCHTjRHCp1MA7\npartyId: sTWKJmVNWSgvkx4q\nuserId: 9kK9ky6B9jjtPh4Z' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: 2rhQoZ6uMIg4TaLH\ninvitationToken: kqKE8B1enaHoRcMw\npartyId: fytkYpW286JPDt97' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: A6JyVgBJjDBa8p9R\ncode: 1\npartyId: 1CXfzoeokPiEiPih' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: biYIKmPJhHYL25BJ\nfriendId: Iw9EtLxGCnO4Hl1g' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: pKhKOW2Z0WtZBQ3l\nchat: sMf5zLBJnCqHGcUH\ncode: 34\nfriendId: l84sriP8tF3wCBUj' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: zTYP59qKWw2KxSAg\nfrom: M58BP99wb5D8d0em\npayload: QjOEEsb14GpNKxbP\nreceivedAt: 1997-08-17T00:00:00Z\nto: 39vqLnNJIo8XMmaO' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: yqDythpzI959UKDt\nfrom: Be5OtBXJNEj0VCSJ\npayload: HxVC7SQHIGrm82E5\nreceivedAt: 1996-10-27T00:00:00Z\nto: WlrSvsFVRvTY0o1e' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: NxdMR8pJ07DF0vGt\ncode: 22' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: nLEfiSsTffYDSNgS\ntoken: C8AQGrcWlDptMAiu' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: XXYFCyMOt8KdchKf\ncode: 95' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: exAfiJBQs1foIkkI' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: E5wGx9gsZry81ms2\nfriendId: S21jkVeiIvY5OBIt' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: mOvnMFXofLoBYgNH\ncode: 57' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 62' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: GUg80mv2ST5gaQYg' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: 9ADHKIeBOgffU9bY\nfriendId: ztNFEl57grldnH15' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: hRBDFAOwvfn7IOv5\ncode: 15' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: BKZBzpBrJX1jfrLI\nchannelSlug: QZMiDhTt8lR6d9Kq\npayload: QfNeHpatjChdNGJc' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: NizHvbDc9jmSWUup\ncode: 70' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: w0Ry1onZ4JKngWQL\nuserId: XYORLOP6g1c9w0An' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: w6dRFfsp4nZbBmOn\nmatchId: IbElGRyxbZsJbRN2' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: pPxvaPB4K9rvBFHy\ncode: 80' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: 7VtHEbmQa8RwqPev\nkey: bp0dRh7m6Y8DH5Yv\nnamespace: 9kzYpZbolJKOJtC2\nvalue: x9CyxAOS8OP2Y2l8' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: sllLgAMfo2kNQ9v3\ncode: 92' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: DT0k3BqXzBi6qMI3\nactivity: fh4tgoyJiIg6I8DB\navailability: 87' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: 5jA3dZ7AiR8TQwtT\ncode: 69' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: 0mYvJMfKF9h6VtxV' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: AniZKArnhRngvBsc\nmessage: 74vXcIivIjUkwxOG' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: hxIdAhYumOO5tuSU\nextraAttributes: 587IVhTJt3dmN1nk\ngameMode: l2qkLEa84JxDCH04\npartyAttributes: {"zzF7gsAvRXZMN2cF":{},"z0DqsbIlphYIN16y":{},"OgllXqNskbJyP8zC":{}}\npriority: 12\ntempParty: nrIsBpsrp69lvUD2' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: qjReE0YDVPBoJtZe\ncode: 5' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: V7HCwGgzAiIr4YGS\nuserId: 53kfCShUlOC9OzKu' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: cPv3QboEGqqXg7nE\nnamespace: ahvbYrv18FzqOKuu\nunblockedUserId: uUiNHGxLTYTZ1Qb5' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: 4c8h52mJfIGxhcuV\ncode: 67\nnamespace: qJ9XEICwPhVj79vC\nunblockedUserId: nEpbUoQCIm1zBe0J' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: OqH80aY1UlrX3lR1' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: k7URvYWRhJ68qqNu\nfriendId: da1Sqo1X0lTw0U5y' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: e8vW79EVb7dwfowx\ncode: 59' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: kMFBbzyETRSqLQKU' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: OurK4kqdDNm6lpvO\ncode: 79\nplayerCount: 18' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: CNRaBfkhR0kjKHMd\navailability: 21\nlastSeenAt: 1986-12-14T00:00:00Z\nuserId: JtDaaBHwmelspLVO' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE