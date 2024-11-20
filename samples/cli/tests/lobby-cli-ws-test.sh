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
    'type: acceptFriendsNotif\nfriendId: 8K70NpsUDpOKVl7O' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: PKmIZh1EwiuW0tWR\nfriendId: vkF67eptjzNhU1gz' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: X1PYOKBK4NosqsFy\ncode: 43' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: s8PqedxvryJ2HOpk\nuserId: 9K66LGVlpxLla6Fd' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: XQZqyDbf990C748h\nblockUserId: EXMFfLwX25YADoyb\nnamespace: UkRYctgTnS3dtqGB' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: bbs3r0axnHabqfWX\nblockUserId: 0kgwKaksrw5vapKo\ncode: 81\nnamespace: GpZQcdkx6qQIU7Q4' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: GAXGyN9IgoWCiNpv' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: DowpzxfeD4nVongu\nfriendId: aRuNnFBlKucEXgkF' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: JX7GEWJyuUbDz5GP\ncode: 11' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: DSWzRfOGO0XRPgUG\ngameMode: 62sDPA8gg5IuvmXG\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: wDaL4Op1ySvrzmua\ncode: 6' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: G2aZ1Zycs7DN1h4x\nfrom: 6t9HI0ffjJbrm2G7\npayload: 1NxWRfk14DBDkJTU\nsentAt: 1982-07-19T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: 1GHXdo9r1g2Zqnbh\nuserId: JB128FjSJcJzURVI' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: uLab5h8a2c7oHyPL' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: FWeC6KXUcxK6Lh9e\nnamespace: 8b2U680KG8vNcHVG' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [mebF1BC5AKeWqw2P,vhizYJDRVlBcHAzh,LNU2eekc9AcjYU2b]\ncustomAttribute: Ccn10qwQ41x0WYYY\ndeployment: AhnaNnoGKjp0Flfi\ngameVersion: m0FTobL5Le4cAWuE\nimageVersion: CsyTwNCb3wPIGRA3\nip: PUroO7KXKumkWTA5\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: VPpnOBQoTjX93wUc\nmatchId: 4owDq8LTNrtOqf0t\nmessage: ukweHccZ6vCW6iXX\nnamespace: NsYVMqbS6RcMQoIH\npodName: PHYIUwA1sxyVrYLU\nport: 92\nports: {"89ANDyCBVD44nAEu":76,"4idMC1TSEFaSyHRJ":66,"3MOhxpJKwZU00CDJ":27}\nprotocol: awAp4lfoOjO6CRyN\nprovider: oT6cVoZmaReK173k\nregion: sJXcVkHGCiFIStKx\nsessionId: zKr53d5o9cUUz0hU\nstatus: 2hM4MLRMnviJiSA2' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: rWyVxEIi4WizbE8G' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: uZmjnfY0L29vXCht\nuserId: TaA6xxJtsnYdvO7D' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: b3O69qXJbNHkqrtJ' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: X7dLpURK8uUo5GwJ\nactivity: [90TfjPQ5Yn1OrUJx,2gvDYaIClP5aw2Wt,0dXZvtZ4ysiHx868]\navailability: [drpNM0mr8DqAEvu4,J9uhL61faAAkBXik,RB3H5F4uk3Gb3ZBW]\ncode: 52\nfriendIds: [sCwUa5bxbuWEJ72F,eeXxwNTy0hpd6FSY,M5oJzbVGqP1U0VBy]\nlastSeenAt: [1978-12-19T00:00:00Z,1996-02-05T00:00:00Z,1993-07-27T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: s7VP9A2dW5edTJtc' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: 4zdnBgD2WLRhmLCr\nattributes: {"FSlsSBtZwJQru1cb":"vVVKgS9xPStnV4rM","ofoi1stRFQdmwiz5":"RgdaNTz0pOdreE6A","1B07IvcAvqf1MyGH":"A9w19wtK7MiE4BRz"}\ncode: 16' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: diaYRy1qwGw25BvZ\nfriendId: cXa3BFDzERwWhdo9' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: iW0BBqeF2YfJ1jw7\ncode: 57\nfriendshipStatus: Qm1NTria5CJ8M8Y3' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: VhLR1RCt3QmQf4oF\nkey: HQzbfptsX2pZSGiE' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: 0dfI4LlkTwUIvCmC\ncode: 53\nvalue: rqr6On2qrJW2VgUU' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: PC6kHgZZ89GDbIsg' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: 6cYEXNDZ4bPnQ1eT\nchannelSlug: xjYlLVdacz8CUz37\ncode: 88' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: yLK61TGr4e5VlaZz' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: Wr1BVspsqyd1A1mc\ncode: 63\nuserIds: [jkqRV9MGmdnx4R01,E4j4WdNQPO8IZZzt,YfgFzFrEVsNxAVIC]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: aCjgwDr1VL1JR7Ay\nfriendId: uTTUXyHNLgn6MKXC' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: SV2XKHWnAAlycspu\ncode: 30\nfriendIds: [oCt3rEMZ3d6sb2pI,kiVoQ0UdQdO3Z9go,lSpCYV2haGad8wea]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: RaG72toLtiFSJg0O' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: XOaqMOG7FNOssiR9' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: Gup6lZmk3zpQkpO2\ncode: 73\nfriendIds: [3D0SmheQFO8QtYvB,X58sSlNnpKMxhJiQ,OL4y7IHsLKdpRyQf]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [Tprqa0zCGEYAqj4W,wkqKQB5HjXMD6H7X,Sm9GciFmsJANIZCk]\nmatchId: 0EMXw8utfgfVV1qZ\nmessage: pjAo6d9dpHaAtdTe\npartyMember: [HeNmDDgLxIHWnBqU,xJ1rPFiYCSE1J5hI,XSvtJHlgavN4PWm5]\nreadyDuration: 18\nstatus: W2D2QxP1DVSodwZr' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: YfYIiFupIrSbdlsf\nfrom: bSb3ZOLqACZ6CZMF\npayload: 60755qae0F73MSFj\nsentAt: 1993-02-25T00:00:00Z\nto: Gh57msAZjnVHEJaB\ntopic: gUoG7NB1bFwO8DDA' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: XjzbroPqi7d4fYyG\nfrom: R9TXc2MCBZdtT5RL\npayload: j04BDWtOsPEJ6Q9l\nsentAt: 1996-08-20T00:00:00Z\nto: jf3pKrHoV0EVSxFJ\ntopic: 2GWHhj8htptzxBXH' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: 5xUdvIDvNVAZJHG8' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: nudxTKx6ahb6vFlD\ncode: 1' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: uxmxndhxcMAR3w4x\ncode: 9\nonlineFriendIds: [FUcQv7F0UC9VRjnp,4yd1W1WeoXqMoG1h,KjL4egBPmzMqKIk8]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: iw7DeE2qsJAp72WN\nfrom: AQjTtJFv1UA66kNG\npayload: LjsJWKZGkOiaxS4g\nreceivedAt: 1998-06-26T00:00:00Z\nto: YaYSe7m9C7OwrYYM' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: MUSgovap6dAZ7UKp\nfrom: W6BZhztRw9AvdQw4\npayload: 1G9zlZstjDWKHhxd\nreceivedAt: 1986-06-26T00:00:00Z\nto: K1timluhxDCRywUc' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: MHiUr5tyKAwNS9nJ\ncode: 9' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: YU9px4PxclOqT41X' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: zSoh9GnhAUGugJDg\ncode: 32\ninvitationToken: 4FvDRNGcRJH6AnQu\ninvitees: AP5hiTevfxi5gPaQ\nleaderId: 90cVolUYYaS41WAV\nmembers: N1NymzSvZNpmTBTP\npartyId: toNMnQ5e4MKgSWsd' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"feIXeGeAbNwlG0WG":{},"1LATmYT23S9EmsVq":{},"70QGuwbVvcj5qVqG":{}}\ninvitees: [FJ5BZG7rJPYgICPl,CLQDL1U1CO3nTyRK,zjL77MaNJRr7u1gI]\nleader: PpWAphFFqLZD15ju\nmembers: [BtR9ndE2XZnuTQxF,v4UHgx9xMl8dAmnz,O2OuYLUgn2FRxtHc]\nnamespace: aBDUxm72xhgATloU\npartyId: f2DLAaFpkLEdPe7q\nupdatedAt: 1983-09-30T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: lccaZHPb4ztbzvKC\ninvitationToken: rKXyErXQZsY4fC7m\npartyId: yYSpdWh5uEqSPqFM' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: liLlVo0kSL3N0oxr' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: vfYjiGDiSGIuB4Ae\ncode: 85\ncustomAttributes: {"ACt0mmhBURWLknls":{},"Ws6QiALAYtZ1YdVT":{},"xLdoOH1gPsB7pLMi":{}}\ninvitationToken: wepdrP2EWptj4Ghz\ninvitees: F051yFVDLaNMgH1A\nleaderId: VeSCNSiXb7ToqgNm\nmembers: skDrtGzlIMOCogEL\npartyId: LB0OSul970UHGgAV' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: 21cGgHWSToHs04bU\ninviterId: nQQc4EaDd7NpNe8g' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: SJJoitqRVkz6tiGa\nfriendId: rGMHPVeH1XL7cDRP' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: t7HQXRiCh1WqaO0Q\ncode: 32' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: yBezQgkmK5T3iRd1' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: hzMsNHfRBCVpz0N3\ninvitationToken: MsjNMRxx6KSye6Qk\npartyId: rAvhom9B0O6InEPm' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: fYIOq9Kva6sFmn2P\ncode: 8\ninvitationToken: D7RXyTBvwPpSfFLW\ninvitees: csn7YCyMHdNjtwBj\nleaderId: pyPY9rfKrEinNmQH\nmembers: go2XzUlEckFINZlE\npartyId: lk4ql0PxrWt6ulKJ' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: 8kitT7YKKpd3RPwL\npartyId: LkHyMMo152KjjUM8\nuserId: LJk6JDfrdZrb9HqE' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: dNZWsp8Atp7JL0dk\nmemberId: 6TxHSEYgwjR9Rp4m' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: c2nqJviez698QKlC\ncode: 100' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: QINazkoPJuq68OOW\nuserId: F2RpPfD9ivizydSx' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: telZGi99ywkwd0En\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: QgitMKXW2PdayBzn\ncode: 96' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: 8euW3vxweYys97e7\nnewLeaderUserId: P7Cdc0lhd3I476dK' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: abGXP6swlgha804u\ncode: 19\ninvitationToken: mdGN8KZVPe5OdZPN\ninvitees: D5yq5FFPXZTkdEoX\nleaderId: SXvPgoj3osEsgbtC\nmembers: UTMH36HOU6WYvdAf\npartyId: eaFl2wc95lgIh5vj' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: VjZC2sFmLpld9TlR\npartyId: mSEGLLzdv0Ge3M58\nuserId: ME7YX85jzMXjWCfI' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: m7R9tNRW8YNI58zd\ninvitationToken: WifGBZGwvFy5L2pE\npartyId: CdF8lbeeSkibnDNK' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: ng0VSmMRvcxAVwyA\ncode: 80\npartyId: l2KaJv0OfuM694wx' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: cxmxKS7dyOKuiksz\nfriendId: ctTWF3LBWEbsHXK5' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: MuPwiqskyHyXrU2N\nchat: 1U3UueripgeGsU8O\ncode: 26\nfriendId: rIZSSmKtii3iXCze' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: cHG0DgAMIBojY5VJ\nfrom: zKMz5vOql8JAMO6a\npayload: yuhywgTzMz0NfDY9\nreceivedAt: 1981-10-24T00:00:00Z\nto: u3iewa2RbNZkAbp6' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: 3qx4uJCyAhVqmQpW\nfrom: nqLUuwTdIvlr9YY1\npayload: 6TLmmcvDLK43JQMY\nreceivedAt: 1985-11-07T00:00:00Z\nto: JHyl13dTPq27V3Xr' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: rXNKltYOb8NoPFN1\ncode: 75' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: wLudIkhEfmzK9hzw\ntoken: 42dSvw1DqMYgf4ma' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: IraB4BRv2OSaOugL\ncode: 61' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: XfHblgz3gJRV73TF' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: W0neJsO11hcnIB8f\nfriendId: 18ZZVXKx2GXcGiZZ' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: 9AT4ud7IBRmuvdR2\ncode: 45' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 52' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: ZAXoQMYyDEGkOlzq' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: 6TlIeOj9kC5y4PXw\nfriendId: 0j6eAwsJ4Y30Sgl8' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: lFlvsL3gaIgrRfCo\ncode: 90' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: X38Fu3PNTkjL0GRw\nchannelSlug: XJb3QFGy6QeyYTDg\npayload: tQwiS3nxTLMRcrRl' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: CZNRzLD7O1kbi3mD\ncode: 23' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: yD3ShK3M7ePaw6HS\nuserId: xOpOSBmWyvD7RQ2l' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: fPV3N32pulh4JHtT\nmatchId: DJ2WCuEQw7ngY0ml' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: 6T3Yk2UJVBGy5Iiu\ncode: 22' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: 7iczKL3zlmHVsuoS\nkey: nIJJgPunrvzrPsf9\nnamespace: IAAWKvK0AKO2Jjbd\nvalue: XMli2Z2UlT7MMHJW' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: Kz6pPIyKGsngL8UE\ncode: 23' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: huLyzXwWliXaCHes\nactivity: pPRDJO0jaOdUsJNI\navailability: 24' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: 8YtuRxXQojlNAETB\ncode: 16' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: YOCpNWRkMz1sfFbz' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: 7jNUOQZls1KAgOZl\nmessage: UT4V7JlynNrkLIMu' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: gCitnxMtorEEZcnO\nextraAttributes: ExCo80W5V8QJnyYE\ngameMode: foNlXCRwbdV7deee\npartyAttributes: {"h1wQTAtNdy1RfHAK":{},"aYot8r2k89w3fjnv":{},"hF5vluYRr3tVLOXU":{}}\npriority: 43\ntempParty: PY5pohF5Akr1NHWZ' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: UoyobE8xnT0rLQWa\ncode: 7' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: VouffMUuUkHSebJW\nuserId: Qslwu51PPiRJDHf5' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: 9mNfHg4AzsN1bVUC\nnamespace: iU1S0bcsRrG6JgBu\nunblockedUserId: O9bwqyOjndLhvbqC' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: CI6q7F0bqmEwmBSM\ncode: 72\nnamespace: sdCVMNUzaJvnPHbK\nunblockedUserId: 8Q4Cy3j6nVqrn7SV' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: GEnMqE0rYHBlSioh' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: n2YPlghLiAWkwYEO\nfriendId: ldKyCPv1AQbX5SoC' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: gEGrF2MPr7o6dBLv\ncode: 23' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: Q0eVg7e7EEdml5Ns' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: VN4krmq2fAEHNK8V\ncode: 69\nplayerCount: 4' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: Gx4vZVXrXKZ0hT79\navailability: 96\nlastSeenAt: 1991-04-02T00:00:00Z\nuserId: CUY67gAPIgETjoD3' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE