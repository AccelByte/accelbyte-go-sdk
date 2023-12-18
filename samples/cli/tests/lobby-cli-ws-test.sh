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
    'type: acceptFriendsNotif\nfriendId: ep138MG3HNO53MgR' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: EXDviNmJnRfooIub\nfriendId: z40W1ePwNo99zbg4' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: h95npizI8MROcA9v\ncode: 14' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: h4CIQdRHxTNxDU5c\nuserId: VFtZAriMS3ieKw9V' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: hYjVwCLQ5WhOMr3i\nblockUserId: GzaOLiJFR3y2wHu1\nnamespace: kEbimyNrGJ2l2Ei4' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: 9b3PcJHyomp89mn3\nblockUserId: wJ0uptukrRfEyMy9\ncode: 47\nnamespace: GnlgZd6KyvVXFJU6' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: kueuL9FEfcUhye9N' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: hLM05FMNkJFGKRLO\nfriendId: HmCC1FZ1LzwDm5y6' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: Qp8dVPL39NgXZe5h\ncode: 69' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: rGdFtY2RUqaK3K1o\ngameMode: RbFPIj3JrZ54zZd7\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: fPPK5kLS2s063IAD\ncode: 52' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: AbIkvVud0I1JWMCe\nfrom: fkhuWvSJwxZxumAf\npayload: HvzdQb7ql49z1KD5\nsentAt: vzIFR474Kq38njjM' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: PXO6dn2KV0rJNJUd\nuserId: v3LO3lWxRHUy5JVd' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: nB4em8A1wVc5EasU' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: qXr67DN8wlLJCVJt\nnamespace: 3Poexz7XNN0IBWKC' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [LLjct7yL9GbFuEio,FTYEsvVYG3oVdkVK,U11zg0oeqU6uDHHz]\ncustomAttribute: J9fnjHI6T8QVmGUz\ndeployment: ckuHmp7C9iwSkolL\ngameVersion: ntDIRC9PenfdnHwM\nimageVersion: 6Yfl3t1Bru8ubI6T\nip: RwlJcUI6BX3vpDzK\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: 4UIpoaETzRzNlfqp\nmatchId: Y5XU5a577o6diQ1N\nmessage: VKMy94yTrvAAeAci\nnamespace: Gtjwddse2FNjpLeM\npodName: G1gUmNKsJR8XTYZv\nport: 18\nports: {"sEnhpVX4up8GIlGb":15,"EBBrHOplKr9jaEfA":53,"FI2h3Q1yCECZt3vz":84}\nprotocol: MUrS2LrzpUYyj4dT\nprovider: qidb59Wx76mP1w1s\nregion: UZQeOy4mAz2pZ0TP\nsessionId: RcJd8C0JMx0xBg80\nstatus: 5Gdsw72KRe5WzWOa' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: LZGGFrAv5eLRAMqt' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: WBxEUmifRtynaJ8r\nuserId: feQaFdfrVSbzSk2b' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: 4YJBiKBf4Dw9UnOB' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: L8uOS2QnTWWpJYWG\nactivity: [xyYvcizlhwdBU37P,O3hlX5UuhfdPAjPq,Vcqw4YL8eBx5d9e7]\navailability: [34,96,58]\ncode: 17\nfriendIds: [CTkgEoERBMqLvQqL,bS8WCJJdAkpy2DY9,wW64qXA9zCQ5HgeK]\nlastSeenAt: [bn98QO87PxjSNLiw,BwMPq5bsLYPZZ4qJ,82GwVmBexZbtkNtz]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: QfomV7EzH6WxLQMQ' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: PvUmuHX15TcFIWdI\nattributes: {"5PLzAmECpargpdbL":"mI5XtIomHu44mtgf","Qk9xN7TKKbYCfrCg":"u7LZjNLBLPXsYXfH","2XuRXW2uQj5tCAan":"4die5DhbHdVHM9G9"}\ncode: 87' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: NDKudxiQ8Wzdl0xJ\nfriendId: zXKIIjQV9nKaMWJQ' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: LUbHIzB9hL8DWfL2\ncode: 2\nfriendshipStatus: W7wEAXSJ7pmJi6Cf' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: oJFVYPSletkwE5ZT\nkey: 2bV3jzRAF054ulkA' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: Rmcbp5hTa3dWRjVS\ncode: 22\nvalue: 5FmoqQeCfJh0RwXa' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: n0Gif5pc6nzVJL1A' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: BXUNbUVKFF5Rza36\nchannelSlug: uygFfRLc4G0HSKJv\ncode: 23' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: q9iEMmw9ohicHQNB' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: 3L7PjeTnuxmvmZD7\ncode: 34\nuserIds: [QyiGz1EVAfgENPgG,TAkPdTsNGHQ0rjwd,XiAuG3X2hpeCuf1n]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: kVTNnXl5jFuKdOCH\nfriendId: plfVG2ZNhoq1fybP' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: XEM3wu1MMWlYil1A\ncode: 48\nfriendIds: [SvEmHXgQPptiA8xo,3V7WJq2WKHBdVWm2,9LptAnKLr1Gou05W]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: wcKSodBGL32wmreH' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: T7HkFbOw76Hfrn6m' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: C1KQZOp3MOmtwcwi\ncode: 74\nfriendIds: [92YSXBhnml6pZbX1,hPiYhqyD2NcIOlxz,yOypWnFm1pjIxGKC]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [1DkEBGFANpK1x7gg,eESo03kAYUo8wb8X,tKO7hOih9ICEAWFC]\nmatchId: mQY6nNHjugceEpDu\nmessage: K6TpAqC4Jsh1jC9A\npartyMember: [wViqGQPrQRRxKzXn,KiXsRYRxbb6pkB1i,lSJ9jBhTROcftWVU]\nreadyDuration: 1\nstatus: dUooLVrSgV5LBpBZ' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: 0h5QgszCggdk7Vie\nfrom: vpEJFp1zYSqNUSCA\npayload: XZMP3I2PsaSeopTM\nsentAt: 50\nto: hYIR5bM9A9PJs5X3\ntopic: 66OIOL9xEiEJgwNd' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: aoi228GiHySsczZp' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: t1tiPF9Ak40nd8MZ\ncode: 34' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: X95KaPGgxeDHmk0O\ncode: 53\nonlineFriendIds: [DANPwGPUAWwtA4nQ,isNpWYeBW5LU43eZ,3OpDNmgEoRMj7bxE]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: XxWdVPQU1UItXGxM\nfrom: 10lMFGztCbD9a74K\npayload: 6cooq5ozmoIQtHBe\nreceivedAt: 83\nto: 8Ix3baf79Ob904MF' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: iaEqHbBrkgAVsWnz\nfrom: kf8z7SHQtqkMVz08\npayload: jJn2MNzJWcaqMpcE\nreceivedAt: 11\nto: dCxg6fvu0qiF2oH2' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: RdEOahspj84n0Si6\ncode: 100' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: 2458dKlK8fKkJUDQ' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: pQ211PfPDpJiXBP6\ncode: 78\ninvitationToken: HJ03DYdDEPgnXinb\ninvitees: zCdLjFnMqRwQn5xI\nleaderId: YgGjBWnjncDEiXRT\nmembers: 3Fpwi5FJOs1opuku\npartyId: fuEbXnKklia5aDlX' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"1p3onW7exoB9VT1X":{},"1zi265Ck3hrhcTME":{},"0ySDCVA6cVBZBPrU":{}}\ninvitees: [u1H9aAsy8Bt4jG0R,Ge2FNOR0xffRhQa9,PWVezWJPi1xRIzRq]\nleader: rVH4wwvv9ZYCmrj8\nmembers: [ytdrs4zxITO9cjjD,y8Q99ulDWuCFARvL,7Cni4a9ww8B6BaAu]\nnamespace: oCqPO25sVAuT2AwF\npartyId: VaaBUIWCaLIPLXRa\nupdatedAt: 43' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: vRpVRurLZ1S12QZd\ninvitationToken: oulnCku6eexRhd47\npartyId: y6o6ykjzhRYKnVsN' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: sX9BBXVZn4pSYhVc' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: 6YGoN4cZPGbsX7v3\ncode: 58\ncustomAttributes: {"lvbLfWWE1sqPYyyN":{},"vu5vcR3c09pzWKa9":{},"BcQnHZGRAf6Pk8dg":{}}\ninvitationToken: g1pJqeZRBhnU8Ut6\ninvitees: ySAbAXMbwFUzMrPu\nleaderId: nWbwExmZCQwE2Pm9\nmembers: Lsr8X523Z7mWTe73\npartyId: QVGUnI363Sh8bJmz' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: sof7HNNSmK6yqwb8\ninviterId: 1eipTTFYyBsm5spD' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: H4Wu6Zw53XICu5YI\nfriendId: 59D7AMopT6xhI2fi' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: OceIgjbjrhIcRj5o\ncode: 24' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: NBDlDkZpO6l8hYHp' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: 8YsFITcqx4QGbNlV\ninvitationToken: OisKQLPkL470SppB\npartyId: 2wk3iTlxxXymIFPN' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: yHSh2upFDwnEKQwY\ncode: 79\ninvitationToken: Ibppxh3JJn1ZBNna\ninvitees: OYzHPfRjwNAYUVn1\nleaderId: EFxj9BKDtkiegvPu\nmembers: mhdlPnKWOAQ89xN0\npartyId: VFxVYKjDfjEw8sUj' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: p5RNbbauRSbE5xid\npartyId: Wpuoq2OU1Lf9wVO5\nuserId: OsiUnEvOu0K7aZzt' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: 4RDNgSpwfZLD5fAW\nmemberId: p7TIphzHzB3Lrokz' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: yJNWe5UIMaE8DC10\ncode: 18' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: tozUTOt6vaDafUe3\nuserId: 3bIM0LV6Lj5lFOTF' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: 0vBFvM8lRiAS3Rd4\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: jE5IwKSpUv8tjAoQ\ncode: 72' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: dVsWUPcPrCfKNHyG\nnewLeaderUserId: ghmtnbDYnLPI9ze0' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: sBX4zBYFNRh7IMlh\ncode: 70\ninvitationToken: qPLPCikz74m7NuZ4\ninvitees: 6d8bfM7Bb5YpkwWF\nleaderId: MTyWXZphDyjT32NJ\nmembers: Fu9qLsBItN7uziyC\npartyId: 7yTb8l4wZbZWi1CD' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: JbZwpbaVEnNcwUG1\npartyId: mIACacLEjI3lMsxb\nuserId: tQvhjHVFYr5NriYz' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: 6gup4qsrWStEaH0T\ninvitationToken: Fks2u8Y3bGrbSjiN\npartyId: FD40lk8XgwdHhMGU' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: p4gd4OYb4umdMJEL\ncode: 4\npartyId: z8qKJMp4yCr8Kooy' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: A3vSljjiyeS45KG7\nfriendId: vAtycQh7QRifuPfq' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: c2nekP4IAC3LZBSH\nchat: nvyO7QcRtjJojkBr\ncode: 18\nfriendId: Lnytx0sfwCM65k6f' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: uCeFNEz34W0EVcO5\nfrom: eE0moRbDg3bdBRwt\npayload: ezz3XtpxtfBy0dqa\nreceivedAt: 7\nto: QywXXp8lD9WqHnbQ' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: 61kGvPqS30ez7LMM\nfrom: hwWylCxfSA6DkD0f\npayload: YxpyKPMbQNjGIPwx\nreceivedAt: 16\nto: 2qsC8mxubBPT2ARC' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: ZI5ui1Qr0h6S2oP0\ncode: 98' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: C6mEzGvGmjAvsUEg' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: D7KKa1fMD2xYd9Qc\nfriendId: uYeQ84sIxoG4VTTV' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: VzwyWDueiAq3OiYI\ncode: 98' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 74' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: IcgKTN2Bj1rFe8p2' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: tac3csPsSGV6pGRs\nfriendId: ffGHOBqKDnaZJzMe' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: ttnT5SihsdQ6JSLx\ncode: 5' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: plq4Wrqr3bakIRRv\nchannelSlug: gdJR7NWd5HfsdCKQ\npayload: MCgiIqiw1suRdCDt' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: 6kJq2jPCYhfKKBIR\ncode: 88' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: ugm4SB05VM8AARqy\nuserId: ieIQNpDCaITqLyCx' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: Esu1iMbqiqjUBKjt\nmatchId: 8hPgkjKi2yXwXFak' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: YZuqg5u1k2rLkCJz\ncode: 28' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: n0TUiS53tAVxQIvC\nkey: YTkg3msQlPNqRWaM\nnamespace: pGcjOvFh8R0fBCx4\nvalue: KZ8PlIQhGgzwMiW4' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: tvsGpwJYp6ZSlWOT\ncode: 28' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: 6MYSO9ZYeousAmDn\nactivity: eyuGAQL7kkWdcUuZ\navailability: 25' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: IzmwrKzKQo9F4Brc\ncode: 89' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: IVPl7tbH8kbS1sbc' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: iBlSHI4Epx22GZ7L\nmessage: amqaWTsm4U0XKfqC' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: ThjGLQTE71uY6ejz\nextraAttributes: 11lbGdDOivgvnW2I\ngameMode: nt0uefSkV1xnzGQX\npartyAttributes: {"s4MCfNUMRI041LfJ":{},"dNIjmG8mhxSlhM4s":{},"Lp4QyWq7HYItqtrI":{}}\npriority: 91\ntempParty: 0Hn7j0g56HqW2fnS' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: 0IovjEIJ2e7InCRy\ncode: 88' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: FyOW9SKzCytcfcm3\nuserId: I8WK1B2a8ehVQ9ur' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: DmclvpRQQC5TGunU\nnamespace: 3mMzR78w2YRWHbpJ\nunblockedUserId: 5dJ76NvXxIkxYQ3B' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: meqShuwEvg5lKkCg\ncode: 68\nnamespace: WwP7NcCq4AjbXgKL\nunblockedUserId: tf5kIRXuEdxpZpxm' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: KMXaqq1YbFRK0m0w' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: KVREZl9bp0ImyuTz\nfriendId: Cpk56Txzy8Ev8VVH' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: 2sXwoSmXED2PbJpB\ncode: 20' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: T3bNRTjfpNoqolWo' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: rLYPIP7kVNMcYsB4\ncode: 12\nplayerCount: 64' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: TrJcNt33hTp94eFb\navailability: 30\nlastSeenAt: 5AGCVaq5UojeFloI\nuserId: nV3vQ9CDdyvRKrTy' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE