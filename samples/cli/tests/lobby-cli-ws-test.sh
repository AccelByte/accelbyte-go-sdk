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
    'type: acceptFriendsNotif\nfriendId: swcjzT4J8kNlEnMf' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: 85rTRwXYVxFxLiq3\nfriendId: iGeYQjALQxzmUn2B' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: Eo0TMdhvVUIRybmf\ncode: 93' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: daQEmygV1TN0K5xc\nuserId: vSrOUi5LbkZpdAMt' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: dTItUrD3OFt3i0wy\nblockUserId: ZCQ3CiN9fIi1K6qN\nnamespace: HnR1XvdADyvSR1aB' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: Ba3sU1zg5GbmI3T1\nblockUserId: BKYurZKZw9oZb7Cj\ncode: 89\nnamespace: 6X9cTJQ4FGx6hnDl' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: 2D131TAe6oVjkq6L' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: hPxkCof3D7Fp6UAT\nfriendId: IuG2oNzcO30dw6kF' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: 6wLYxjSYkehvbdz3\ncode: 1' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: dyzSGsOoR8ETxesB\ngameMode: AttRdsBAyKzYMBRA\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: iPvQrUvKIWFkzFKT\ncode: 6' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: sC360IFpxCcAlSz9\nfrom: UYePav28js6Ufgcq\npayload: WFbKLZLRNEO4xv3g\nsentAt: 1996-01-30T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: W23H9jXEdLVrTZf4\nuserId: fvHFQTpvVnFzBiFV' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: DRzO8VVV3BH4OfVm' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: H7ZkCUIxTXREBQah\nnamespace: P7YypNB6oKjRLgHU' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [Pwe9jMtoiBTZxCEt,LvmXCwkckGLTZPYO,BQt5ZV0T8UG8iLXX]\ncustomAttribute: HS8lIX3prkbYmjci\ndeployment: DLwHgBCyinNwlxjx\ngameVersion: TQ7JhfIqjTHNJGEF\nimageVersion: sTfFXA4nvWqiVTCT\nip: 5vUfH5vuhE69BURk\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: lTtEeenZ5ibGJL7i\nmatchId: lSIhzAwluviB6Frj\nmessage: qVjbLjPRi4Z7bGr0\nnamespace: yymbB0Dl4ANxEmek\npodName: SzBWuabPYejxl6Sf\nport: 63\nports: {"mz7PMXFhyHWTzjpS":59,"41N9hPwqpSX5HLF6":15,"CEdFx1Nik4W8u81e":4}\nprotocol: 87kwR2X1Z48UF2bh\nprovider: SO03AtJaVP8G6gRc\nregion: UvXiI3PgBvxrZgUK\nsessionId: hs2jzJe7UxVYX062\nstatus: HHp96mqjBfKjgsiz' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: u1ElF605OBC3I4hO' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: uz1nUBCI1P2W7kHL\nuserId: PIlm6wlKMxJ1GBZz' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: 3xfybRJODiFnJ7bL' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: sxVUmqXVOopoFPq2\nactivity: [wJldVfU012hOXOY7,FtjLFgt7XMARvosy,xpEsioPGk8NYhlsT]\navailability: [Bq1XZFlRXAwNtkRE,Oe8Rkam51iCXkR9O,efB02ESnYGwQwG4l]\ncode: 42\nfriendIds: [k7zPXQgM3hrgF6R6,kAdkO93c8EW0hmC0,8F5TXFhvqQpnPFxy]\nlastSeenAt: [1987-08-16T00:00:00Z,1993-05-09T00:00:00Z,1993-02-27T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: leoXbj8EWNN8CxzF' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: nWYuzCsG4fbCjzi0\nattributes: {"YjmSc9RxGuB1bsZO":"F95AVygbqmqVX764","NRZKP8aIcelmblM7":"YNvOFvsxBOwnS94y","rDy7Ds6M8cwspT00":"pMqbxDzE91MejPzd"}\ncode: 85' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: sUiwV22e6KtpIMU5\nfriendId: S8QIlenFQkNeOLBW' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: 6OwPyFgJiqdnvDMl\ncode: 73\nfriendshipStatus: 3xjD3zOAegDjyU12' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: oysJ10g5vMeqYkQV\nkey: ANQWEKVlt34LWN3m' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: FGVP8N87BgNIJCju\ncode: 78\nvalue: x45ggJKmomYMKeUr' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: dts0CogoOMvsaGdD' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: BdW5nYeeYcd6V5cx\nchannelSlug: 7wNBGThS2jLTqxbn\ncode: 65' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: qytv3qqizBXldQA9' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: ud2NPRngUW8yrWXU\ncode: 83\nuserIds: [bq387DtUKxeYUl6X,2SEDcZmzdicMOp35,JZowfpfW0tF5KsrE]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: bWBjN33krv2u4PTZ\nfriendId: l0i8kMoC11uFqx7O' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: xexk98q0nbQMTymv\ncode: 35\nfriendIds: [wzXh7pN1zWwcEYOd,hvo3nhIhH8HKQ2wf,rVNq3PZcEgbVagmb]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: VVPU3J1Sq1zZzszC' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: dfwAnyjYyqEBd8bh' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: QVH8ytjXuEKZeOtw\ncode: 87\nfriendIds: [Ua36FEFKiJKQiZwL,Jwi1uP3lLIASRwNa,359z0HKUD9xWdLah]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [RqOgedvUyEnOJRMu,XxqjIIe7hfUAfY5n,H1rOZza1bu4LGpaY]\nmatchId: UYTK8AMb1v2C24DS\nmessage: CXwJRzcCNPYsBn1z\npartyMember: [EvhfdLQxHaDDYmi0,IH1xQoFIvoPJQLiE,juw1KYWcZVLcwEZG]\nreadyDuration: 43\nstatus: Tq8gh1oxXHQBVVj8' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: PTM2Rfq7DruN2EHZ\nfrom: XSWL7edCRlJwivtK\npayload: bzTLS2PSfzvcnUnR\nsentAt: 1982-09-16T00:00:00Z\nto: w9e3hBa1Dr9UWNCj\ntopic: Z4NyQKs8CBAI9J4p' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: BZb5o66cjO5n9ETd\nfrom: KikDUEHrGIZqWF6s\npayload: k86QRU0h0WbbMplB\nsentAt: 1989-12-21T00:00:00Z\nto: LNy6x5xu8ndq9gnV\ntopic: zOrcHY3qAlQsyQPZ' \
    > test.out 2>&1
eval_tap $? 40 'MessageSessionNotif' test.out

#- 41 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: kcDkzHlTK3a3KRGd' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationRequest' test.out

#- 42 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: UezVl4OnjlwAGA6o\ncode: 94' \
    > test.out 2>&1
eval_tap $? 42 'OfflineNotificationResponse' test.out

#- 43 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: dD8Qomj0UKtt7lkY\ncode: 38\nonlineFriendIds: [aMXxAPIA2kLM2Z1X,UInCTrMfIvpzagFr,KYAcF6HksWYYPLoO]' \
    > test.out 2>&1
eval_tap $? 43 'OnlineFriends' test.out

#- 44 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: cnx4dEL2FlfzUQci\nfrom: RXV4Nwez6TqPAXOv\npayload: LSqWLqwE9h0SR9Ba\nreceivedAt: 1978-12-24T00:00:00Z\nto: EN24LUJDeTJkUC0C' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatNotif' test.out

#- 45 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: OYsh5f9Qgi4Na0O1\nfrom: 8PwnA2MJvRigfbsc\npayload: 7RlszwOaweNqh5Gc\nreceivedAt: 1993-05-14T00:00:00Z\nto: IlVnVje5yiM6JgQN' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatRequest' test.out

#- 46 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: fGtfHS7Vr3C1wDsS\ncode: 4' \
    > test.out 2>&1
eval_tap $? 46 'PartyChatResponse' test.out

#- 47 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: 0nypn1ozkfZyUi1C' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateRequest' test.out

#- 48 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: F6RU797760OYlbEA\ncode: 64\ninvitationToken: rIyFkzOENOAHkP2w\ninvitees: aaH8je25Dn7Zema4\nleaderId: 9NThT5I9KBrFNUTM\nmembers: wGgK5lG9Da722Whf\npartyId: G5X6f2hVtvRHIvZp' \
    > test.out 2>&1
eval_tap $? 48 'PartyCreateResponse' test.out

#- 49 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"7CANJ7yJBKwBAHiW":{},"Rv0IZpedsTSKioyg":{},"EZWlytxkJyUSHgBC":{}}\ninvitees: [nu3ZIZ2wm9STNxvW,1LwVOlnLWVF04t6b,LwN503Z8uECBi1oY]\nleader: yMhxnP7zjBcdcXuP\nmembers: [R7WD6iomZiXaEvKk,O8YRGgfsHggU7uqB,dksczrTyB3IwyvH4]\nnamespace: JgCe98VzBrRNjYkf\npartyId: 52kh65P2Cr3KvvpL\nupdatedAt: 1976-05-02T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 49 'PartyDataUpdateNotif' test.out

#- 50 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: KGa4uXaWgno3fdiT\ninvitationToken: KhtUTzKdjRzW0NaB\npartyId: 5KfR5GY6WVma2K0T' \
    > test.out 2>&1
eval_tap $? 50 'PartyGetInvitedNotif' test.out

#- 51 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: hF9NlKELJf63rVGo' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoRequest' test.out

#- 52 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: DXYtRheALFiZiwdd\ncode: 49\ncustomAttributes: {"4g54g4UwbUv5oRcm":{},"cGr7tKJz6MgY1WMk":{},"9PNkHK2YGgAjc9TP":{}}\ninvitationToken: LWfP6gBMhR40kPp2\ninvitees: LhA6iA1Hau49BORx\nleaderId: ajU1EzO63FBAUk5d\nmembers: SDweYRIOJlRhqtIA\npartyId: ctxf5iGV63cjOw1h' \
    > test.out 2>&1
eval_tap $? 52 'PartyInfoResponse' test.out

#- 53 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: PBUfqdz9Tk8SmVUd\ninviterId: WkQQjqRrWmZhWXdu' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteNotif' test.out

#- 54 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: 5tL6ZBhvxrh7YqEO\nfriendId: zkQNXRGvI1xbQFvf' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteRequest' test.out

#- 55 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: amv7o1l0dol80YYY\ncode: 45' \
    > test.out 2>&1
eval_tap $? 55 'PartyInviteResponse' test.out

#- 56 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: hsP3okh8EXheNEAj' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinNotif' test.out

#- 57 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: CG1t4wPit9hGSzBt\ninvitationToken: zz6VfPI0eHch5hXc\npartyId: C7Xxw89g7m9ciNID' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinRequest' test.out

#- 58 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: IFafwJ5pmz8OYl5y\ncode: 52\ninvitationToken: uwxa2i3JbxzwgMgl\ninvitees: iQ6xjtQveTSxhUfa\nleaderId: e2oXuXXguOeTxvRn\nmembers: 4weDuV47dj0FijFa\npartyId: iCKLsqWaNHFeGzbP' \
    > test.out 2>&1
eval_tap $? 58 'PartyJoinResponse' test.out

#- 59 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: eCy9TzC9U8z4lGIp\npartyId: ilwk7VYZ5rLQoICt\nuserId: gqudf0vx58cbMNeT' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickNotif' test.out

#- 60 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: IpkNhavpMgmguotO\nmemberId: lmXmihPmzipuvo6B' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickRequest' test.out

#- 61 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: oDHpa3Mg5rep6W5e\ncode: 33' \
    > test.out 2>&1
eval_tap $? 61 'PartyKickResponse' test.out

#- 62 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: q3XGaF84bse9uo5Z\nuserId: dxf8ELEJSf9vnmQQ' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveNotif' test.out

#- 63 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: lfukSUQ1hMvWzN6q\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveRequest' test.out

#- 64 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: zM5bPznNbYiJEAoN\ncode: 77' \
    > test.out 2>&1
eval_tap $? 64 'PartyLeaveResponse' test.out

#- 65 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: jpMJSWlT8IMisd3c\nnewLeaderUserId: q1FrK1uItOR03ELu' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderRequest' test.out

#- 66 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: j3ffaPIqEoL4mdD2\ncode: 40\ninvitationToken: SpG8xe5cdATS9FRu\ninvitees: gB42Z0Hisxfjpsy0\nleaderId: oyZ5tXIwSBlqMITS\nmembers: 3Z0ath3VycoVWZRR\npartyId: 4FgXX2Bj7rfVP40t' \
    > test.out 2>&1
eval_tap $? 66 'PartyPromoteLeaderResponse' test.out

#- 67 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: dv4kcK5YXXM2NypN\npartyId: csDRDxl429y7nP0t\nuserId: 61f8XsGFzKICVs0w' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectNotif' test.out

#- 68 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: WkHAzlyTnbVsNemp\ninvitationToken: NlocBfwEeLilvrbs\npartyId: d7OAlq8XJ9apliJa' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectRequest' test.out

#- 69 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: 2seR2sPxoC1Aca3n\ncode: 78\npartyId: nozejAyYIwoR8wQc' \
    > test.out 2>&1
eval_tap $? 69 'PartyRejectResponse' test.out

#- 70 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: 1kvmTQdagaofkcMi\nfriendId: ZtExqodL3htJ0toc' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryRequest' test.out

#- 71 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: wLeg5tlnGEzoQdig\nchat: 3avpFEyGE1ZrmzTN\ncode: 76\nfriendId: vOGGO5RdaNSnPiOw' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatHistoryResponse' test.out

#- 72 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: wsEdSv8gc4OARl9l\nfrom: uhz3C4idy2leJZql\npayload: sbo6zWjVcvbWdvYZ\nreceivedAt: 1994-08-17T00:00:00Z\nto: W3OWCHFuOuv2necR' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatNotif' test.out

#- 73 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: liIgPoUEH6i0nXjl\nfrom: 6k5LL4htfbENSKSE\npayload: OP3dKKZUVt93iVof\nreceivedAt: 1993-01-16T00:00:00Z\nto: DcApb3bvKB6a1E1Z' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatRequest' test.out

#- 74 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: b9MNAVM0RXtPVVdu\ncode: 1' \
    > test.out 2>&1
eval_tap $? 74 'PersonalChatResponse' test.out

#- 75 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: MnUqVKIsJ17uDvZX\ntoken: z4gPBbO9GYTOX1GM' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenRequest' test.out

#- 76 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: 965jfsnmB5y7HTk8\ncode: 52' \
    > test.out 2>&1
eval_tap $? 76 'RefreshTokenResponse' test.out

#- 77 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: qoScQOvn8DYzifCu' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsNotif' test.out

#- 78 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: Lz6wh4XRy2MGfULe\nfriendId: O8kC4jurQTmrUKZ9' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsRequest' test.out

#- 79 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: I3t6LOJLTHdiJekP\ncode: 90' \
    > test.out 2>&1
eval_tap $? 79 'RejectFriendsResponse' test.out

#- 80 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 32' \
    > test.out 2>&1
eval_tap $? 80 'RematchmakingNotif' test.out

#- 81 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: BsJVu3DghgSDFQ6g' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsNotif' test.out

#- 82 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: TehgpxSKHHG7fabp\nfriendId: iJj5pLcQxxgwHbOX' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsRequest' test.out

#- 83 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: jEDC4lEew6LjFNof\ncode: 52' \
    > test.out 2>&1
eval_tap $? 83 'RequestFriendsResponse' test.out

#- 84 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: 07jUWyeaE87mjdG2\nchannelSlug: 6tZ3Q3nRJjSyS6gr\npayload: hUd1q6U1jrvmJkLW' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatRequest' test.out

#- 85 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: MHqXgODZdMMPha6M\ncode: 48' \
    > test.out 2>&1
eval_tap $? 85 'SendChannelChatResponse' test.out

#- 86 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: ObyzsDm8EDqxTm6Z\nuserId: E1wAZdnUI2cm0qEr' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentNotif' test.out

#- 87 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: o8gHzaq2c1qHDiYX\nmatchId: 8IK8zPmOlxjZC5I4' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentRequest' test.out

#- 88 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: T52XxXDT0v39njag\ncode: 82' \
    > test.out 2>&1
eval_tap $? 88 'SetReadyConsentResponse' test.out

#- 89 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: 4Yy0MFkqtWjY1nPh\nkey: MhemAKKrx0MxlVWh\nnamespace: 7E8gpZcLk2WdvbLF\nvalue: bTuVqeJYADPgTx59' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeRequest' test.out

#- 90 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: awPrksxpGMTxjIue\ncode: 60' \
    > test.out 2>&1
eval_tap $? 90 'SetSessionAttributeResponse' test.out

#- 91 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: HwzeMqTaqTGmh83i\nactivity: fduIXY9FGO2hdVjP\navailability: 33' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusRequest' test.out

#- 92 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: 53zwY8pUbh8hhHs5\ncode: 36' \
    > test.out 2>&1
eval_tap $? 92 'SetUserStatusResponse' test.out

#- 93 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: shNHBJKhvMwKezgV' \
    > test.out 2>&1
eval_tap $? 93 'ShutdownNotif' test.out

#- 94 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: 1kHtHgdRdkfSXCwB\nmessage: zgfi15ooqkdnugMu' \
    > test.out 2>&1
eval_tap $? 94 'SignalingP2PNotif' test.out

#- 95 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: 8MSylTlwdpXwP5xZ\nextraAttributes: ef3OghUShCpaN8IN\ngameMode: Rqw2TUqfVDIxjKFb\npartyAttributes: {"wztCVQrwcYHTFQjZ":{},"x0Yeo6gIWgGxqgU4":{},"BeaR6FGfTRTojyCx":{}}\npriority: 49\ntempParty: 0CQJCnMwHSCyGmCO' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingRequest' test.out

#- 96 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: z9n9XBWaLVpTaBhW\ncode: 11' \
    > test.out 2>&1
eval_tap $? 96 'StartMatchmakingResponse' test.out

#- 97 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: sUfyaBk5PHc24ypM\nuserId: xDG1cGe8kXQfJRWn' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerNotif' test.out

#- 98 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: bR5qB92BfpGpHoIt\nnamespace: pvlKMvNbqGR4fWHk\nunblockedUserId: K1UAqZXKpWc7bRvD' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerRequest' test.out

#- 99 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: qraUbPNe1Iezru11\ncode: 1\nnamespace: kwlTgWbpfBY6TqAu\nunblockedUserId: 5nPipLOncbFCgMQ1' \
    > test.out 2>&1
eval_tap $? 99 'UnblockPlayerResponse' test.out

#- 100 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: aS5Sb5vQaLb5eCzI' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendNotif' test.out

#- 101 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: qRkRe9QLcVfmQHWL\nfriendId: izKFkm8pNcZ9nOWY' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendRequest' test.out

#- 102 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: APmfRgSIK1aJNlfw\ncode: 61' \
    > test.out 2>&1
eval_tap $? 102 'UnfriendResponse' test.out

#- 103 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 103 'UserBannedNotification' test.out

#- 104 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: 9PzVkjKSsFAJcsPF' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricRequest' test.out

#- 105 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: sVKVFjdH5AI4QPJM\ncode: 48\nplayerCount: 82' \
    > test.out 2>&1
eval_tap $? 105 'UserMetricResponse' test.out

#- 106 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: o7koJiXQ74NHlvg4\navailability: 48\nlastSeenAt: 1978-07-21T00:00:00Z\nuserId: Mof1PkYwPBsOujke' \
    > test.out 2>&1
eval_tap $? 106 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE