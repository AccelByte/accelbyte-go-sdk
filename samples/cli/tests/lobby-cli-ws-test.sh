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
echo "1..1"

#- 2 AcceptFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsNotif\nfriendId: jl5Tppfd1mkvS5c1' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: GylCtl85OV86y8Cc\nfriendId: RlM3OE09lyylqqU9' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: DP0BB8AzncLcvNqd\ncode: 60' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: kdUiKaLksRnWFpz9\nuserId: SxpMmdyoJnxNnceY' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: ClDTI50eGPyrQrHn\nblockUserId: 0OQrVwruWNfc73Da\nnamespace: z1n35jZwmzdDEJRR' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: AQ6ezSgv3kecXxL7\nblockUserId: Z5wRBkwR0ZCY9p5K\ncode: 30\nnamespace: 1VnuK0dcw6SN8dtJ' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: 0vCgEUnP5WvsTCHx' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: 5SA6JOprLtX2J18s\nfriendId: 4yCS4Xav27KNs52d' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: OLCQmzsahELQNTg6\ncode: 37' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: PJJO17vzc3GcvRIz\ngameMode: o38q7bcxSsIeY2LC\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: AIq3beVswzNi52sI\ncode: 65' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: Ihc7GCsYqlp7EWx3\nfrom: RXi1ZUImnukW9kfj\npayload: 9j8MuT7mnHFGsCuA\nsentAt: 1972-12-04T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: IjvLMcDpqic3VXrK\nuserId: jADEdqUGVHBOnmzq' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: dARN3Fyn9xV2kMEu' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: qnhlc8R3S4cgFfDx\nnamespace: kmgWKOigSGYlTgTG' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [E2RTI6JVNe5yC3ui,9zkL2Dg9MoyzqcZX,7DqICASXQrO6SDTD]\ncustomAttribute: 3FfaURuvlxFn54Ra\ndeployment: sA36Z0drDuqhv8Nb\ngameVersion: e6Mh2dYBnAMcn1RF\nimageVersion: So4fSZiBkbuer8Y8\nip: CBP9J3tK60BKkeYc\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: 36LlQTMo6yJIF8WA\nmatchId: aYI0ibfTqsRNbc4g\nmessage: XT4CpUSGZHLYzbCy\nnamespace: I64WZ6n6ovWbt1th\npodName: y0MRaQ0jjdsfdxWQ\nport: 75\nports: {"7nwUKpmkjU8iYKED":94,"bjk8cVaL3XqutoL8":80,"DEm7IZgYpJ9tDgCe":98}\nprotocol: pBhaBtmkgkY2G3x8\nprovider: msp7uCUW0dZnYlyI\nregion: 4hhATqT7ytnn6vd1\nsessionId: lteNMvypSEV6tu9O\nstatus: BlwE8RY7iR4XO1in' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: WbntAIH4dWNcCTNP' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: C5qLGm0KL2K5xzfJ\nuserId: ONet56fJV4AA4ass' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: WEnx4IWfCO81ckPF' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: ctmJdoCz17Hx1WVa\nactivity: [8V50lD0Py9e8nK1j,5Sos8xap9S6LJmKG,iJtUjFwjmOkEPn5R]\navailability: [g6tqqYzEM7pWzaeo,G2Sg2DgaxbJ6VK4K,cyCVveuaeVzWPbFa]\ncode: 5\nfriendIds: [QzLPSFcOd98YMbQm,SuTC06HWkezcfoSS,NWHYLezEckWUbiMq]\nlastSeenAt: [1988-11-30T00:00:00Z,1985-05-04T00:00:00Z,1983-05-07T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: gGK55D2JBPUgj9Dh' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: zBcJoke2gJ9WpoGU\nattributes: {"oyHrCE5Ky8Fzsson":"T3OYzk3xCVP23BJx","F0DRSnsux7oMFadA":"Y8HleJpxJueboqr6","7rWLTDZZ49M3x0wY":"w5GdQV2k5Y6k8VyB"}\ncode: 60' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: sobnQCB2IoxCEO2N\nfriendId: LpZPagbHvKvCAOg3' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: 9fkV26u1ShVZk0j9\ncode: 92\nfriendshipStatus: TiX0dHnW91su3FYT' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: emnr2Qe77fnBX0f6\nkey: SLhnfubLAzVcFMGI' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: BDaJ5S9BmesPH6ZB\ncode: 99\nvalue: rENCiHE42ZriFj6a' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: uOhEQ9t5I9Ul0kcn' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: EFdXYJDfb2PZZ8tC\nchannelSlug: eE0wEcdZVSkxhZ7Q\ncode: 60' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: UopVnYIeKdjuy3rD' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: DH9si5PnTcdfebp8\ncode: 46\nuserIds: [eNTUg0faKwOHXNaO,HswHzWxxQJzCBIXh,sSyIJlrgKoFudoRm]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: kt0b4xUFkISq7Cy8\nfriendId: atGUk1ICmwR9KycW' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: aGDDPDDjXO9RZ6OG\ncode: 55\nfriendIds: [4NLWzRtbGb4Nbbxj,GRmdUihGfULHAb7D,E5T47DQaZQGOaJog]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: nExvwiYSK3caEbQz' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: VReN7mrEbgxKIIyt' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: GlBLnrt2cZPyPG1J\ncode: 54\nfriendIds: [M2ISf7qQld2T7ut3,Fj3ejGSDx2LhE6lb,JdvIFlgkomTiUPp9]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [P48yPTgO2VAHz9Dh,XpSr80wwamOKKdBY,BelIXHYclZg7OvgW]\nmatchId: TQcfsp1H6Rjm3trU\nmessage: 8aZMb6faK5gLIJED\npartyMember: [T1vYmlXUwHJtSqYA,167DxqpGx16jJzwv,XEJZPB6B8DRAIc6X]\nreadyDuration: 27\nstatus: 8hCYJ168QwtwVAcv' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: ckcZYGjUaVtWCgUs\nfrom: 7oazwGDcrZ2ReyIN\npayload: DVkhtJjXmeQICSHj\nsentAt: 1978-07-01T00:00:00Z\nto: pKE5DEDvBW1bIZbY\ntopic: gqi3rljnldmT9TUL' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: jYvOoOY9Q5G1iDNm\nfrom: 5S7RR4TIEufrt1J2\npayload: NuncnjPqJjuonWfg\nsentAt: 1998-03-15T00:00:00Z\nto: Fiix8y8CDBLjiy9N\ntopic: wDixnDsvBFC90PkB' \
    > test.out 2>&1
eval_tap $? 40 'MessageSessionNotif' test.out

#- 41 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: v1XbbwxcLEgByaIl' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationRequest' test.out

#- 42 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: iASPJh9M1ER0HM8F\ncode: 8' \
    > test.out 2>&1
eval_tap $? 42 'OfflineNotificationResponse' test.out

#- 43 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: D6O83Q9ijkiIr4Yc\ncode: 78\nonlineFriendIds: [c98YQrMZpHDQdjRe,yn6IEhCv9Z5T0jOj,jAS1WbXFnwKo1QSb]' \
    > test.out 2>&1
eval_tap $? 43 'OnlineFriends' test.out

#- 44 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: Cz83sQvM2SHeQzd9\nfrom: 7eTpMCMCVcdFJJpj\npayload: PDalg9Oq2PZNT6uh\nreceivedAt: 1978-09-04T00:00:00Z\nto: LsPSz0gzfxsBaz5X' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatNotif' test.out

#- 45 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: aRzrubDBJAsttKiH\nfrom: ZlwpSI7XwbZ2WvWl\npayload: oYBeXnmTu1w5UtSo\nreceivedAt: 1999-04-09T00:00:00Z\nto: qtVBZn2VKpZXRNTQ' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatRequest' test.out

#- 46 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: 1bIzKpwq7wugOrvD\ncode: 51' \
    > test.out 2>&1
eval_tap $? 46 'PartyChatResponse' test.out

#- 47 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: 789Y7RqWGRr0WcbG' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateRequest' test.out

#- 48 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: vZn1ZTiSoJokmxOS\ncode: 70\ninvitationToken: p8TjnyYdOtt9FKtp\ninvitees: BcQ1jWumajpLddsR\nleaderId: fSNBsGZGrmwVGHnv\nmembers: jzViPaRyHdnYt7mo\npartyId: aAY9gm44iED20lI1' \
    > test.out 2>&1
eval_tap $? 48 'PartyCreateResponse' test.out

#- 49 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"cISO4ropLhGAPfY3":{},"CoYrrvepExwOOutk":{},"CxQSp5tZYe99Xrg1":{}}\ninvitees: [WGgxWajXfYmIJ9k5,Whr94WVVLOmlRmas,lNAGUnZ9O3uTmOe8]\nleader: 7gRdJc7NBFuZ0kAX\nmembers: [NyUzllA1ogavzozV,PzZOqDM20YyGdTNY,o1sK8Vllo0UaUNFT]\nnamespace: P2mXsfOpJYUjy0e0\npartyId: MK5gK5cmHC6N7vmv\nupdatedAt: 1996-09-17T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 49 'PartyDataUpdateNotif' test.out

#- 50 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: kDQ5n7l4qRHrAYf6\ninvitationToken: AxsNcBseFnTHPdLK\npartyId: EH7CAcPaSORC2yc5' \
    > test.out 2>&1
eval_tap $? 50 'PartyGetInvitedNotif' test.out

#- 51 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: iIqfFThijaF18qRR' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoRequest' test.out

#- 52 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: l1uwJIU8T4xvnUlU\ncode: 98\ncustomAttributes: {"a2n0TPO2TvTmC3Fx":{},"0haMQhLJpgwjTuKG":{},"UtwTRD8dn1V8I44j":{}}\ninvitationToken: 3KVITvm8irbPwgrk\ninvitees: Mr8hMnpkslDKcJE7\nleaderId: kWDMqpuO6haHjG7h\nmembers: Pr1W2xY5piSN4HS9\npartyId: hwRTFHOHb7t1WQ3D' \
    > test.out 2>&1
eval_tap $? 52 'PartyInfoResponse' test.out

#- 53 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: moTlifAqrFKKsfLn\ninviterId: nNlISnYskV92C5JY' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteNotif' test.out

#- 54 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: 8h1fGXUrdTd9vPQe\nfriendId: 9xjVhbIvRgHUoYIJ' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteRequest' test.out

#- 55 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: mAhpkvJUxR0tz5wJ\ncode: 79' \
    > test.out 2>&1
eval_tap $? 55 'PartyInviteResponse' test.out

#- 56 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: bZr8eJW8HO9ShDvB' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinNotif' test.out

#- 57 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: yvZ7GcE5erE4OheU\ninvitationToken: 7xq6Q1o2myVVCY21\npartyId: HCAGlaaEQBowR2fJ' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinRequest' test.out

#- 58 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: Id1JOf5HrVibDeP7\ncode: 22\ninvitationToken: sZ5pC0MiKCIKxlDV\ninvitees: 5ifzMokPYOdnVLCU\nleaderId: yZpNeSo6nvsDprxb\nmembers: KCY8z9rDRHJS8mDc\npartyId: iSDq2IjYuXEQPUge' \
    > test.out 2>&1
eval_tap $? 58 'PartyJoinResponse' test.out

#- 59 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: DsxZjlCIfvADvouH\npartyId: Mt8SEpidnBsewPFl\nuserId: v4rhpPE0FjrWOXGs' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickNotif' test.out

#- 60 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: hczMM8JkvjO7LUGX\nmemberId: lHxYvFAuC5Dd5qMW' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickRequest' test.out

#- 61 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: syasmiEQbkO4nCZd\ncode: 87' \
    > test.out 2>&1
eval_tap $? 61 'PartyKickResponse' test.out

#- 62 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: 0MGmWP6ciShpJGW3\nuserId: pdlvOsNjSpOOwxhR' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveNotif' test.out

#- 63 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: M1sxAMdgq9L554M6\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveRequest' test.out

#- 64 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: WbvwXuv3w9jnkxui\ncode: 42' \
    > test.out 2>&1
eval_tap $? 64 'PartyLeaveResponse' test.out

#- 65 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: 22DWDf4v4207onGn\nnewLeaderUserId: DCA2Fn8WDYE3Vgqm' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderRequest' test.out

#- 66 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: AXUt3wNrPYkMTt0a\ncode: 96\ninvitationToken: xHZ1T9xRQabDZR8k\ninvitees: NZg3cOPSo6ITaA5l\nleaderId: UBRtkG2VU6LIUHkk\nmembers: j3DvQn6LIrgOpEn0\npartyId: uHDJcabektm6tB1d' \
    > test.out 2>&1
eval_tap $? 66 'PartyPromoteLeaderResponse' test.out

#- 67 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: lnZL2GvjSWFkVWM8\npartyId: 2qDi75MJsbLP3oSZ\nuserId: 5zA3VlcyE0wLHDrS' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectNotif' test.out

#- 68 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: D5wDsCyVwkateCSf\ninvitationToken: mLfoPzAVwTiyzacF\npartyId: vW3iryXb7HKBLN4o' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectRequest' test.out

#- 69 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: IMVDxZ77hLhaX0e0\ncode: 10\npartyId: nmsXi6eFKc9QYdjH' \
    > test.out 2>&1
eval_tap $? 69 'PartyRejectResponse' test.out

#- 70 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: VG7l2XklvmhUvWQG\nfriendId: anGbK7lGeZ18ueRU' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryRequest' test.out

#- 71 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: F9bj8Lscd6qYzJb5\nchat: HrjFXhuUQw0x9TxO\ncode: 21\nfriendId: avbZHLKnBrCvBlut' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatHistoryResponse' test.out

#- 72 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: AtFlby6GByGQwp2A\nfrom: dSDUXGf5DP4rDxO8\npayload: zyiVt8GpubsEq9MM\nreceivedAt: 1990-11-06T00:00:00Z\nto: 0mdadZIk1xRuR1y3' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatNotif' test.out

#- 73 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: aYGKHbzWD9EDr53E\nfrom: f9YMzB6F5n8JsJb5\npayload: ppDkWDVqjUyzcyCf\nreceivedAt: 1993-12-31T00:00:00Z\nto: 5vZhvT4UFetE4DMX' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatRequest' test.out

#- 74 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: JEvK9I7WMtuOgQBQ\ncode: 81' \
    > test.out 2>&1
eval_tap $? 74 'PersonalChatResponse' test.out

#- 75 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: UNAMbvAfIPaF81KD\ntoken: XsQ3n4mgcNsnTKcD' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenRequest' test.out

#- 76 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: QMdwsIKjWUKNt2QY\ncode: 87' \
    > test.out 2>&1
eval_tap $? 76 'RefreshTokenResponse' test.out

#- 77 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: iDJwwurrPdCK9oIo' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsNotif' test.out

#- 78 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: iT7tJqnbfUu3jA9v\nfriendId: 2CSSFti4zWFoyPdO' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsRequest' test.out

#- 79 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: u9nWMwVJYbcKl1pX\ncode: 20' \
    > test.out 2>&1
eval_tap $? 79 'RejectFriendsResponse' test.out

#- 80 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 21' \
    > test.out 2>&1
eval_tap $? 80 'RematchmakingNotif' test.out

#- 81 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: ikVbFPoZ84Bwccw7' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsNotif' test.out

#- 82 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: KAVsMiWGVZMENLL0\nfriendId: SgX2miitxGlNiHCH' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsRequest' test.out

#- 83 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: LNdThvH4IiGtl6Xj\ncode: 37' \
    > test.out 2>&1
eval_tap $? 83 'RequestFriendsResponse' test.out

#- 84 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: 5rO4lq3ZV3X5o72e\nchannelSlug: poZ6EV2J0SQBMEPz\npayload: VVmRzdXdLCRz0Bvw' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatRequest' test.out

#- 85 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: kSkkJeCo4ejUtqhb\ncode: 82' \
    > test.out 2>&1
eval_tap $? 85 'SendChannelChatResponse' test.out

#- 86 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: bOViamiSIr2gW8Ks\nuserId: P1H948MwAwZq6yqi' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentNotif' test.out

#- 87 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: ebaQ8GQmZEf0KSX9\nmatchId: bwukQJGkHaJX7g8k' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentRequest' test.out

#- 88 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: AgWuhiVm1Onkyigt\ncode: 40' \
    > test.out 2>&1
eval_tap $? 88 'SetReadyConsentResponse' test.out

#- 89 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: c0wzBAAsZY2xb3cg\nkey: PGkICckfMpjl7WnV\nnamespace: 1WlFnXUmNFkbNjNx\nvalue: YRxfLOZbQlxbX1yP' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeRequest' test.out

#- 90 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: GGEw7TTMG6xCmkcO\ncode: 47' \
    > test.out 2>&1
eval_tap $? 90 'SetSessionAttributeResponse' test.out

#- 91 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: xVEYANqktbKKm8sC\nactivity: cWWnR7XPKaKlQEeI\navailability: 56' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusRequest' test.out

#- 92 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: EZZzAwrQ0hSgp6gv\ncode: 53' \
    > test.out 2>&1
eval_tap $? 92 'SetUserStatusResponse' test.out

#- 93 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: 2UTfgN6EnwpA7GXf' \
    > test.out 2>&1
eval_tap $? 93 'ShutdownNotif' test.out

#- 94 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: 3TaeM4NMGPwPk24K\nmessage: Td2YsonSVbFjdMwk' \
    > test.out 2>&1
eval_tap $? 94 'SignalingP2PNotif' test.out

#- 95 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: BKDXxHSohrTvf0T0\nextraAttributes: xeVzV1YLU9KtwWNV\ngameMode: gk5Oy79cPfSIIpaR\npartyAttributes: {"95V3Q3AlATaLmpRM":{},"FjnKe1rXk4YUxkB1":{},"MjzXiJwnhDFLUauB":{}}\npriority: 66\ntempParty: 0z2S6v40NhqH1NRf' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingRequest' test.out

#- 96 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: abswwq2iU0RSqyNh\ncode: 37' \
    > test.out 2>&1
eval_tap $? 96 'StartMatchmakingResponse' test.out

#- 97 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: CvhUH80maYHh9Y4R\nuserId: eQrzL73YXHrw0DtL' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerNotif' test.out

#- 98 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: NyaciWQuASqc9bUb\nnamespace: pV3hN61itIxDGsad\nunblockedUserId: C4CuW2qxOXzNuD5s' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerRequest' test.out

#- 99 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: QUnQrTeiezbRie2q\ncode: 25\nnamespace: GYcLKw7kj7FqbCtl\nunblockedUserId: NdkAVBVButFGDMKR' \
    > test.out 2>&1
eval_tap $? 99 'UnblockPlayerResponse' test.out

#- 100 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: tVRvluieSNUm4BOl' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendNotif' test.out

#- 101 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: L06ChBQCbiB9VUE1\nfriendId: U1CcFg6Bt80JDNZl' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendRequest' test.out

#- 102 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: JQ3zY1ZkZKkdgPTF\ncode: 32' \
    > test.out 2>&1
eval_tap $? 102 'UnfriendResponse' test.out

#- 103 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 103 'UserBannedNotification' test.out

#- 104 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: TyLxjiTj7mdplPHG' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricRequest' test.out

#- 105 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: xOgjrWQR0fcVwIY6\ncode: 48\nplayerCount: 53' \
    > test.out 2>&1
eval_tap $? 105 'UserMetricResponse' test.out

#- 106 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: wLyjSdksBDQ6I9YF\navailability: 54\nlastSeenAt: 1988-07-17T00:00:00Z\nuserId: hVEXlUXRuM0Lyiod' \
    > test.out 2>&1
eval_tap $? 106 'UserStatusNotif' test.out

exit $EXIT_CODE