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
    'type: acceptFriendsNotif\nfriendId: O9jdI6xtF6bCDYaZ' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: eqlLj9rArAoX54Vx\nfriendId: MOkDXQ60AdD7vBEE' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: ZHVG1DclSTciSseM\ncode: 15' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: cABqgfnNcVyOEw51\nuserId: cKs2Y0nrcN4aTfKC' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: NpgxuApZuSePnxFD\nblockUserId: qq8la4vIacOniqDL\nnamespace: MZXCcYMKP2j0eyid' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: utbubGjlw7Fqje1z\nblockUserId: rJQyVnGo7GMD7DwZ\ncode: 17\nnamespace: M7Gl0r238J2lrEVx' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: 5iwkeVYNej1RENt4' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: geoLycOgGs4hRnUT\nfriendId: 01QJX8idgX6cpKXe' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: 3wiBBtFze29HlJ7D\ncode: 11' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: h3yaYJSeuUDiZaXw\ngameMode: 0v4IMMUg3Z813ncs\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: pEwU6QUd6Vk5a1pB\ncode: 15' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: mTwtQ7Sobm9Qg52K\nfrom: fLNvqMTqmGb4kGWY\npayload: sHsvCYXQ5MIHYDSX\nsentAt: 1983-07-17T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: KHICib4x859wIKtg\nuserId: SJmNRUkxWeA2rboV' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: FVYNgF4KwJLL4054' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: b73bj7CGn3vIMJji\nnamespace: OdGZYqIn3fo9EGft' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [zUhFmNTmHw0geW1e,zor4VVAmura36ZCw,5YZp6hg4Zq7xTheL]\ncustomAttribute: sv20t1dHvwJQTm90\ndeployment: Pw8Jrxq112u2OW0s\ngameVersion: tfqq3Lls1uVEw15c\nimageVersion: MjZ9ijbF1pWIkUNL\nip: r4J9QG9krU7ep4vG\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: qOQKH4gO0t2RLblM\nmatchId: aNAaiLkt3Amww67n\nmessage: lENIFurmiKVBwYm9\nnamespace: 5EzUNaxzHKO9xOXD\npodName: lscsag9S3mhfKsJs\nport: 80\nports: {"kQvCw224T56p06bq":49,"PSExJ33arHdpyjqM":28,"uPC5pvARCJtscfCj":73}\nprotocol: e9SB824MwFYU1wmi\nprovider: lzw94GArrsn09Eyc\nregion: GEjzNBgtDzr73WwM\nsessionId: w3GNOpUxUWAV8rSC\nstatus: if4eXEDp3pXbdSqN' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: qYnvafv9LvO0gyti' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: T1y1eFdtm1NYkEdL\nuserId: HsvYDm8ZwqRj23al' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: gnB5YikGVLV1lXcF' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: qwQJsjP7nponPC1u\nactivity: [hTz20vg4FN1eusHT,aR1HMLfHfmIIBs66,iBbcb25xpv3eMOAx]\navailability: [CqkeYVrfaRiH2cVC,HJ9LgYl0aQM9HxDG,RikDt8hJHwPklUCx]\ncode: 80\nfriendIds: [1y1cC8BDcfMZuByl,sdW38gHhKXbpemDm,5dRv0wB1D0h0297a]\nlastSeenAt: [1999-09-30T00:00:00Z,1981-01-04T00:00:00Z,1983-08-20T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: mxqVjadYrqkuXUUL' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: 0fmDRjgfUpi0XCNf\nattributes: {"9o9IPI6esJwnPDLk":"Czomd9r663gkaBe3","UkUrNs6yoHN5zukY":"h6sHCRsF5LlYRdsW","2Lts5ZejgT4CW2Nn":"WqFXH0Oe7N18sGgQ"}\ncode: 48' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: DC87yyJqJFe40aKU\nfriendId: DtCqKHeN4tQZIHUM' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: EaZrMldk05PdInoS\ncode: 95\nfriendshipStatus: MHvR6T07tg09QyL0' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: VJcYHk7GxFkD87E8\nkey: YJFIHco4xOQaMa9K' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: 9jIiLlu2jNVEEUIn\ncode: 72\nvalue: lNJvah0ZDRk0N4jh' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: QpMSmgnG6lV8Y2Hx' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: RTZyQ5oGew3wQpXI\nchannelSlug: UOr95RKj0PZGTkxn\ncode: 0' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: ySg6TH4rnwaNn3Db' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: clDMJpDoD6UEsvtd\ncode: 45\nuserIds: [JvcpwAp9YX5XlCsU,MkiwmoFCzGu6iySF,YPRCHfvavbC8tpgh]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: 749rgchJJKTzr1lX\nfriendId: W0t6afQLYb99qd6U' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: IaJH6UtPyXytMP0B\ncode: 38\nfriendIds: [ennKL2IhUbJ2KRxU,0GnpiHx55fJyfS7Z,JsbEYUyOxhcw7CT0]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: 1xTXQddhv9d9jKtu' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: rXSMbG0Kdqd5VjCo' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: Y20Pg0wbl4WYD7Po\ncode: 43\nfriendIds: [NYjfQedEe7nRvnL7,voCj689aVb1satgh,HVZuG5fGRDxJA7MP]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [4Okno5cwTjUDEEdL,J0CJpc4FTGWpJ6zT,6yiAYFr6qkRQ1Eqj]\nmatchId: KXWIMbo9795kgw66\nmessage: U4uV3xMVhfWRavys\npartyMember: [r8U1PliIDntIfzp2,7sebYU53NQfD0lF8,fTcj2D28hm0RWCqT]\nreadyDuration: 40\nstatus: KtLh6UFXtvhpSOBQ' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: yEk2N2Jlp4tbiK7C\nfrom: 7TQVJ5bSTgiWe9sJ\npayload: efMHCjGsH1Bl76Lu\nsentAt: 1999-01-02T00:00:00Z\nto: hitK3CZlWo7iyyJ7\ntopic: QZ7IZhyMuWu31JAZ' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: zOgAKErxypWE1hkN\nfrom: zzKQt5DvsMxpwYzR\npayload: roQGOKHLHMTWVyCZ\nsentAt: 1982-08-25T00:00:00Z\nto: d7tvq1YQe3ZdRR5c\ntopic: 2V6jlJ7dIewlzWq7' \
    > test.out 2>&1
eval_tap $? 40 'MessageSessionNotif' test.out

#- 41 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: G3MjgzzRsbY5A4XT' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationRequest' test.out

#- 42 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: 5WqO35moWfFpsm5p\ncode: 21' \
    > test.out 2>&1
eval_tap $? 42 'OfflineNotificationResponse' test.out

#- 43 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: bItWMgXvn56vCzvI\ncode: 59\nonlineFriendIds: [1Oz94FfHC5DDACwh,MFSFoX0PXKJzEMet,OhFDF5rnWNsFUdGF]' \
    > test.out 2>&1
eval_tap $? 43 'OnlineFriends' test.out

#- 44 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: YGRGkDXqOKp1jAaJ\nfrom: E0C1y0pZ8ARRmuto\npayload: hZ8wpewzl3Gz8958\nreceivedAt: 1993-02-03T00:00:00Z\nto: TAKhxjYkxBwSUmin' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatNotif' test.out

#- 45 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: uyve01DzpFnWYPWn\nfrom: euDyTCjBMCdA1adA\npayload: 05ujyVTy6vwNji3h\nreceivedAt: 1974-07-12T00:00:00Z\nto: tX1vZRycJ0w1tfTF' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatRequest' test.out

#- 46 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: O6EYk1aIDWjV3ouH\ncode: 19' \
    > test.out 2>&1
eval_tap $? 46 'PartyChatResponse' test.out

#- 47 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: 1BPL4J89d2lSkfgw' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateRequest' test.out

#- 48 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: z3STNeimOMoxhEHk\ncode: 21\ninvitationToken: f2g1Ug39ayh7vtUW\ninvitees: EQMJH7gwyT3T1xI7\nleaderId: dGQaRoq7a7ltL6IJ\nmembers: EtnVq2qUIaXQx4Bh\npartyId: jmiv9juraynJ8AtT' \
    > test.out 2>&1
eval_tap $? 48 'PartyCreateResponse' test.out

#- 49 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"OKPY4SHjfV1DknEb":{},"K65xBIlJXd9ap9k6":{},"ajKA3Q0gp52vgbTc":{}}\ninvitees: [Nsr6EfPpaBNGyY74,c8Bila0be16vVVWR,x8lUfiXqIfJn6NYb]\nleader: 97ZjV2symztKsG4j\nmembers: [jXus2MlIPhqvA8o3,tLo1Q7MOISxpeYRM,aAVfDgvmBehOoJaZ]\nnamespace: yWBwO7MWPBnmkvN0\npartyId: uTsl3pj0SeBmaert\nupdatedAt: 1991-05-31T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 49 'PartyDataUpdateNotif' test.out

#- 50 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: kqjHc89tXs8lxv63\ninvitationToken: HTRvbNmTjOm9lyZb\npartyId: WN3baAQhKkFXqlLi' \
    > test.out 2>&1
eval_tap $? 50 'PartyGetInvitedNotif' test.out

#- 51 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: ASje6lAgUS3H3d10' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoRequest' test.out

#- 52 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: dL1e3iBMKginG5D4\ncode: 2\ncustomAttributes: {"h6elduCsL1lWCBpa":{},"YMCFCcZixi07f2DL":{},"DCUFVYjTlSb6AxJ6":{}}\ninvitationToken: NRosxJvFkWeDENhE\ninvitees: v2oBgGBg9sNhvOXB\nleaderId: EQrF9sKxfn1kOl36\nmembers: RGGNZLXkzM8fLLi9\npartyId: jE09xRpyxm0WlWdO' \
    > test.out 2>&1
eval_tap $? 52 'PartyInfoResponse' test.out

#- 53 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: 1pZ8y8qos559fToQ\ninviterId: X7Q0GxjxdnLrxXAm' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteNotif' test.out

#- 54 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: vOXImqhdgAtMPgxd\nfriendId: DzdRZWNofq5xqUdJ' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteRequest' test.out

#- 55 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: sgup7i8Xhdjr732g\ncode: 67' \
    > test.out 2>&1
eval_tap $? 55 'PartyInviteResponse' test.out

#- 56 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: ltPjRWPafRxe5A6W' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinNotif' test.out

#- 57 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: P942IBsWnaKtsbfY\ninvitationToken: QIN6RWokQNMY0jqb\npartyId: TCDX6QhVf351Nu6o' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinRequest' test.out

#- 58 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: 0Fovjz8O6gRvvvyM\ncode: 63\ninvitationToken: MhwnIgkH0VvsUUXU\ninvitees: Nz5cfFffQq1KhjGk\nleaderId: zZXjBZlaUuqZQLNp\nmembers: r7cn46uMmH0OMXm1\npartyId: e8VUo72wKfqkzsgy' \
    > test.out 2>&1
eval_tap $? 58 'PartyJoinResponse' test.out

#- 59 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: lRiWiXpwd4mANNHf\npartyId: NvhtvPvKNhvjpufn\nuserId: RfzguFY2qNDWIHHK' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickNotif' test.out

#- 60 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: fVeWPmb8CsMd5PXT\nmemberId: moYrPzwISRGFaalE' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickRequest' test.out

#- 61 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: sUfWoCbBTcp6J4gC\ncode: 34' \
    > test.out 2>&1
eval_tap $? 61 'PartyKickResponse' test.out

#- 62 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: WGy5WCxHNRWRaY4x\nuserId: rFfcNpLWK62LNVnR' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveNotif' test.out

#- 63 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: ADPLntARSOvNRlek\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveRequest' test.out

#- 64 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: ls4qPYpAyIeFVcPm\ncode: 64' \
    > test.out 2>&1
eval_tap $? 64 'PartyLeaveResponse' test.out

#- 65 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: KE7eNNawm1Dftvdo\nnewLeaderUserId: GEUlLcJVWjnZUqzQ' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderRequest' test.out

#- 66 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: Pw8y8l4WHXQKrdeQ\ncode: 47\ninvitationToken: opHUtH3nASuX9wTu\ninvitees: uurWSBMJnClPb1Fj\nleaderId: LMTXiimjXVXQ27gX\nmembers: MyEh1D8juLQRIT4y\npartyId: eyVeiY9EuszCoxAo' \
    > test.out 2>&1
eval_tap $? 66 'PartyPromoteLeaderResponse' test.out

#- 67 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: L3vfvUgz7XlB53hd\npartyId: GkiRajsUuyV8vbeZ\nuserId: 7OCeJiODpoYS1opC' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectNotif' test.out

#- 68 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: kPkzD62lh2jUuUeR\ninvitationToken: MwB4oKA7bB7wMEyu\npartyId: mVdvlTTiPy2XP3R1' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectRequest' test.out

#- 69 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: xP7XdetWmko9rR0v\ncode: 35\npartyId: zsWfQZatvDqrafUL' \
    > test.out 2>&1
eval_tap $? 69 'PartyRejectResponse' test.out

#- 70 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: JGFIcuQkWUEwsDmO\nfriendId: h4mgSle7fhxajR8D' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryRequest' test.out

#- 71 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: 4WJ9GzGgRZwnkQP5\nchat: Wl8qTXxnLVkhfT7D\ncode: 56\nfriendId: SD0yKCvnNxuKbTuD' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatHistoryResponse' test.out

#- 72 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: qzxa8WLVyXCDiHJq\nfrom: GlPg9lUSCJHJzii4\npayload: woDbCSym4RIherZX\nreceivedAt: 1987-04-09T00:00:00Z\nto: K8FrX9xqRCep8AkM' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatNotif' test.out

#- 73 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: 40f6iYxJt9St3pei\nfrom: c4xEs8ZivPCTse9V\npayload: KRqLiWhigM0fBhn6\nreceivedAt: 1977-03-10T00:00:00Z\nto: j0gSVUpSZAAAXH82' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatRequest' test.out

#- 74 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: 0LcBPZuuhLttBv5B\ncode: 81' \
    > test.out 2>&1
eval_tap $? 74 'PersonalChatResponse' test.out

#- 75 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: TZDtNw304yAjKoAN\ntoken: JcpnzKNxTRa82Ysy' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenRequest' test.out

#- 76 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: a8SJqM723WcABmTu\ncode: 49' \
    > test.out 2>&1
eval_tap $? 76 'RefreshTokenResponse' test.out

#- 77 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: O3z2XmN3VzHgvI2D' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsNotif' test.out

#- 78 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: hPYXouvu8jlXeQDx\nfriendId: 7sIsigt054J8HGnO' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsRequest' test.out

#- 79 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: rGn9yfOt5BVXQYPE\ncode: 72' \
    > test.out 2>&1
eval_tap $? 79 'RejectFriendsResponse' test.out

#- 80 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 50' \
    > test.out 2>&1
eval_tap $? 80 'RematchmakingNotif' test.out

#- 81 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: 0EJa0RLX4Kx9EYod' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsNotif' test.out

#- 82 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: pmyM5U7plLP3QhXE\nfriendId: xAex73nOi2LGUall' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsRequest' test.out

#- 83 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: w9GZ9muRxPEpqjKt\ncode: 94' \
    > test.out 2>&1
eval_tap $? 83 'RequestFriendsResponse' test.out

#- 84 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: RFQ6BVFW7zM4TQl4\nchannelSlug: gZtEae6NZFCWBuNu\npayload: v785PkV28SI3igrC' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatRequest' test.out

#- 85 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: ebyunQG0M76W44ZU\ncode: 77' \
    > test.out 2>&1
eval_tap $? 85 'SendChannelChatResponse' test.out

#- 86 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: a7ctriLSfoMMBpXv\nuserId: sMQDdTChZX7Fegre' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentNotif' test.out

#- 87 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: 2oLeqTt0VJAiTGQS\nmatchId: Hx1gEyAxeIMatkvV' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentRequest' test.out

#- 88 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: OcMzMvdh3x7LWoJ9\ncode: 23' \
    > test.out 2>&1
eval_tap $? 88 'SetReadyConsentResponse' test.out

#- 89 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: Mz4nuDJrHQCitBgN\nkey: 2W960ucuq1edQHJY\nnamespace: bIAviLLDHHUw2n1O\nvalue: K2Es4Ptqb0isTFao' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeRequest' test.out

#- 90 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: WfVue0XZpWP0AbD8\ncode: 56' \
    > test.out 2>&1
eval_tap $? 90 'SetSessionAttributeResponse' test.out

#- 91 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: HQ5PGkPzSn8vwy42\nactivity: AONpNlfXkAz6zNTS\navailability: 38' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusRequest' test.out

#- 92 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: HoeWJxUMkzSXSWVd\ncode: 20' \
    > test.out 2>&1
eval_tap $? 92 'SetUserStatusResponse' test.out

#- 93 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: zG8jIoLHZ8jRRVW6' \
    > test.out 2>&1
eval_tap $? 93 'ShutdownNotif' test.out

#- 94 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: puAjLAjbPtehmLOT\nmessage: Ztaslet5UtgnOY6L' \
    > test.out 2>&1
eval_tap $? 94 'SignalingP2PNotif' test.out

#- 95 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: N7Y6hJFgRD7VXa4C\nextraAttributes: PSz4UEf8Hmz8dEBb\ngameMode: lso5M859CJDsk2VW\npartyAttributes: {"uDcUm3f6HOsFX1Th":{},"P5wTXbb0f2w62Kuj":{},"JMR5zEqbOCMMPVwb":{}}\npriority: 71\ntempParty: S6ZlUdxaJulcaHBW' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingRequest' test.out

#- 96 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: TQLOIYp6lTq9EypL\ncode: 95' \
    > test.out 2>&1
eval_tap $? 96 'StartMatchmakingResponse' test.out

#- 97 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: 4VRUo4vC9j8BA673\nuserId: WyaAbA9tW5IrCKn1' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerNotif' test.out

#- 98 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: vZeVVFGApzwPvYy2\nnamespace: 5uhcV1h4hnKz1nee\nunblockedUserId: nckIwtqFXYTXQ3cX' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerRequest' test.out

#- 99 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: 7zlDnUypoPlfISCX\ncode: 17\nnamespace: kOmqwlzKmZgcwkkC\nunblockedUserId: GG14mFqolPdjnrYp' \
    > test.out 2>&1
eval_tap $? 99 'UnblockPlayerResponse' test.out

#- 100 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: iGReAtLyaUDBQcbV' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendNotif' test.out

#- 101 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: 3T0DdfoWHBfSEHF5\nfriendId: oEgNguX3YVv9Z1Ja' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendRequest' test.out

#- 102 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: zjq5oeVvY1Ul9RX8\ncode: 94' \
    > test.out 2>&1
eval_tap $? 102 'UnfriendResponse' test.out

#- 103 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 103 'UserBannedNotification' test.out

#- 104 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: xOk4BgvbSmlH0zFy' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricRequest' test.out

#- 105 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: xh9ou7EZ0n3nyV3d\ncode: 70\nplayerCount: 9' \
    > test.out 2>&1
eval_tap $? 105 'UserMetricResponse' test.out

#- 106 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: kyD83IzrSCOnJxDA\navailability: 11\nlastSeenAt: 1985-12-02T00:00:00Z\nuserId: 4P841gpIbgNS3FVm' \
    > test.out 2>&1
eval_tap $? 106 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE