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
    'type: acceptFriendsNotif\nfriendId: P1VkHelU1JOIox9h' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: Y7NRLvjzyJZwVKYm\nfriendId: 2X1gqOFkQfswhBXL' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: 5OFrkwYXXSUBnpQX\ncode: 85' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: al3jScRicSd0jhaB\nuserId: UncdxwJvCGXgp14A' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: tAGwYSqDX5Udnxmq\nblockUserId: 0JGoD3sW3x7a48Nd\nnamespace: AMLXngolPxaahudE' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: aIlHOOaNkrDam2v6\nblockUserId: XUHMwr3577WkcCkc\ncode: 74\nnamespace: 220osGmRY1e3dhs4' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: E6hPcwei8EnX1Jc4' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: GiVio7pjx6Epiguj\nfriendId: esUfijbA3EFPORe1' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: 7Gxc5dIEUp69hfn9\ncode: 19' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: 5HreWr2eBANXxyb3\ngameMode: j9lUFDaZPtu1d1yB\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: eHEEgWv3mAeyIZtu\ncode: 88' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: ueWsSyIQE7Sg3gtd\nfrom: pZGoQ9XIazrVCDF6\npayload: GPCCNHUp7aNZe0WQ\nsentAt: 1973-07-22T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: aup1LG9P8q7XPOiY\nuserId: 4miywJeyB72DNWFB' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: hfI8PAwo9yC4cPRJ' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: aaFC6nqtL2XBEfkZ\nnamespace: GOdotx350NCyV3yz' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [MPneAvbnqgu9SWvd,SiKcFIsxj24AJcJb,YTzdF27w9PeZYrRv]\ncustomAttribute: CZGUPezilQxLlbOr\ndeployment: S6H7qEu34y8VYAWS\ngameVersion: MRs8EdYWlqnCnnOf\nimageVersion: T5qklIeggdBRruPg\nip: jBTwIe525vJOuzvm\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: IYZhxbTSlqXgSqt1\nmatchId: VwKqoAj1l3JIdfMq\nmessage: kZi6yWVBblU6IFMf\nnamespace: OIbOQOTrqmaGkNDd\npodName: ABarOy6LuldF5ozr\nport: 54\nports: {"qNCm8XBGEz9amGxH":68,"m7olWvXo1RjWF3JL":19,"SFXBQC8Rj67SXBtW":87}\nprotocol: z1PmBS78L9tGaSNZ\nprovider: IxNziVcZwJZFAQTd\nregion: w56EaCudmXbYXbWu\nsessionId: tYXPNXKW8EP3jFcK\nstatus: kIPaAzHxEFBUnOWm' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: rgobt4OV1QTdZeS1' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: DZYjraoXrid5zchn\nuserId: 7vICSRr41VVK6r7e' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: MYiewn30SpM7nKbU' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: sU9xuokT5ULznvgO\nactivity: [iF22FeUOzzY2aLRi,Ca9FSeQRxPbgSQBx,dV9e0uk0VflBNbfA]\navailability: [V6jWNaMyUfx5FG8u,zepYUmhw1Gx6QvHb,dvPMIxz2BW36DS3W]\ncode: 40\nfriendIds: [qATVFo0FErA02kcC,rXSBKKCu6YyBBukj,ZftQFYrshzFaZRLk]\nlastSeenAt: [1979-09-23T00:00:00Z,1980-06-16T00:00:00Z,1993-01-08T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: YjiuyJbErklDFgin' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: NT5QJJmrL5f39MR4\nattributes: {"rfMdhj9ezGgOlkGA":"JwyEBZ68zxROuv34","jVsSDKa8mxKA0fvU":"rXxbBdUxW3pBsfky","DBHKLwpHxuZ4R96i":"wjfV3I0Bx06TH6tA"}\ncode: 78' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: UNtabS4JT51dKR9H\nfriendId: nfeic0iwXK651WAq' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: gnQK3zSVrFLF5kNr\ncode: 72\nfriendshipStatus: yd1h24e7fTKuqDvt' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: yf5QdRP17vads24q\nkey: 6mQEogGqA1yAQwIH' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: qGsLew7bwZb9GtJg\ncode: 2\nvalue: SGp4XPTA6UkinIYE' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: pFH7vanwbFlFHGYy' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: H3TI84IzTwCJ1vAD\nchannelSlug: lXXr2oXRFfUfI9M2\ncode: 88' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: hotvNWJuqigVDZSv' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: BXR8sNotPgvI7Nvj\ncode: 73\nuserIds: [5KiHYlPQRQMii5W3,EZJV40athdsW3qVh,TMUt8uCptvZFf7DR]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: lFSgJcp4wpnpYU5A\nfriendId: OV8izUaHOPkT4jiE' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: IVsHem53qNmnPKK2\ncode: 9\nfriendIds: [H9hVpakXGetyNEg8,rjYt18ipdePWbhKo,PCRDwBTKQOgKxxaF]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: YGHAxgmVn5P9KR2S' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: a9vhLwt7Gop8QNwA' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: d2ElcdkSbhIxLx5J\ncode: 86\nfriendIds: [Sx9tM3Bmm9ymZPCQ,o3KqtEOEPVYoocB0,YluW2CaRWNDRdkZ1]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [o007NxN2k3BhPF5Z,1Plc0XQEvNHiPi2w,Tty7pBv6mA0xWJ54]\nmatchId: rTlr2t8tzCrv2jsN\nmessage: BYxCaq2Z9rUwSYpY\npartyMember: [bqUaW6TDPKtYTPpf,zjpgyrd9kYCiGGF8,8zgWM9DM9FU9Ou9a]\nreadyDuration: 74\nstatus: ausBvyEZVKviMAuP' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: F714mCbG4pzm2Yzr\nfrom: OqParFLJ90DEwuan\npayload: dBiLB8BFz5XKJb9a\nsentAt: 1984-07-22T00:00:00Z\nto: awUm3aR03E4Jg7Qc\ntopic: O5Pxxcop6t6sJMRM' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: cYJwInV33Qlvxx7l\nfrom: cIzAItmoSETItj6f\npayload: VyGh0oOxksUElm4v\nsentAt: 1982-02-27T00:00:00Z\nto: 8ygWZ6DfOHDEY7O0\ntopic: NarUDV3hctQroL96' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: s6cKvJ8FEbaXbcFC' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: GmeRcnOZ38PAXW5N\ncode: 40' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: bfCsvLkUDMiyU7XO\ncode: 47\nonlineFriendIds: [a0dBZBUAccF9upOE,Re308NmR9kpgMhYs,b5OW0urLsnu2Qm4U]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: LLQ4cAVBcELkjPWW\nfrom: 9JenZOblGjNuCjib\npayload: hwlTGgKr81cNW98Y\nreceivedAt: 1975-08-24T00:00:00Z\nto: cYKY0F6telfqCPf0' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: zxfHPw3G97bhwubY\nfrom: rpRIioXpnOhwBQBe\npayload: CHjl98YomLsrDDqM\nreceivedAt: 1995-03-24T00:00:00Z\nto: XGuIX9UketlJmI5y' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: rggCS62TORPID99P\ncode: 54' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: UTCOsSVFQCsJAeWB' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: 2qoZYfKXgU2uTmuA\ncode: 75\ninvitationToken: wD9DOKvjs0Bar9dh\ninvitees: PiRw3WQbzW9lb4aY\nleaderId: Bs4NHUtVo0jcZOat\nmembers: QZNHIKunMbd0uVWG\npartyId: ETAKvXHshhovNNNX' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"gJgjgBzZk3d0KfmX":{},"cFKRzcpkayIDweVM":{},"qaG5GWiEXEecmeOU":{}}\ninvitees: [GAuojyn4Dgc9jIkx,79N1YhSTVDRQGZN0,9TOEvMrm5HrkGfmH]\nleader: UE5ZeOt7mhlWTiXS\nmembers: [xc1gfQFdBVbRmMdS,WzZQsDdbS8l81Smw,lPUEGR43FTHBhELe]\nnamespace: LIg0FymqVBwqlL6m\npartyId: AO1wInwe9NUzAnwg\nupdatedAt: 1985-01-28T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: 65jOAgraEc68wJ0n\ninvitationToken: xp1pcEOFw1D8WM5B\npartyId: vCuWHQMUk43DvhiN' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: Oi6DRUQOmjkgGOx7' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: R8ZYtAep9nE1D3oL\ncode: 66\ncustomAttributes: {"N7AUo3jR9wWfZQfh":{},"OJBYN9szZMZoyXSP":{},"q3Fa8cJGEtvUXOIu":{}}\ninvitationToken: kjBY8qtdWu21UoL4\ninvitees: hRP4IFOveHDGAcIq\nleaderId: CDQE8P8TAaEWhp6D\nmembers: k8SLi1cyChQdxULz\npartyId: UaEYalLnkKzoYPGF' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: GGAFGwXxi8IM6nbi\ninviterId: pdIJNwGkv5pGO3hj' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: MmkpIPqR1TplYeqj\nfriendId: E2Dg1lA3JRmxbSGn' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: TqSUJt7n2HCil4s9\ncode: 87' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: agga049andwrhWBT' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: WYvg20f8DRcbyY31\ninvitationToken: jaKLDEbcNfcK0oZp\npartyId: cI7ccMqwmO73nltq' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: sOmkcbse2sK1Ij8I\ncode: 99\ninvitationToken: xBaTNwZCUIfr3DjF\ninvitees: LqZCj9NuAcFPlwrC\nleaderId: H7GrBn5EGkGAQfd7\nmembers: 1EBGqkFM4mCdmeNC\npartyId: hdDRdOdr0izEp8FL' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: DJRJuvHqPI5PwdVS\npartyId: AQkdJJr7or6iydVh\nuserId: Oo9YXOVsP8u31buz' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: 7CpJ5oiTRu6hzG1x\nmemberId: G3k5R8TkffcX6KES' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: qcz2Bf5ZLTC0Z1kE\ncode: 15' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: pL1oNw3hDQE7uqpN\nuserId: kCm36DjNrMu45CnH' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: NLgvmtqPrube9SE9\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: T6bYUhwOiOL8vf2v\ncode: 1' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: bY6Gl73bCfYmpELO\nnewLeaderUserId: HmCASfWVzlKjEv8y' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: dlhF79DiLPuZYDw8\ncode: 22\ninvitationToken: AtV3yNkB9rmHhFLH\ninvitees: rSfMQQMjgaPez5RH\nleaderId: XfpfDnE1pOwWwZSq\nmembers: FJUuKuZdlMi6xg7S\npartyId: 1MRtcJGEvbLEtzSV' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: BIHOdbXFuUe488gz\npartyId: ggTwYawXnvkvjOBT\nuserId: 38QJQ54Eefjdzod0' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: y5NaiIcoez75nt7P\ninvitationToken: MlSUNCOIYUu5WNps\npartyId: kQXlmZkh8t5iN8da' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: KRa8P2S6JFRpvd94\ncode: 48\npartyId: VPlB63YCzNHqpEwM' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: HcOhv1nnLPZJOXtC\nfriendId: HP3Nu1ZB8ewb6MJW' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: 1WUM0PNktySAsqlb\nchat: uTnQRhY5yFNiiZnf\ncode: 96\nfriendId: 4yPN44Fv1ClCTu0S' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: 1hUvOVn9LGOP12qj\nfrom: ckUV1fDltVnslDDc\npayload: 0zrAt0N05LqsbrM7\nreceivedAt: 1989-11-18T00:00:00Z\nto: M3k6Yu1LkL8QlCQP' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: A1JIiGmnsBWK03Xl\nfrom: TMX1pclUnLhAdRVv\npayload: ZLEchMzbrJ2kuIrz\nreceivedAt: 1989-12-30T00:00:00Z\nto: jer9d9HCYc3gdrqy' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: ymyPtWvtyq6uKEbO\ncode: 21' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: nlEeLWkgBwGQY46t\ntoken: 8vnt6UlKqMQvNh08' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: 0NSH89m3u6S3cCqJ\ncode: 13' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: v7lK6wLbMuxBW1bk' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: oxTz7TjT4JVATh16\nfriendId: S0enj5DWQpWFX0Tm' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: 4kNPFiS7gh9SGHz2\ncode: 34' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 100' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: 9QUXvMjXOEihTWlE' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: RRDR7ldyBC7BhHbG\nfriendId: rAZmxSEJwO0ncMrn' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: QPNdGG8LGFgyhavf\ncode: 96' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: ctHBkCmnm2Ebw3Ap\nchannelSlug: u5D6kVbdBvdnRE4r\npayload: EKYcfUBA9aKl6zV4' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: KxHulptYCzO8DPJl\ncode: 15' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: 4cGWI57Qx9y2Ql4D\nuserId: 4e2flOu8H2wsEY7E' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: ClQN7FMbCFiTYfir\nmatchId: y12yeGwfoUP0KVul' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: BX8yn6DBhxhQ2gaC\ncode: 45' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: Dd5WtIyzELR2mEXX\nkey: z79vTqDenImGRzUa\nnamespace: tu6hrU2JBaLN4BQ1\nvalue: w6Poa7RJkDNiytpr' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: qXKCPkYGsCXAEuXS\ncode: 83' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: Apr2ZEadZ61EiXce\nactivity: zcrbGuOlpvp11IiO\navailability: 56' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: NKbxzayAuagaMsNy\ncode: 39' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: A4rh05mVAWAPpgxB' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: vkpYqh0I2tFGGSVM\nmessage: bnnWAs9nuang3wDW' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: 7mndhfBls3xRL4cg\nextraAttributes: XSUzuDNWQOhziN0l\ngameMode: 05CsRXuh2bCldJrq\npartyAttributes: {"SLAMP7vNPPZUWl3g":{},"STDC9OTCkR1HVn6J":{},"co6QxnjpK1v1DgsX":{}}\npriority: 34\ntempParty: 25F93XbhuISboZBt' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: hUDcBoxXgXliLP4K\ncode: 94' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: aE2EEJoift4wGIgq\nuserId: 5z9kaBSb30KSngZg' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: MGmvUvZzWbtD3Ltv\nnamespace: uMufW3l1PXSgh9QQ\nunblockedUserId: Wi9hb1eX1BwKczRO' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: MYC88oKioH11Mbjk\ncode: 87\nnamespace: VKVcVrruv92s1GnR\nunblockedUserId: daGGUaauPGlWe9VP' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: wFHVe3Libc0pYIIU' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: u0ntzkUBfl6CgYib\nfriendId: vKlGsIw9WtVgoLC7' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: uhvi3FuSudMyV1kk\ncode: 73' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: DKYJ9DfaMnYSJbgT' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: ns9hwkN4F5xI6dTy\ncode: 79\nplayerCount: 8' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: Nzjy1FfE8QeHUq4j\navailability: 76\nlastSeenAt: 1993-04-22T00:00:00Z\nuserId: 67DXJSorpIO1rfmb' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE