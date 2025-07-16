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
    'type: acceptFriendsNotif\nfriendId: yR1geuUN6wRGBJWz' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: 5NtWLBKPIWAtihNX\nfriendId: up34TpVicS9wgmc3' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: GddhYJn66NrBFMMA\ncode: 37' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: gRIC4QQdPNemyxU0\nuserId: LbDjdINue2HXRx5L' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: yGFwBjKXHzXWHjpT\nblockUserId: vk54iwWfDB2f2HVF\nnamespace: bbGPVSNkDdDSs0hQ' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: yY14ZJmzdeK9vIL5\nblockUserId: M7OwEBOePzf9eW5l\ncode: 100\nnamespace: rT6ADxkgG3uBHFDI' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: LyYO97ykQlGKied1' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: yIrwmWqYrpYQfdLI\nfriendId: jvj4u915lbR0BjGU' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: vk0wiNJpbbobMfGr\ncode: 31' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: QUReFzusVZVLvCYh\ngameMode: SpVb9e4u30xi64T3\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: 5ZHQz7uqzBSeQyqI\ncode: 85' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: GtK1CzM7GabV1iqP\nfrom: aX6yfobwJfCZ1nZ9\npayload: LHR63bYC13pB6Zqy\nsentAt: 1984-01-27T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: 9K0Uc5mMQ538UUJ4\nuserId: jXtoFnUUF2FzJRhO' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: GNAWJHVLWpbHSU7e' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: IAAP8XQQ0FiRoFLH\nnamespace: yLHX7kA5ZYRWOuno' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [8tI0m4emYS43SQeA,yaVbnUkTB5Kcurpw,X9JZuZXM0q24sved]\ncustomAttribute: V1dCRYzIVutG4Zv7\ndeployment: GBcZkOMCZjgdyaDw\ngameVersion: YFqQzZkg0NJpp7oY\nimageVersion: OU5O2LMnThPSjCub\nip: LaV5WoKzQbS54D0R\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: gyuN00Oa4ZVSWKfE\nmatchId: jASidHW562s3kStk\nmessage: x4ntMcb2xyxTsxhS\nnamespace: bOPacdgeD27Gn9Ru\npodName: DXW96gkDkTor3R9u\nport: 66\nports: {"PRS9YIPGMzfug4ne":47,"zPGn7wHvgHzrXK3w":86,"YI1rbftApfI7Vrpn":11}\nprotocol: 78oOo1Dw0PeKv377\nprovider: kR0rxsYC8av4iTYD\nregion: 3ArKukA9lncmoqYn\nsessionId: GS9srT9dsi7ZYqfM\nstatus: Pidpdc5b7MsPbUe2' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: lh7S37XLs33DPTlA' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: 1LSLdNZC4sDrbnf9\nuserId: nylZfLqqEqNtBv27' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: 92IPtHtb1pXUV5lG' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: haCQSLS7JHqMWjQ4\nactivity: [HzDZYuyBQVkZ6RtF,St4yoZYOYFjP9484,yQDRkLtMMf6jL1BG]\navailability: [KkbptLUyk5V7tPrs,DB2LKxocROOxlD3W,7OGigzrMVAPuRG8n]\ncode: 84\nfriendIds: [aBvareUgKWOXovS1,M03jWhPf3GaGdeP3,Q8hRPkXWDAgtNAjo]\nlastSeenAt: [1981-05-21T00:00:00Z,1983-12-24T00:00:00Z,1981-02-22T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: xbEKpcIOKOTLDbAI' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: w8EKASGMLVmY7ZLq\nattributes: {"rG8wb9IXYx1fJ0WY":"YRTHuZsj8yNdDCjd","JcQbd6CdwX8x5jC1":"bfL8LufzNxeZqEpi","zEIBhZetN7y6JvAU":"f7QWu9yiN03AbeR9"}\ncode: 74' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: 9Lqa3i8cACmUhDqh\nfriendId: HKCMY7cypTLIIL7Y' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: Lj0K6SmDkOOzkMFT\ncode: 28\nfriendshipStatus: FG7zAts1aa6tEqKc' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: f9ZFSEYTip5T21K0\nkey: ou307kvf0Ul6FlJB' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: k3kOxg17aSALQsTL\ncode: 58\nvalue: S8rKyqkOFXizb7pe' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: KoVmmAOaifkYAWU7' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: aV6tpVzdt7v9Q2Ux\nchannelSlug: XlTdJG8AP5vInZ1o\ncode: 19' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: PLTHK3Itj6Bu8xLs' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: p69EUYlXLJb8y1cN\ncode: 92\nuserIds: [F3j4Fl43KFqCYVS1,4XvI6ZzIfKiwoqFq,Hwy1pOUrrJF8lEsK]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: JZ79EDYNQtQPf00f\nfriendId: Bo3IggISdOlDaDDT' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: TnQFruKgPbwwtPWr\ncode: 46\nfriendIds: [FFkHJcFAySUF2FjT,hahsLx7jmqalwrQO,rp3JTu0srep9mjx5]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: pLuXHIPAiPs6z2cW' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: SSipEmlmOpQ2bVgR' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: lkoFPihTepDpiXmJ\ncode: 3\nfriendIds: [987JPKiNLngYo7ZI,kmUoaDOHLNGNsOP7,9ZmolRrzogClWXFr]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [3SckLXfQbvesdmh4,6zhBYcwbrjwWtQDW,32l1mveZS8vKNUav]\nmatchId: pHCzHuorTNdycKhF\nmessage: TlOSXjHzJ9NEkMS3\npartyMember: [c84rXze2JCC3FCU3,NABOLrpErYVYzRP3,J4FUx3AkgG6skLM0]\nreadyDuration: 98\nstatus: f8eGx9gFbjsGl9He' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: XgNXkuUX047Y0t0e\nfrom: wuLqrtKW6hZTtDHk\npayload: OeBKIgZmouwDVL7B\nsentAt: 1984-02-19T00:00:00Z\nto: OwutLkd01gjuqT7s\ntopic: eHYWFdK2nNF7JRgr' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: P3RcfgoTy70GBZRz\nfrom: 06TFO3DhCazw1ozB\npayload: BGRaqfVHcjXICbO5\nsentAt: 1983-03-08T00:00:00Z\nto: SFolEOXtGfHcIDcR\ntopic: UPZJz6CrU0CaMl2k' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: tAIaCScsDTzv6i3y' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: AZKSUNMF5EuGuTZB\ncode: 23' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: KfXi9wavgXvw2RaG\ncode: 52\nonlineFriendIds: [OWuGaOjPEQDXNnFF,gqQuulEhM2RanXwm,VwVKEWEUQgJZAI88]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: bAfboaDSA5jXXbHm\nfrom: c1VXJNWHPl4RMF9A\npayload: ipAHRW3HJQZCXtdC\nreceivedAt: 1975-08-01T00:00:00Z\nto: EFDRPFUo7kqXB028' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: zdFvouKecxRV2h0t\nfrom: V3N0j2twMCVrm5xq\npayload: EKv038SSyCEdCVhG\nreceivedAt: 1990-06-03T00:00:00Z\nto: d2TXHp2kLFmmKJVR' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: ADyOdna9rGsZLnWi\ncode: 94' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: fXWwhvwT0k3a1R5b' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: lUeqLpCAhg58xgY3\ncode: 84\ninvitationToken: 3zSMW1Fv6KWu6i9W\ninvitees: Pi9jzTLIl6mJQstE\nleaderId: AU8tmd0y2ShVtNnZ\nmembers: 6aS7bcP8T2ba8Ex0\npartyId: jETq5Yx5OUvvw9z2' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"PJUMjPrBRs2K30i9":{},"jFo0nu5BtIPkM7sl":{},"qPUJ26tGDUsMLKEl":{}}\ninvitees: [nBq0UWHIf8XlME5j,4BN3apUtUGDmzdEh,dlA1kTMuspuEyB8F]\nleader: kGermdDFj4Cht9cW\nmembers: [v4ZKzQonn0XjbLkR,IIbFtLzmCVUiyJAo,kzk65b9VG82bhyvy]\nnamespace: KJyeN9RdI9zLYquk\npartyId: UxXaPMzWdGO8OV5W\nupdatedAt: 1994-11-11T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: K3h6euQR6x9XcKfB\ninvitationToken: fSiMHIXHWZblHNfD\npartyId: IpI2E98ZlNpIACD9' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: 5b2yVN36Giv1FwyJ' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: XkvUk40am6MGbgLW\ncode: 4\ncustomAttributes: {"HvTZLPqpDYhwwobu":{},"3T04f3iE0JzVeLtA":{},"5bWjijExNQ5eecPV":{}}\ninvitationToken: 3pT1haY6MwENHfH2\ninvitees: vqUDdah1MTMTNVXM\nleaderId: BfZpnMhT2P1HaCum\nmembers: sSaQ27wc4870jEJV\npartyId: aEPwHAPp4VVcxabi' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: i4JTMMRLlZ8KxZv5\ninviterId: wTpwYK7dfx6btlH7' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: bv59WbsXX4xk1mTO\nfriendId: RKTCJqt4i5gQqq9k' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: VPgvI9UCBcB6WAcs\ncode: 47' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: tCnsvJQ1LiUef3PN' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: 1JBYViItmGNDy8qI\ninvitationToken: nVKpT5wxncYlVBfZ\npartyId: EV1bxV1i1LrDvH8J' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: NcgxxFFffy28shQ7\ncode: 65\ninvitationToken: rMafLyhTVAi8bPd7\ninvitees: AlDoUhMhSruM95w5\nleaderId: AYanhFMNg6DQKZpR\nmembers: 9JZFGvLzwJKP5bFP\npartyId: pBfifjVW8eed0Wv6' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: zPxXqvtqS82FUUVd\npartyId: ESVIybU2K5MEf3p0\nuserId: gSjry6bIfGYDakzO' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: Ag1DCD8sP1gFHmKQ\nmemberId: lj1VWlsfiz2CwbKN' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: SVoeOQuPLmA9IacA\ncode: 33' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: qYtrWrY5homN30Et\nuserId: 1JW8P9DIQScWJNPN' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: hK8IqIW3kBgfcQfl\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: U7BtdozmGOz30Qgk\ncode: 81' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: oyDy46VAgFbHHQLb\nnewLeaderUserId: tbaXXZj2SjiA95JE' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: UL2nHkCpemytQ0Vk\ncode: 32\ninvitationToken: ORPtnKNcEaKM05yR\ninvitees: nvGvuyzRc8Er8TAo\nleaderId: 4P2Q7wtHwN52yoNg\nmembers: uvdA6eMNdGKYFjZH\npartyId: SevcxbEWfLHsXTZN' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: ZkVZOobhhUkxPDqB\npartyId: ufiwQ8nfotbYj0IH\nuserId: owwRW2UyRgBcrpMm' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: XCA5zGTWn08adyvv\ninvitationToken: v74aP2F8H0vICccE\npartyId: ThrNrw8IF9Dn50Bl' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: qU1BxPik1HGmTrjo\ncode: 66\npartyId: B5iU5S5dsL5yaq5I' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: fYvotxVbZbE94DMy\nfriendId: BZ29lZdIV9BnHunM' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: 90nT8EIBK94YlcrZ\nchat: NNlZ0PDaLTlzfX7K\ncode: 54\nfriendId: CtYEDkyRuJy0x4i3' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: VbC9WEquFKgWOXGi\nfrom: Vjvud1dpEDTbV0f1\npayload: en5LIxMhITk45uXC\nreceivedAt: 1987-03-11T00:00:00Z\nto: lFfexkQosdGuA1fA' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: P9EaWyoo9tjp21jS\nfrom: ZTjiaNSJ8oUu7vz9\npayload: 6uBoN26fSgeoulXh\nreceivedAt: 1990-02-17T00:00:00Z\nto: CscXmWCQbriyA5n4' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: T89LXatUXljcwtFR\ncode: 74' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: 50xNRLX9qWtwDIHS\ntoken: KXTCQ60ZKmZadkW7' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: MiFCsqBc9bMmlh4x\ncode: 57' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: 3zkGEhxLY9fIWYJ3' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: S4Q80LY9ckXyPtYP\nfriendId: Eox0hU4sBcz4gXOj' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: d2EOBsdVpYBwkUNO\ncode: 23' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 73' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: Xlw62vi8PTkYjs3X' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: A2LpY388GQzDVBlG\nfriendId: 04ktOUFZ6y2HD88U' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: A7KlHPJmVgpsy8Sa\ncode: 4' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: dEPShfOC8BKHKdKN\nchannelSlug: dEHh12iDRAWg5MhX\npayload: JZPCcMZzG7SpbwFI' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: Bz8yFddhEaAqPr8r\ncode: 56' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: ISeEnqaQkMrOHf4M\nuserId: ieVSDeZDlhc6h3f1' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: 8GGRIJYDr5eFQ6SP\nmatchId: 7SFBsCyPsVS4qiD9' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: 0oBaFdQYqkQUVzQY\ncode: 30' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: L8SnW8T9fhNFSet0\nkey: 9JDVWzWxiE34amyS\nnamespace: DxVJ9QAP65ShfFpX\nvalue: ndg2eei7VgTV9hlm' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: Faf9A4P0ugXsTVDk\ncode: 40' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: HV3GX2zC896B9esI\nactivity: F5Tt8RlFLJ0KlTUd\navailability: 9' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: CN1q85JWYHYPqy86\ncode: 100' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: 3nYd1mH5XetPht9J' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: NDC02gCHHYHS2Og9\nmessage: krypLEZz69iwvZNE' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: i1SPOMxpF79axB3m\nextraAttributes: qyLgElVweeEWzP9z\ngameMode: w1wOLTeDlno8Okia\npartyAttributes: {"q5eEX26vNhwCWBsE":{},"8A2DECXwOaj2m8OK":{},"qHVrsN0GkkcamHiT":{}}\npriority: 3\ntempParty: KDLVC9aWIJIAmPje' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: xonfXzweK1mD2k8J\ncode: 29' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: XvKVgyzEdSI44pYG\nuserId: gMNmnPHv2tgYKbQx' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: vGrSydfDuHsQcuYs\nnamespace: WR29Ha8p4zyJwYOX\nunblockedUserId: EGksgDYYX3i87qcu' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: 4UCtxN3UNhnuQXcy\ncode: 2\nnamespace: LvyZ8Lb8KdK92Ymi\nunblockedUserId: cbCt1zwyOOXXBCTr' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: Qk6Ry7PuIkGIApyF' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: 8mNugT63fyBDGFDz\nfriendId: uNmvPLHiPgqLxHe3' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: CKZr01E8AT6XvlK0\ncode: 44' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: TvscwSZZKE2ZhzSu' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: giaZeCkJntoB8dTd\ncode: 11\nplayerCount: 95' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: bYcge4E3unOw63MW\navailability: 59\nlastSeenAt: 1972-11-28T00:00:00Z\nuserId: 0qCfaMZQKzbZKers' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE