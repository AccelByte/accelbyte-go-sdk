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
    'type: acceptFriendsNotif\nfriendId: uYWhljxXpES0PzkV' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: INjUv1texY8DP6ow\nfriendId: 8Jj1mZ7dr3dzhkXW' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: CZyk9fPztMagouTq\ncode: 43' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: 0V5vH28ax3S9UvqC\nuserId: KAG0PnfUPwonTrBB' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: eHVUBJoLic8Zgtdc\nblockUserId: RDDWIAJ0p1DTU7zp\nnamespace: YhosNr4ocaR1rYB7' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: B5RucYYt2OGgL68S\nblockUserId: Q5EAJrp7YdlBGZOM\ncode: 96\nnamespace: FZCko3nep7w6FWTZ' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: PqHBfBytHKHOvb2j' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: ds4uqKFmu0FPyUyf\nfriendId: vEMvw8f3pk62t6s4' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: eMsLlm7XxQilL8PF\ncode: 7' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: YW34q8ZUAAkoxsrd\ngameMode: pnHwf2EpAMB52bu1\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: QVWodCc2HxRZWDAP\ncode: 69' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: YW757WRoTrE6CvYS\nfrom: ZSNaSlu1BIpd9SEK\npayload: R74d8Cr4x9qv2UkD\nsentAt: MzrnNGKC1XNa0L7e' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: tVpMwwwWkAW1a4LN\nuserId: QYHrXcu0fdDvMvhs' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: LPpgnd53iQSqkHGg' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: 5hgeyNRMBtJC0WHs\nnamespace: tvMewfzhkijODasE' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [YYwJnux7KWMjyREm,gwQ9QDun4JHlcbVz,OXrI0yH1b46rbR1w]\ncustomAttribute: ZiH0FtqCY8xFluQq\ndeployment: kyP6WWHwucthI1we\ngameVersion: vHk9mPvhXsu5Q7a0\nimageVersion: 3FCmEXiAy1voW32e\nip: XqdA2sxaRKuKqwms\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: Rp6qFUjdwrVlGlWM\nmatchId: 0feYtI2l70A2PkuC\nmessage: XujzIzAX7l0MGLEw\nnamespace: Bz4fzNTBUH9scJT7\npodName: 34E3CHpwPdqlPOeK\nport: 70\nports: {"nQd3SnHvonXf19z0":12,"hNDyWKhV4jxF4yAa":23,"7ssblj3JwgWfjQeP":83}\nprotocol: VbaJIPMcuackYjqf\nprovider: DzUqQw1qLMOmqXxt\nregion: 0VrOSYofqEt0gSb5\nsessionId: By9TFO5y5OVQ044e\nstatus: gOGPdB47yZMX8LKZ' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: styXA4CbczGrx9tJ' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: SsRbJf0tqxxQWYPQ\nuserId: b6KjIUejegm60nii' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: l9wgYUok1Kj7Ttio' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: 7hgLJHuH9jF3fCxM\nactivity: [ptVvL6xQ49xgm4cv,5xFmvanWCvGL4mq0,PUk19tLFvuvAtdQ3]\navailability: [81,53,7]\ncode: 75\nfriendIds: [qS8QHlH2ugH7MH8E,sg6TcKMHdoKyijhD,vZSh5dXsx9gTfSQ4]\nlastSeenAt: [WOBWubsRJhta8akX,DXVVdqTZ6AzKb1UW,lO9vfJjUGEp6H36S]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: 8I97uUVibsIxtj5q' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: 78BAsCz7cfzWZ9Iz\nattributes: {"6RkI1TItpGnJ9ZhU":"C2jgFi60c9QLc70J","mSwrSKRdvEvf9D07":"MBOf2oGHlfIIIrmH","Yh1DmHbOd3jiwo3C":"MklsQoF7rbq3ZnX6"}\ncode: 60' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: nAQ7FrUjTV6rK29V\nfriendId: 0UlCwxZefwAyQvtP' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: 5Msrplce4De3fHuQ\ncode: 63\nfriendshipStatus: tpkyVpUjJa79H0pR' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: jyL15u8VfRBeRI7i\nkey: dDy2ZK1lq84gxMZJ' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: 4wAdUOybIOOkT2aY\ncode: 77\nvalue: TNIa3mOak5rwWv5z' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: DP1kcKO2reV59qTO' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: 5WK83UsJ4hzhj0aU\nchannelSlug: wWc65BFSQ5QoC6TY\ncode: 10' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: vkfTeqFJCQvscnvJ' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: CJH2fWYavi25rMEB\ncode: 94\nuserIds: [is3lA3pAkbGp7EnU,rpokoEZcgymvRer2,s4gYIiNCxnZiebS5]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: aSzOlAnkJhpLFE0Y\nfriendId: 1Rn3XPdqxS7VrlM1' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: UKPldPbLiGTjZU8m\ncode: 61\nfriendIds: [NeK5tN7k9oWG38tD,qS21PPONJFTo2iUX,fcRcFsTRw0ztmgda]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: 0MYQG18YNAuR8kPh' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: FnB7w0RzbOKYzDAy' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: FHMc43NRmpPNZyiX\ncode: 23\nfriendIds: [9wjYxGudTpZMMFIr,PZEZ1ib2DcC9JH0U,SAJmAez9HU08T9vo]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [TD8Us8425duOs6zg,UrXwv9OOZHma0Rj1,c5mdBgCoi8atvByZ]\nmatchId: GXaiRan58JRSHjiP\nmessage: ooyQdQM05OQ6dVVc\npartyMember: [UJWhMdwSFIEa6J0B,PpchKzBvUqCoIt3x,UkWkvmjTglvGxs3g]\nreadyDuration: 48\nstatus: oJXg0IJwsttKxcBc' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: W4v5BfvpDQASH8BM\nfrom: AUf2OpoLCVj1PNGq\npayload: szxo4gw8V8eUODyu\nsentAt: 69\nto: dF7uSwro2lGU7eud\ntopic: YJfbHFbL4gzwdlLV' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: xn3WIFDNmu2pdOKe' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: 3wY6pItw3Vk5W5Ar\ncode: 72' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: OZ50GAaSwk7kh1JA\ncode: 64\nonlineFriendIds: [xeX6sQcer1NfcAPe,lclzJ8UTEUKExRpC,hM32eOEB6X2cdSiD]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: Rb5mFmMe1HpxeI52\nfrom: Xpzms23tQA4POU8K\npayload: JLvPHTRky8AWJreA\nreceivedAt: 6\nto: qzk24ugLfXlfy7Xr' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: Y0833eClb3pxcnqt\nfrom: 4VKBhjmZadpcXNfm\npayload: fDMU0njoJaMwCJO2\nreceivedAt: 17\nto: ucGHh4Jf3kw0PE8R' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: t713ed9EK7Ry8Fld\ncode: 91' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: pG5ipkZzQ3o3XrLw' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: e7LAkPthPMUo34PR\ncode: 6\ninvitationToken: 4puUlL8zq6GgkOH0\ninvitees: gMuNifJA1EKn1HjH\nleaderId: kGNcGUxvBxrAq2EW\nmembers: YcJbEMzewdj3vU0l\npartyId: oMK0JJGycHEc6nCP' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"StTIdlqkOB65YESi":{},"Nf6tenQe70ugp9pP":{},"P38HnjBIJ2jPy1yd":{}}\ninvitees: [scKZX5bZOw9CHCZi,qblg7y5L9A9CWJr0,HXixJbytXYGsv7gi]\nleader: cu5naro2r4HjuWot\nmembers: [RlPMKEnxoQHoSNVB,twJboClbyEnPwBWD,u5kCYvDoW9DtBReh]\nnamespace: sJmyF8THG04zLvRn\npartyId: Mc00UNbgLeV0sAFT\nupdatedAt: 82' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: fHTrK9YZsX9zfclI\ninvitationToken: 1e3L2Kmx6NKaZ3nz\npartyId: yJ9ycsuQDB6WskVE' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: nlmNlj9RGf8yBtzJ' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: dOqjVD15caA25C3u\ncode: 95\ncustomAttributes: {"wLJMvvfmBFVzq9wR":{},"z1Pnv78IDXumL8LN":{},"X7sXeYz3MILhW7kc":{}}\ninvitationToken: Qb2eXcEdN2a6QBud\ninvitees: FzWdM5mmyfh20m5R\nleaderId: PonOifg01i7Xtpww\nmembers: jJTxrn3RVkHjfcv8\npartyId: mls5KcU2Dj4jMisH' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: hjiG86s74HUnjWHl\ninviterId: Y5pcUx8mw6yXzqWK' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: bi4iy8RatCy7TXjJ\nfriendId: ULbzLwwcOEu6sYty' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: EtwmA9kRdJosi9Wr\ncode: 75' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: 3S0BskNPFYclXIfI' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: b6yXAQPnjNKLznml\ninvitationToken: mpb9QyWly3vVsdpB\npartyId: GQAY5lIVPa16aloq' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: KUwXnIPcAZ92E4x9\ncode: 100\ninvitationToken: nsBuoLgaQXPxogSn\ninvitees: 893fVx2nfEFv0e3R\nleaderId: eITjhhsBw2jfMhVy\nmembers: RMkwknv9kKXYwFYZ\npartyId: y8Zvct9VIP8YkHoI' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: 6gpFdw6H3A2kAgOZ\npartyId: YfJukmpTV5s0znDx\nuserId: TlQp5Q4qjBMg0Otn' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: nk2vYvZ1IFwzO64V\nmemberId: Kc1ftrwtYMJISKzY' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: XiRf5UgPzA1VMICB\ncode: 10' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: hGN2ba3lXBgg5t6r\nuserId: fCkDqqdhjIyPo1mb' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: AUGt76mG09sj9nQc\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: YLoQ1jX0LgJFGUwa\ncode: 60' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: OSSyVlrWJo9zJNUu\nnewLeaderUserId: O7BOqGMBEo8QJsNk' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: XpVmkFdIHcz0SJLv\ncode: 2\ninvitationToken: 41qMVgAfeNTRZKjv\ninvitees: dNjswxTGfoNsMghk\nleaderId: Pl38xB3JmYZkRDPd\nmembers: 9BecWNhJJvKsmGXl\npartyId: 675yQj7lxJ92azzo' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: aArwQJWvTa2Snpu8\npartyId: d19JaWjgHSy2gJGT\nuserId: Ma8x8sU4F0Ig6Vil' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: SqC5EBwBFPbRWI0r\ninvitationToken: D6pOGr4ViMpi4mZS\npartyId: VtfWodOUzORY571L' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: 860tagq9jv95tnsJ\ncode: 7\npartyId: CLbg0zOvzmQGod4I' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: JEc6vMT3qk9Pid89\nfriendId: 3xA9d2hOY9iRvj85' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: RmV80aYsZgEH34D3\nchat: FAQ1zkH7YT4V8QRI\ncode: 93\nfriendId: oG52O66yxx8kUidI' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: tUBkcWf7yKM0QfzT\nfrom: 2uqRQYC8Fqu3q2gO\npayload: YtdEBOCTzUGu5rfg\nreceivedAt: 26\nto: 0EhNp4pKXyuXMMxb' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: GCghgFazkWUt4KQK\nfrom: aKSGIGJZKehiasDE\npayload: 8irriYpHF7BowbLV\nreceivedAt: 36\nto: jfpbS6je2hVnM5X3' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: 1AKSiiM8VKMS8RVL\ncode: 56' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: 8bbWe9ArgYABBY7M' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: 0PlGZfgrjjgY8nLu\nfriendId: sFa5suXfi8FZv49q' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: RGxfxG90Bzj39ge9\ncode: 36' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 65' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: qvB58QLVL6hsLEec' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: IWgfBEDIJ2zqsF1s\nfriendId: mMp1FIZ4ROgMfGR9' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: Pd8djL300CjMUkck\ncode: 91' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: jbQaRih9H7Ff8t4s\nchannelSlug: BdsFeFq0VBht8eou\npayload: UjkGrewiq7uRVLFK' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: T7KpsuSl8ck2F4cP\ncode: 12' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: FpW6mdxzi5xpUNEE\nuserId: uuQWq2lJ6aJX4hGX' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: 9IgJzBJdGXHRc2J7\nmatchId: 0wUGkOdjyygTOPS2' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: uDwuSOES6Jfjgk3e\ncode: 48' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: 86Cd5lcgPlXmI1e1\nkey: JWIUMTASKzX2Ju4n\nnamespace: TZSYtG7nIrE2WzBM\nvalue: WIOj3UhGMuxULY9f' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: 3fCdg0f1MUX6Dkpv\ncode: 62' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: jJx39O3IBGdgAYhx\nactivity: ArOQtTWstdw9dVb8\navailability: 35' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: 29fqdiDM5VivfGZt\ncode: 93' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: a9DU0Y2F04rktt4e' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: g1cRaCa4KKCYMMm2\nmessage: unQONT6l20Thky2X' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: Fh0xcWaJbbKdanG6\nextraAttributes: yUAcoyXiQWp7dzCn\ngameMode: Q6I10gVfxEGdwJgp\npartyAttributes: {"zD0LtwYHKs76YYHl":{},"3uVmW2XumLdi7Ir4":{},"JbT5lE7aPjq056DE":{}}\npriority: 59\ntempParty: 5Upf1ehpijfmhiX1' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: lV8duaBj5CnUL0Ku\ncode: 4' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: 3tCAQAjSuU0ul1RR\nuserId: Cf27Jewl9zOIBBBo' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: q6YoVZzgAxxJFa46\nnamespace: QHPdMTg8Zy2Lo0Pk\nunblockedUserId: Ini70obzc9bKyGbm' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: FJlEBpnvwQGnj0KP\ncode: 53\nnamespace: 7bV3CW2V8aquvfls\nunblockedUserId: nZpT1OEQaHFIpSNz' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: uPQXeYfsL1EuOSVe' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: ZBe4vtIUUvc3Y9OL\nfriendId: 4jSMILWwurMcbYaj' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: PqdXo3FzXwrI7Kag\ncode: 100' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: P92Dtrsr9SVnepik' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: EXQUGoahfOuRwaz1\ncode: 5\nplayerCount: 28' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: NxUqdNO8QRVeRZLK\navailability: 55\nlastSeenAt: I39E7bvwGltugGci\nuserId: lldcD0nDxkhJdDee' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE