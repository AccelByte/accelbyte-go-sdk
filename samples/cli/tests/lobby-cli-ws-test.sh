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
    'type: acceptFriendsNotif\nfriendId: 8lkpBXZF0bv10Vh3' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: gJLfb5RUlyN1rTSN\nfriendId: sm6DgS9UtIBmmja9' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: mFdhcVmzWx29LpYd\ncode: 51' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: 06nknpfqx7B4nNNm\nuserId: FsMa5yDkUTBS2ov8' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: EocRUZo0urDbxgfn\nblockUserId: 7UYJslFEXU0yi1xo\nnamespace: 5rCOGkFJDLu3ys0K' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: TIOSl0pFwiBUMIYO\nblockUserId: JR4pEzDjkfWGVl9e\ncode: 29\nnamespace: GPA6gy62Z581cjWq' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: Su2f9aSnLCWGIe24' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: 3URmlaYSDCnrZq3J\nfriendId: CRxcN6Xz0lH5lqyC' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: iopk3zsS48Q2NvXk\ncode: 33' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: RehtD8FRlEr23HxS\ngameMode: 8h4tgUZZgk0zvTg7\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: nDHB0lceCUqRFbKn\ncode: 34' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: DYkwXSc2VOaCqTWB\nfrom: aeqNr0wKYZTgfIcC\npayload: IjgDZIo5vf0Dejsc\nsentAt: UNQQdpC3ovnwBdI4' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: RsYbeDymocK14VJw\nuserId: gVyZW7anVnPh2vx2' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: PuSNd7bzqyuK1dDE' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: tuW6EdMupCbfWQhO\nnamespace: 7XMolLlySoQkRyRU' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [aWMBsZEOJ0cKWT9L,luuVgqiwj43gI5Ef,sksJgvBuE3UBHZJR]\ncustomAttribute: uHVKIe47chYldQ8Z\ndeployment: FqOcS5CFL52osXdq\ngameVersion: pD4HJcDuh083i7KL\nimageVersion: z3OYXE7hqV2PbTUq\nip: Qv1PGvYbM6aNCQLN\nisOK: False\nisOverrideGameVersion: True\nlastUpdate: DujEvzcyce9k3P2T\nmatchId: 0S82ZDScFz1qY6ZR\nmessage: B3F9yGZHcyemByT8\nnamespace: VySdTnXEiB5sBPhn\npodName: aw37juhRUDTt7C62\nport: 23\nports: {"D37PScMZx9fL5drE":3,"Uy3CUY7bedNwWGXk":34,"WfO9YyaHAhginnjC":92}\nprotocol: rvarguMebelEF3Of\nprovider: olr5Jcy6voPdgqy8\nregion: JuHJmUqbIevnpoqo\nsessionId: TguXRLZB9DDYEiCS\nstatus: 78w2dEajFOSHIWwy' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: 58gKd0tkGWWHQqTF' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: 61uA57v9Q29E3trM\nuserId: PNHHKrZOPOti2OrU' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: jfy2KmrbECChcfe6' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: 1ljvrERsqTDocUjc\nactivity: [aI7sThmOe1tYkhJ6,E4XMqnNL4qzEackB,6ZFpY8g7xetbvjB9]\navailability: [61,27,0]\ncode: 89\nfriendIds: [iTnoGUoNieFXwoK3,zMQ1ASaT1My4T3fJ,MQWecAVeHlLcyyO9]\nlastSeenAt: [ouwJWrBqyzLYIzWT,CCu94je1vfie5oUn,Lh3JTtsm6VXahqfz]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: 1idrSUtpB1MPPlGm' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: H9mkY5LQJkGXWZvL\nattributes: {"uN2X5YDtnXI26Z2l":"cSz2bmrtX1idzMeW","eK0o2RhDfgVzLTHQ":"uCv8DvWuyUt5ivQ4","GMEGsON2niNW1ua1":"GRmwcUartNCAkO6o"}\ncode: 61' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: yoofusiroKNDGzzD\nfriendId: otRevVfSKUztDpWw' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: 2XCW5ahgqUG2gApN\ncode: 95\nfriendshipStatus: FVXTLAT0i7fKDfvR' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: yBqeZwCl0advkSYO\nkey: 4FRi2Dp59uXpODN0' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: SJ7Y2cRe7FpjpgZj\ncode: 89\nvalue: nzNSU1XCdnuVHoOP' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: izuyM8xlXVQRrnoe' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: ljSi51MrAgTDMBRx\nchannelSlug: 2gX79FdurL5C3Shr\ncode: 40' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: FsLwLSAuKuwkbiXf' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: oWIlmFU1QHohXJzn\ncode: 75\nuserIds: [jIMHMULsCsLHK1Ek,MRvqqCCqmdVmrQ4j,aY9Yiz0R6onTtOaG]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: eyFsE5R8fK3SnaeB\nfriendId: 1yYJE6ufIhm3LYmK' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: kBdr3Pn4yZl2mKeD\ncode: 93\nfriendIds: [1GWuJuTEJoDilrwI,7vxqnW6Njl7sf6Iw,6kC67ivS8Rq4XLND]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: Y9TFkwjiXRaNYzCE' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: 9CA3k6xVEIpk891G' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: NWPM9gHHwhzA0jUa\ncode: 60\nfriendIds: [W0rHaVNLkGQNmdjH,CAKP0kyV5Y7kfIFN,AT5ihqZ5lvmd9tlu]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [0Ok5LV6uSkaXRZYK,xn8URUHtiJAgoqk6,r16ewX2oHbkSMiZa]\nmatchId: K8ZN7R7QsaRUA5GD\nmessage: UsTRMVU4rEK5QCUK\npartyMember: [z0e6f1LlqattlgO5,aqw0kCMuCvXJIgHE,51DZWy4BEOSlM3wn]\nreadyDuration: 90\nstatus: wmhZaWqJNthkz0mb' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: BuY9bKIiDzg5fUft\nfrom: hBLhnygwolJvu2G9\npayload: 2Iwr3JdFG3VL2FII\nsentAt: 70\nto: 4kjfGc0p1ldl3iCD\ntopic: vgyySVK7ZW9rgpJn' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: Ey8aXEqP6V9dqrrf' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: fOjpwdHEnjVe7dGJ\ncode: 22' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: MbgGboOaVgM4GVeO\ncode: 71\nonlineFriendIds: [lru9jx1uiyoBA0CT,EN9oWRRDrorcVu32,eSplye7lsqPmDGcW]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: KIi69QT59CJ90Tvk\nfrom: iTiJDjK7is1ocbAB\npayload: Lkhg6OtRF4PP0rrp\nreceivedAt: 29\nto: qw6u0JMIlPRcD9Qq' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: WxewxFwV1cTPFt1Q\nfrom: AjswwdthxLZrEtMy\npayload: QTatIMYMDnJkoUWG\nreceivedAt: 91\nto: eWjtAMJ5PH2fg3Sk' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: PLTLx15wUpIWwIdd\ncode: 93' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: HOVIeTVPDqLnB2TN' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: 33UfcWDH8KGzEu4k\ncode: 84\ninvitationToken: t3MXgrw8TibYZoBV\ninvitees: oEqSTQY0x9egURr0\nleaderId: 3kWZD5lHoIHaqxZq\nmembers: XKOQ9vaRVTIDvSse\npartyId: Nurkq4x6Z3m5TCYJ' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"tLbS4ce4l5uugjYJ":{},"9AmgxaN3q5cNryI6":{},"0EsqPiYKxJLD10Tg":{}}\ninvitees: [iGIBLCJsIG4tCOAC,99Th8aTzV7e1xipu,Dq9U0SKGgHi5X9xV]\nleader: Kf9VvUBxX8Q0p7nF\nmembers: [kpDfwsIu3xEQBUSA,L5k5wNBMQ7PZtgt4,lhQP3tpqbjh0ZgHL]\nnamespace: cMtFUaU1FdQQeRJ1\npartyId: EFMMzVzB7WiuruCT\nupdatedAt: 20' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: SFoSSqHxGA71N5je\ninvitationToken: c6MfImZJPKSSExnF\npartyId: svippFW3x9OpKxey' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: CTKRsLxItBjTMiK1' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: m9iAEr6fAYOr12Qp\ncode: 34\ncustomAttributes: {"2AHWtRg1ONH5vQNI":{},"oQUE7ACic5Vm8ukV":{},"tMwKx8MsY3v6s45d":{}}\ninvitationToken: TYyZpBd5OfMcZSJy\ninvitees: ow2vn9cs29Hokxz4\nleaderId: TIU8GIL0pOS2UDte\nmembers: yazhUL4L6bduVxSs\npartyId: zBNKuQUWqdbREyAi' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: bBZVgkBBzYhIs3RC\ninviterId: KG4smWCJEpvbu4p2' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: ADIBCI5cdKb5jFMc\nfriendId: m4F5ogO8LvjQrUTl' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: uM8DRRvA3enFd4Xy\ncode: 57' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: 47AH7g6qr6lCxkIa' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: ScPEl2vP0cXbakq4\ninvitationToken: kMeQ3jKFBzcJiGJl\npartyId: IkyJacSfdeo77Qh7' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: SV8jVmQbcDSVUP7i\ncode: 84\ninvitationToken: KEf0vdQSkpy40qFe\ninvitees: jxDl09oC2R20z6Va\nleaderId: WaHatWQVmGOwSCKL\nmembers: G9lY6yl76r9OJf40\npartyId: odFnjt4IItvkya7B' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: bM3ukdF8MUlrPhL4\npartyId: xTpYUEI3zzjWk1km\nuserId: 3lgLzrrRTGDImr7O' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: s37zvX7NnPbSUSgv\nmemberId: 1x3zg1tLGQjV6bPs' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: 1AwGb7ahX2rnqXZx\ncode: 14' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: RKXEfpDekHKetzsw\nuserId: q0wtVu5OhKBk48J2' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: qYM7hwk5QhJl99ut\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: ktu8r3Sj0j7gK0Tc\ncode: 14' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: iBk8vh8s0rZtfMMm\nnewLeaderUserId: wvfTAIP9oUqRmaoj' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: RLlF2praOJLzYMSt\ncode: 86\ninvitationToken: OyZRgto5rCcAyNAP\ninvitees: m7vawVUFQPktoUEb\nleaderId: 39Q0A4ug0ubGWdU8\nmembers: gX8CqansRKXuVJR6\npartyId: 1O9QRlPOiuFDFip7' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: v9ooFdInxoPJu5ZF\npartyId: PsK4rLxRZKWATZ9c\nuserId: t7ahSAgLaUU21rmB' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: FeqcWxWel0Kt2C2N\ninvitationToken: Y8cQ5q3RLWwivvuL\npartyId: wQIobPtc33upOIO7' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: r6F2FTnQdhm4WMil\ncode: 33\npartyId: VLiF1lF0oPQZfSS6' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: eIfQjLvRXrnsrNYX\nfriendId: 5lemZOvxHVAI1dEU' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: VzoPX9TTnwIjnuLa\nchat: 7bKZubB63uDK5yQs\ncode: 69\nfriendId: w43I6ygTQOlVD1Yw' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: pl93yiD4UQBAFflH\nfrom: JW4DcMnQOFJ6o4Ax\npayload: Mt6D0YE6XNOTzRAj\nreceivedAt: 68\nto: DCm1Sk54fZcdbIVY' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: 3Wjnx2YsqEeCCaXK\nfrom: VpMYuDQsODNPNgxj\npayload: vtN1WaYGMg9AgwiK\nreceivedAt: 8\nto: Q8HOTs4f8UrHIxDK' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: oF8IarJ7JI3LrRxD\ncode: 86' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: Wpg32VfsL8W2dzRd' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: Y2F5Vkiwqn8Gj6hY\nfriendId: zW35BQMRCkksWRVZ' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: f9VDWWa4hUcMVkqM\ncode: 2' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 97' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: JjQUVH0h5pfq0fjw' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: 30QJz3XYh8BUhxnl\nfriendId: VPvk4bjXhEYaQp8C' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: fDCyPG8H882OYi94\ncode: 18' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: 303dyeWKH4N3PSIP\nchannelSlug: wYyryK8Uqff3uUcB\npayload: Fk6fYZ9Aor3yzS0b' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: f6UhbU5UPt5pjJXG\ncode: 70' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: 8FgtGkrqcOZHySPH\nuserId: MROMyvbjHLYwzAnA' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: d5Z32MQqb4PjrVVp\nmatchId: wBQ258p7hHsgIUVO' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: kw7kxn2vDFzSjDqB\ncode: 0' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: QK6HoZNnn4GXZaYe\nkey: eeUvhqYSsYGW5Ks9\nnamespace: ZRJeBnovs887SknI\nvalue: Albpb3GoJ41XrAoQ' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: MWak0rgbf3JjaztU\ncode: 16' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: GHboD7RQv9MAM70L\nactivity: 5IGkZ8cnODbektXh\navailability: 11' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: pCMPSkE75ZXYTcs3\ncode: 16' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: oMi4u8jjP1h60hag' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: uCQs60i4rOobcLSy\nmessage: rzRQKGjMPgnTFBJL' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: v1tzBbEktZSPXHza\nextraAttributes: BzM12sing7NfzeA6\ngameMode: wMlSxWbFXIGa8A3u\npartyAttributes: {"N2oSm4VL8cVsZY0E":{},"3E02j5BwVjxHfBfU":{},"8IsyGJo3yxqbZNmu":{}}\npriority: 69\ntempParty: mxMctHJsnAUtrPrZ' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: TQ0bBMFuCBQvVH4x\ncode: 3' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: shSP59cf8hcuUPQc\nuserId: MeWLVtgSRVwoHHdd' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: vsqqmbf9UhX0UGyg\nnamespace: JDRmwYs7ymCWf0Xl\nunblockedUserId: jXCYKVpPsSsRkSyo' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: 8G7gzh2KQdCtx660\ncode: 38\nnamespace: KFoWxlqO4Wf2qivx\nunblockedUserId: sdt3tTMlxEexc9Z5' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: oivWXsfCLUcop8bB' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: SH7KGDCZLDVwSf53\nfriendId: anx6NmGDF0IYLLRS' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: M1g5XEpcgGD0Q9kP\ncode: 96' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: I8TfsVgEOULCGCm3' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: vYp4D8gOhfwPdRLN\ncode: 91\nplayerCount: 98' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: FxqQ4nUSKbT5Kh6x\navailability: 14\nlastSeenAt: 2t0F1cRjpfWQVFSc\nuserId: y4CDKvnZ5ixi6stR' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE