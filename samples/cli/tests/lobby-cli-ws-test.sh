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
    'type: acceptFriendsNotif\nfriendId: OyupWozbOCHj9ZZ8' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: ATk9x6NLIhCOf41W\nfriendId: O49MKGy6EOXfYDOB' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: 7J2vydgHosnwL4xI\ncode: 100' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: 6u2ckAoKPtHcMvll\nuserId: Nr4vkhtmINs68Nqm' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: 7EmXgtxSRqCXz9ae\nblockUserId: ObS4I9EqXi6gArd3\nnamespace: vXxFc5Ry3ZGlnMmy' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: nLKRnCp0csp550mP\nblockUserId: a8x0zR2FGu5hvHal\ncode: 36\nnamespace: CkAuVQss2sPoBJQE' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: il7NqpVlZHLnlHH0' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: RAVt5zBNit8cIywD\nfriendId: gsA0Z12cdpgn4faA' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: bdRTtyqyH2AyQkhI\ncode: 29' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: 0aLceGSGlzdCRXjo\ngameMode: m3aWLOehCLvrjMwf\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: Nsp5Y0WiLRngrM4R\ncode: 45' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: xwOyoGlRgIIttUSc\nfrom: n41Hk6RanHHw3WmV\npayload: nB4bL9dD6u9VOZuq\nsentAt: 1987-01-01T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: YQNetfxSU0Qot4fR\nuserId: evkeDU58oXfT8OQd' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: AurSEKmOJpMSOMzr' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: wQKF9AsGyQJZE3U9\nnamespace: NoNGXkWwnfbeBpK8' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [5IpcK7JWG55FBRdZ,4bSnOutGMcvjKRX7,NSsyujuFSD0aFigS]\ncustomAttribute: wT4lGNWSV3stgO3N\ndeployment: MDNDacLHUAwfxn3u\ngameVersion: S3cB6Gc7TYeHMjTB\nimageVersion: gAgWcVwn9DALAKEG\nip: nF05AQjc9SG2uroU\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: 6SrnT10rT2Aizr1o\nmatchId: xzZDeJDByiFNVUzP\nmessage: 3i2bAHyozBtDManD\nnamespace: 4lupXxh8452JTwRU\npodName: L1iBPo6m6iOQzfyz\nport: 70\nports: {"zWKqUf2IyEliSQML":30,"TjiQe974KqeSVCKM":46,"6OwYLiVbAeM9VVFD":36}\nprotocol: IRBJyrTLGTyBZoCX\nprovider: CaJwDrHBEAVghtKW\nregion: Zf8HTvWAWEy54KC8\nsessionId: UhfVH2GJbpDmMQSp\nstatus: pNiinszIq9uY3Q9X' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: jO04HAny4kbDuGE5' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: XFjtZoJdpidj1JmG\nuserId: zqPKO3xBSvWa3xTE' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: RBfYzLjfzmr7vkRb' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: TpspM2zSOw3P3OxY\nactivity: [WC5ffscfAoYlIDP0,Q46mAZG8a3OmKj0Y,Eq2UGApZAazyfdQM]\navailability: [dJJSxJmimvNhSnwc,2QQuUz1syZ5NkUGs,DQwX6HbQVdVK2VQs]\ncode: 4\nfriendIds: [IppEdJpkx02fgcr6,mHj9Rp5pLksGbKzf,8rMAoz0e9JAlZCCW]\nlastSeenAt: [1992-02-21T00:00:00Z,1996-07-02T00:00:00Z,1995-05-31T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: xqBnewi4c5hpObMF' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: mVqH7LDWR03xJQxq\nattributes: {"bRwxxiVOiCQsEbte":"SyJRTkEtHyrV5fpb","iaMPXBFIpGGf7igq":"1Cl3i0sd49f85wPA","SbOvCwItnNTpRxpz":"8yjH9Y0wHpNrtuXQ"}\ncode: 3' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: 7zZlDNsKYHhzKmzw\nfriendId: 9JDRgobTgfJ0APYM' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: nuyI0YbDedbjHepS\ncode: 21\nfriendshipStatus: RPOMTQOFo8j9tJ47' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: lucPzmiyfoiei9Bz\nkey: xB6quCCfvmlXssBL' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: YMaYgo9quLMKfJ2K\ncode: 50\nvalue: jkMBQC38rClz1dBH' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: T3jvBsNyLqB32Ehy' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: 7rcKbxg0jXMfzclp\nchannelSlug: lX20ZAoEKvzQaOZB\ncode: 32' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: eM0LoaOVM112vns7' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: B9M7Sij3SrGLhRRC\ncode: 11\nuserIds: [ovqGFwgaT8NCLeCZ,NW55tUDRdiMlvlzk,Ua3xDaLhzsW5M9r1]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: spfdRxlKbRSy1JR1\nfriendId: vW3GX9OT9ttENiYk' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: NCVVbCkrIXcArXm2\ncode: 71\nfriendIds: [DBK0S19KnysUbigP,8vgEM0xzrk8tCxxQ,PE5QhqhPZZnnTaGV]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: tICnKBrMzEfDpLsL' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: EpKXpWUjnanf2dVX' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: B1YIMrqBSKFgGfXz\ncode: 36\nfriendIds: [wd1YxIGLKZXJtZgD,7Fb4fdDMQrhrFjGN,O8tA47y1INQvQUKh]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [U1sd2yqdzkyM1dtG,gmVCbQKK2ndAEMpW,S0SahZmwLNQoWp5D]\nmatchId: 1tr704xkcc06mPCd\nmessage: t6bWtpRkx1VBNFfY\npartyMember: [LgGOHwff4kTEp1ol,h8pXSQFweQt6xzov,k63qqQVpktQgy4hg]\nreadyDuration: 97\nstatus: jHPjHE8cmU6X4ouK' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: aHlWvH1b3yE7deK7\nfrom: MEafnTj9ajnFvU8K\npayload: zUsXGYGkQ5ybuVRi\nsentAt: 1981-09-24T00:00:00Z\nto: X4ZwjyEdDOZ5a9qv\ntopic: 7edmQFNwMtCbiPxt' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: F8pdGPhN53q8Eean\nfrom: IzbAM1LROWjpR9N1\npayload: cMeOKMfwhruFDmYJ\nsentAt: 1982-08-26T00:00:00Z\nto: HQzNVcbgQo30rHR5\ntopic: KFvmNyAArZpp5jOP' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: CG3VnEkLazKYVIUS' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: 8JzWd5hWV71RizQi\ncode: 39' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: CJwb1DhliDcJr63a\ncode: 29\nonlineFriendIds: [WgRh2AywmT4RIeMl,nLIbEFyGJb2mDFVC,guxvWZL0jWc9hd56]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: W0IireDf0rtQeKSl\nfrom: dax082JqPl6IZLWl\npayload: A8oJZMj3zzcr9WXj\nreceivedAt: 1996-12-02T00:00:00Z\nto: hK6A5MGACZjRCxc6' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: e4hbBU7idbpEChBV\nfrom: OKGydinhwTOjXwbV\npayload: 2nxmXP0pA255RPoG\nreceivedAt: 1971-10-02T00:00:00Z\nto: wkcS5eqzSJxpu28o' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: djeAb1V0og0QsdD9\ncode: 22' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: QPQmm7A3cwC5Au1S' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: IyBFdB1KcdXb3yZG\ncode: 39\ninvitationToken: g7x0Z5xBIliXCIk2\ninvitees: 3FUhwOpnSU6ipAmq\nleaderId: zGKBywEhh6R0mGzK\nmembers: 9m7G8YrmZDxURI8H\npartyId: xSc2qAMAGJcRKEX0' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"ZvHLzgsYoIxdxa4X":{},"Q0j5u79I0l5trGWG":{},"XzIhwKL6sGi5uANs":{}}\ninvitees: [YlM0tTFtpu88D0Yz,hbY0n7iBjoazmKNb,TRGSvSHcINykvUAm]\nleader: pRkt88AKSL1aJSi3\nmembers: [JbafQd4fyUuKkS94,xKGH8z63q2zgKksD,qrhe5Zogirs7l62z]\nnamespace: 7AWjcPR5F2tlpyOz\npartyId: JEh9uI7ATJR7deY5\nupdatedAt: 1988-07-27T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: m9xYo3n1MkXRSBPO\ninvitationToken: L9utDvAMXArDesMM\npartyId: 2qGiRNVlPRRVwW7R' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: pmXSjDHdIiZYNAFz' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: HzjuZt88LiO1htFc\ncode: 12\ncustomAttributes: {"TrU7VREu99ZfI2Sw":{},"oyaeRKilXmSn5L27":{},"qsjJUxJWURQchFTV":{}}\ninvitationToken: rT9lpaMllb6ErpK7\ninvitees: 8b81Iz9LHk5y5u2f\nleaderId: JrWI3gSexaTNvQJC\nmembers: yeozETpr50dFJJ6u\npartyId: 8CIELTjjOtlk682F' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: rUREU1V3q6ucSi8A\ninviterId: Xe8RORjr4phPEzUj' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: g0kE5PLFEmbwrdwo\nfriendId: 8PAFTixYrp8swRM8' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: w03ERAccEfHPJYv0\ncode: 19' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: FEIpELTJNpPCQ942' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: 3fPfP6leC2l1CBPr\ninvitationToken: SutMReb3tx425ESm\npartyId: FNoTtb6JgCialWhj' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: ORUgyJOoPfCdqbwv\ncode: 77\ninvitationToken: Tv3oLMkBZkWVXVUl\ninvitees: 7eWrYYfF2D1WvxH0\nleaderId: ChMYyMqePX9RzQnt\nmembers: nZhDinl6PVLVel6C\npartyId: 47jSQSXjlrREZNxF' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: f52d7n0caADSdqLA\npartyId: Hli4y4tZLcofqox4\nuserId: Q7lkt2CLFq4CUkw7' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: DGGVRIIiJQeucmzN\nmemberId: kmDyh0DDzFZNTfsg' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: cF2VxNsqLeDusfsu\ncode: 98' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: vsMD2eqFynm64E86\nuserId: iRLCUYF5oQ7LJ5q1' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: sBct1t6OPcAKlqVW\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: BhC8Xj4pUWQ8Qn7A\ncode: 2' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: 7UccQGJhs5VLRUUV\nnewLeaderUserId: xuD6N0RPIs8CAcHd' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: gxQYtG89Wqtpqf5d\ncode: 12\ninvitationToken: 7Idx9spiWaKbilP0\ninvitees: cOPXrH16gYnJU7Th\nleaderId: 8cLnCXjGOe7QPz9Y\nmembers: dEQw7VrdGUNp4qqg\npartyId: zImuihvmWVtlbbzu' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: fD2S4oBlQyfaYToe\npartyId: obI3IeKLXxkqTCAX\nuserId: y4i5Y2zJzAp7dSpt' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: YOZrSj2IEH7xhSRd\ninvitationToken: 7mw7zD90PuHK12lt\npartyId: 2TxPk9AsKZSnQqG9' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: K7yWBrlZKuVSD3mE\ncode: 10\npartyId: JCoIJngr3eEQENuZ' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: 9nv3StZo2DTNp3tC\nfriendId: wZ70Aneywf3anJiS' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: vf6kKElW3nhPx7kW\nchat: 3n01WFvxfZT7d80Q\ncode: 31\nfriendId: gslH6ke67Wy5BJuP' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: 5aB99ouLxi2QgWon\nfrom: 35kCFwA9M1FnhqAu\npayload: iJt82KCO3Vj4GiXV\nreceivedAt: 1985-06-05T00:00:00Z\nto: C1ffqqFq2itd4xWb' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: SkqPkvjckxiIRRtW\nfrom: HMfx47BVUH6jTCwx\npayload: 5TxC3wDliCD8Cirp\nreceivedAt: 1993-09-15T00:00:00Z\nto: XlBdOInjPAc69Ycb' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: 2AwzWa1KvZoQje49\ncode: 75' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: yEwhnbnY8cYCPKAd\ntoken: sGphgp7kVRJDleCc' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: Wh8Ts9GpMULoBeet\ncode: 19' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: Kqx4DunmtybtI4OG' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: Bk8aOd8NaHgJAIfS\nfriendId: QnrwPWqd6I6yi9ae' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: QjAqYSlnHY7mHgSk\ncode: 94' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 72' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: GRcFkC1LFeUgOXrL' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: PwKHEe59WqxSDDAq\nfriendId: Wm9aocO7TXrURodl' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: 9R0gSaGOCC2rwQyW\ncode: 92' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: ICZ4IMTlgrlglSMT\nchannelSlug: R0UVUayVgmbj2HHx\npayload: aQf7WFfUSgd8ybaS' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: kY612N1ToRDFNP24\ncode: 41' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: GwSAS6D6O85KUc3n\nuserId: tuP6TdvMjhdbdm0X' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: I2OvM5vXRASzmM2t\nmatchId: BGgeHbMji7SEwe5b' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: jvWgkxFvGL9SLMla\ncode: 97' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: p84JpfQdFmeGCMbx\nkey: Xov6gPQ0ScnmJA6T\nnamespace: uuJvdtlJet65aovB\nvalue: psje1AeOwLu5ACic' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: Em8ZIQHRVbD51SZQ\ncode: 13' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: YaP18NPhJo38sD08\nactivity: MTPJyYkMQp3BgHWe\navailability: 68' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: o94Wa5cCgWeeItHJ\ncode: 46' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: yrCBTQd89P5yqhfV' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: so3wUTNxG58ELzlB\nmessage: rUsKshvl66HhhwqC' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: LUKbbRYS1ES22WjT\nextraAttributes: NSuKcsicmf0brvOZ\ngameMode: eUKex3IQEtfqHr5Q\npartyAttributes: {"NyHZcnNknAPTygO3":{},"Fd4dbQj9PnnD0y61":{},"e3ruQh13aMh5wZ4d":{}}\npriority: 94\ntempParty: w0hpNdRSLLmAZ59o' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: y4hdnRnwoBx0pBHs\ncode: 68' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: qDbHpvXFH6URlYIt\nuserId: 3DS9JX5dRMTzRCKx' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: 9xEUJVjGhVcokZ36\nnamespace: xRQo0MdyuPaz2q85\nunblockedUserId: gYhX7WYrdrSh08VN' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: KWKhQrnnZwU3Xsos\ncode: 71\nnamespace: ZQ5ipNL6rDWVwviJ\nunblockedUserId: I3TfgUj3oG6Hg5YX' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: MLQUUThnju6LgBmo' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: 5BfEtxZT1YeKvF2X\nfriendId: OwDUNOzVgwIoPavh' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: uyEAjlT8SXgq6YZQ\ncode: 52' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: Qo7hAtuLzAZZLwxm' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: PxFuPLcwILq5qfyO\ncode: 8\nplayerCount: 57' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: 8IUcx7eJO713YSTh\navailability: 87\nlastSeenAt: 1993-02-08T00:00:00Z\nuserId: ijZ5nzCDu8JYjEAM' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE