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
    'type: acceptFriendsNotif\nfriendId: cANU0ax2Xq6A78JK' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: 9FXlt3B4WQbP8gzQ\nfriendId: HaHMixzHb1y2dXaj' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: L1yTzcXnJ7xFKsLo\ncode: 42' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: YVtRu86Wv6WeoK4v\nuserId: teeVuXqnIcVJLvBW' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: qwaaoJPu0q4U4QQZ\nblockUserId: NMPau8oCSsjAIPLK\nnamespace: xeJSgAetcQsgQNfz' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: sz4ywOqXblDfDTl5\nblockUserId: 1MBq7CR4mOUbkwNO\ncode: 54\nnamespace: eZkXtf1rp8maWuJx' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: nTClGWcBjR1jxbnB' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: KMh7PxSrL7O4QBxR\nfriendId: dNv6KztZrD2NDCri' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: mX2GCpftrDGuDEf3\ncode: 51' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: othWf03LJ2aHBUOX\ngameMode: 7qMku6GE2aq4bOJd\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: RpztR8QQEl89pYJq\ncode: 28' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: Uh2aApCFwORPrCfl\nfrom: 3YMuj931JBgv9JsV\npayload: t7hxVPp5RBrvOYNJ\nsentAt: 1981-11-16T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: BDEpxIenvkyJDmu4\nuserId: bmL4OrC1LIHPZwMx' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: 4ildzBbuPZBhke85' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: kmhhptM7GO4X9QkN\nnamespace: aX1iI8KoPchkpvjk' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [UFNk5UAmnobgfilt,tDKpeuQRPLAJzmFD,cDWPkvyAld12GAUo]\ncustomAttribute: h2qpYrtze8UKJgVG\ndeployment: bfWCpi83SC1WwPn5\ngameVersion: PuP93Rx4fTOSLWpM\nimageVersion: FL74thf1a7oGLboP\nip: FPn5yDouRNp5nS1W\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: WdSLuGAoEUNLYj7r\nmatchId: N8cfohis43nt4bF8\nmessage: hXkjW0ZBRAxzqczo\nnamespace: voni1j25UNTVUhpN\npodName: T2QW4r2QVPibmbhL\nport: 92\nports: {"GR6RQT8Wxpgh4gGQ":54,"OEYAx0oyNHcY0Ga0":56,"LkX9I99Tv6xsH9c2":30}\nprotocol: xLzYbcKGJXVGRdTY\nprovider: JfdpaVacCwqxcI4j\nregion: BZAuVIfzltgGvVXs\nsessionId: Jh1zlZNnPJMG5Yi5\nstatus: h9M2KWuydCimJW41' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: xGhqM9Z7UXyebNhM' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: akcrxWxvfv6tGJgJ\nuserId: BLhs3kmLTevuMeKI' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: 5RpQ47XyYRuQO4Ww' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: Q599XO8AJ3a90KJT\nactivity: [HsD1VkdMGlwoDMnr,6VtxbVWaR6cAbCva,LZxyQ0XHH3m6xdg1]\navailability: [C4wAxv8XeAF63qai,EXzUVnuPqJnXT68I,R4gK9OzHiAIwfy0E]\ncode: 89\nfriendIds: [6fmsElklsOJAsSVX,VSAJLzuYiVz5Ched,XeVrtt640ROMi0mn]\nlastSeenAt: [1994-05-05T00:00:00Z,1997-06-10T00:00:00Z,1972-01-26T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: FhfN58wXtZl3Umbr' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: QCsUXtRfpEwJoFIW\nattributes: {"Iy3OqWiJqxK60fgK":"frcMRLhHsM2C2Hxb","06NE9km4y8rOgeWq":"O0PLyqseoXvwoeJZ","9pFq7nZMxmKGvDez":"X5tLgY0UgR7siWYv"}\ncode: 24' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: Hx2j07tyesKPQLgb\nfriendId: wbV9bTilsO2JYawg' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: vSAcmXNDLK6BtRZh\ncode: 31\nfriendshipStatus: 4rKFUL1J73MVlpyt' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: 2rpglJJ969f74bTP\nkey: y1bx3fDcejjCZX6d' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: r5mcodUD3ipuRzcO\ncode: 72\nvalue: TqTUpIIBp5ErhcOA' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: Os4F5y1jBTM0GpNp' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: N0NkCY3kmGHWGdmR\nchannelSlug: xtUfyZfljbw7lwys\ncode: 26' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: 12f4nMYq9okFHMTl' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: M86tqZv94wMUe7PB\ncode: 56\nuserIds: [BNXHisQhGQJqipp8,4PixfHWQy8Jc1sIY,MASrsYKcG62HgbYk]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: sVpGXESGjBfgVJBe\nfriendId: eXvuxISRoIF4XAAV' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: TsOl7ZPDmlVDKQ3r\ncode: 99\nfriendIds: [WA6oUqInGmWNzlCb,O5uMqAEIHSb1MLlQ,aLLpYeWtHt4q1vZI]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: 08uNm3426FIrBhkb' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: J0O1lLoKg51j73yA' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: R8OeH3OUj9eKFIkz\ncode: 33\nfriendIds: [W1vpwglQxddvXiZ3,92hNkVvqSsHOxRQw,xmlAwWVKQ53x1YOZ]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [oTiSGpaVTEnYWrLJ,YdcolfIPqdPWb66A,0ixF6BOy8I2m9xLO]\nmatchId: FN7HtOU7723d54Xm\nmessage: JoPD8vIiH8W6DQ7k\npartyMember: [FouS42IZU1Sjf0s4,YeHgABDx0O3QlOMs,I7O9YmhUc1AOURoK]\nreadyDuration: 8\nstatus: XCDQULXzfMQKMafJ' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: ECNEt7q6QQNp00MT\nfrom: 2HJ62zjL31Kv2l2v\npayload: pdpjEixnSEp8y60X\nsentAt: 1982-12-18T00:00:00Z\nto: FJAol8TjZBOGszyf\ntopic: HbLnGZxmeSLMkOxz' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: d9aecs1seOfeRHJl\nfrom: Vph9MbGTHWkeb4Rv\npayload: 6OIa2hOBK6AoKC8k\nsentAt: 1987-01-29T00:00:00Z\nto: g1et8IkTaB0WwHvc\ntopic: 3qHtgg2GNwpsegd2' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: I2ZzQpHaYRwAM9SK' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: mGTBQqXu51Aoe0cV\ncode: 9' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: 30MuL5rHzQZwBfIT\ncode: 0\nonlineFriendIds: [OkpSlSIwzRxZJi92,Q37DInWcLFb3YpY4,r3Tzme6z3P1wVRQJ]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: 1MrpEx07CL3Eojc0\nfrom: 7dfwUpRlgq7Dg5zO\npayload: uLnHWsS4NYgcNxSD\nreceivedAt: 1974-05-10T00:00:00Z\nto: cuJxzbrYHjOf2Ahu' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: 3HLblD8FUbyAm2Pk\nfrom: ocY4hUzLKPA524uw\npayload: ijXzitTu5mIouSJl\nreceivedAt: 1989-03-20T00:00:00Z\nto: InZYHOiSBUfOEjFG' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: gYV4vJZxEeEe2x5T\ncode: 35' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: u6ZWcHJgQzyO6l6A' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: VnIzzh5FkfJYqEUT\ncode: 20\ninvitationToken: fTiklRas8TkSN6Gn\ninvitees: HuPTJuhMS0yDuCjO\nleaderId: W2f4m9PLfohe01nr\nmembers: 6hjrEDyzVymgjTCJ\npartyId: reBcZtgqX5vMxqCG' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"iOyTBKnAR6SMN2ix":{},"yDdf2OGiDMw38CcQ":{},"HZWjWQDgbd2uGh5I":{}}\ninvitees: [Moi54u1wa88EjaDz,vMKVvowv2hZvjbLs,QEcVlpIn0lAnOXDC]\nleader: dzHesrT44U6GrFFn\nmembers: [kvbTAyd07MjRPehS,ZMWZ7rylcKuB70ol,coDP0SmGd7YArLNi]\nnamespace: SfowHvqMXsQUuoB2\npartyId: ZCtQNXAYRUHIbTa5\nupdatedAt: 1976-06-28T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: XfLudWFFbvhxb7eH\ninvitationToken: ELUdWRRChHBSiFDM\npartyId: C4w8KxqdoGRzcDkM' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: Qz9ftYJEpX6w1wpc' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: f2Tn8sSURfrNWHLH\ncode: 12\ncustomAttributes: {"VHEZlwVRSD8dnpNQ":{},"1N8PHa3QbCVNjT4d":{},"EhCJcn4quX6TuDpu":{}}\ninvitationToken: tHyThWsOyB563iTp\ninvitees: babGEiYfrSluXtFs\nleaderId: Hzom1a5zCzzggp6j\nmembers: VpsnCUKBezuRVtfD\npartyId: SwNf9g9LwlCz5qn3' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: 2PTuUXA0p1GgpAE0\ninviterId: ibLJ8SZgxBbkTThU' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: LKNLguZlzc8PF5AO\nfriendId: qk3QlLDAezF73ium' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: 1cwLiIb5SQkNS9iC\ncode: 78' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: 9bsd0pCJ8n8TqTrb' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: IXQAwckYS3fJJXVs\ninvitationToken: aK66NGFjJHktgEfN\npartyId: yUohh7BAq0HhLnPd' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: gBnvaApiZ5FCO7cd\ncode: 93\ninvitationToken: srgLHzY3RcDtgLpL\ninvitees: l3TQbhwqHlzdRqjc\nleaderId: 8xtiwEp8xZzUNhOa\nmembers: fE2zwKOBEgYOvxsV\npartyId: oOsmbGMGJ0fIJfai' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: aDmdY3L4fymYChJH\npartyId: L0S1VkKFcND8vaPd\nuserId: kW4d2kX9efJswodS' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: zwUKr58HKxmMZA7T\nmemberId: BmcItlpxPzkuIkln' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: 2Rch6d4U4hMbBL6Y\ncode: 61' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: wSHjnWBKGegc00Ts\nuserId: KcVbazEZUJNeXQpi' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: s0dkRLDKplfaKRxR\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: 5WLOCJt6eDwIqxpI\ncode: 75' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: eqGaGPMNdf5yTOrl\nnewLeaderUserId: Fnx2iSpeSg1E8Ffw' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: 9fGKOaFzAqglezdv\ncode: 96\ninvitationToken: 2TydslPzWf6ZO2Z0\ninvitees: B0PVEaqTsppc8QiF\nleaderId: oZxwian9qT5Z1I1h\nmembers: pNENZm9LlsM7ZJF1\npartyId: 7QiOcTxJRTlLn994' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: US03gGPbOUXXUrRJ\npartyId: jWEpEFz6MqAG3bL5\nuserId: 1YAeNiIYcHPoqxZJ' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: oyhyER90mSGW1tmb\ninvitationToken: bmtl90rhRCZZCfoi\npartyId: T8hew81jveKTYdQN' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: 6ULnuHecL9nXLPYs\ncode: 1\npartyId: fNpIOUOT1fTrrBwa' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: R5YCGNTcXRAxgbEk\nfriendId: KxzYvRkLHxuoaCVv' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: mvtEqGOuIWJuOd4Z\nchat: WeesM3UpjkXfeb10\ncode: 59\nfriendId: lnAACvGh7tk24SC6' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: CKXXk13aSNx28oCg\nfrom: b4ufSg8jCAaARCOe\npayload: gR1DdaQUAIrBSRxc\nreceivedAt: 1987-05-30T00:00:00Z\nto: 8I986d4cgIlSqMfp' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: FQNJns7n5skH9geV\nfrom: AXqm7djpEGoCcS9U\npayload: G53LWlhwUxsqbw8y\nreceivedAt: 1992-08-01T00:00:00Z\nto: kmVSgD4Di9vlxw92' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: hkZi4Mx1WMpz0OHz\ncode: 83' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: cQU8dh5lSCSNEi6E\ntoken: smCzCZUuHU3mAYOO' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: qshP8kVQniwahqL8\ncode: 97' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: NXkOwEgHwbVNcZgG' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: OscZIKNjdhGqkVrT\nfriendId: zAh0xhO0dVXsDNJh' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: UmTlO8CefteSwfKi\ncode: 28' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 61' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: JKPCFez0Ea1G0gNE' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: h6QvGiN7kQjn0GGy\nfriendId: g088FiW58qVDsu4h' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: sQ5caU2bGTjgOXkb\ncode: 73' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: 0sgt8aPskGlyk0MH\nchannelSlug: UtYomAgwwiVIkFFF\npayload: c08mUVwJXS3XqLj6' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: pDJz7RSN7LXPrLph\ncode: 13' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: 8HnG2zQvQasKWDS5\nuserId: UAUFok8dbF9hzbAp' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: C4vtrcGIWexzTh9v\nmatchId: Cxdvo7bwbQvKxkLz' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: HS2sWsyIPpGLmQqq\ncode: 66' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: AigsfrLdbVLsNRhZ\nkey: OsOZyOO7rjObdUjb\nnamespace: eviVVXGJca9FvEeo\nvalue: zZU6QomWGZ8XNYWj' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: hIomFWZDvir8BwK9\ncode: 15' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: yLRsuQby81v0aRTJ\nactivity: rOINsQ8HrUbVS3jk\navailability: 28' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: 15SzNVvenap8tN6a\ncode: 56' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: ajiuKT8ODlMwRpvi' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: 7dvsUOtk5o9ZEpIn\nmessage: ck5hmhEa30tdhCjx' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: VkxBcnwIpBcjoN9V\nextraAttributes: K7XQD7jggO0axvQ4\ngameMode: nZJciCwkNxOk7JtF\npartyAttributes: {"P7y6CqtlIRbgEsoa":{},"A6UCFfNHMnDdY1cZ":{},"FZv7Bh1Y1CJTQhQ1":{}}\npriority: 48\ntempParty: 8VMKEYskFFIT9Abi' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: xFFbTIBwa4aNLxn2\ncode: 7' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: 57zvKcRtdedWuZe3\nuserId: kVsxL1zzwkzzOi5x' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: qA7Kt172KII6JWg5\nnamespace: okJeidf5loPt9xk6\nunblockedUserId: C1fjG9HUcI0HHDHG' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: sNdKMWnuaCi9wsF7\ncode: 52\nnamespace: aaw0O2bokgibpjNn\nunblockedUserId: q9fO7GS4s8z0ElP2' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: XyNrRUTjFl67aKHx' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: Cu4sYaBibbGRc3JT\nfriendId: GbRrEQnswjFAUzHO' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: 7SFO5xFUlNUeQ6Cv\ncode: 12' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: NQMlCU4cp1tolaEh' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: kmFEysxpKPpfV4QR\ncode: 89\nplayerCount: 21' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: oNKWwDnU4HYvNXCh\navailability: 58\nlastSeenAt: 1992-01-18T00:00:00Z\nuserId: YlDDQczWX0jpknUe' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE