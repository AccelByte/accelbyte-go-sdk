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
    'type: acceptFriendsNotif\nfriendId: wey82N8zFRUh4iZH' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: jRhGtCEdmkl9cKH4\nfriendId: kEdLv5XiZVvjCc9q' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: 0lfQMjeppAXXuCDc\ncode: 73' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: zZNbivMsEtenyuF9\nuserId: 1tmqlG5w2n2MgJUx' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: uNXiqYHmtrIVEe85\nblockUserId: 6w0PvnH5YZlpQ5Ua\nnamespace: MOBOw2muJul0mQBe' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: caUmCNP67BX12nLw\nblockUserId: 05ikPneIpzD5HPXE\ncode: 69\nnamespace: Zmcyr6BiDTPdweQq' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: d3W8ARFkxcq4VZwb' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: 3TyybHaTdXTYf8wT\nfriendId: u7aEZxtmL6qWbyBP' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: SqBqN5JqRE0qkk3c\ncode: 13' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: 7A38HQ8Mr2wAQlmi\ngameMode: nY6ZNSHfJgDU9oOd\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: zpBadSYERYX2xFdl\ncode: 20' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: sWtOmDnUdZdF4UOA\nfrom: 0HkrHxlztoc34Uzf\npayload: XttEefudmFWjxfqF\nsentAt: 4prtBGvBvcAlit4h' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: 9cVSvRqpFmtzrlQa\nuserId: kC0TQCXoz9UEKq9z' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: AoovjilH6NrfARFq' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: V1Hocg0y1GTjLUPA\nnamespace: Dqz5HthzaHMpqwlP' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [TMOQFbHZ8IYquGJZ,cXBIybPdnGfQHznI,i5W9N1hnlpogURBF]\ncustomAttribute: bPeGkAcbaGPVLsvM\ndeployment: yaUCOC2QYfrvTsuc\ngameVersion: nylwCt9ptvVQziDv\nimageVersion: nK17Z7kev8KSzBWa\nip: 5TQTtwqxknOXLhrf\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: DiwOFF4HshI6uSkB\nmatchId: gTlUnXu1PqqBz7uM\nmessage: ANr5ut2DlGRIK1IU\nnamespace: bnDhXI885x3YV3Vb\npodName: 4jYCsMNcywWOaUCL\nport: 79\nports: {"GHzstZ9hXGNzdjdb":34,"S0URDo9DrpyGfhzh":27,"N9pD14tOBfw6qbRb":90}\nprotocol: HqQSCZnuU5eHxHO2\nprovider: hDtt0wSGLQQ0YUmA\nregion: nEsnjAGBcqTNH6ie\nsessionId: 7wHj9zSGnESa4ZFK\nstatus: jjN9ZTqMMnQl2ljA' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: VLuQdrwn9QkijOaS' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: h7yashnq1BYuwbP4\nuserId: HgA07WFlDbVfAvbf' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: z7ccOZmJL8nHyU6x' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: OO4NR4I9IvUgLQb2\nactivity: [rXzBD4eLlNxECFrQ,PnWHwXZnhqmLLItb,z7MwDr90hfohJwSP]\navailability: [66,99,2]\ncode: 99\nfriendIds: [WSrvbe1f7vsR5iJO,gWhrHIcX8N8xFi8f,H2eI5gYlrdjzYeE8]\nlastSeenAt: [2uqDC0TxKr5pEXgb,OfwHJgl0p5jENjP1,1z8MgmcDGSmg1PXf]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: CrQWJxT4DQWCK9RU' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: GIxcQTFEcDmr3BaZ\nattributes: {"vfOqukkHNZtigiUL":"4LPsAMKF8XmC6CLd","Im2Gsrv87lnJKfC8":"uK0zr0liyYKqB13f","eXvGRCk49HVXe4or":"9XULisYLV6nKM3OB"}\ncode: 75' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: CPK6rcg1dmlovjbs\nfriendId: IwEy0dNwmvfj2lZq' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: 0RI6LTTfCAshAyu8\ncode: 80\nfriendshipStatus: objTlxSQAAjIkhUC' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: WwGNLtGNbtwqNHC2\nkey: 1pwAD4GCs09hXeot' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: DVKi9F8nQhkWsisM\ncode: 53\nvalue: l7PtecJRVW5z6rBS' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: Ab0HDJ61A1ldO7CQ' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: afZKkgZWFu8afFu0\nchannelSlug: OTBxb7qt1AJkSV8t\ncode: 55' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: cC3TUixNnMubxJM3' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: 9AxSRjlsdMiiyrvS\ncode: 1\nuserIds: [tvLzpraRFY2Cvtbz,RX9CJ5JpsLV5x993,gSf9FFTkhyeNJKNB]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: P9thwhi0m9NXYXUt\nfriendId: 6DszCvfuzlKagc4P' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: g5KhGunpiLOamSma\ncode: 7\nfriendIds: [4QgES5PGS9WMQleJ,BfzgGoGYvqBUIPiB,SlrM6aW0pvrHQ9KN]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: fG2BSq1DEVwvtpSg' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: JnfZ9Vdwo4FSuuPV' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: 71Z2BQO7nIZSXwIG\ncode: 93\nfriendIds: [nZaj36DzwShrLDsG,edjmB2WnWEyZHDIw,mR1BoNLwUeKWRK0A]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [zgOJIbzioTHO7OOo,FVG0ms0QaCvfJzDv,3Sf6q3cwNibakyos]\nmatchId: Jo7xraye5wz7LcCJ\nmessage: o2JAIg5CiXiWwWhP\npartyMember: [m5ajfnSiEN3GUyKi,qMXs7S6CRBuh2qxc,Npl5ut94xeLIh6C6]\nreadyDuration: 8\nstatus: Q0hQEA8CjWt386A8' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: ToAu6pw5CoHSdxVG\nfrom: skhN5wuH1qltX2bp\npayload: Ysj7FCSl3MUDyUx7\nsentAt: 73\nto: zvQ0Zb2ZsbNbDFfI\ntopic: J0ZI7TGFNbkoIjex' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: 9W4tOsK2uj5gqbfM' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: N2tyZU2AWfmR7u5Y\ncode: 28' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: TUjfQm5S35whtUbS\ncode: 99\nonlineFriendIds: [z3Q6JgRCongnRU7W,U3v4d4ea582rdSaO,uagOjN3CJE8M3bJw]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: tZPOQXNHaYKkDUU5\nfrom: McSXHORm0Beh0qCO\npayload: XHxxfDnVmazUkfkj\nreceivedAt: 12\nto: oQ0VfsGT8sl39VuJ' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: h18PCz56aoR0Y0sO\nfrom: k5OxzGgLJRqx1BxL\npayload: D2rQApZ0F4At0LEW\nreceivedAt: 84\nto: win8ommXGblqAnOj' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: C0YeBUeSa7Vr8BdX\ncode: 55' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: 9Rye4wb1mYbxufUk' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: 6tzbK1NN6JTMFp4e\ncode: 55\ninvitationToken: Ktom3rcUL7lJhvzb\ninvitees: qL6qmqr9n5f71ICe\nleaderId: Aeowo3AqZFleVPje\nmembers: XUhdgpVMSzbtetkG\npartyId: QMR4vxgB6NnA5jJL' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"d4oP1Od6Di8boNKN":{},"zuDy9c4rheCmHVTG":{},"1S1eC2QPrAK4HkvT":{}}\ninvitees: [nw7Ur152TUcvPDc2,k1gidj65yzGxCp3O,RqeZk6Id3e0qSGO2]\nleader: rq4BLSsuOILsSdzp\nmembers: [t74uyGYCerwgDU5E,RMaVub91NhbY205T,XjcmUO37x2b5ZFnO]\nnamespace: GF6NPG6JT03HXvU9\npartyId: yOqYjC18ZUcez8sh\nupdatedAt: 58' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: EC9l4Fzgi3cLwRcI\ninvitationToken: 1wOG3cQo5IsdIXFc\npartyId: oasydFlRFYZY6osf' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: nFeUIdjR2OKISloF' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: 16e8W120KhqxiAVG\ncode: 24\ncustomAttributes: {"Z7lJ82DKHGZmdt4R":{},"G5DpGF3uHSThokUd":{},"wDMmRHZinTVGXEpd":{}}\ninvitationToken: oU4H5DUbT0NRuOSH\ninvitees: bjNEpnhmKg73vVkD\nleaderId: hLzjkEvy7K9rKxpp\nmembers: KJh4IrAA5mxlNUq3\npartyId: evsCgeXx5TYmbF1u' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: 5VsCcy6U0ze2kCYk\ninviterId: FfLvHCTBGiyOTwRn' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: UmqvpvOM1XpQnKLq\nfriendId: 50OZSX3L64zjBqy7' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: wtlwyf8ynaqZ1q7p\ncode: 6' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: 4HwLketWWQ9RgdMZ' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: JNU30pGRymKnmgWm\ninvitationToken: pFEeZv01kr2e0uBE\npartyId: FBOUvIK7CcLhCO1o' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: vvmLUvCcW6Z1KJu1\ncode: 88\ninvitationToken: dnWvpDYs85gqzD5x\ninvitees: mKuSVbjXzVvX1aZ3\nleaderId: Hh3w1tIyDZWnLsSb\nmembers: v9viNWPOPedn7j8P\npartyId: OK9aEX1YBxn9xrfM' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: QmWtnyJvb0D2TzHH\npartyId: UWRDvr1x2zv7ehFf\nuserId: d5FiTzWnmYzZcdiD' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: 0mK8Nsw8fMKCbuJp\nmemberId: ZmGbZeWEoDRp7oys' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: CFIzTdJrOKZi4ASa\ncode: 79' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: nUelh2KPRwAQkcxe\nuserId: HTumz49khiyi4WPZ' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: g5u7UPWZ2VnQVrup\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: yZyksd27gARlWo7J\ncode: 65' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: liQohgT3c2ZHgj6e\nnewLeaderUserId: 5GRv4Oeos7JFHEEh' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: iAx4TrOAZ9xS5wfd\ncode: 32\ninvitationToken: Y73iTKTL5NNCm0JI\ninvitees: 1189mTqwmqo6x1nv\nleaderId: 7A8JiGrSkfmtuFXy\nmembers: jclVvEGMNdpyFzFK\npartyId: wsY0gBj2PkSFaezq' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: ZSYgkNCU0gmsM8TO\npartyId: LuebYmUdx0UE9WUp\nuserId: tclIwrMAQEN35LDx' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: CuGc4rnPbAqRDquX\ninvitationToken: 3qZNjFz7mvKmeeQp\npartyId: jZkvQOsgkOVuBcZs' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: xks4ZbQOBadnHY4a\ncode: 14\npartyId: jloDAB9UPFuCej1Y' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: NRctXt82CRF7T3y6\nfriendId: VuwRQ9IqqQ7TUvws' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: oyLCE9wJfcGBpNeC\nchat: eT6Rc2KVG5BgtiIm\ncode: 36\nfriendId: 00t5AiZx3vxsMG73' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: KfOhpxBkHEyYBAWr\nfrom: T0HNm4BqAa0BtV2h\npayload: e33pSsOMHSUxofrG\nreceivedAt: 56\nto: rQHy6YkKqs6M8Sq2' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: vt14uwhDBWY74fbb\nfrom: ZhbNSOdhWHB1dKWO\npayload: utirKm8oOTydtHwD\nreceivedAt: 49\nto: 27PgACXg1mOb6E2G' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: ik2DnpwNsqFMFHph\ncode: 63' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: 6xsjem3GdPdst5cL' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: ZWKYZI7dRmQRSqmS\nfriendId: EYPQrc1iGESPuJqQ' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: DOE7ZEChgdcx9J72\ncode: 77' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 96' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: 2bGHUqtELA0dkoi9' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: aLq5VDy6i36hfOsg\nfriendId: UXtt2CuL3YWaHZSC' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: 986UAKLeKmyVC6dq\ncode: 35' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: WgSBevkm7f1hiR7c\nchannelSlug: BOx2UgFEZlRtWs7y\npayload: PNQBMFYV2uUfVcXy' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: L3rUGVOpX5K820mF\ncode: 63' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: 9au1zTH7bfcODqyH\nuserId: v5aT8pRGqL1vVW5l' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: 3wYzDmvYj4TbBY21\nmatchId: RlCCEMGvD5mdpNxk' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: Yjo5Mhq9clIiTd20\ncode: 88' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: rXnGzi1nHI2CvqoA\nkey: eGl8l9IWuKldrirp\nnamespace: FUI2xq4H2tEEfxaq\nvalue: zO8J6kBK5C5Vtq8a' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: t4N0PdhV210cB5nq\ncode: 72' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: 3be8t3JbUgrdEgwX\nactivity: cvZYFMyhDvnY9fhG\navailability: 99' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: sZY1R6I3Dpxhkyqq\ncode: 52' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: gH4ODmx0H0CXzOe7' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: 9eX5onai5aC8SfZN\nmessage: VqJOV0ya7rpyldp9' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: UvYShSpl4q39ASAL\nextraAttributes: CsyiGpY3z8tkwITQ\ngameMode: PCJGMCkG5SM6sZUc\npartyAttributes: {"HCwT8bqQHqBaA0e6":{},"WX3sr3e5hGj5evnk":{},"W4WM8A4ex732aD8v":{}}\npriority: 5\ntempParty: v7z8IEiyCEthTMQI' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: qm2yfJeawa1OfI5b\ncode: 46' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: w4NjIHPZDQspLT3z\nuserId: dJb4iQyDi7keFb5y' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: yit0b42UWs2UyPYR\nnamespace: 12Hejv26xjRXHuwN\nunblockedUserId: uQvA9Pjy6iqgyWCq' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: X10I4i2tyVq6jwAd\ncode: 53\nnamespace: kI6anJvovEBmzoKA\nunblockedUserId: K5I0UVIZz36OfWA9' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: wUjv3RzPft76so6Q' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: u7Qdovz8PFN0Q8nG\nfriendId: 5XLoyugofLVkLrTv' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: L90336XI5A93kRqo\ncode: 42' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: UHYoZgrzTVcCTaCD' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: msVxqk2lwB9BgpY1\ncode: 12\nplayerCount: 64' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: uZLqaMFSMUqiysp8\navailability: 12\nlastSeenAt: gYihUEnKt2a2XyRO\nuserId: wVl3r5RU3jJe9w5e' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE