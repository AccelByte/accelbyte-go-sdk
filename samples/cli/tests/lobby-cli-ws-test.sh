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
    'type: acceptFriendsNotif\nfriendId: G6sONjAlm8IV7hja' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: pzeaMUA810ofHTxq\nfriendId: JhJTyFx3UXQzgPLa' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: eYBgj2Jy7QrzBE7r\ncode: 95' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: 0eVwo6ZZTgSDmZOH\nuserId: N5PX01WHZ9XzhtuO' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: YDDiXRzvO02c5zCR\nblockUserId: 07Ptv7lM3FZzUDfV\nnamespace: A1W47xyHdE0dom2G' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: KdMc5EUj4w1lKc0N\nblockUserId: sHIPFMspdW5aR9fB\ncode: 11\nnamespace: kW162TSWIJMEzcnh' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: giO7VTnnwDqTA4u7' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: NQ04iUoE7WnhNUvg\nfriendId: hSoDIfFBXWF8gz9H' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: rE1sBM1bnghe8uDl\ncode: 100' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: movwFm4QmJMMjuq4\ngameMode: k7lvzhZLNIIypr8c\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: 8gWJSgrDPgry2q0z\ncode: 73' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: GdtczvlM6nM8JHCJ\nfrom: DbFIpsTsblONJcAB\npayload: PnUVg9u7wpGkYebJ\nsentAt: 1982-08-07T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: EcnieIKLmjndV0Uv\nuserId: YphrJPVA9wNRMN4y' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: t6THLT7mY1A6REMS' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: W7g2qkLqYBJXsy7C\nnamespace: LZJyCsFTBfjWCm8a' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [0nxcw0aiqowu8XpT,1Seu3j32LkOp6zNT,7NcHL6HySmYyme8G]\ncustomAttribute: uYGmIuJTP6xQGzb6\ndeployment: ltOAN8ZgVz3Epp8n\ngameVersion: GmSJB8Hu8UdxP36Q\nimageVersion: 8WTVbGssHFmn8Evy\nip: pb4Xe4qgxnqvszq3\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: XCMx0suq78sd53Ut\nmatchId: N0l9XUXsyVE8hz1l\nmessage: eF5n8ymgRImj06mp\nnamespace: eH49OZbXxXF9aFFP\npodName: w4QGOHnBYCIzT4VF\nport: 39\nports: {"hnUWvycpO7fTWKtN":13,"jVkaalk7Iud6K3fM":41,"LxSphjKVhOLTq09x":75}\nprotocol: jEmwhsAI1UU94mSB\nprovider: 6JlERMgpXZa8cEUm\nregion: qYFpM3T0zy4v3oFh\nsessionId: 5p8mh03ESLFy96lA\nstatus: Akq6WD6XADeRSTIL' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: 0J9e2LrNqIqKRPMB' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: 2da8n6dLEI1QmW7W\nuserId: 1iyAhFLNGtAVaXra' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: rqzOkWzvtTsAdMNq' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: LjjvjTEokPvGtUsn\nactivity: [xyML2gHk3SV8Vtn2,YAEU5t4P3AYq4An2,8JqKpjE1lkwTUkrg]\navailability: [m5QQ0EbEx1sHmWuA,4dU5EdSykt1hujF7,2gkrqdttv82CsS2a]\ncode: 63\nfriendIds: [sCupDqCy3QHxX9rt,6LKZfS4IDAFiwzdp,QWVurLUPkvpDm09x]\nlastSeenAt: [1979-09-24T00:00:00Z,1979-08-22T00:00:00Z,1988-11-16T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: gkD2JeZijc0IFEgq' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: xIf5tTn6rLaSUNSi\nattributes: {"MpiAI4jlnfF2xiy6":"mEMQUFVlSggwTRTy","BLvJjp4r06cNWMH7":"IrSdCdvZ3gMSHOZ7","6HeeJKwWQkhVGYMC":"kypOcrQw3lvcqnLW"}\ncode: 6' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: LqlGDgGwiD5nuJX7\nfriendId: zi1viGFBItFS2QHi' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: RfVbJL0IYcWscDwb\ncode: 82\nfriendshipStatus: 6pEmwD3HJtzK90dt' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: MpTnl3GqJxCnG5Ah\nkey: F0rkawffDpDypV5b' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: JXUnLK2gmGRAfbnY\ncode: 28\nvalue: 2uA7TLyovEbLYprl' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: TdBsfAWBoIY8PaEv' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: W8XlKdMaJrpPhffa\nchannelSlug: UEQqCblrMWd8uqeZ\ncode: 23' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: LNZCP7og6H3O69oe' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: zXJQCE5pPJK8F3Ck\ncode: 48\nuserIds: [0wHRtrWWdn2bEl37,oORxdqdgoxIc8esc,o5Y31pwsXgpnqEzo]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: xiZaBmrtc2DVelFX\nfriendId: r6CrcSKthV26jSZo' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: ZHLmJpXyH1WtxhNE\ncode: 69\nfriendIds: [nnEeWAPsRgllINMx,plHwRQVTrCApXzfR,8YvMX5yBc8qqoGQB]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: GQuHLmhRQHEUxDJN' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: UUMY4MlSxt9b2v67' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: 08lfqC6V0lh3vGrl\ncode: 3\nfriendIds: [VmkVnmbOKFnb2VhX,urFoobCkiauTuv0N,5aT1eRdZ822FI5Zi]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [iWxO6zAywXVVVHTg,LFiSmu7w0ETi3VRP,hYwKSSa1EDtMrkhC]\nmatchId: mon8Z2FlEQ8iHpob\nmessage: zP9Kntl0cty6zpb2\npartyMember: [QUZCyumMiDAhksgD,NiWqoiDHeiGlBbyf,m19Uy1n3aTB3rAx0]\nreadyDuration: 68\nstatus: 38D8Zh1X5V5EegHE' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: HUjmKwxisrCRe2wd\nfrom: RhtHdxmCxL5kJECf\npayload: KJzMWPcTnUl6fKqD\nsentAt: 1992-07-28T00:00:00Z\nto: A1LKAt3pmPVfSOaq\ntopic: W55fnyHbXlTQXmOg' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: UDgfbt79Jw8cJCFA\nfrom: C35WPdoNYzUUjT7I\npayload: vRl6TsDfwuX7WWQO\nsentAt: 1994-06-27T00:00:00Z\nto: miU9iJNKbUdbX2uH\ntopic: ersbFoTj8dUI4rSc' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: Au9Ki5vxQhxs12TP' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: oFr73b5h95UYPqtQ\ncode: 65' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: lT6IVhMtFrtzObsN\ncode: 27\nonlineFriendIds: [tLq4wdSZxIjiNqs5,iZFf05iWHG7QNptw,IiXgRls2nsMVugIF]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: u2zOivL12aI0fSzi\nfrom: hzBZ0KwdXYjGK84d\npayload: j3fBkFJOHoU5miEw\nreceivedAt: 1991-01-29T00:00:00Z\nto: 6USx2JUMJeXllQi1' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: 3bedowAMBNmR68b7\nfrom: 4DzgeOl98XRzSFBD\npayload: s8URZzdaEEDlamHF\nreceivedAt: 1982-12-01T00:00:00Z\nto: ofTpjg0otA8xrgUn' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: aShn1x0LRZYrT7mX\ncode: 63' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: cKv8xZ7eald16RjD' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: N3NBuMLut2IqzQxo\ncode: 52\ninvitationToken: x0fXpAbLsZk8YuAr\ninvitees: TRaZuchEXcvQYCk9\nleaderId: a82Y3vK0yFTpxrPy\nmembers: RiR9WWaMbzizrknk\npartyId: K5Yakp8lm4UHt1td' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"2XulXRvqmBHTc2ht":{},"DQi4rjDG4ygXlxAY":{},"LOqmV3RfFSkemAYR":{}}\ninvitees: [opiCqh0qd62ODnL4,spTjJvGf1XkQ0cI3,2RE2uw7JEQEKTeCo]\nleader: JMORy1MSzbSemBfV\nmembers: [gBVff79ZJWWNKlkK,K8Igv67MfB7esV31,qbclOXyEgSe0ve5M]\nnamespace: 2tK1tR2wVMvM3aHS\npartyId: eJGb9P8k66jU3ASt\nupdatedAt: 1981-06-08T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: jQMBGdLIkkCd9OA5\ninvitationToken: 7sX5Xw5USyhKFuCS\npartyId: vWnMCes2OGKZ3lbM' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: uQI1l7RPmRo0YWAX' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: S3vq3HJAfTZw0tE1\ncode: 31\ncustomAttributes: {"Sr1DV2ZEbq7atXp8":{},"CgkCsLYgYBSLL8z9":{},"PQknpxNgI0cxfyxT":{}}\ninvitationToken: 6ev4uf79vY1n3JXB\ninvitees: KOhAAZzFWvrspWF6\nleaderId: MP0MaOsjmHlkKeMu\nmembers: 889f9mwDr5zw5jWI\npartyId: zIbXOhwBFyt823a2' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: zG5eLxetzJDt2g7H\ninviterId: IM1lhkc87hSS83tv' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: FZDEGDpBznaQty9r\nfriendId: cpaRWYnIY0VKTLke' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: Wyn7ffZ7svBEczva\ncode: 69' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: HNe1MQWtxLbPHg9V' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: fSRW2EWyXdyxULZV\ninvitationToken: XtFMmEiyp8vA3Mja\npartyId: SGvMFQu8TSCrfq0y' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: hTtFmO0D4i5e8uIg\ncode: 71\ninvitationToken: 0IwCauVQrtZwQJRG\ninvitees: 6kEl3foXTr2UVv0V\nleaderId: RtuhZLg7G0HniIIL\nmembers: kKwadAHfhLEui4Dt\npartyId: h2Zk9GHZPSZCgdhZ' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: Faqrodh1ZZxoPlTJ\npartyId: zc7WjIAUOqTqOBb6\nuserId: gqBKgONWFTdHLCMN' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: bH2rbEBR5KHZK1Gj\nmemberId: SdBxXOOYt5nze9Ls' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: zzaNVn1fzizIGKzJ\ncode: 41' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: 38HGOwshXReVdxKN\nuserId: qVGH4gq3EihWitX8' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: S3rkEzT6wfy63DV3\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: 4Wy52hAxubbIhG6j\ncode: 42' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: Q1uVcwdd96Rc8qnX\nnewLeaderUserId: P1jX5JPxHKYSlDwF' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: IxQ13yBKyNfYmcy9\ncode: 8\ninvitationToken: NVKwezRC0hWxeXMj\ninvitees: 2pzWsL3dxmdi57K2\nleaderId: Hd4EPOwhqfAjIPz6\nmembers: Kk3PjopNfeiohssR\npartyId: nTJjk4j2iWekJf96' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: FJk1yURpCtYc5nOR\npartyId: agO1y5sqKIRXmhAb\nuserId: CHdmZoHaI4huOcNI' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: yNq6G5Okx6gaUnJf\ninvitationToken: 2Kme2e1Q7AcQxST6\npartyId: 2tKGyGxVUldpD1E3' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: EzYWjbumFZVDRCsx\ncode: 52\npartyId: qAguu6S83FhY1uNA' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: Hnai1oDJZ5KzD20E\nfriendId: FnzLCYjpH7vstyX0' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: wWj0PrhA2FWZOXaI\nchat: DYofT7v5QpkY98gu\ncode: 84\nfriendId: e0BvWGpM1W2cIUBp' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: KK9JFBTxcDUSnQKZ\nfrom: 1Mco4w9ZEVmCYc0p\npayload: 3kI9HFt404G7qXpB\nreceivedAt: 1990-05-05T00:00:00Z\nto: RyYGCdzMJlxAVX80' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: yxZv2xn53nsZTbJ7\nfrom: yDnXiBrGeKJOWjBS\npayload: dJkP77R2h9PSk4J1\nreceivedAt: 1996-08-08T00:00:00Z\nto: mZkZgfrcI5M2wKLn' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: blO0HzMLw99fZP8t\ncode: 2' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: S8CrmtYF9mUzfkyS\ntoken: W7nbyookuWBgOxFO' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: vIiiUFNUPYSNhasc\ncode: 59' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: WaKtMhu5Bwvx83YG' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: oZ2CRAr1TFBUOdao\nfriendId: FZfkrbJhHWi78J5O' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: udEGzi7jRbjVV8Jz\ncode: 3' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 63' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: OdrazBZ3apC1AnMJ' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: AOyAZFVySwYbh2Y4\nfriendId: 7biRqr5U9Q0lGBgW' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: fPC8WgnRBcXV4L6m\ncode: 90' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: fqCrwilcNH6SHxYe\nchannelSlug: XfaEJ2o3YUX6Q1dW\npayload: BXKdzmFznCfPSObg' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: vKO6C86CdUywlagU\ncode: 21' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: Xvi5IuYNfCyHR1Ea\nuserId: d2GRPVGclYBJFaRT' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: AcqYFmtKs1Ko52E2\nmatchId: FnuYHkExC1H3ipLT' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: YjEsWQui79qAgyXj\ncode: 22' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: BHz28XOFN5pIdpoA\nkey: Bbvhgg9mw1f7LX5Y\nnamespace: uYO1QouToyA7sTwI\nvalue: yQzXc2ezAZH1gEby' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: zEGJQ1eSdQ84cUFr\ncode: 74' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: v8SmwLfHdFEOPT8A\nactivity: MWw4W36bVUruWJ5H\navailability: 3' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: M33EXh2o6rxQtogn\ncode: 3' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: 1rkHotVPduklCkJ4' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: eP6MsZSw6CP4OdI8\nmessage: Sm45vJQWpSlSL6dI' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: ad6j9lJbrsLrX4Mh\nextraAttributes: HrEMEYkQjroSOhCr\ngameMode: IYlETLgzt6Nt3XRl\npartyAttributes: {"WbFfBCzzpfVcLzn9":{},"FdUSUnl7nzLJvILG":{},"nmo1daqNXeQZerwm":{}}\npriority: 65\ntempParty: ZqwGcIpTDBQ2tLIv' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: 7vmImyjXgADY8Or8\ncode: 52' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: SKt3s2XXigGovNpe\nuserId: eZ660DDSH2UDNMBe' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: wRaF5gd1VYmRlX0R\nnamespace: NJ0pY6kMlHWqhhxh\nunblockedUserId: X0s0ygUA7DBVBJdg' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: 9PT4K6rRQhpuJCTB\ncode: 25\nnamespace: 7S28J0qzJ8o0hYUi\nunblockedUserId: mrgR1iPsKKlBEkhZ' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: yGeMOUMwFQGYkYgB' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: uPMapCvdPm1Sk4IQ\nfriendId: 6Dj3kiWGnsnAB2nw' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: zww6vuzwNxgtJTnF\ncode: 1' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: gmJPq8hvBFjKmEvn' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: 1GT0koeDVd0zfkos\ncode: 98\nplayerCount: 10' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: tGeBJNIQFQQqpQXX\navailability: 28\nlastSeenAt: 1978-12-08T00:00:00Z\nuserId: 08PMWeM6X5RExvmS' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE