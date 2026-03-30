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
    'type: acceptFriendsNotif\nfriendId: d1du9aC61lEG1iRf' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: vgBCEyQTD8MJpKdF\nfriendId: OsZIUE3JcHX1Uj7r' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: 1fEp9RIGULLepOnS\ncode: 16' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: fktLmr3LRPfPjTSB\nuserId: jVFJvFShb5vbqoMp' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: fzWIS3l3Nf4L3wTJ\nblockUserId: UiPgDseuWhYXHwJF\nnamespace: gZZ3jKIHpCAsCLp0' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: VYlPj39DYivaTuky\nblockUserId: fN38zylzFMhaj86g\ncode: 94\nnamespace: nGGBfljiiYm9m67g' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: Ib70Ei2hax1dlemA' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: 4o0q34FuB6UxUcVw\nfriendId: PoA1qj9tEmDMUbEQ' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: TZhBqnGDpdahRqZQ\ncode: 94' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: UXFCQaamDhGDK7Ed\ngameMode: UHBnsadXJkpbiaxX\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: OoKzj2J1aiTsEHje\ncode: 20' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: P3H73DLveYGmJ8Jw\nfrom: VKlRW2ujBVpQr1cO\npayload: SQI4TyDfB1taCM0N\nsentAt: 1985-11-17T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: LW4vj5m1bsAtMHKp\nuserId: vJzmhi4OShGVMOuP' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: d0EQYwj0UpzhQ83G' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: VxRzcNuWUV2l9Rro\nnamespace: jwrRt4AnDmMT6OF5' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [LrkjKq9cTM8F14zk,njtBOi6fk6QCG1Ot,cpENxjR0vkhIyQer]\ncustomAttribute: FSgBC60MFCuc9JY3\ndeployment: HtvbeJsxbmaoZZ4L\ngameVersion: MEEQZFuCSyY1Hje7\nimageVersion: EBejzDvafdrgqD3O\nip: ggoHIHqE35ALxjzr\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: FP0raypqs5ZshGe8\nmatchId: WYUkvsrncL4h8lSS\nmessage: BiqpBxvOlGn3U7VN\nnamespace: aqGpgxAQjHqzSUuW\npodName: kwH8681nWm0WFImD\nport: 15\nports: {"IXhNLIQitzHb50nb":83,"QUtn8m2nMGIhdIaW":31,"E6OASuBtT7TXFdsy":58}\nprotocol: lkynK1TSugroGxg0\nprovider: ibKNCSobQJoqGKH5\nregion: o96gtKPHlz6vKNBb\nsessionId: GO8dSQxAH4UixKAe\nstatus: JxE9LN3NCDfhy6AB' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: f9AlgPCVrrmHOAKH' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: Mkyv69GCqh6vqfM9\nuserId: YjdgcIvISZRyJFfG' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: Qa7iu8CIEu2iTzdq' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: 1gXVS5snCxmlmlhh\nactivity: [jsx87Eh2drCLhBm7,4cs9m9ObWAE0DsDc,ajSgf3zQqCuPWRlZ]\navailability: [Z5Iz6DtJXN7rAwz3,CzYd4rIp3W9Bpj7x,rbmZJMqKExPZOJaE]\ncode: 66\nfriendIds: [jsphmM803yGkWwzG,ObYn8v8zFOxl9wN1,ot6whb0vXx6qN71K]\nlastSeenAt: [1986-03-06T00:00:00Z,1991-10-15T00:00:00Z,1975-07-28T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: tc3izmpEW7F3KJlj' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: KrlI2bWFRMFaLiKd\nattributes: {"2aF55M4xozNGURyh":"G8BocVYkwTD5VsYY","2fRZTLyt1IGMUD9S":"77JqW8rgBpQ3Ce6h","jdDO4wl02RNGJiBk":"Ptn9ZR8Gf3nepzet"}\ncode: 45' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: 6ux7QDbndWgmEMuy\nfriendId: rDeLQsJ9skVWqXNO' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: Ry2ATk6VVr2fQC8z\ncode: 32\nfriendshipStatus: BsuijVKlUQCT9etB' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: p7u3q9ZaswEg6fFM\nkey: 6rA30LDoGVAbuxgP' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: LsbNxFTb9evbX9wz\ncode: 98\nvalue: 6Uef8GyTGZTiy01t' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: 2TDJcYTnXE4XrN6G' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: c4xEL71cWrM9uAih\nchannelSlug: usYGWyl7Jr3pElhr\ncode: 56' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: QMsBRuFMn68k6FSK' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: 1HWO4hjj8gEwClof\ncode: 28\nuserIds: [86FjDJ8KN3RQRQka,tqqARJFelYErGSLx,2JVbrf1i8BFim62P]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: kwHtZlXCSDVRZwN8\nfriendId: ww7hhd1V8qFnDZ79' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: TP7qgbTKjnyrwJVN\ncode: 80\nfriendIds: [nLvXIzTDGcVDCHGF,rMdUaNWdEahV4cNL,4aadoqlQEcoqUfnN]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: rR2gyM7riiJgKUb0' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: 6zuAI9exonb4RgQB' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: UggJ0rxtOO8XMAb8\ncode: 64\nfriendIds: [Ro6UAYcbvtLQ8WKA,7TNOHMnQj3WYEzmI,AvmBP8hsUTPvp1yH]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [eHPROZuRFkdccK7W,XxWtKGLHDOIDYIv6,9r7LpslHI1IHJmcm]\nmatchId: UCgOsg9hXbTmGAOc\nmessage: jBVVxNe8rqNZ0sTw\npartyMember: [3OJRjNY1xLtxoELz,uncpbk6ps4GuQrqY,LBnR6KSMuekUptjO]\nreadyDuration: 88\nstatus: 2c97NZy28jsaNwaw' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: C1CZ32SQRmtbMuSc\nfrom: wJ8wi1frSgqCWwqn\npayload: 2ZDBFIUUKzdihy1e\nsentAt: 1986-11-07T00:00:00Z\nto: T1twsF33hevrIYaX\ntopic: 8npdlJ6i8YglsaZ9' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: hjkwpFlqc1PiHYII\nfrom: GL9eq2YvcpcbryWf\npayload: vgBMgmWTBNfqKKCH\nsentAt: 1988-03-04T00:00:00Z\nto: bEeLDxAAEkglQ9LJ\ntopic: vpheetLYOztcD8rs' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: feYMoeiCFS2EYwKi' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: kjLX1Icuh2PO55jv\ncode: 64' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: B8s9hTnteX4TukdD\ncode: 18\nonlineFriendIds: [zxxQjaxXTdRDaPkG,iN0L5wzshrhbqCow,RZteAy1a7K1dIjKh]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: Ikf8Aw9dXGmKEdPN\nfrom: F7Ist47QYIpVP8rv\npayload: w7ZHGms1ec0fhVGj\nreceivedAt: 1990-03-01T00:00:00Z\nto: SBGfZ8u4iCu4b8ch' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: LahbP1cAEFu0Zf0W\nfrom: HVRjfY6H4CgRBuMA\npayload: 71TNHEj8GE63e4W1\nreceivedAt: 1971-11-30T00:00:00Z\nto: q3olV6ibTwhrn8WC' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: EbPTKlk6RSsGBtXH\ncode: 20' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: scNS46KdLzX3ynce' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: bHBGVsnwndghb2RN\ncode: 90\ninvitationToken: J3TLGhhsK9zEe0IG\ninvitees: tuSht6DBSNvcAIVN\nleaderId: Oi5t73DTZuAe6ZRn\nmembers: X0A2a6CJNLBISqNy\npartyId: azDaIpUs4pr6qb0P' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"UbSroGPMot3vgEPM":{},"hSkzCTFKQ5VnBMQs":{},"qWQYTXhgSFRlFLGc":{}}\ninvitees: [SLtjXLHCuFXTQBxN,zj0TvCcGt1Yu5SFr,CJxwK2T0uyl8bXWF]\nleader: 2SJe6HOc1qBO6hcW\nmembers: [qlmfUzVLqN7kMpWQ,FsnIyfSBBUK8uz5O,bSEqD9hA2vosuIqI]\nnamespace: SAjeRNwR6XSTCnfA\npartyId: JriMStP7F03eGnIh\nupdatedAt: 1977-04-17T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: dBtigab3Izu0I4hM\ninvitationToken: QlKLvgunCFU47Xr8\npartyId: R0NbqCpy4pugvtrK' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: BVdeoTtR0P3jzPDd' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: VsLh5M7kKMPo8iew\ncode: 10\ncustomAttributes: {"6psqlwpNfxACVIZ2":{},"XFKwo44lAgfs3swH":{},"zh9A28PwxKQssML4":{}}\ninvitationToken: N2ZG9UO78TSOVTaf\ninvitees: J4fdt3Fd0lrpzGsV\nleaderId: epnLBW2cEa0RK1pJ\nmembers: iNqDE25GuOEHx5gz\npartyId: d8zQ5aPibDTIyMHb' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: B2ehHMBvbwU8MiYI\ninviterId: Zx32COSi2u3KtM8j' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: oEaSca3ids7Rp2sr\nfriendId: 9mf1kxAmPptZB5qV' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: UOXvwTNyCcmJ4K9w\ncode: 9' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: Yehrreq5vobpuzE3' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: AicfAk8VioIFEPmD\ninvitationToken: Kf4EjBAQyUNg119k\npartyId: 0UbqA71GzUbhcD1A' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: SJrqjoTcsOQe0Ine\ncode: 38\ninvitationToken: jhwQSWgHoOZgxxgA\ninvitees: sogBjri9H7J0W4pH\nleaderId: vPBi673HZgOntFFT\nmembers: xt4WkmD1CFHRpEaB\npartyId: 8plnruhZlyhyKXds' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: QBamhmqy91artou8\npartyId: MmGjlmCGH4p6ag4c\nuserId: XfZ5LXCNCsadOUST' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: oQSw0aaKBWRWWpYk\nmemberId: xrVCcdYKisXwAVdP' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: ETeNBxeFDvdWIw1W\ncode: 76' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: CSZ8a22gtMgRsOC6\nuserId: RKVm5QtJRZdBNveD' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: na8y68HdakjQF8fG\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: o3xroTxdum0hHdiY\ncode: 3' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: CD7y7J9ONius77gl\nnewLeaderUserId: pcWwhV4tSNDwyvKA' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: zNL3RqsVhRkReDLo\ncode: 58\ninvitationToken: Bz5Eealput5hlSMQ\ninvitees: GO3onMve9ebzU9g8\nleaderId: A92vfiMHIUmA5wb7\nmembers: ybCXwMhQ3eDNZa9M\npartyId: Ara0EmNfor5DG9nh' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: zLFR4ixUIlbO36YE\npartyId: zOuFcPh4UmizLG61\nuserId: AhtbLrTLnWqGoIBx' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: 4TPxi8QBZEoMekP8\ninvitationToken: W9DEiTG3qRhrtEYc\npartyId: q8EMusoAz14g34kh' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: kazi6AotKUwlD9Rf\ncode: 24\npartyId: lQledGGRd4mYTKRo' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: ep6eyTRUP2GolPEn\nfriendId: TFkPABwS9wfW6zUK' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: hJxlozCTnAMZbnXl\nchat: 8ekx1nRoz9Ksw2lZ\ncode: 62\nfriendId: sn7Ds55jBXn5j6GR' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: goawLJQUpTkRTPPT\nfrom: 1dWwR482uP3O6cCK\npayload: paZmrr1SVeHH3YIs\nreceivedAt: 1983-10-05T00:00:00Z\nto: 1gwhuJHfp9SiZ0tQ' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: eKmLghQTOokixPSD\nfrom: b0qbolfPiMh1ffqd\npayload: YWPyCdOFQDOTOnPj\nreceivedAt: 1981-12-31T00:00:00Z\nto: 9n7QSUQAosuit0fd' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: KYX5sq7lQ3jrlhBa\ncode: 71' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: qOUvEcF3Dd6cDolA\ntoken: JXQ6TD86CtECYbY6' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: bn2dSLcvps0uxGV1\ncode: 43' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: 5dxkQw48viW5udgi' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: bRUjlH17Qhi6HCT7\nfriendId: QoWxEwZlzWKpdLDb' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: dwaGPsoozVln2yxz\ncode: 16' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 52' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: 293TqvecFkfJXo5Q' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: eYvNASJd9QnOJBok\nfriendId: 0raixSukPx5r1WhA' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: ZLZ5wsOxUC2SphYD\ncode: 63' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: e693VU6Y3KU54jAy\nchannelSlug: vLqrVxhIiuZtKUeT\npayload: jHHP5LlRlA5FUSX1' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: lx3taVKbWMeGbNNT\ncode: 63' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: 8I7LuS9qds3TBgkj\nuserId: h1JWxW57T9YhlXVh' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: utqYCn7aUWX9WbCJ\nmatchId: 6A9o0Lyr2FYfk8Xx' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: k1DzL4P1fQwCgsUe\ncode: 66' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: tI9ZiwEspqZE6HCP\nkey: oKsWndKEv7bN1f6C\nnamespace: uh5KugGFeBg8Yhyi\nvalue: rOMHtHFIBkj3E1T0' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: nYStiW7hZY9Kg25k\ncode: 38' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: tqqLKHhmjbhsn3Ay\nactivity: LafoDxfmWli3FjA4\navailability: 95' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: twm60XQlBovLRLeu\ncode: 72' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: AGTmVmxmoH2EwSqr' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: wCSM545owHEFYCgS\nmessage: CEX0brlASls7ql9R' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: bqovxrYrpfMDnbXo\nextraAttributes: Ej4fzUpBHAxi4VXV\ngameMode: HbRhoDNA2RSt0oUO\npartyAttributes: {"OmnIl9Cxz8YnfHxZ":{},"UGxg2n2vNhbOsKaa":{},"kf8cZRbeucCbKaEZ":{}}\npriority: 47\ntempParty: dkHNN7yY2MUCHZFj' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: 272oEJsZZagJw5Yr\ncode: 89' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: FF4zMPap0f25sKyw\nuserId: o08twQMv2NxzFCeU' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: HF1Lj6QbSoX62s6o\nnamespace: X9Y81YPIrl1nO4pg\nunblockedUserId: 7o3f3qkVOl6y4LmO' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: nCI6rABMA3VGeGDK\ncode: 67\nnamespace: 5MfS7kbHL9BtdPex\nunblockedUserId: ZZI5hxvSLJadQBBr' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: WNBy8aK1KwrYHWOt' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: hWKXPVZanQTsrvI0\nfriendId: CaIEH3xpoE1vhReG' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: arvswoLFXKmr0ibN\ncode: 63' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: kPelxlsGvrIIZKht' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: FTU9GX2Fykw2JeaD\ncode: 48\nplayerCount: 96' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: ZAdjA6YKjY1ump5Q\navailability: 56\nlastSeenAt: 1979-02-28T00:00:00Z\nuserId: RKJck3vffaBdveuR' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE