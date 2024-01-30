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
    'type: acceptFriendsNotif\nfriendId: 7UUmA9631bnZBwgE' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: 9LEueKfC3OLFNRlB\nfriendId: DBC54hb9t8ssitkf' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: ikXSl0S7PHY6kPkH\ncode: 24' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: 4CcJubWIB831CE4K\nuserId: xORcQHiu4dMbZRn1' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: RgFO9ZJV8DJDOroO\nblockUserId: QeXeiqSI0dfgTO6p\nnamespace: fNoCewWR1IbI7PEI' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: ByIwqg82xp648tut\nblockUserId: lld4c40itnvm1TIs\ncode: 58\nnamespace: D4ckHL0EyXdjHZsp' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: BstBRo5NxFUt1Hf6' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: Oy8WBwJKaGOEGAak\nfriendId: nGgdh3838g20pHlh' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: A2hmyIdKaJlVpnP6\ncode: 15' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: rFAp5xZu30ZVuzN7\ngameMode: sojcR8t1NVrjRaGN\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: xRacWEayEa5sPON1\ncode: 90' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: Nbs5DydzBvHkJw1B\nfrom: qaX7lzRn8kR9nEMH\npayload: R6ncACaZAFWPrqU2\nsentAt: D3Qk48vclKmGjXpv' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: eh3tmr3w1QCXdPPX\nuserId: Wz3JO4tmgrjgh0NF' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: BfZMcBKgg9FxJOSy' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: Lo2DdtgmsaNbbERA\nnamespace: TQZ69eTJZPVbygmw' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [7CUlE8UmOopU6BQY,P2U8y61GrltJgedE,sqmzxGwIobrJG1d1]\ncustomAttribute: TE0VEGBNuTtQihhR\ndeployment: u4W2uUc990N0mLwg\ngameVersion: EEIKRtKwq1xXgEKc\nimageVersion: XF3vJXD3JZHzrXGf\nip: zdbhQjvWEYxjcsBq\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: Mt40WARVM4Qy0S7t\nmatchId: GPWGIynd5iW0MkOb\nmessage: 8IkazoEHmjVuRJCG\nnamespace: QVVZvssEdSz726kq\npodName: 6u5hElUKPZQtWJ3B\nport: 10\nports: {"TUvX032iVqNyOsco":19,"DhKu3eQyo2rnBduf":64,"CHoxZ4OeGFWL7Pr4":68}\nprotocol: NTbZaLARzxVI16gL\nprovider: AaldoFu7Od5Ltn4m\nregion: ulRkidKyyKU8tOj3\nsessionId: pTyWPjiAGLiWXCXQ\nstatus: hknIShtEtGd3Qvlh' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: nVrOurNxyZVRYii7' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: mf8zrQ20bUcfAppQ\nuserId: pmVJnVHman7tBNEv' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: KsrTxs7Sl21oSzin' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: M7B4OuG3KvCBrqtL\nactivity: [PuB9MA7NadhGJg0d,j258ndPm50KmKyS1,Xm5PcAaWBCGhvmm6]\navailability: [N47ykH57kOwbgpgd,xgpXa4cfmND2lQQn,nKAk2WrjsjCBQknK]\ncode: 58\nfriendIds: [tzATu86S7L1iuHpL,P0qV76oqndIMlble,3M85K4gZfsSxHH1q]\nlastSeenAt: [X4FGHJFoPZkdgXNF,nTN21FGp0ZgEsI5C,6gtX061TKS65vVhy]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: AdhfBEMDMtXFpohK' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: aTKXN94Rb4cnMiLa\nattributes: {"ezZRkN2kA24jlExa":"Jz9gxMV2oTrzWxB1","PU7ey8DzprXvDn4Q":"XtNo3PsYypFlI8nV","0K7XLpfvYbHjYthg":"GU5TjIssFSGTS8PS"}\ncode: 73' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: 23o8uu7BX0LJNbTN\nfriendId: ttDSr6h97A4Tn2EH' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: k3IWI55xep41pWhm\ncode: 54\nfriendshipStatus: yXCwKDNxehvr8cM6' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: TlS4VKXOMT85Kf6g\nkey: E8qc5rfKcmjVB6yj' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: fXNY59Ojrde8km0P\ncode: 48\nvalue: ygdjacTOqokLdJNA' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: BpYdB2ZVvBZbnhfC' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: i09Rtu2tYSNZviTY\nchannelSlug: JJjCCCqE1G6chCrH\ncode: 25' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: vb4gSYcdl3Wd9ZUt' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: eOFs7xhi3UGtqPAL\ncode: 52\nuserIds: [yhj6AQxqa1857n9S,mhgnY85ganvh4xyu,DwLThbrf2Z1nw0II]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: jKQvFcIVTXgqwTqs\nfriendId: N5JbRWM67PLYI1AY' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: zV7XzXk4JtTYt0Rn\ncode: 34\nfriendIds: [59sTpFFLYizMzpWS,JhyvzVJAaW5VMpwO,cx2eOMeBRvTihoVk]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: 1fdy63rgDjatKlYB' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: JP6Bz57qU021sGhm' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: pAIF5jQpmjdhB16O\ncode: 23\nfriendIds: [90mjdpZqbfGoZEDh,n2Jwo3y3FoHQSlx8,LubHEmOWXYuZj5Yr]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [V2GMSMhZSn1tfSpe,QFzMAvNVQh1sH0Mq,RvB9wW3iLCfveTGw]\nmatchId: mdFOtSOFVd4dQdKP\nmessage: SlwQXGlNcOBxX2SK\npartyMember: [S26jkVizapYgyzMF,OltdBnrOdcSxcYAD,EjQS2xvjaPCxNdlJ]\nreadyDuration: 48\nstatus: CxzJDVT9bwXkZVuI' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: tbI7wJkjuHo5gObp\nfrom: 4ceesE3Z8FjJ0Jgt\npayload: AV6B8nBk47waSarx\nsentAt: 56\nto: k0EaatyR84t6z5Kk\ntopic: TaYuhr2SrDUCYjhb' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: 3UGusRpcUQTEadqW' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: yBVoW4sWaAgQyTKX\ncode: 54' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: ku64NlfhUvn4VeEx\ncode: 0\nonlineFriendIds: [AFBWmnu5nFmhUYIg,zlxdIB5ZvJrSUPDh,hbc1u5xRUvY9quMw]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: r2dOKrhyybXQzQ47\nfrom: cpvd9NE4m6TKWk85\npayload: f4dt065aSyHdaWwO\nreceivedAt: 60\nto: K28l5m2xds1YBVOJ' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: rBhxlFEYO854uNSC\nfrom: fo7IVJQU6n1grN9e\npayload: lYrqoWlj9rfLJfVJ\nreceivedAt: 23\nto: 5dr3emqt6Jg9ikzK' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: ixbeukBl2tA5QXSV\ncode: 68' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: 6PZR8CKqxKj1DZOw' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: WjDxzDpo4O26NzxA\ncode: 25\ninvitationToken: nFKCIi3vxx9riXyH\ninvitees: ka8Hl6i0HCWfx5dD\nleaderId: CfH1ieQkr0NBAXJk\nmembers: ncoUfAzuAGZvLbjk\npartyId: H9Ct9Z8CBFxiP56N' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"5kpvc8hu60BveTKW":{},"bJN5UWhayxZHVz2b":{},"OQQ7bJ4bp7Jm7q0f":{}}\ninvitees: [Gg47vivfcnPrYt7c,zXxK8D6pmjnLFB1N,jK7dLVusw1CmXoFd]\nleader: wYSgasg1DBMPO3IO\nmembers: [zP64YgrW0W2AHiob,MeBzg4tEc4WpmB8f,JNzfXWAVqDczJZLj]\nnamespace: cGs8u7djAWXbxBp3\npartyId: RSEo4H1CaoZniPET\nupdatedAt: 88' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: zOWZidKlwhbjEBVb\ninvitationToken: eS9AKoibjcn90O8z\npartyId: 8x4rU8PMkbpfFxbt' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: ErmB1byn7QB7GKos' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: PJuAnLKDIudMekPp\ncode: 43\ncustomAttributes: {"WzklJ2pSQZtvmA65":{},"qS6PQw2QI7QcXRak":{},"Ap71NifADh5vLBUA":{}}\ninvitationToken: DuS6Wq9wln1jFZ4b\ninvitees: 4pogepIhx4dVAppr\nleaderId: eGfYuUPd0HKn1DgI\nmembers: 343rzGxgSHt6Ueg4\npartyId: L9wuCw0T0EEJE2ZI' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: OD1hHBXZgserPHJf\ninviterId: tIZJ2YzU66gbzqap' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: 94JyXjqbXUAxRDYZ\nfriendId: OX1PNnx5vzuNbvIr' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: Ebqb4NK27Z6cKgcv\ncode: 38' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: XVpRckH4ReKxrIJs' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: scOjxu8n7GUZC6gW\ninvitationToken: fwn0W3fcrZJZqns0\npartyId: YOaoYnVJYxMQd8Um' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: 6qNkAUVTN79AFhgk\ncode: 45\ninvitationToken: 3wfFP9FLRYSk95me\ninvitees: i3M5EZUkVJOlw0ww\nleaderId: W3q8MKjty3bEiTT0\nmembers: WlgiY3b2XVLoOxqQ\npartyId: DtNe6alqAYihpBzv' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: CyRPJiAGHrmrABtA\npartyId: TPC59lyxEzeeB2QX\nuserId: T1r4DoqBiZd3Mnp5' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: JJwMwp8mxeYbrQ4T\nmemberId: TGbO1WF0swziwwKM' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: knsrpOZ2BomcgecS\ncode: 9' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: OcWgBOLz668cmSbD\nuserId: JfF1ABdKrakhM529' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: O8gkmIy9y0EyyWAF\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: 9Cln7aIrGfYTDFya\ncode: 86' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: iTWVSVoPkrP2gz80\nnewLeaderUserId: 4E4HYheIwDdYoid0' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: Zooh9cpnC2qJwVoI\ncode: 55\ninvitationToken: qOAuF5adkbA4itXQ\ninvitees: HWp0wqsydL8WolA0\nleaderId: Az8gFO9Qr2VQPF3v\nmembers: KStXAVydSGxf2j7E\npartyId: B5WXi44HxMHrMxPW' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: a2kBCakObaiqRqdI\npartyId: adbu19W5hGEem81E\nuserId: 60uXkTyzEf6OQmu5' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: FwMykS94M62R3wcT\ninvitationToken: TdD7RJlIbTGUYGgb\npartyId: w7pJ0cLCsjobd2i4' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: dWCBDf0SLo4cgIA1\ncode: 32\npartyId: 4bScAIchWs8IuBAY' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: PO8d5ra9cG9ETfGi\nfriendId: Bhd6Eh4SDXJDtEtW' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: PgmjcNaikbDPjbJx\nchat: kWfjFVY3yem6RUr0\ncode: 67\nfriendId: j0kXIZWYLJQoQ2GR' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: tXgjQz8Vy59kzkM7\nfrom: yA9ALfm4IJj7qMpp\npayload: 0gG1dABgeQoPVGSg\nreceivedAt: 13\nto: u99fzoU2HP9e6Xto' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: wks02QtsesIjboTU\nfrom: bNr8b6Qh5no1xeWI\npayload: 4X7OXP21Y4p4sNE1\nreceivedAt: 31\nto: D6bpXVMg2G1KYTWM' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: dkzquR3CopPOef2c\ncode: 73' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: BD8ks2hrCtKGjOZo\ntoken: oYnXPlSr6cegCF5b' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: ZXwHqs7h4QRqw8RF\ncode: 82' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: y5DjnYgx4aMSjt6t' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: W1OfHUx3nqTIMmT4\nfriendId: 9LJbjGLS9SIHw808' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: 2FZkH3GFSXYSz4fY\ncode: 25' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 32' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: x2v8LPrUvYC7OE3F' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: 4ry868BC4tkxRd7Z\nfriendId: 5Ls3ZKz6XDoVTPbF' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: yiszWKhuOAYL6R2X\ncode: 72' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: jrRQGlsfotZ3TgjN\nchannelSlug: ui0pMS8T99yiIR1T\npayload: o7iliUWy0njygnSF' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: 3vtw9Eihnchml5ag\ncode: 65' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: DqeU16kp4nCCYsnB\nuserId: BQzO2jtGplOfMrrJ' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: zFeJlpO980r6sLes\nmatchId: 0gBPfZu62vKD2dkQ' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: DQxhIupsWUYcp8Or\ncode: 54' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: 3Ae36GMXnD99jUH4\nkey: ZTOCK19sM8HgdgVu\nnamespace: 5eE3S2GYcfwCjiWz\nvalue: LuiqEodY5lj7AIVS' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: X9rnIDCRLxlIe1vr\ncode: 48' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: ub2i9RNOQwTXFh5Z\nactivity: WLYF9pwljdPfrpe5\navailability: 31' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: nkokYkAYhnCvJeLp\ncode: 94' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: vSQLi9znDp8627UL' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: jjoHdaBMAStgC3Fw\nmessage: VW95RqxGyrYtM2Yw' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: McaJLoPNyWt5Jens\nextraAttributes: Noc63KnBKlGg6y1W\ngameMode: pk1ZPpTm9nKpVr7V\npartyAttributes: {"fxUkOCW6qLRzeKGc":{},"P4WVK3rXxZy17sw3":{},"ucz6MwBPVmBEE0Tk":{}}\npriority: 58\ntempParty: RKtGalwL6Q7nUrRP' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: SxzM9iylwL58unZq\ncode: 99' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: pRENjH8VT7FL1PWw\nuserId: olVBQPzr4d8pJLuC' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: SU19UZoY3xMMLxil\nnamespace: HZ4JV1ANxejPZb1E\nunblockedUserId: rWzQEhctZwi5UE6n' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: VrL5HqQ2VfQKSsk2\ncode: 34\nnamespace: TtRKmyEIJresH09n\nunblockedUserId: cLfCPAPddXr5Vszk' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: sM3WVYJuv4NoDUL2' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: SY9fESyfAStXycgc\nfriendId: yn5hrzJvNG36iIN2' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: OR8ZKGqXuCIJNZwG\ncode: 3' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: BFmzvB6HhoiqyClk' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: vFs0zhkqb4sI5Z8P\ncode: 87\nplayerCount: 27' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: sng5Sggd4ZwmFNXG\navailability: 21\nlastSeenAt: 9FY8ptnzpcUaqkgy\nuserId: 8HlmNLk1gUbWrEIT' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE