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
    'type: acceptFriendsNotif\nfriendId: pMIUNbRwh7idoaym' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: d1Iii0hQyhNnm4nY\nfriendId: Xr46AKJoSdfTuNu0' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: 3QKvTqPcsAWXgHeT\ncode: 97' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: 0d9mnSp9ZVrFPhFk\nuserId: Uy9epNZsgOSRd8eV' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: xwpz1NIn578mvtj4\nblockUserId: Ww7j9b0cc2LI0vkP\nnamespace: k7IZQL7XhVjXBzYU' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: Tf1dlaZQjGjaNS4H\nblockUserId: xoQZupVd8C2hytSF\ncode: 1\nnamespace: JDkDcjY1Umq4C8KE' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: szt1ArFi7tDiiQJ6' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: bh1uZreVw0sgZWvt\nfriendId: DHWsLh1rUnAlRx60' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: 3Ab2xCN4H1TOTfpM\ncode: 56' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: sAHzG8VXpzuguUav\ngameMode: 7rVjE1HCe2aaxGOE\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: 4Al5g4OPcF2xthRr\ncode: 4' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: 02OdJg6QA4B7LrB3\nfrom: B7RFZUDEDrVmCB6g\npayload: TnQef7ZKQMkGD576\nsentAt: cg49tgtJfUjONKnG' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: nPQwTbO4N80oGrTQ\nuserId: SLNzMv5XdkA1o86T' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: L4XBBQyBFYpej74E' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: C7wx6fqgSoEXpyvw\nnamespace: 5b9LrlqTDuqQy80C' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [ngXf9PfbcYcl4ZTJ,FT3M9MoHurw3FAt7,Oz4dNd0UZjWwotx0]\ncustomAttribute: GnsxsrFNoSvrCg8B\ndeployment: 2N9ek9m4oIkyYZ7d\ngameVersion: mrlW6qtq0Cq3vLq5\nimageVersion: 1eDuQnsUmSwVMzPA\nip: coTHJRUm5mgJhKcj\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: hksGfGUclPdDArJR\nmatchId: BTfJtIQwsDbXsceX\nmessage: DI1PWmhUzG0lT5xs\nnamespace: BUAkKi95ACPTvLjq\npodName: svqfaAvPH1ReL8x9\nport: 15\nports: {"5ni4RvjZDeCZCa2f":30,"zbmeH0neowLVmB0A":31,"js4fp57yufgt4nEZ":82}\nprotocol: vYxmuZqTDesbXgE0\nprovider: 94VU5oiI5UM03wyp\nregion: dbkOojtB1MRkHlsp\nsessionId: UC2V62W3DhVtqYmz\nstatus: MJUdw8gyitD98EfW' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: YD7Hy7ZyQznw7rJW' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: g7TCbXlpuTOar2Xz\nuserId: 1T7S5DOwpzoYJEFV' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: PUpCe2PQXK4Gpr7h' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: ZsUnDQnNnV8GMiZu\nactivity: [Ckqa0jkEJzmJqCd0,ldbxt4PdFOkuSTbH,5wjPVc93odwvRkLf]\navailability: [39,48,33]\ncode: 72\nfriendIds: [UZlD1nDxMNKOSCmh,7I3FJiPiF30IKsPF,Hlm77Yxna7BuaVKE]\nlastSeenAt: [iJXRf1Rtb8UmwuJ2,dV03rMihQnqk3Mfi,ULZJ1x6lSfFxlai2]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: 6O1qqrmFvPG931BF' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: cM8L1nuf5LRFDiek\nattributes: {"fxdcwWGotcqgLDCQ":"mSgJDXvrNiU0DwuF","7xazpvKp794pWIio":"SH7zRxljB8xZ2CtD","OptROpDgjWaedFaN":"CuJzZmz16H5CwRLU"}\ncode: 12' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: bzODUipxCpE4hP6C\nfriendId: pNpchV44kFQcAG6u' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: KUmkO3MvLLWTOmSA\ncode: 52\nfriendshipStatus: xHNrVS4X6JmR3eCQ' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: cKq2a3x3UK5yNrGb\nkey: 93P3SzFL5FygeLzN' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: eWsNmKvJTXOkKs1z\ncode: 46\nvalue: F6AvUDoZgjOY8fCI' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: Ogbx6wUNNu3tpoJ4' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: 7ut40hHZMuSwl7B7\nchannelSlug: V4JW6plCYfG0uK4C\ncode: 93' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: soMKWkye6YxJNzDm' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: t3wgdckguaDVqfx9\ncode: 82\nuserIds: [5rNKViLTf2DL6prF,8a8bgEGRJo5vI6Ka,Oo6raXOPXHE9QA8x]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: ZorMWFcuajNW9jHB\nfriendId: hc3ETQEvx3HLtab1' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: sL34xVp0KhLZYDoT\ncode: 25\nfriendIds: [FI5fNK3swDdHSWaH,UPZIjOiYiwdBH8JO,3aN0MeaVl8vqMAa1]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: vDwlXB4MTGovOYz7' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: mkDFCTEq27DqJvwF' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: rwY9wXh2xuqtWH9h\ncode: 34\nfriendIds: [Rk5fYmWSZJTZp3sm,qiE5biXFYFimiaEZ,lPfKhjoDCi6oSvNM]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [mBfQCScrlvjS3mhr,RgIMFckM9LDy12kC,c265aI44hfkODfOc]\nmatchId: 8MxUNl6RYjPl8JMN\nmessage: aAd7gwcHmrfkRTod\npartyMember: [eDiPD7ZXshtUrsDp,ZvtbrgheVMTpHYAu,FotO0xDlcNuTw8Xe]\nreadyDuration: 45\nstatus: Q3vzSTxlBPpchbUf' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: 88kCnEDr4nO3rzbB\nfrom: RPXJFdIdt93DMP02\npayload: gmTleRgScNPRTF9S\nsentAt: 54\nto: gVc5zFBkXVnHJChS\ntopic: ryMY9QTET3BgWV3V' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: 2MCQ8kM87cNLPhrQ' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: NpShgdErtfTkgMUy\ncode: 8' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: Z7nlTgDGcS5pZI2G\ncode: 4\nonlineFriendIds: [Nr1zlorxiGcxViIP,EsbWY1h2IEZudJgK,z7y8VSbGgO49i5li]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: g5KHp6WsqTjaBsZR\nfrom: 3aSywD5513MCwiis\npayload: IPqFuS3N2R9awTd6\nreceivedAt: 15\nto: cnom8gSae3iIybQb' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: jOoIIcpjexC5uSsz\nfrom: TdvCOedRSVky102Y\npayload: CgDAHpwkYQDvnhiU\nreceivedAt: 13\nto: DmpbHMAzhbLqsWlg' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: 212PwVIwz6NpHloH\ncode: 19' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: xEn2ZlPMBwH6gxW9' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: PXSmOBcpNzjS0hDq\ncode: 47\ninvitationToken: 52okyNekEQ8tOBiN\ninvitees: VjNYLNo8PrvjIv8a\nleaderId: dLG0pvlMIBIW2xwT\nmembers: YwVjuFue9a2XjCkq\npartyId: 6MiKZ4eIw75TfUNB' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"wruTBmSP2kyXLln2":{},"KZpFBFSxbgAtXu7I":{},"1LQKTab5ZK1BdUuW":{}}\ninvitees: [Z255iVtWX6MCzmpf,p1TwYMxBHnLErHKN,73tcHP4PCEWjkTdh]\nleader: uEcQlKy2pBgs9xoC\nmembers: [eUr8Lv7bVcBNySXO,CH371GYURGbdzcN7,mKccKZCohgkjrPM4]\nnamespace: jm2ERU86KqmWICyT\npartyId: Opfsgq7cBq2credE\nupdatedAt: 13' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: JXfNkihtq6e0TpU9\ninvitationToken: 8YsYqyAqE4LWiVjn\npartyId: P7q7GOtJv4XhlJGf' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: 5XPpE5XAsxpxXUpP' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: pOBsv5tiq6EBjD9C\ncode: 36\ncustomAttributes: {"1cdmP2cjyO2QsqKH":{},"O4D06DztlHct623O":{},"YKniwwrIKugbjMoJ":{}}\ninvitationToken: WpQbLtdLhxtWbBxK\ninvitees: CVzmREIWRC7CCUVR\nleaderId: gjNfY0pcqFuMs5T0\nmembers: IIHsc64pjXP4gs7x\npartyId: kuBxTaoV7P7WmDvl' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: grBySTQTnyfB2EWK\ninviterId: 7uIItqY4cINMDAI5' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: xbtSNWXZ2SU2hahk\nfriendId: smBUjHd9Yj1OTCoC' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: Bg4qwUQTWxT8CvNf\ncode: 39' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: 3oIO6WAqO0tedQSX' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: kXchmIx9VD4Nt6cC\ninvitationToken: MNDDjhJpncgmPHR8\npartyId: lnmX2YTD63PDN7tO' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: 5rnZ3wXxoGJEFypi\ncode: 33\ninvitationToken: 11qBBubrJZ25Djkf\ninvitees: hqGPaLrG7Ny8hCTn\nleaderId: U0uz9Jp3KbAjKNch\nmembers: KjTfSriyRpKjgJkS\npartyId: Ga9eYXr7k8tim6Ex' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: OHu8a7bd4IoN0leL\npartyId: 2jJ4b3kXzOmS8Qqp\nuserId: Dp9Y4BoD1iM4xigT' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: JHsPtrKwlusKNpL4\nmemberId: gQLlKgehccjGu9HD' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: W4zIqiRAjEahFpMo\ncode: 31' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: Kxz3JRxON87DhjON\nuserId: NF9IiTiOm0tCwCz1' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: 0L55EK4hKS20onZ6\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: tinMIJPRzGGE72Mr\ncode: 21' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: 8GkoywrGDZ5JEwyP\nnewLeaderUserId: WSaUzv1SYAICaUZR' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: mCIXOVMV5f1MEoYy\ncode: 39\ninvitationToken: wfMeyHUKTOMeLmL9\ninvitees: qwIN1xzL8g6DAIB6\nleaderId: OZix2g45tBplJzeR\nmembers: z46iF8CgikQ85m79\npartyId: cymvAZxbFuba7NXx' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: 74MclNUgEgrK4vQr\npartyId: Kg2rU2NuOlC9WR6y\nuserId: kqBLrpDzxxbRPMri' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: F4XVQWiVXqROcuQu\ninvitationToken: 9ivR8wjcRasoG3iw\npartyId: 59XZwjRiV22xCyKZ' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: iHu26mx45ZQD7Qlp\ncode: 19\npartyId: R0EHPRKV9Z7R6IXH' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: WpWC4lSu9AYegrvR\nfriendId: jeImMDqoAHAtXhNE' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: s0u1FjDPORwu5e2i\nchat: AW3SQuVZWlgfgFuw\ncode: 53\nfriendId: vHi8tcYxAXUNAGgt' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: nEaQOhyAWdnYQHnA\nfrom: pxHmV1OZxBYwri4P\npayload: 2TlKfiTyw1CWiw8p\nreceivedAt: 34\nto: riSeMXQuyZ5xcIoc' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: u5ZqYnr5xc77GcJL\nfrom: 2frxJDigt2WqTEkT\npayload: F4V2fM8I2LsErH6C\nreceivedAt: 35\nto: KJ2FNepkCcE4Fy9P' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: wEWAXZxcMx8v9mJg\ncode: 27' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: 7vGKdBnIdUCf0mL1' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: DCh0H2nxu1r4AcS7\nfriendId: hiJVb5H4nTsXuXme' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: DCWOzRiS6XDKZxyD\ncode: 30' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 14' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: dH30w3W6EQJezEHA' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: 8nkE8N1s2qPRwTtE\nfriendId: qNnupetCAJGVtePZ' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: oTi394uN4PmyYZ1I\ncode: 25' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: J2IHXvUoXfLN4oJ2\nchannelSlug: GAeh1vRAcYbN9jbZ\npayload: Xq9ZIomGJbhCeJx6' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: PTbiTassujZzyHo5\ncode: 12' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: NrwdfX7KVA6LCmNg\nuserId: xKTjPguFCaa55djc' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: XHmZBpDvQCdoFix5\nmatchId: mYK5BLEgT3GEj233' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: sJYfCuDGAeJUS5JW\ncode: 92' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: 7T4H4d3Jr9P1HAzn\nkey: IhWD09wFmPvTI1cp\nnamespace: q1jnnOjq2Ip1khxd\nvalue: k73WkNcuXWythCv5' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: v8cvUNvGp6QYhT4b\ncode: 65' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: 8zL6Zwz8z4OQyahm\nactivity: W8DDKT7rP3cFqkVb\navailability: 84' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: BTX7FW7v1OHISIxd\ncode: 59' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: OyOmxGmvpUvThdyE' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: dIkNWQVCEutH62g6\nmessage: BYmhUoXH0uBnqkxf' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: wJgYrt2ZzDJN5TEi\nextraAttributes: YBu5rTrT4eImx6yu\ngameMode: DXk6Kl3gqyoi6kP6\npartyAttributes: {"rGjiIDyGQANtwkR4":{},"Rhz8yq5ZisJFvWbM":{},"ggVoVDyYGwXxoBBk":{}}\npriority: 33\ntempParty: Zb2mKVcsRk9lBBsx' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: V7sHqaZPxykANvNQ\ncode: 29' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 SystemComponentsStatus
samples/cli/sample-apps --wsModeStandalone \
    'type: systemComponentsStatus\ncomponents: {"oYH6gQr6lyQPpWQr":true,"OqUzMNeJOKr5yKBv":true,"Yfw2yOucKLQ0VXPW":true}' \
    > test.out 2>&1
eval_tap $? 94 'SystemComponentsStatus' test.out

#- 95 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: 9Aa5v869RZvE1yuR\nuserId: u3ZbHczXps6cmHPY' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerNotif' test.out

#- 96 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: 2KqlvbabSoG1O9Cl\nnamespace: HJHKbxApX93Ys4rf\nunblockedUserId: SUsH2rZlEWbw8R3V' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerRequest' test.out

#- 97 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: wRJ7yq0vQFXerm29\ncode: 90\nnamespace: cRSgrYDHTkMJVPCX\nunblockedUserId: tFm7279Yvy3yzutQ' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerResponse' test.out

#- 98 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: Maqm8ykV4oLu6foO' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendNotif' test.out

#- 99 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: iuZDcp2aARCb8iQU\nfriendId: DERNS6IrQHepOkbn' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendRequest' test.out

#- 100 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: geMW6tDzK4Wt3OeB\ncode: 55' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendResponse' test.out

#- 101 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 101 'UserBannedNotification' test.out

#- 102 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: 56VOdrst6mKS0Pg4' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricRequest' test.out

#- 103 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: VQcEFs8aJYyhhZZd\ncode: 87\nplayerCount: 51' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricResponse' test.out

#- 104 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: wQ2UiGELKsKLBcmJ\navailability: 23\nlastSeenAt: vmqBhn1ZtX0fpJeI\nuserId: itW3IPtcAoNdx6NB' \
    > test.out 2>&1
eval_tap $? 104 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE