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
    'type: acceptFriendsNotif\nfriendId: XCOt6idQcbIVcT3u' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: wrqvJcQcYsD45udA\nfriendId: XwAl8r2rc3K2wrJ4' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: gnNkFOS1WBCNa9x3\ncode: 81' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: fiI6u8XUU8IAiqJJ\nuserId: XUCQwVaSKpKKMev1' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: p9gDsOfXwXHPytiV\nblockUserId: UpP4wlagbCVyw98b\nnamespace: 2AwXiNtVtKzKONVM' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: GKrfmFwr1H6NOsi5\nblockUserId: VJfT4tcAORUsyMgM\ncode: 53\nnamespace: PKGlLkO9AtqwBRCa' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: GirEqyF1dPxktfhV' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: IiqqAVX1ujuR98Yf\nfriendId: 9a1jAQelSAMLYT0h' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: 8Sm3hC3Z3kuKigjJ\ncode: 93' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: XWTKcvwIRLVDJbel\ngameMode: 2DjrZMOxlUhWr8w4\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: ZZ9hItgqZ5SAGIMz\ncode: 18' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: suWn4U8hoSjnCSD6\nfrom: GctA7eYQac6GZMMa\npayload: rVfhoUUwH3Uvnqn6\nsentAt: 1976-09-26T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: CHd9QX8tu3QxQYTp\nuserId: G1YArbyVmTdpf4qx' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: tFBPRw0nQYqJP9fc' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: JNtLDCkHx4tnjeVz\nnamespace: FcKAknr4xq58kimx' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [iOjelEa8NGimIW45,P4lFuNVm7VbhYhWB,sOvs7adFLauiZVNi]\ncustomAttribute: K05YMavyW0hvq53E\ndeployment: HvD92cqemf1bePN0\ngameVersion: HWB5UrWIb2bvzGZ6\nimageVersion: CsqGdcBc1Cp6I0lo\nip: FckdeFzjyIsd6iSL\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: Mjf0doUpvEwKUqph\nmatchId: YdJbTdm3SPvglmTt\nmessage: GEePGXAFEsAQEQRm\nnamespace: t3IqKUxiOIbCrv9Z\npodName: nspopn6boZOsomPz\nport: 99\nports: {"W2tDDnm8xMKxokmX":54,"Wtk4JqCDJRRZqfWJ":53,"jj9DqQkT7MqnqFi5":4}\nprotocol: M3dYGbIcOUqHMnRI\nprovider: exJ9y4lxkvP5WYiQ\nregion: ZDf46ePbKI5HjYVh\nsessionId: IvWx7TfdaABd4o6R\nstatus: GpXMYN8b6VApd5Bt' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: rsp9yKtuLm7rzrZj' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: cUXQg9AcsVeeJF8Q\nuserId: GYVOv96qPqKeO4Wm' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: rrlfzz3hhgj0yiCC' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: bLxn8ApEFUqvw3Gn\nactivity: [PUzh35x4HZFyqTiK,v590vArKsFSVs8jn,7k6q8QCR2n7wD6pl]\navailability: [rSSQBCYPD58kT1Ld,s1gsR8knoC8qzkGa,RDXRuOTo61SsfJYc]\ncode: 32\nfriendIds: [NeT0q8TOgTgzYmq1,jD0gj1a3oxGKB7Au,3Yj4FgJHJayoARA3]\nlastSeenAt: [1988-02-24T00:00:00Z,1977-12-27T00:00:00Z,1995-04-06T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: GhX9t3vd0rQKV1gy' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: CELCgDSAnmWVQcfI\nattributes: {"ERDqXBXbBdKYyG8T":"W06tzWXKMECRTVEd","4itKAtIv7b9Ia0QP":"BmM2qBS2vPD7u1C9","MX6lPaDBSEnJXOf0":"U1nSO16bVT1KClHs"}\ncode: 47' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: vkcGgf2cJ0qkzS1M\nfriendId: MWzQP5EyChhM0rrk' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: 80RoiNWc9xBDmCqM\ncode: 17\nfriendshipStatus: vV6OPSvYudsnMA02' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: fjx7CMWwhYAZiHJF\nkey: EgkS0ObEu2YLRTRT' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: RRYbhL1tnL9AKUs5\ncode: 48\nvalue: xyYpe8VEzSgdPUqe' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: 7EVRF97Uv9M2JsrO' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: b5eFAz45rLjjEOWO\nchannelSlug: wP7yiPzaaUkytSOX\ncode: 24' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: 4qdLzGPfFkSIDtWp' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: n5WIjADbJbDZKbGy\ncode: 26\nuserIds: [g4oWndWNGnyB3Jil,lIVFfOn1ojd30TlX,7RxVDosxaxFlAp5q]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: IGUyaBkgg1z495hn\nfriendId: Vrweb47eu1OLQ9Df' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: II8499XYxoVxdyq0\ncode: 31\nfriendIds: [DIWV7opdDL3ZDwmz,3cUKUCRGvbDAxJez,QffDxpr8qrjLwVD0]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: bGoNKKuyQu3lS5vh' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: 314wPC8rUe0udgRM' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: 0AHX8BqZUeLhvUZj\ncode: 73\nfriendIds: [7yAC79sjqSrgTaaP,n53Y0HSZHj0Vv3TG,6xCaOnU3DyLGoT1U]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [fHeNR9TE5CYtIBl6,CngS6FZBEurZKxoh,2r2YY9EwXc5SUKyJ]\nmatchId: GCNpIVRsVpaH8w3X\nmessage: yiEzBmZhGFXw4GSi\npartyMember: [G4N4ydzUqKA6zUKd,n6iRuoo3di3p9wzR,UL5ZNY5d8Z7I8lGH]\nreadyDuration: 64\nstatus: VR0oErdxhPHeKN5m' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: 8weo9WbZkQrgSt1y\nfrom: NNx4cZcZNBWy9Um1\npayload: HT45FarOV7f1islJ\nsentAt: 1989-11-13T00:00:00Z\nto: 0Ccqchcv01xwPeci\ntopic: qApPnJrsNgPcTx10' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: J6Wi81y9A2gvn2ew\nfrom: 2v5h6kPEAwL6frQI\npayload: AFL0uUqrdIOhpN0L\nsentAt: 1990-05-01T00:00:00Z\nto: oDCtl3tkqvvpXRGi\ntopic: M2PcpSHdEXA2tKl4' \
    > test.out 2>&1
eval_tap $? 40 'MessageSessionNotif' test.out

#- 41 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: Sk9r0XUTltz4VxSK' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationRequest' test.out

#- 42 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: fFRrweHAM2emzrxj\ncode: 14' \
    > test.out 2>&1
eval_tap $? 42 'OfflineNotificationResponse' test.out

#- 43 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: mTJ22tKENai2dubh\ncode: 34\nonlineFriendIds: [XYQMXvSV3rpBtefq,avvo3NppxxbqQJOg,kLSqqxWLFSbV9POQ]' \
    > test.out 2>&1
eval_tap $? 43 'OnlineFriends' test.out

#- 44 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: pSpjKZKj3BeIvwml\nfrom: 4aN43FCIOWmpWTcg\npayload: tfUxlIpwxbPFPcsj\nreceivedAt: 1998-10-01T00:00:00Z\nto: JWOfZ2fw4vHQCpAU' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatNotif' test.out

#- 45 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: DVDlDfXrjHK3ZMN4\nfrom: kZt5HjiThOUi4xHK\npayload: dim80uTXOPa91GFK\nreceivedAt: 1992-04-28T00:00:00Z\nto: E93dZkcbGlBWXkJp' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatRequest' test.out

#- 46 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: SNGXGJlqOfTVytsd\ncode: 76' \
    > test.out 2>&1
eval_tap $? 46 'PartyChatResponse' test.out

#- 47 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: tcVzatRLL3Pnk92Z' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateRequest' test.out

#- 48 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: u3J9dKb5dZzNFMmv\ncode: 57\ninvitationToken: 3bchj0GSLxvzS4r7\ninvitees: Yy5LXfc06gV51fhn\nleaderId: FTrQSpmGR7BlTnjt\nmembers: 8SZQkNhDP2nRxYJ7\npartyId: vD3RgFeKzcu20cJU' \
    > test.out 2>&1
eval_tap $? 48 'PartyCreateResponse' test.out

#- 49 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"7QIyj9nqlEYAsEcD":{},"jcUJguAMeboDPU0T":{},"Gxotx7uHKWfbfO2b":{}}\ninvitees: [CqBoPhWjcYdkEwB8,jhFEIdhqjIUVurWD,5guUE1Ja1LyGS3Qj]\nleader: 2lPBUFy8mAWuUhoy\nmembers: [7JY9IV4mISGPvae2,IgQUDNrtKdIsoDDW,C7nxxzuzUIdfivxj]\nnamespace: 8Dvy468yq4RlEhKA\npartyId: tiUvjA0hZXOUUY8k\nupdatedAt: 1978-05-16T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 49 'PartyDataUpdateNotif' test.out

#- 50 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: l3cpYOG4my8GkldK\ninvitationToken: K9pAyQJWp7moTGYC\npartyId: NkvbnKLmsmm0k6B2' \
    > test.out 2>&1
eval_tap $? 50 'PartyGetInvitedNotif' test.out

#- 51 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: WJ03sZrLaXfnQ59b' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoRequest' test.out

#- 52 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: bwVGOYm55ITzUyNE\ncode: 40\ncustomAttributes: {"CYxuPcFO0n98x6ch":{},"Q4V7UDjPECfgK1YT":{},"7OdAqBgou2krNFyT":{}}\ninvitationToken: xyoGNOSH8w1XmUVQ\ninvitees: E3WCAqjvpmb2W0F3\nleaderId: CluaPYMInFxBNjFg\nmembers: ApCtbUdAdTncfcFT\npartyId: plvXg5VZwmGoQ9CA' \
    > test.out 2>&1
eval_tap $? 52 'PartyInfoResponse' test.out

#- 53 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: ENwImPTaZ6kcfdHV\ninviterId: 6v8Bifg3Fb3N7fNT' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteNotif' test.out

#- 54 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: nEs7JNAssIwinpFW\nfriendId: nqja1y8z8PH4Gc10' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteRequest' test.out

#- 55 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: GnMh1BfcPgoTsoaN\ncode: 22' \
    > test.out 2>&1
eval_tap $? 55 'PartyInviteResponse' test.out

#- 56 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: MBUJKiUxndsNSOxq' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinNotif' test.out

#- 57 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: R7TWIfaZkyHe9ir2\ninvitationToken: xqnLFKkfM3mHvrMF\npartyId: 7nqF4vlKfBuQ0NXK' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinRequest' test.out

#- 58 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: AgOhtRLcStdt4e1f\ncode: 83\ninvitationToken: usf1Z4aHr0w1mwNp\ninvitees: vRAV0a41KxBIjkzo\nleaderId: xJMmAYLUaNBNLiVG\nmembers: B4W6K3attCcnZ8oP\npartyId: kZ7DEenp98z4jsGP' \
    > test.out 2>&1
eval_tap $? 58 'PartyJoinResponse' test.out

#- 59 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: rqRIquJsXyEX0RkF\npartyId: dQ0DUyvYbq7SlhgA\nuserId: qp027cf4h9PqrgK7' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickNotif' test.out

#- 60 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: Zuqp7HMEXY3OfqHr\nmemberId: tJDDMrncFzYwoe3r' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickRequest' test.out

#- 61 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: p2FVoReKZEQep4p8\ncode: 57' \
    > test.out 2>&1
eval_tap $? 61 'PartyKickResponse' test.out

#- 62 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: Iwuj1TAyAUc1dIwo\nuserId: tx4GOtD6TmmplYFw' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveNotif' test.out

#- 63 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: ukskkePtCWVE0VCs\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveRequest' test.out

#- 64 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: CSizonyNP3pkzh4R\ncode: 74' \
    > test.out 2>&1
eval_tap $? 64 'PartyLeaveResponse' test.out

#- 65 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: mbiXB7T6pzhVTCrY\nnewLeaderUserId: eclTA95QdjYrrCfZ' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderRequest' test.out

#- 66 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: NE7f7g7BAibW8RnY\ncode: 1\ninvitationToken: FYhg5HcYLg8gWel6\ninvitees: avbB4BmVwpAspe30\nleaderId: 8gayk5SK1UltOYsg\nmembers: PvUuLOWPGKQO4bF3\npartyId: CggurOmQzPzu1kBO' \
    > test.out 2>&1
eval_tap $? 66 'PartyPromoteLeaderResponse' test.out

#- 67 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: FfTGsHOY4w5bqSPR\npartyId: GtZSDrfO7zCpR0JE\nuserId: ACtBG6lwTq47OYrS' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectNotif' test.out

#- 68 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: TaYtvwGeopM32xkP\ninvitationToken: zdAQB3SSeB8tvsk5\npartyId: codlqjqt1GHRedIy' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectRequest' test.out

#- 69 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: bzGdmKZja8kLji1N\ncode: 57\npartyId: DEVj4wAfxzRenbyX' \
    > test.out 2>&1
eval_tap $? 69 'PartyRejectResponse' test.out

#- 70 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: xfRnXQqu82M1SFmu\nfriendId: LpN3L9HWoI1AuoI8' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryRequest' test.out

#- 71 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: LlplmmEEuypZ8uTt\nchat: uTrkh7yyzW4hP1qs\ncode: 84\nfriendId: wC5nMJSXBRoCzwI5' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatHistoryResponse' test.out

#- 72 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: Bg2cA535nLysQXNb\nfrom: lqN6ZuZi8IcHBGy2\npayload: 4eBqUXm2aZ4ljCAJ\nreceivedAt: 1982-02-22T00:00:00Z\nto: D6eKXHme3N9zHyNC' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatNotif' test.out

#- 73 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: E4i8El17LPggRsgU\nfrom: R5hbawDmPCOuVXgH\npayload: ze7tvnWtLUvI4DjF\nreceivedAt: 1982-11-17T00:00:00Z\nto: NW1EBaTYlAm9bbQq' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatRequest' test.out

#- 74 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: 1vkYMF9vcbMuhMZ0\ncode: 49' \
    > test.out 2>&1
eval_tap $? 74 'PersonalChatResponse' test.out

#- 75 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: 5Rv0mXskS2AuI5Rn\ntoken: GcVmjzjq1bEXqK2Q' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenRequest' test.out

#- 76 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: QJiHxJUvMFaTrZpf\ncode: 81' \
    > test.out 2>&1
eval_tap $? 76 'RefreshTokenResponse' test.out

#- 77 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: gcPHVkxFIVHk2nuA' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsNotif' test.out

#- 78 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: ugIizvgoBw1LlKeX\nfriendId: dmILVBmHUv23JhWl' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsRequest' test.out

#- 79 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: CR8TXFAPZD1CJazm\ncode: 21' \
    > test.out 2>&1
eval_tap $? 79 'RejectFriendsResponse' test.out

#- 80 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 87' \
    > test.out 2>&1
eval_tap $? 80 'RematchmakingNotif' test.out

#- 81 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: 5FbXA2mBn1fKzQ5v' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsNotif' test.out

#- 82 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: MR50Mqtu9GuMiID2\nfriendId: CCZsU00qJvnap6Pn' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsRequest' test.out

#- 83 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: LdC4G35eAufoZ4HF\ncode: 64' \
    > test.out 2>&1
eval_tap $? 83 'RequestFriendsResponse' test.out

#- 84 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: JluQWo9tfHUV8IuO\nchannelSlug: 9NvbAnv50UQWG7Nq\npayload: lhmx65UQiV0KYbJP' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatRequest' test.out

#- 85 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: RzqBKlfwno63JSN3\ncode: 5' \
    > test.out 2>&1
eval_tap $? 85 'SendChannelChatResponse' test.out

#- 86 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: QCWNFKAzmfPwKVtp\nuserId: dJVC7jYnp3gBqqmU' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentNotif' test.out

#- 87 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: x9m3ouG0udacNxAR\nmatchId: Fk72hVDnd5B7Sa0I' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentRequest' test.out

#- 88 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: MfxUPRrL4sbe8DIe\ncode: 23' \
    > test.out 2>&1
eval_tap $? 88 'SetReadyConsentResponse' test.out

#- 89 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: 7u7QuYX0QURUEvmv\nkey: FD35yoS1sidDcedi\nnamespace: xCPVnDFbnp7npkHZ\nvalue: UZDRIlz98pz4qvAR' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeRequest' test.out

#- 90 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: IYdj1hNrdSv6vGAw\ncode: 92' \
    > test.out 2>&1
eval_tap $? 90 'SetSessionAttributeResponse' test.out

#- 91 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: 21nHyqzQDCuWDFsf\nactivity: LNPHRxHebM6fXM22\navailability: 86' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusRequest' test.out

#- 92 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: VSUQQ17EmfloNKfD\ncode: 55' \
    > test.out 2>&1
eval_tap $? 92 'SetUserStatusResponse' test.out

#- 93 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: wYxnbQAeeM2qxMqG' \
    > test.out 2>&1
eval_tap $? 93 'ShutdownNotif' test.out

#- 94 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: HvjoLkVT7tEwLGvM\nmessage: n6HBcbwKUY50lcqc' \
    > test.out 2>&1
eval_tap $? 94 'SignalingP2PNotif' test.out

#- 95 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: dNie4lnNujmiZX46\nextraAttributes: R6GZpHKe3Ac0FIEW\ngameMode: ajbI1jBihQFBQW7w\npartyAttributes: {"No3DZvGczsr47NMM":{},"c6b4p0Qb9SXzZA5N":{},"9iPVT1sVMhNhiW9I":{}}\npriority: 72\ntempParty: 9iiCuIBufgPNZfRp' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingRequest' test.out

#- 96 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: eD0Lmcm0ubbC1Muv\ncode: 3' \
    > test.out 2>&1
eval_tap $? 96 'StartMatchmakingResponse' test.out

#- 97 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: N8Dd3YsKuiGOYPpc\nuserId: cVHXsjJVmU9iQ3qa' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerNotif' test.out

#- 98 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: tJqiHHBxunSSVo1p\nnamespace: l3t7NdYKh5YEzTr5\nunblockedUserId: CwdCYknxOmbUROZM' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerRequest' test.out

#- 99 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: OT9oa69cqVHThpwt\ncode: 87\nnamespace: Yc79UCNRsyYfg0W1\nunblockedUserId: 1FMmpTPBIoL3N5Fa' \
    > test.out 2>&1
eval_tap $? 99 'UnblockPlayerResponse' test.out

#- 100 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: 2gi7TdNajhzcBJYh' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendNotif' test.out

#- 101 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: 18IuyxFZIxk9Ki9r\nfriendId: YQAz519yzO5H0Upw' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendRequest' test.out

#- 102 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: clEECetxURBK7Ikd\ncode: 69' \
    > test.out 2>&1
eval_tap $? 102 'UnfriendResponse' test.out

#- 103 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 103 'UserBannedNotification' test.out

#- 104 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: AemANqdGSwEyHZjy' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricRequest' test.out

#- 105 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: R8e5s97IcJMSHEKF\ncode: 49\nplayerCount: 69' \
    > test.out 2>&1
eval_tap $? 105 'UserMetricResponse' test.out

#- 106 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: xV5K2km7RXShidS5\navailability: 8\nlastSeenAt: 1977-05-20T00:00:00Z\nuserId: BBP7ztQF3COGDVng' \
    > test.out 2>&1
eval_tap $? 106 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE