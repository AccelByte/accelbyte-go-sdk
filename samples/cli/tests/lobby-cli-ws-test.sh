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
    'type: acceptFriendsNotif\nfriendId: Ju58R7W4EpLEPDo0' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: Omw7ncBHpiQFo1jX\nfriendId: d8wAEjm4Qy7Un65L' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: ZSr8Yf4azb8KbsUK\ncode: 28' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: 44OwEXMO2I4lQyQu\nuserId: B0n9XldQ53c8Vdbv' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: bN1xUvJYofoKLhJg\nblockUserId: lzAPHemRu6RngIjf\nnamespace: OZkyqnPmDkug0vgk' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: ObnNPptiMmXa4GQY\nblockUserId: a5N8aQmKQHqwUc3e\ncode: 24\nnamespace: ZztoeyTuRuwShLwp' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: 55t0auSz3NBU19xB' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: Y4pIQRR7GXTDqEQz\nfriendId: iYmDDIaMtGo69VRO' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: IQuyR03bGAY0ZSRS\ncode: 61' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: SvXskrHuZnpbyeM3\ngameMode: gAWr5p6qwFafrlLG\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: ya2zhaVUdG3nNLIc\ncode: 6' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: naoanfriLuuMvmDt\nfrom: txbv0l5zmDENqapP\npayload: 5OZf7srBcauChYSO\nsentAt: 1978-11-21T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: 0JLLSovskvDftleZ\nuserId: FUxFsjCEc6E5aKvt' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: sW3jMYw9co231C2r' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: I2jFKZz7PCoshQZk\nnamespace: Hc97cGuIjjMxq021' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [eDCNGU1Xn8o2AMuu,OkGr63zJyJqbvZQQ,QWEK89I96tM5Roiy]\ncustomAttribute: 4S3oH7SuuqusDBaT\ndeployment: UXRx35obwzLQ6EfF\ngameVersion: tBZLZMxfDzX8qR1b\nimageVersion: i9IO6sABp3TNQKzP\nip: SVkarbakpLrNxhJN\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: d8U0BOBIIsMSZDKB\nmatchId: yYm7IkELYBCOuTwa\nmessage: 6RE5cYlQ8EGW4V3V\nnamespace: uBZ3Sho4B0vvteP1\npodName: VhHNqUWX0LBKeZcP\nport: 3\nports: {"BdgwPcxzsua6Itwf":14,"SuVp5RFQcTN7W0et":21,"NFH91yIMWDhKCRbI":18}\nprotocol: wxDrsTMXchz0you0\nprovider: CdK6v4ga7KfRTPxI\nregion: tEipLlm6QS8XP4yU\nsessionId: 90ApSwWGXOso6DzR\nstatus: lNfiwPkRn9lNq6NR' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: OO5uLFsYcVQLp505' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: 5RLfHJyngMybrrxB\nuserId: lCPCOik7zygW3TvB' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: 805RYPu7zoq8xFEm' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: ruVcpvIjmLEAORWp\nactivity: [iK9xYiJvZjQZdSZV,2bIqHEOmKrErA3lQ,kRWuqCyqGOGLYtOK]\navailability: [TKCQmKhOrxHAaFCr,KubQpMejOho4DO3M,v4eLn7koC3d9KJLt]\ncode: 37\nfriendIds: [UOCD6Y79W6Qmqfi3,B6cOQ1ZEsTu8Fxbu,XsjNDUMD3MGJ4ABi]\nlastSeenAt: [1979-02-09T00:00:00Z,1972-06-15T00:00:00Z,1974-11-22T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: xiljg8HQPX3FVe3W' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: zt5Y4lnLaSP7ky3D\nattributes: {"Gdex6St4ujJTkq9W":"YZB3OJSREdMCVIms","sactgEjYoyCVi1gK":"lqV6tWfOdS3H1ueU","lhsFne7885534ZJN":"HIAz3TNK163O5LJf"}\ncode: 53' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: BaANckatXoKTIibM\nfriendId: fDR0189wSl0SvRD0' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: dDrjkcbAT6Hbw8sl\ncode: 93\nfriendshipStatus: fFEP6IVvEKGp5oxs' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: Zh5UyNjUKAqEpJXR\nkey: Syizpf8X0VUx7MoY' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: kHcbsfeDl47o3Sds\ncode: 83\nvalue: gkjcd095Md5BEW1w' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: 671bv61UOgrTbLAH' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: rj2kuNJxmEzjfIUy\nchannelSlug: 1q3MTQF3jYAF0lRq\ncode: 14' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: Cs1jWQXDdg1WNzwz' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: VmcjU4pR09K2HhUR\ncode: 56\nuserIds: [AW6pMFzSJpioqnQ6,YGiAkiSbFmeIClY9,lwuIejcpi02U4N9x]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: W86gK9uPeZw2n8SQ\nfriendId: WqRAcqJSGtUSGCNW' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: CJkvVlgwfgFHwCKg\ncode: 2\nfriendIds: [LjCHITe8ZDQaFHdf,r2ki2q07wjnvLxNu,K5EL0eXMN71a6BVa]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: gF5FU2eWIQN9l215' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: b8rdbWSBRJNtWgkf' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: gBH7JQry0VECSeH3\ncode: 75\nfriendIds: [BzTLlOeLH2ZdrjI1,F4iQtSwqr8Bf5T8F,hZvmdDCLIL8fT1a7]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [nwuIG17t4JYNkUDY,iKCUIUfGi0vNqquN,DscOUljreiu3aJLS]\nmatchId: GPAuOnkCl4MWnxzh\nmessage: xcHvGrBKxSashysi\npartyMember: [7OWrwpOZXSNVXoE9,CJtjka1Z0icItXKP,gq9hxL5dfZUN1whk]\nreadyDuration: 78\nstatus: ozmivfE3UOl6y8H9' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: kZAZZU27peQkaFNM\nfrom: aul77uYjjqdkZlxD\npayload: 9IqBHrrNE9ytWNtz\nsentAt: 1983-05-10T00:00:00Z\nto: 4dyxiuKUG8gzSpMN\ntopic: M7nfSCBUttUAhuAt' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: DkyTpavxYpzXYCJx\nfrom: VEsUxOIgONyiG4pB\npayload: CdUevLibIUK7x348\nsentAt: 1976-04-03T00:00:00Z\nto: CXJAxprLEzy9OCS2\ntopic: j5VKmQlTJ0iFdgtc' \
    > test.out 2>&1
eval_tap $? 40 'MessageSessionNotif' test.out

#- 41 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: 0wumAm38m97n0voF' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationRequest' test.out

#- 42 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: pq7HlX4ehikx678g\ncode: 97' \
    > test.out 2>&1
eval_tap $? 42 'OfflineNotificationResponse' test.out

#- 43 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: 7oAK0RGtf8y4BVyP\ncode: 30\nonlineFriendIds: [kvEPPJnbbawF1UEy,o3iRSFPrnfvYGIx4,EYlRHt0qB01JwzIN]' \
    > test.out 2>&1
eval_tap $? 43 'OnlineFriends' test.out

#- 44 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: j2APEYdB1UD470Am\nfrom: 6SSPftk2YYaiUdiH\npayload: C11bdDZlxSOybPqt\nreceivedAt: 1988-09-12T00:00:00Z\nto: 1lKUzxQIOwaoOoIY' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatNotif' test.out

#- 45 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: PeBH0EY2LatfGBPr\nfrom: WPzQsNzc25BnQZic\npayload: M3VOp6W94JriiauT\nreceivedAt: 1990-08-01T00:00:00Z\nto: Nn1GsH6ltkEwdqIo' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatRequest' test.out

#- 46 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: 6AAvxkPVkz3VhExw\ncode: 87' \
    > test.out 2>&1
eval_tap $? 46 'PartyChatResponse' test.out

#- 47 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: FgCecBRdRKDK6aQV' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateRequest' test.out

#- 48 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: z3f9Qygjh00K6e8W\ncode: 27\ninvitationToken: t8BpViSSgKfyJEs7\ninvitees: IO3pN7FXrI4oPDhv\nleaderId: BDHDakUwPikAF982\nmembers: MyJYWwCIwPEX6p3J\npartyId: uOrPNZlOliuCAkHI' \
    > test.out 2>&1
eval_tap $? 48 'PartyCreateResponse' test.out

#- 49 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"4hGhDKrgyjoVmmkS":{},"2XJdNQG3F9TAWXv0":{},"UYTTdMR9B11j7QI5":{}}\ninvitees: [B4926ctc8f3utJ2j,XjtJmpVWWQKmPN4C,RcdpznS77xGBQnY8]\nleader: go2zUcWDjpYQ801V\nmembers: [Gfvb0FdKW6ZGa8mM,HOzStg2DzQrUIWRA,cIKj6L92dU32cffG]\nnamespace: dviX3F2UuUypUwfJ\npartyId: VubWoUguLpk8ov0d\nupdatedAt: 1984-05-05T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 49 'PartyDataUpdateNotif' test.out

#- 50 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: PlHYzL1wo59Gh6O6\ninvitationToken: I8s9YaHo8YpNe2hK\npartyId: wnsxpva5WXVZq8VP' \
    > test.out 2>&1
eval_tap $? 50 'PartyGetInvitedNotif' test.out

#- 51 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: KEIKQ4K6EHkOQxYA' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoRequest' test.out

#- 52 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: vMV7C6ydYvAsq2tn\ncode: 24\ncustomAttributes: {"UqDecAaXR7SxeUFj":{},"j1E8qvj5NX2J8L4X":{},"VoeHhU2XuXa8zkNi":{}}\ninvitationToken: 5XlWc6P6GRt5s0K6\ninvitees: bQRi135C1fh2Z6EW\nleaderId: qmERByiselU7PGTR\nmembers: 4bPYz9xhSKllbV4w\npartyId: L1TUgWzzdkfdRYbH' \
    > test.out 2>&1
eval_tap $? 52 'PartyInfoResponse' test.out

#- 53 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: tnNMzhY2hDpe7EKR\ninviterId: XVEq0nt1ph6RuHtg' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteNotif' test.out

#- 54 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: qubQZazP75HABj9w\nfriendId: eBCNN00MId44VPNM' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteRequest' test.out

#- 55 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: D1E5eSDF4HwaWAMq\ncode: 69' \
    > test.out 2>&1
eval_tap $? 55 'PartyInviteResponse' test.out

#- 56 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: d2SbAYBaxm4pzNy3' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinNotif' test.out

#- 57 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: p5PRHEM8fStmoRjA\ninvitationToken: Y2uq9ufPemRpQBhO\npartyId: IWR1SuwdBFuhHste' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinRequest' test.out

#- 58 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: TzudIY4lQE12XHp2\ncode: 36\ninvitationToken: KBxlZq2Nw1GA7zJK\ninvitees: 3Oxz3ReZ1BTQJD2b\nleaderId: zY0nzmvbmkk4Alll\nmembers: pr05Jwj8ChMQFaZE\npartyId: NB2yzLjUf6xhMqNa' \
    > test.out 2>&1
eval_tap $? 58 'PartyJoinResponse' test.out

#- 59 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: Vu9Dl1rrg185pVoG\npartyId: 0hDJ7NLFWa5WlOP0\nuserId: XX7IjSN2IYga74X8' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickNotif' test.out

#- 60 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: 5RTygUoBl88hHEWE\nmemberId: AwoPaUCniCzoAwem' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickRequest' test.out

#- 61 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: 9ordp55OxPjRJ0nb\ncode: 40' \
    > test.out 2>&1
eval_tap $? 61 'PartyKickResponse' test.out

#- 62 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: XVI7kwoTNcYUrk2t\nuserId: MZwg7sIRL02HsE3D' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveNotif' test.out

#- 63 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: af9Gi8cEw16eMYtN\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveRequest' test.out

#- 64 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: jb3ETDpF0PSBG3RS\ncode: 69' \
    > test.out 2>&1
eval_tap $? 64 'PartyLeaveResponse' test.out

#- 65 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: tIvbXx331CQLg6Yk\nnewLeaderUserId: 1rkF8NIiHMVHw1wH' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderRequest' test.out

#- 66 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: i5dtul3pECGwGsxL\ncode: 42\ninvitationToken: hZYiGLjzZf4M7bjz\ninvitees: zPHZU16baA9UTV4f\nleaderId: 3bgYkN2fhNEI5h3v\nmembers: J3y2wohqEFr1PP5k\npartyId: pdHljawQF0djb1RI' \
    > test.out 2>&1
eval_tap $? 66 'PartyPromoteLeaderResponse' test.out

#- 67 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: 4rH0LJ4oNcNvVufc\npartyId: uSFembDdb2n8ujN1\nuserId: q7lfp0YlztMXqmsL' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectNotif' test.out

#- 68 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: W9Q9bNMXoezcz15S\ninvitationToken: 5eRKBVkkpEbhwfYz\npartyId: tC2fvOIvRsGZJNoz' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectRequest' test.out

#- 69 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: KxiQX5wav3uKu4pu\ncode: 84\npartyId: vGhMeBUIjnADjpu9' \
    > test.out 2>&1
eval_tap $? 69 'PartyRejectResponse' test.out

#- 70 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: yyNdTRHwHs3H4rhW\nfriendId: fh4lxHCM0rDljDB8' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryRequest' test.out

#- 71 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: MZFXQK5cvPBcqFpc\nchat: 8YJIn6GM5h5c1eH7\ncode: 32\nfriendId: A4BAGPo0654p2Byv' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatHistoryResponse' test.out

#- 72 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: jevh4i1oKK8KjbKJ\nfrom: 6fJnq5WNn0zBb3Iw\npayload: 9sDkLS6TR86oXrVS\nreceivedAt: 1977-01-27T00:00:00Z\nto: jMpUGJoT4ttHiSFi' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatNotif' test.out

#- 73 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: g02KtsC1j28MsSPm\nfrom: s6uW7JaeLRSvmvoU\npayload: UHkAXtDpgYLbGq2G\nreceivedAt: 1974-08-21T00:00:00Z\nto: NvsTwL9O5WcDPbHo' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatRequest' test.out

#- 74 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: Fu4gVhHROC543AH0\ncode: 64' \
    > test.out 2>&1
eval_tap $? 74 'PersonalChatResponse' test.out

#- 75 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: tQyfoGVKs9oKMVdz\ntoken: NdyXYrELcoPUunC7' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenRequest' test.out

#- 76 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: bk56kvE8j8sb6LQM\ncode: 96' \
    > test.out 2>&1
eval_tap $? 76 'RefreshTokenResponse' test.out

#- 77 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: bSN6rZ8Zv6jdOHJ6' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsNotif' test.out

#- 78 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: zjVnd1nC9qd0uXZD\nfriendId: b55oiKGWJcZxP6Ch' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsRequest' test.out

#- 79 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: lQdyYVi2svKGsNjx\ncode: 3' \
    > test.out 2>&1
eval_tap $? 79 'RejectFriendsResponse' test.out

#- 80 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 68' \
    > test.out 2>&1
eval_tap $? 80 'RematchmakingNotif' test.out

#- 81 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: 5MgIkEDivmu72Mw7' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsNotif' test.out

#- 82 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: Cm6Sv51WyhMKe4Js\nfriendId: S6EjM8dxoX66aO0y' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsRequest' test.out

#- 83 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: 3VukoLzfa32jP7Qg\ncode: 25' \
    > test.out 2>&1
eval_tap $? 83 'RequestFriendsResponse' test.out

#- 84 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: P8qWavvh3EpsX2KA\nchannelSlug: hd167nFEDy3Wt2i1\npayload: 98Py3cWfgEEAJl2s' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatRequest' test.out

#- 85 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: XexEUkaN4ZK1Y2kF\ncode: 81' \
    > test.out 2>&1
eval_tap $? 85 'SendChannelChatResponse' test.out

#- 86 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: ElHgiwWqtFUTyMra\nuserId: FV34ZlTqEHuMqJkc' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentNotif' test.out

#- 87 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: sBKB6ESkCH6ajHyo\nmatchId: 1a0miukagFzyxuky' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentRequest' test.out

#- 88 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: 7ikxb3TPdN1TmLoN\ncode: 4' \
    > test.out 2>&1
eval_tap $? 88 'SetReadyConsentResponse' test.out

#- 89 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: Wu7s9IWflDy4ofQX\nkey: SVWYFZqiYtooYttb\nnamespace: XSqcchDopLHldSMH\nvalue: hW3XlEqvWxXZqa0t' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeRequest' test.out

#- 90 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: rnDIkKdh3E0RRuhM\ncode: 30' \
    > test.out 2>&1
eval_tap $? 90 'SetSessionAttributeResponse' test.out

#- 91 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: qQ6BmNTfm4eIcOZG\nactivity: E0FXfqYzgsuhUbpV\navailability: 2' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusRequest' test.out

#- 92 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: uL1jL8qey6m8oYGy\ncode: 43' \
    > test.out 2>&1
eval_tap $? 92 'SetUserStatusResponse' test.out

#- 93 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: SwWUlCHuZnT5m1qy' \
    > test.out 2>&1
eval_tap $? 93 'ShutdownNotif' test.out

#- 94 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: E53pJBMEEK0YeuGR\nmessage: JdSvlxNNfnX2jsGX' \
    > test.out 2>&1
eval_tap $? 94 'SignalingP2PNotif' test.out

#- 95 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: 2Y0dRMzLDyNQeuIs\nextraAttributes: YvmLK7TLzRPR2zHn\ngameMode: hSv6DewmSH6rBoMW\npartyAttributes: {"4N7hDr1VQVg8xAIc":{},"hARPC4ulYxWdnjVB":{},"G4iwF606Jlu1UpnB":{}}\npriority: 24\ntempParty: GNSB0Z1jcQlN9Lup' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingRequest' test.out

#- 96 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: SaaZQKGWsw3RxyI8\ncode: 90' \
    > test.out 2>&1
eval_tap $? 96 'StartMatchmakingResponse' test.out

#- 97 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: QqV6HMSsQJiaHMyD\nuserId: fUwtGRHCvCh8ZXtS' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerNotif' test.out

#- 98 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: neZGgGkQz53vHIaw\nnamespace: 8mYBSVyXHNNC1xgN\nunblockedUserId: Mct9KCnYxQPzKHKt' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerRequest' test.out

#- 99 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: xc5mTYTt0Osl5uOc\ncode: 75\nnamespace: XK9ChIRy0fjh5Heo\nunblockedUserId: TrYtsuCWjxT93PVW' \
    > test.out 2>&1
eval_tap $? 99 'UnblockPlayerResponse' test.out

#- 100 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: 4eleOFSj7F1CQYDG' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendNotif' test.out

#- 101 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: R5tF1Y9rKRIPQzOo\nfriendId: z37sbRYJ74yy7QUu' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendRequest' test.out

#- 102 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: ENjjGKurytemZiR4\ncode: 4' \
    > test.out 2>&1
eval_tap $? 102 'UnfriendResponse' test.out

#- 103 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 103 'UserBannedNotification' test.out

#- 104 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: uWzdHqPtClP2eRKy' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricRequest' test.out

#- 105 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: a559lH7TMOqoFK5B\ncode: 80\nplayerCount: 81' \
    > test.out 2>&1
eval_tap $? 105 'UserMetricResponse' test.out

#- 106 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: T07fmPVePg9CrbjB\navailability: 87\nlastSeenAt: 1972-01-02T00:00:00Z\nuserId: 8uSBAQHckCUb1FSx' \
    > test.out 2>&1
eval_tap $? 106 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE