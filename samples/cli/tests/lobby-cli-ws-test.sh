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
    'type: acceptFriendsNotif\nfriendId: yf30pd3HilkCskoz' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: DKdfG3pcuVPKCfLD\nfriendId: LeGZplIoVTtuZw5Z' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: HoHJStEeqcdTmWGU\ncode: 17' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: jr0cDVGDHh0UJ4BH\nuserId: OHRLFnybGhrKsKbt' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: 8UPIcU0gDToVjNA7\nblockUserId: m2KuDmlT2GKWf7Vv\nnamespace: Ju0J2QkT1CflwKYq' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: 8f4CUguobUOCzwAw\nblockUserId: 87rO9CBD6OQdOk2w\ncode: 77\nnamespace: HFTSnjOmrRlInTOW' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: tvdAAS12AlTzY7ku' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: 1J4oskjCUGF15ozb\nfriendId: QLpvx71sDpBeSiOp' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: HkNrDJuEIwHU4Q3k\ncode: 1' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: aPRjiJvG1MxgK43X\ngameMode: 0xQOEX3scB7rK5u0\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: HjYI7R0nRLYTxNAj\ncode: 88' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: 53iKn2JCQCljHC1u\nfrom: z562k2ZLcwNk1vhG\npayload: yGGcDsgDpdCP5rvo\nsentAt: xcDdnpHjRIDqP2ea' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: 82kJKJ40FkHXPH8Q\nuserId: bim9fDiPgrL4UXzr' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: UedHZiISYceb0mNP' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: LPJEz2x6j5dv7jYE\nnamespace: Js184adRJVZ3OEOj' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [aCiUK9vz3OLUhELx,hXKaG6xsHTIfZx0u,HwXgPIlHQD0z7bLO]\ncustomAttribute: CU6TqgTWMbqBuimb\ndeployment: 9x4vfc0r51nT0y9c\ngameVersion: 24mFr4Wl1ZwNgIgW\nimageVersion: ZKFQl7DLo6ty20Dc\nip: 5PxVOWD3C1SNHGyF\nisOK: False\nisOverrideGameVersion: True\nlastUpdate: orMdX3pVPRK2SvZl\nmatchId: OEXrV46b4pIaGulR\nmessage: x4chNEyHjiHFQnEI\nnamespace: cTdOi3oLz7R7YI0r\npodName: JdtIJBwDhLcVbsA2\nport: 36\nports: {"iFvYttj0q44ePF0u":24,"2GxdNrVt7k0Hxii4":58,"D1REvUOBxjukigcG":76}\nprotocol: CGDFgPBh8NU9wPXl\nprovider: RPo7FkAfkykMJDY8\nregion: NmjXXDja9698p8MH\nsessionId: 6tXOCU15mosoltIp\nstatus: PcTzV0ARICThUFtJ' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: tggVBNdT1ZygsCfc' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: Fa3usWUMm4PuUEn3\nuserId: Zhha6uXOGLOM01Lv' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: uyYDjPFxMIfvan2E' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: Ysm1V5KrNxQz7p9G\nactivity: [IvXxNb99N7fulfME,isZ391cDRDU7hz8Q,iLuxQAolGpSpFGA6]\navailability: [qt9P7DoFTdkrQta2,HOwVXfhNUW2ArSRN,YTVBbSsg7W4kbtx1]\ncode: 27\nfriendIds: [xXoJIROQSLNyNqO2,gn0LHgKQ6Eqiwkw4,CSf9fnDUqQ7u9vfL]\nlastSeenAt: [e41coUsXnE20Qeev,GHerAwDzxrZ60UOk,YqwguE0mj0IzTJ6h]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: akSVPzIfoFGprsTn' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: ngCPIB6VMBR2mbWX\nattributes: {"kI1Co2CpJvxEoClG":"QaT8sCOdMSYjKGOU","Q3q4x52vw2IC4o9p":"g8L9aqqEHvRP8PCH","ywq7LXCEZ7DlZZXl":"9SrNeoiyMEBPUtjN"}\ncode: 20' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: 5s0fvop3DMs9W0oT\nfriendId: qtYttQ9UdDE3Bmhg' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: i5owqGxKUELWoQhH\ncode: 78\nfriendshipStatus: mcBwAD4V5BqTE3cm' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: 836Qj21a12nqgRrq\nkey: YBAubgfriaBoLNYy' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: 0BH8pjIXkEUqd2Da\ncode: 38\nvalue: xSg8AZ3UV28IzBAy' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: hijk3KSx1I9YIR4O' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: Cjgcpw4GaRjQ32o3\nchannelSlug: qGiBjRzH83HwqvB6\ncode: 79' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: KVbh1aEaEE52PIiF' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: tqYYPYHIV08u5Vaf\ncode: 49\nuserIds: [b01p4hvnlZzRDDUc,JRRhaNX3hLO5TO4M,Z2Mf2pbvxcDQaauh]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: 7VjH4FonrojGM2dF\nfriendId: ucpDAs7hN6EDD4XF' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: OWbvhqVIizf2Ovbt\ncode: 15\nfriendIds: [jA8q7g5WB8ah7Fwx,eIGgP09OVfknCJ3P,myGdeUpwTc1t1sS1]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: ACZ1y9CLZYwY3Pet' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: lbc8kilJA1TxtJVx' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: WJs8tEST4Vc4lPGh\ncode: 8\nfriendIds: [Cmfx4rmx1SPwGXJI,ZRobu1hDLFavSI17,Ay1KXfUcXExSv4rZ]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [s4zUJ2IxfiYCEXmd,F4IAcsXiWkPsy5Ip,V27jRsvGXvuxVzby]\nmatchId: 6XPaNtdMJCjh4wdk\nmessage: reApdNX3Q5CxyJFb\npartyMember: [28ImpPEzfuffRpTb,xHPiqRU2075bnBg8,HFIhYuEpkDsSQJ30]\nreadyDuration: 83\nstatus: gEUHfUuuUTOQJBwC' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: A9iIKeDXhOnoPoku\nfrom: tIxjIVmQaHbG9dCu\npayload: 6r7sASHGsbrOkKxU\nsentAt: 34\nto: 2Q0RlRhTmETKIjqm\ntopic: Xu8c4gBO2jtYDnjC' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: AmUvJql0ZrItejHK' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: UbGYaMyO99k1eBaK\ncode: 30' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: XRLFVQErQadztcw7\ncode: 58\nonlineFriendIds: [tLCZWKW78m2uSK2m,aFfjfHVS2ZNEChuq,UxottYThYqlz3wn7]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: Fnflioc6RgLDzttL\nfrom: NdLXAjQvvGke02sO\npayload: tavvPsJzcv8gvkbG\nreceivedAt: 22\nto: yRzUgrAHYs9QlIdb' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: t3dWDx1xaJm5EW3G\nfrom: RKkcKYbXIBm0HVmP\npayload: NFi5Yk9Z1akPngMI\nreceivedAt: 98\nto: ZkvVN0KlFcsYjz1G' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: VoMjAT52Zn0ykXgi\ncode: 39' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: PMjafSsaIzxmU5yu' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: AutQflXc1PV4OjSm\ncode: 88\ninvitationToken: XZ59SrqkGmEmZorm\ninvitees: nrrgpLQPHhhZeRjQ\nleaderId: 1v4gk9WB6Rz478xj\nmembers: DMYUleaP0cjwZJHH\npartyId: Qr7pQCRinMwFStF6' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"jTUsPqdx6QodFdXT":{},"5KJMTCibnPJh8aCn":{},"5dqci6yNxaFGo1xR":{}}\ninvitees: [ze0TABQbvvoXmZ6t,ASPblin0v1P1ZdkY,10428FbmtEjv7rbL]\nleader: HhB0H1tEwIRRWxuX\nmembers: [vLFyaTUabFmliU6s,62Cck5k6mkh3YqYL,EQvUk4HlNDz5mBaK]\nnamespace: OBRTNLpW4hqzLFLU\npartyId: 1J08XGOqwQu1n1yo\nupdatedAt: 14' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: JkxA3dsxTj5eyGMx\ninvitationToken: WiwZ12TwIoYRKD3d\npartyId: ff8Ai1zPmzAmwQhX' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: FUzGbVZUIzW88hR4' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: Gnqgjcq15K3Djvjh\ncode: 26\ncustomAttributes: {"vDn6t5vQfXGsVxO0":{},"dP76GmbV2FEN96Ih":{},"3aTkD8GIjHmIBMbV":{}}\ninvitationToken: iKG6rOw6wHO22GgF\ninvitees: ljRBWbS1t42M2ZQS\nleaderId: NK5Nj5S6bfTEtYN3\nmembers: vUGyUpgG4K62Fhab\npartyId: OLiwbBYMrgdns1py' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: vIrP03sKRPqFRWSN\ninviterId: uhk4e7XS5kdRpmIJ' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: 79bG38apNAP28VDW\nfriendId: VMapV9pppJVIyVGf' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: Km7V9gf5R8jzH4DY\ncode: 8' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: Luhpg0rIOkuO6rXU' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: Pf8TUu4RfCMRQvZE\ninvitationToken: VaAWXJmLFzJoNVHa\npartyId: bZD8MowVEG6c1I2H' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: eQFTi5IYmpYCzjQ2\ncode: 35\ninvitationToken: xibxcv1STQHx2Uxt\ninvitees: yPNqgK4oo8BdLqIF\nleaderId: xwKTF3LeP8ltBpA0\nmembers: aFc3YzkEJdARaS7d\npartyId: 5cxVcL03G4bkbIbw' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: uyWVX69S4RHMS3j5\npartyId: iWZtEhPOX1K1n7p7\nuserId: JKquBQo7Vh4x4S4q' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: qOsh6xFqBVWeXLEe\nmemberId: mZq0NJQonlgM0U6f' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: fWgDVDHdciwv2lRm\ncode: 98' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: jv90nwnu4EG10qp7\nuserId: gMDUGKhSuQyLgusY' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: xMTGumq0525CgnGK\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: V6TaVTcUBU5TkoUg\ncode: 91' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: xIfA20n3ynWsgBHi\nnewLeaderUserId: 4uvnwI1qqPywcMP4' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: Rv7iLHqFkqYc4T8z\ncode: 77\ninvitationToken: SLfGneuK8RzKF4DR\ninvitees: juHqHxbp5qSZIlPv\nleaderId: kuKXPDZDnsai1V9b\nmembers: nbSyVySkhEclNDOi\npartyId: hbR2XWKMvysy1EmN' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: 72qNgcQtQTRrC9kV\npartyId: yAwbx4UZmPhV2aJt\nuserId: Zstmj0Rx0G2ed7i2' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: tR7sFtj8OTEQdzLA\ninvitationToken: MWGxY5y2JjsIXtMg\npartyId: BEhVXd74sGg8vn0s' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: fnuQYc4QCuRs3fBv\ncode: 61\npartyId: o2rpTZdoDrrPU5uC' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: PBElIl7zJIiahDH0\nfriendId: UQyJyBTneAsmI8CI' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: opi7hab1JjCBbqOB\nchat: 83PG86HunXQFdf7o\ncode: 98\nfriendId: n29NwOGy8OlEYYhU' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: E5Axl1Tsydmvdt9T\nfrom: tZxoQSkvPlLp6WWF\npayload: OFaVGJ3RqKQb0c55\nreceivedAt: 32\nto: dwoXeEJL6UlCmtGh' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: Pn66RV2Zhj9gjkfh\nfrom: Gopk0y8kDDnNK4O2\npayload: BZH0LkRoEy3Z8vgY\nreceivedAt: 89\nto: fBoiIQS7yH1HvFsM' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: YXcOaCqzEeiYrR5K\ncode: 72' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: D2fOQ9ZFZzt4UxUn\ntoken: LyrLgeyuRuBrbobf' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: t1gpF4Rzkfy9pBbh\ncode: 38' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: PnIorlZvY0aGkjd3' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: MwaGP4pT13leQLl5\nfriendId: C1uIScY4QYm3fjZc' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: Yb8mIZaWbLum5KK0\ncode: 10' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 25' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: ablv7HYR26evNlws' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: 6QuoIkh8lZ9ZaRq2\nfriendId: NAnFODdZ5JNUGp41' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: Vfmogg6Jr6Gsv3CA\ncode: 70' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: 1XKJWsIJjYziXlPg\nchannelSlug: OR5xWWZfcXkNOjpX\npayload: B9WGSXdGG3plJQnS' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: lNAyis1fyrcbHUt9\ncode: 100' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: GteLfRYKYH3mtxfD\nuserId: S5Vux18cAdyDnIXA' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: wT6ekA4rnanEqisB\nmatchId: ZxkkQW1Rc9oUwHYs' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: 492xYcCLxMLtA1R4\ncode: 79' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: 6ueiA5vZCtyNIEot\nkey: 3ChuEaS5G12NVobg\nnamespace: 5lHY7Jf3a45fxOW2\nvalue: vTOx2QfTIoxng9dq' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: 8gYrA6DNRZLEagSB\ncode: 7' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: XqC05LjodI84HoZI\nactivity: KxmEoWU5J35JSaas\navailability: 42' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: BKC4fZaPn2sXBgsH\ncode: 20' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: gGUgjzmKeDhaq7uR' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: yrmZkLmLzwaXhDAF\nmessage: Q4vqisdLvlufZGqO' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: 3F09VQ5q16WxLbrQ\nextraAttributes: m6N8E6O9YaWmcXhk\ngameMode: gC5pw5D2FSAYqrZn\npartyAttributes: {"VBqPaHhDR4fcb9aR":{},"K8WkV5ZR3VBGPVcP":{},"YGjSF7ca4As5Y9Rc":{}}\npriority: 83\ntempParty: NaPc1C9NeK2zBTHZ' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: li1L2afbJaVBKvtB\ncode: 32' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: DItQLY3w5SbD0p75\nuserId: 3ceTLTPVkdoLpO1i' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: z3tNQlUX1P3AGcDb\nnamespace: PvTcxYB7HBEKgFtW\nunblockedUserId: TNpksmaGokSQFijY' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: 8J8ioS6pYlPUmwg9\ncode: 79\nnamespace: nkssUpJo9jgKRphY\nunblockedUserId: 0Dx2wP87n3jpBhJZ' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: 3OaDiWJi8Nlefy2B' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: 60zL69TmwEyXCjGs\nfriendId: tsVH28zHSnkMgjm8' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: ab1UN7tUH0ftf2bo\ncode: 78' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: 2uhqesUrhruQhsQ8' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: UUIymy4s6RQniRYd\ncode: 88\nplayerCount: 42' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: C94qIjdZiFZbJifR\navailability: 11\nlastSeenAt: Tog53IShLxr9NUfU\nuserId: pSk8s1JGrNuWDO96' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE