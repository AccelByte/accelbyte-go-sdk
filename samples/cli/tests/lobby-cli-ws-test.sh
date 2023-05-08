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
    'type: acceptFriendsNotif\nfriendId: 3lAGZbzVB9oGy4T1' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: djeXznAHwrhULEpT\nfriendId: rT31QjL642X4Ol55' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: sLYYlDw9XpBc4feK\ncode: 91' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: UzBvRJXPVCgkFLGf\nuserId: 8DPPhRl7ZijoF7lo' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: QeDZ4OQj16H8ExyN\nblockUserId: pvPuAQoZydfix3HR\nnamespace: KvTU8FebgjgH3YQ9' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: WObk8L9zBAinM8Hs\nblockUserId: ELlARX5v3HjSxwJg\ncode: 60\nnamespace: 7maEjxV2s1bdszHE' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: peBQE9Em3tZPMqr2' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: WS0bcfUUENFo9njG\nfriendId: z0OYqlnpi51li3HU' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: oz52vIYDdFQdf9LM\ncode: 21' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: mrLfe3QQvcj03oqg\ngameMode: 1b88qJzA3AtzL8cy\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: BiSAmPOYCvntHc7e\ncode: 72' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: mOWGtMSFO03kZxHH\nfrom: 2gvIwTQcAFvfxw9d\npayload: dagdJE9tttUWPP3A\nsentAt: 86tlbqsdOtOD6VgC' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: Sf0vRVmRsHeKZ5Fv\nuserId: BL9EKfqUVXS2ukbk' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: hZpVretJot0aoszq' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: InxiYtH4CUB1Ahjz\nnamespace: QwSSTdxFRAaTiAo9' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [vJLrDyRS92S9tlKO,o4fUAFefWMa1XKv0,NW3RsFUmjH9WAdnm]\ncustomAttribute: 3MSJc3GexibBg5cj\ndeployment: hdFwiwaO0QyEkJ3k\ngameVersion: IMq5h1LhH5x83iwj\nimageVersion: tTdjCCRRLggEnm2q\nip: stLFn1rU6l95nmG6\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: fmHF5pCTdbeE9zST\nmatchId: G4W8LKmXVooPZ1tZ\nmessage: yALwe7cHZlqBz5QP\nnamespace: wxlkBky1yYg50BJc\npodName: tf9PxWuNc1y2kI3Z\nport: 23\nports: {"A4MVJBwTlZmkagug":31,"NsBCTlvM3XWnIBMV":92,"dJh0tHkJPfnhl84F":46}\nprotocol: PAYJj48URAxt4eNC\nprovider: 7U2lutYRTMI5pA75\nregion: yaYYDjq534RKlH89\nsessionId: wpTXJq4IqVbiIWFr\nstatus: O8aW4EpdyqbMlW43' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: oMSE9vygY0sHZYC9' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: NYQVY7si2vrrkRpD\nuserId: Hv8xjY2BY1PG1R8q' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: O7raWhae7oONwpBy' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: zRyFdz6sDVgbjGJP\nactivity: [k6dL8uke2pJhtA83,dALmzmvocPKFxjLc,PImgQq95SWxhXgC1]\navailability: [49,0,98]\ncode: 67\nfriendIds: [5K0deZnUbK339QCc,0u3OCsds1a6sGjHl,17ZWR05K5bieVY8v]\nlastSeenAt: [zlZ3UjmVeayHqAO3,qJAoIgsWt353CdJu,gy1nJBA3JItpcgMo]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: kWyLuRLQxwQG96EX' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: WIqNgGOnTcy6yDoT\nattributes: {"gLCuZinu8vMXWdG9":"xVWSWFcSgf1SSaDX","bBxc1izORToc6kZc":"PEzDxlN7gLmLVYbL","7Rv5jQ5Lci8FIWSg":"7DqOKwolBcSwwQUb"}\ncode: 35' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: kLhPPzXT4jVh4C2f\nfriendId: ZNBHToIBZxfayhZw' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: AC8t0DsWCECiB2oy\ncode: 25\nfriendshipStatus: Xp89fq7p6uHByyoI' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: l6eHeWcBHheMd9SO\nkey: Cx8k1WteM6FVfWGl' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: conBE0JNmsRqsr7A\ncode: 9\nvalue: Tfug7xIPcsFxPxdI' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: PzNKgh7HI6BKbi3P' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: Rk8v8Q3RMq4OljOr\nchannelSlug: sheE6dYoTA6WnivN\ncode: 98' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: dowOztXXGLRJtxV3' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: NNB3Ewny2Wyc65TW\ncode: 72\nuserIds: [UdzJy9qu6E0HXVld,uKK71BSoNXQ2LgtF,jUuV6Mp1uA6bjDmP]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: Zhq7IzU6Tc0WWvFf\nfriendId: ZGnuO4lvcK7y4baD' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: MuqkeodqS7fVEE9V\ncode: 97\nfriendIds: [EcodHM34ek27PLGu,5ovZK4Hm56H2fEvB,bX8qeIRw3lgp8lxW]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: KVK4LwOBKPVnJy7m' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: zl1icqr1jfqhcJvP' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: 4JXytwarY82rNxL0\ncode: 45\nfriendIds: [HnmcvvE9RX4ChI4Q,hdSJonxlzXxepmZw,yWs9oysik5DnLb5o]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [EfkYRH0s3oa7fmlE,JyBeENAfIGImc2nC,hk2YP70kYM3jeCf7]\nmatchId: MkYtd54cQAf8fZkt\nmessage: IDnyH5SJBv1O0u2q\npartyMember: [eZjZPJYp88p7oEyo,o8Xwi3rhTSs1jZz6,qCXxy6imYFFZOzj1]\nreadyDuration: 47\nstatus: Ta5DmW8FwUXFPagi' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: FIFMSm95dq1OqYai\nfrom: 6z4KyGmwZLfkKiRV\npayload: nWMuig1peU0ZtyGg\nsentAt: 19\nto: 3G569NkaNfjiRHvO\ntopic: WXhIvSeLJ7Vm4Vhi' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: YrUpErwO0G0dAjjm' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: SBeUQajX4XAAhRKs\ncode: 57' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: ahPJKQaiRtOO8KtF\ncode: 56\nonlineFriendIds: [3B8Fp4if2xAiskbg,5aiGzrREoxrXk1Y9,E1ogEOVsWrhqekme]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: wN9Ey123NQK83vZX\nfrom: XD84FHKP7ZShKV1r\npayload: DFES3ki28FVqHSUs\nreceivedAt: 81\nto: keU4dDOEtMGKETH9' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: 74CVJOEoviqOPPYJ\nfrom: DOzEhPfpSlONf04s\npayload: RhDch1vtP4sxQ3a2\nreceivedAt: 76\nto: nOyXD763FYMxYYGG' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: EabRvaj6GWHx7P5j\ncode: 32' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: WgIXIv3dJ6mDK60m' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: NrDBkpW8LxUjpIEz\ncode: 50\ninvitationToken: rjxExiuQH98MzbPO\ninvitees: S4S7MgTCt7nYTs0x\nleaderId: vLORpkrQaEnTuxC0\nmembers: nKNUqcTC2vX2CiSs\npartyId: HOWQ68cMoHGmkz30' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"1rvMqVbOmsqfSEUr":{},"2edlOaQBvwpYoC5y":{},"7BPbTkzB97qT6T4D":{}}\ninvitees: [9GmYJUrV6DOxM6FU,rByTdqcVOf0gWs0t,yKzra77w85ssSoMw]\nleader: vRECTE1Cz9MhXp6R\nmembers: [uopZcmHQ3Y0kjNUE,DDxZYLqYwbNCFjvk,pOf01lnsfkJ3iXrv]\nnamespace: RHO9k0HZflca3pG0\npartyId: ggNRRKNGeGCbitoX\nupdatedAt: 98' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: b9qGbdaCPdmsLhCF\ninvitationToken: qSa7rBo5IvcM3Q4p\npartyId: ohkBNz43CZz7h2As' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: 8CV6JFGdL9Xi6Xa3' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: PoSEOPhWHI1CmaV6\ncode: 95\ncustomAttributes: {"10UImgaRuPfQWY0o":{},"97aGVWHaB4CIkiZC":{},"XRIduT6AUiZTO1Kq":{}}\ninvitationToken: QcyfOQJykSAMHu3U\ninvitees: 4btIypAtsdCQXMJz\nleaderId: aShFepQa5soUXXlB\nmembers: CeGq5NI9iTlgOZv1\npartyId: CrJN5nEToNbC7Ez1' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: ThAUWDAz2NcV3lhU\ninviterId: VClyu28POM5C3E9U' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: eG1I2bguP48uUUae\nfriendId: 7rS6fpDadwuHg6Gu' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: TEemwANBj0qtZ9eh\ncode: 10' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: szhDqHhSQ56FvKym' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: XOsuq79QM1n4JL47\ninvitationToken: pA8KUOExibwnze2L\npartyId: 15EQFLEY6VSCVkFJ' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: DFALgE6UfAzC5ROJ\ncode: 7\ninvitationToken: gbcptIxXFB1YO95O\ninvitees: YckLe0T2pS4P6fmT\nleaderId: iHq2Wn8wL80rtlae\nmembers: VkfkPafQa7kudtMe\npartyId: t0xEpyUu6LaZOMvh' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: DzxLQSaMBTlNtdXT\npartyId: IohD7Y4M6lNh39XZ\nuserId: jn5ZBKqACOCMgFrt' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: WeLYXa0MEMk5W3nZ\nmemberId: apeRM82OaHjio9Og' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: 92EmbeEuN21Rnuoy\ncode: 71' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: NDLiINioDssMJeVL\nuserId: euMof0V8ydfHUlwe' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: klI2dXrWZOOgqIdf\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: kziu3y2wJkvbsUJL\ncode: 37' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: 2CHyeiH7hPzQfyH3\nnewLeaderUserId: iYrtXo916pBg3tBy' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: 5UpWjUG1rjB4uxKO\ncode: 94\ninvitationToken: UD0gVO4N8co3UdZO\ninvitees: NjFa6syzaUsEqaSI\nleaderId: R7cLvaq9TvotQ6B7\nmembers: WmZjv9AbxG9jly9t\npartyId: uqeKH2dj7LmEFNyX' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: 1oLIZL09Dk2HHnLM\npartyId: BA9pPRicJgsnQzHr\nuserId: a5cZttAR94EDOL4K' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: Tv6LVqbXos8Tx3Rq\ninvitationToken: 7CHsFZM36HHqzml6\npartyId: Lz2uk9N8FkT26nFn' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: 7F6M9ncDXGoBk75I\ncode: 75\npartyId: klknRhqJMVt8HwHm' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: E5mhvAma3YpAtk52\nfriendId: 8V3YVIoIejgYozDz' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: wCGHqpSZEYEBVpA5\nchat: wpLXcNoOPj11kuKp\ncode: 28\nfriendId: HYgWjZSk9AiUdWm6' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: aI6SIAKYdb20kqga\nfrom: rzofUaWstA3DAJ7b\npayload: qdqSclruJmY8vafY\nreceivedAt: 100\nto: 1c9oPx38FIwRmzKC' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: tpBCpDOUOEMHRwps\nfrom: SMzHEx8I4aWzwTJX\npayload: EAuZOjpXkkEd6Q7x\nreceivedAt: 39\nto: 9fJtGtJZoEaDKqW7' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: ZBb44XctGpb7SxZK\ncode: 90' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: Xyvo47RUIHlmIoTm' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: 3Atmi2ZKp4XZaEPk\nfriendId: wCvRKvF9l19xDENA' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: sVdqQgCTwL25DEaU\ncode: 42' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 2' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: COj8YI20VwMjmVPf' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: O2qZv6meItgAzsio\nfriendId: ZBnWKketJr1ONK61' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: UtYG91WIl60yAjZ0\ncode: 99' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: 7DAyuXRqCgnHwMll\nchannelSlug: uJSc3DVayxkszewh\npayload: 3RFwvMV9nbSbUas2' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: tsWdCQQlqkslSrcR\ncode: 38' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: oFyQ5eW0h37pXjc7\nuserId: Zzsts69z94nU0OCq' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: yL2jN8rHllns23pz\nmatchId: YER4ovIinIanIsx1' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: uL61Wj9yPLc7upiQ\ncode: 93' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: na6Gk1imshyHz7up\nkey: 326aoSL3n0mHXeMJ\nnamespace: VtPJo3TabjielwxH\nvalue: T0cmLUNKcCPGqxDx' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: y5Tw85NK5R59f5nT\ncode: 96' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: KYjmfcXwhU4UcR38\nactivity: 1MVCtN9oLF0fbFeW\navailability: 17' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: djDEEKccsWHyUkvc\ncode: 39' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: AwE8TggZpkYpzoQY' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: 4yiWAGia1qPW5L4B\nmessage: 6xepxmn58bl9Y7fG' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: g8igIliStRpkwrNB\nextraAttributes: Sx3RGcQtcBSwmik9\ngameMode: lcpibfgOHceQtoCz\npartyAttributes: {"6WdXb7qmmutQRffK":{},"XqLHyjegzkMIIhSy":{},"zl0eP1tPXiY9NU9a":{}}\npriority: 66\ntempParty: L0AEynqZRJsXTUmV' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: ueU4PDDVeElJrCyb\ncode: 13' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 SystemComponentsStatus
samples/cli/sample-apps --wsModeStandalone \
    'type: systemComponentsStatus\ncomponents: {"LAZ91yzegHaPiUko":false,"mOp9ZXOLNzhbEEW3":true,"TFyRe5uBEfAtBwCA":true}' \
    > test.out 2>&1
eval_tap $? 94 'SystemComponentsStatus' test.out

#- 95 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: 54vH1NlH7xThT3iJ\nuserId: NWSs3jWiOFCJ4Kho' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerNotif' test.out

#- 96 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: 8wXtIwUMvqimQMgn\nnamespace: aM0rUqcPmm3Ch4XU\nunblockedUserId: kkadbNpwgJ4F1Xqg' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerRequest' test.out

#- 97 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: Cdpgv9AeEfc0FamQ\ncode: 31\nnamespace: c5IYbbuHywkwJzeZ\nunblockedUserId: rCMJz86biYEdr2GF' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerResponse' test.out

#- 98 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: ku8xyh8Xx1fuDNR6' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendNotif' test.out

#- 99 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: CqFPqcYEQlJ4I8xx\nfriendId: OSIw185iz2ZvR8fv' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendRequest' test.out

#- 100 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: dFd0r2maEWRdG2qL\ncode: 19' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendResponse' test.out

#- 101 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 101 'UserBannedNotification' test.out

#- 102 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: TheevEmdwIdCIRUw' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricRequest' test.out

#- 103 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: KU4jjBytrQQk8mb3\ncode: 84\nplayerCount: 5' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricResponse' test.out

#- 104 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: pa2ZkdUoJi2synbZ\navailability: 59\nlastSeenAt: 88MLw0fWmWkiOZYG\nuserId: sHKgEMw8rguzbU8v' \
    > test.out 2>&1
eval_tap $? 104 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE