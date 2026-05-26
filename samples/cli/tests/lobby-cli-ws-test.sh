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
    'type: acceptFriendsNotif\nfriendId: t5HJzMUHlRCFWyOK' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: UGXClWZYRfA77Dte\nfriendId: bolZ1gD7OGe7EslS' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: VLJjdVU4jQZz6qDI\ncode: 58' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: THBFHXkVBX1TkCi6\nuserId: 2zyZ7gOYQebKP6rI' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: LRaLOPACvtjRu7Tr\nblockUserId: EZllfrEyxDDw06ge\nnamespace: XXGla3EcIKPsIm9Z' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: ZoctUa1zeUrRgVXo\nblockUserId: AvzRyjCBsLMDDKp9\ncode: 65\nnamespace: 2KKw1cMF42ebuJDG' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: cl0ky0fzHFx2NBn2' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: Wl9KqMqtSBOxysyl\nfriendId: TP9kdDbMrp2nbIVe' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: E7pJqFNaoOWqZgN0\ncode: 15' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: yKEbd9ezsmTbzOO9\ngameMode: YxbFtuxUz7aWywO7\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: 2t9BB82iZFgaAFHB\ncode: 30' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: WdjCa1PYPSzXpeEn\nfrom: T3J3wD3dNDNd15oR\npayload: 9GAd9gkyDE4nFUmF\nsentAt: 1993-11-04T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: cX4VunYlo4PrAhFI\nuserId: pfy8CD1VyXUOqE6W' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: 3Y3VaJucbc6gWasv' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: QfN3J5laRxljRnfF\nnamespace: 62G1ItuWgIObbwgy' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [HeyURCi2DfPZIaE2,AKXk7uYvj2uPvwZQ,GY6pkt6sCI4c1cuB]\ncustomAttribute: ApoS6ATrSRIFIhIn\ndeployment: S0LeDjJDN51qjMgn\ngameVersion: 9J7TgJwDQCMbO7D2\nimageVersion: F1IpkKUzZjvtNAaY\nip: YsY7TrrjXbAcXVQN\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: bc793AHnkZ5BMdF9\nmatchId: U8h7Wg37FcQbquwH\nmessage: GTBu1KGJfkLH2R4Q\nnamespace: sqVoCA7ua3rRRB9o\npodName: Pz9XrueJJxUpFRMQ\nport: 36\nports: {"JeT4jpELz1Wkm6g9":37,"A3VCzByLSaCttFvD":8,"BvXXzyKmbpGz2DyD":14}\nprotocol: KnKPKQj86Y6Jqumk\nprovider: F6sYLu3V4kNGBi89\nregion: lC5Mj14mpMB764LQ\nsessionId: YFWQhwDsR3oM8fz2\nstatus: YcokA3u4CJlNnncp' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: uqMl4ZEoqscH2nji' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: qRJO8cS4RMhn4rxb\nuserId: rHYFezWQZthrPRmf' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: D73uyEnR1krvPuat' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: mUA6luzCqa7lUDqw\nactivity: [aCCONrwG0CVJ4SOw,Dj27fp6kDYoJYx48,GozBcFuaw1cZ6O8R]\navailability: [Aq1WHVjbNSxWZOn0,qGoCphJf2txiW88u,U20UekfaBHtqNdW6]\ncode: 36\nfriendIds: [GwiltszT862Sx6xG,LEDC8Bu9KCITPd3k,zn3oiIU7X0fZ1SL9]\nlastSeenAt: [1995-05-09T00:00:00Z,1989-07-02T00:00:00Z,1985-01-31T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: WkXVBf5w1mY27lfz' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: mQxyByY2ksm7VKU7\nattributes: {"CSjuywLAzz6YmC8R":"do6L6bWZZjLmFQSX","FxNoIa4pyoeIHeHr":"SDmkgrpgF0OWaLca","sljQagnyENojwyMm":"sRn9IN9njgyxe8lH"}\ncode: 9' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: 1SXaroucF1NBQIVv\nfriendId: 0MHtxeRet8XjPZaF' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: sgxH9bKUNA95t6z5\ncode: 91\nfriendshipStatus: q2VULYdwBFuCVjsO' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: lwXVubNpJDpwiXJJ\nkey: NTmHqf23LdUOFvJY' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: gKffe1xIazwvIbQT\ncode: 51\nvalue: wocpp89Vpeb48ekY' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: f15UKJ2HSmcJNE2E' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: WwTIKa5tQwDje1PD\nchannelSlug: VKHXxSfD9h5FWvMY\ncode: 89' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: 5LhV9YKkT8XjjmnI' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: yaTfYqDEqrLvTdl4\ncode: 16\nuserIds: [fD3wS6PTmenR3Mvh,dhwmJj4R43KvhVpz,aQmsUfNCdaAQ1TnB]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: eNwE6CnZR4jLBcH2\nfriendId: xOGfyQUKmr3h5ppp' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: ec339Klgkr5eCw1a\ncode: 97\nfriendIds: [9I9UppswpnLPewPK,00BeGWascLNE7k0D,AF0KVyD74cghS2vU]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: ygSkTeN4PR8X5rQ9' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: RnsPRTm8aYLakPyC' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: bQBmLFB3F8fLX8uX\ncode: 13\nfriendIds: [pMx6nVdfIbpXPSgR,Gs6imlSUEZvzOs70,04y2EZEvuptS6Y3j]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [KmAIbv5XzFahK5Md,OX3UXIw0QcS1y5IG,oe3GdKq1jr5CXug3]\nmatchId: ETxFfbQwMUZ6jTuv\nmessage: kJZyfksLKTCRRRqq\npartyMember: [id9fcNZV9va25QtL,amKvgBec4oa3erWx,7jmOqHejbSyserh9]\nreadyDuration: 51\nstatus: seYzmLLJbegW87ye' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: DXHfM8anq6anNzFR\nfrom: 7H9Tj1AfgpxQ6sv2\npayload: jrE7tQcN37yc2vVT\nsentAt: 1975-02-03T00:00:00Z\nto: wnn78a9kYwVYnzxS\ntopic: 0scAPeY0jjR2msTU' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: 9BSXNNyJ7vct3why\nfrom: AdrvxwgeyGRFAwuF\npayload: vw7WoXHpU2nJqt4z\nsentAt: 1980-07-07T00:00:00Z\nto: X3Avz8WT6DbIjB46\ntopic: t94odboZToHDYCsl' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: 3coPhN7lenluHqwI' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: vtAw17bevy7R8M7e\ncode: 85' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: uywbleWYQ6voWvj3\ncode: 37\nonlineFriendIds: [nTzgguOUtmuqDLhw,RayIvlpiounTZBKV,laIJawgfkGlzV9SA]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: wEAFD0NgIRhq7NUC\nfrom: kTdvxYoM37vXa8Uy\npayload: S1eB8U8a1iL0C7hL\nreceivedAt: 1994-06-21T00:00:00Z\nto: uPNLr5QF495MiLB5' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: 6L0kzz6OlcyCjHy8\nfrom: EJMPQTk2jxEgfIHb\npayload: 8aymPqWlyY4Ti2Vk\nreceivedAt: 1974-12-21T00:00:00Z\nto: n79THExdXPrUzshz' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: wC44H24AE0gnGBTP\ncode: 66' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: 1o6Kpkgg0wrgIOAC' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: 4NF8LFp8brkXuBF0\ncode: 84\ninvitationToken: SwMGtHwFMzbYpRmQ\ninvitees: p3QEpnuBNTgKbTSv\nleaderId: Js0T2FzGQDqcDFlh\nmembers: fRs6NJ9L5vkjqNI3\npartyId: jHFKRbsQQlMHPztm' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"akcuCmTfURQeS8zj":{},"mg1VZVTSL6oPhw5B":{},"6r3jJpja1xkUV1Nw":{}}\ninvitees: [kYpTpmv28HDgrXJC,97NVsr9EZHJdagtx,kSDKavzqvHYUSdQN]\nleader: p2r2XgMIR0fJKara\nmembers: [5bny0m3OU856Sa9A,KRSNc3FNYmzr44KB,YKXdfbocfPxTBHv9]\nnamespace: Qo4USdJcem9j95pB\npartyId: zL7WOnAeZE16aReS\nupdatedAt: 1992-09-21T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: 57k8hzBqbcEbNoBk\ninvitationToken: X81krhTbP1RYX26E\npartyId: rD2il7H1Mh6nB2TU' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: otWyMS6BedD3LVGv' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: Ybf8qkYEym2aiukV\ncode: 89\ncustomAttributes: {"o3eg8OXfTcGb1ueE":{},"uKeD2wb5D3OscjML":{},"LqbAnaFBlxICZcta":{}}\ninvitationToken: gbelm8k5PwHZiLjL\ninvitees: UgVSFGdEo8wBn4x5\nleaderId: kOM2qdoIi4P7RAEV\nmembers: nFo6oXbXuG7IWnEB\npartyId: BVKHFL0xC85i8WS2' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: ce7TKztsKh5GMjXq\ninviterId: broTvS8A3qmx1ZA2' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: huxmr4QvFcO6CrWK\nfriendId: 2ZPEUbFr0LXjNdU8' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: lHPghoNl3k18zq9e\ncode: 75' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: Lw50r9S3DW05ah6D' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: BPePVpTq94wf5q0G\ninvitationToken: HXFo04bKSw4fc0sN\npartyId: ITQphShnSVHkGx2V' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: GLNzvgl7p5P3v54j\ncode: 33\ninvitationToken: N05xgO9Jh0sZZ0uA\ninvitees: QvX3A6HpcZhTe4X9\nleaderId: rC9Qfrta0D3Tq9KK\nmembers: nx1YlfOEJgIjNctg\npartyId: DopKybkIYYqL4ZeL' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: TeCInBrRswSzhGcl\npartyId: 1uAHn5RLlzZ9CjQB\nuserId: 8XCy2mhzSZyLEJVu' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: BwARzBsYBXHmObRI\nmemberId: R7JAwBt2OfdiYCXa' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: 700udgbYARVc8Fbq\ncode: 92' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: QSEdnvUbgqNdW9L7\nuserId: ojxa3mpZdNT88xVy' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: gdBylzld29NQt8cM\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: selv5es2aU9fpUNx\ncode: 78' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: 6iI4sVkmX4SO0aVJ\nnewLeaderUserId: kkZvaXgPiVpRVGqV' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: q2qL9kWkKe97R3YH\ncode: 74\ninvitationToken: H15LqIMo2bbk6Yfz\ninvitees: yybIE8eGs1eTfVph\nleaderId: OZSUuG8faBQ60NF3\nmembers: WyNub6YCTdBENva0\npartyId: 7Zn9CKlAaBr1LZqS' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: 5FbFSMYYdFhZGlkX\npartyId: dnnH7TOzXay1GHL4\nuserId: lWtrY5yZeSWiRJ7A' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: Mf6tJ3rH9rZuoY9G\ninvitationToken: X4zhqLhgmSF0n9za\npartyId: xW8pR9MiJTt2DdoV' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: bIdv2d73o4MsxBmu\ncode: 37\npartyId: UnASW7aoBq3Qcxx0' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: J7KJn6F92TF2iDxA\nfriendId: d9yOvVGYHSalyNqe' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: za6tWcMmgchCLoSc\nchat: dUexKtbhTUnqi1Di\ncode: 48\nfriendId: ssJzVCRg06tMusfJ' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: VXMOEMNALOcp86kg\nfrom: 6erB5xUaKFDbB2h3\npayload: 4rgUXhMtQQf25cef\nreceivedAt: 1991-08-02T00:00:00Z\nto: 99gemK4HHsVKKETv' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: B2NQ5oJKFA0aSSYK\nfrom: z0YLiaGmY64wiO4h\npayload: v7LVfmicanImv6Q1\nreceivedAt: 1977-06-09T00:00:00Z\nto: yAtTtOpLPmu0iK7d' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: BLfYvFKDk0NUwv0x\ncode: 71' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: 0744qkpWmFoegoO3\ntoken: LEYdJ5IyG3JVBHHL' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: JWCrF8g2SEFamZCa\ncode: 50' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: zrJJeM3PtrmMmTdm' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: rcGouMhLLIQMu3kG\nfriendId: nn2iQrFBgjMljpD2' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: TEH7YYQtHpSLY3zh\ncode: 7' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 36' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: 3UhR6YqNcwnO3VC8' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: SZpXeJgWErPtgnmD\nfriendId: 76GO6Gfjl4QWMQjC' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: G5NXp0mLJAVo88kj\ncode: 21' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: XdeoUtHqCROqFuwz\nchannelSlug: MkaOupkRoqndM9ou\npayload: bpJWNWrba5pnTUaW' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: 5FNYSkg6uXeV30XV\ncode: 30' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: 013uelcqGLkBkncs\nuserId: kw3JrinS5fh4AkKK' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: rL6qIuqIz1KOTLJQ\nmatchId: AMYdIpztPaKdt0tP' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: b8isB48t1TSYlUD3\ncode: 93' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: oQ8i6fGsOJYwRixI\nkey: rW7VVYVheB3MyDnc\nnamespace: cNxPtnB4cB0BssuO\nvalue: KvRr0mEUAgNx94BS' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: ZL1uV6OKLw6Swicr\ncode: 14' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: cYPXgFEG2gHXG4VT\nactivity: sAoxDBJS1cQM7jpf\navailability: 41' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: yYDyMWPFr7YR7zxU\ncode: 31' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: Sr9EKI44HgQDUdy2' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: llj1afLdm7JrrNVI\nmessage: CRVjft3RLEW0PsFb' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: nHuHheh9ZDXiKfHX\nextraAttributes: hLVRlv52gMgc8flP\ngameMode: xvrMECF1ubX5ptvV\npartyAttributes: {"vStRZBK9NbGZcews":{},"NoyboY4yjfK3uobi":{},"cRDyXMrvimWqbfIs":{}}\npriority: 77\ntempParty: RPhYjzuXUmqJLp7R' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: wh7zkNH4Bo9y2xr3\ncode: 78' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: A4NHpdG3PhQf8RaO\nuserId: wPQGbfdAMayFLF55' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: UPXmznEbl18g7G0s\nnamespace: j3N6YSJhqlfXuizO\nunblockedUserId: ECzEN48pdLKiJdCI' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: yISasoV4p6fOR93g\ncode: 66\nnamespace: o4ddIIUdUnJiUomB\nunblockedUserId: ET5BX4jSe2xiybOn' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: fettNswtQKaaZ8Zb' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: QEmfOwIcbs3YFw0O\nfriendId: fQlXgHB2D32Vrmxp' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: DdWSR3pK9s3NK96a\ncode: 74' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: AJ7bco8PBiWZzMpX' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: KE63YeD1yXqxmFmo\ncode: 64\nplayerCount: 32' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: cXAZWYWDXtVeegvb\navailability: 22\nlastSeenAt: 1973-03-07T00:00:00Z\nuserId: OEIlPwoNvkPQ3Nlc' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE