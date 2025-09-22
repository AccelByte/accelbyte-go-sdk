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
    'type: acceptFriendsNotif\nfriendId: eBhKvWr1Hq9jXbdj' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: KFOBqf2gEIda1P7P\nfriendId: PAwSFHqGn2u7La54' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: 5PIBZL0RUj7eI4EE\ncode: 15' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: XcDc7mql4RJDy5Ii\nuserId: 6cshnxu0uwZqU0wQ' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: okxG7vZVFROa5hMp\nblockUserId: w8FgHGZD2OeP67eg\nnamespace: uKKe5aGuAe9CnHl6' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: ykw1nqtpGQyzx0eL\nblockUserId: yAeg9tombiQK4q5U\ncode: 45\nnamespace: T5fOu9nALrBO204W' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: tyUOXbBRvZ6GeCPD' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: wco0rjxpyOQp1bQL\nfriendId: K3cPrNRCPG0rqyT1' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: gxCog9qb3WFtw9rt\ncode: 100' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: nWrzKSh1nih4zODR\ngameMode: FsGDEUpQu2IjiAXg\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: 0FIG96bWE9sSpomT\ncode: 73' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: t2DpihDq9QHc3vPy\nfrom: 75MZbsilw8v5keDJ\npayload: wOoHCrO7bsSBx2Oi\nsentAt: 1987-05-08T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: SMcs9G8kQZYdlpev\nuserId: usxqbcY68kFojVbD' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: K9F9Umtgo84hdmPI' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: M3EtDcVhT6kfeWaf\nnamespace: KtAwXvZxX8YeuFAT' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [mptEdMrL936bY2cJ,X8m7mRBdKQt7cOCu,4dShCD5dBSWZs59l]\ncustomAttribute: bPr3Ktqa2FFbH8mm\ndeployment: BlEWw83dLC1UgPjM\ngameVersion: EYLK8CwvJsU1USJH\nimageVersion: NXJWOq83RGwPwiSG\nip: 09Giv0xavqB60HhE\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: B1NENOlZT0NtZZCa\nmatchId: 8jqDrhagZymKeyju\nmessage: 4U3EFNETMg0WNdeG\nnamespace: 3c7DvuaSLpty2yvL\npodName: mSEpkOp4sptl9kYt\nport: 83\nports: {"f3tfBajKa30M1eJB":83,"ZBRRswg9AhPvTr7m":3,"r725TRdEqO9Y3YwH":82}\nprotocol: u888J6UC3y5uPj7S\nprovider: xj9QrGMlAJBrgLz4\nregion: XLYBpH9BtbSnzT1v\nsessionId: XfQQe7KODyLNxr2P\nstatus: liSRUzbTbiPN4tQy' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: aHkdkkkyZH8CMalN' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: Okd2jIIzcxP3U9ZG\nuserId: jwre4m12bEEZmLEE' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: 3x2sRyA8sXc0HujG' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: 1RLaiV0hVqkRFuuj\nactivity: [i9a5jESBdXxqUnP1,MvgnToI86rbVl4DS,zoMpQvG7tM25YhUf]\navailability: [6ZWMLPa0g2ewc9D9,FiO2Tf6FaDcWgRlx,MK5Ad2koQ1I63OY7]\ncode: 1\nfriendIds: [rMSY39XS42m74LYu,0wWFWXtp2bcgqLba,i8mwpjJpPrkYebyD]\nlastSeenAt: [1985-12-15T00:00:00Z,1990-10-30T00:00:00Z,1999-02-21T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: DQRQh7JKUi4K5zsr' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: AvzAFDvSo01690L0\nattributes: {"5BeLLxKdHyCYsFHS":"JVQGPyPq2VMcvil2","KquYiQGACFuF3Fmi":"gGB79z54KHI7siZD","0hHdDmbWW05lyXhJ":"7kOdvWbrFo4RsanG"}\ncode: 83' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: e4mYx1WWJ9LSxYcQ\nfriendId: lXlCX2qCvjXAVOlu' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: 9Vdy1wY8uHPesTQQ\ncode: 99\nfriendshipStatus: yBcDNtvGQ901k5eX' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: lbPke0RzJHxQ4Obz\nkey: iNfAeIV8YOLwgNEC' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: 4kYdWyyjxdNDkJq9\ncode: 9\nvalue: eJkVDl4aNr7p2GTN' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: f8BHYT3n8frpilkD' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: 1IxzwZjDDKJWNnoX\nchannelSlug: sIZ3rLXGqpoeCZzr\ncode: 84' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: ntewFY8dQb07eN6q' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: UyIADXpNfHJK0HoS\ncode: 20\nuserIds: [BkSzuXmbJ9NWRZlI,QcEN53V9PAEJKDxh,tJpA1yHnP6VS2DKU]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: vk3TcSk8biFCyQia\nfriendId: wTCM3eHCBCwGOPTX' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: gaUGCvkmccgydz8M\ncode: 46\nfriendIds: [KyrD4PEpmNlfkpHx,HPRsnpDxotcCtMkb,6fvUksem9o6z5HyP]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: Mjx6yzSYTS1EH6Ry' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: Gq36OHxTm469P3M3' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: cnDAlAtq6mwNTVVQ\ncode: 96\nfriendIds: [naWircD5wSXz8sqB,qDYZUSaR9KaS2fTp,aZjukvgbWCpduXhi]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [TT4LgoK9dLShUepK,r68NkoXbGNZmuoVr,2Z5xmxC09MH2LEOf]\nmatchId: bJa92SomN0OiHRsf\nmessage: e2w6aacHOm0M54CM\npartyMember: [lCj0rD5I9GbJyo2i,UqM8JZbHXaK0oiTe,gyF4HBTnG6OJGoIm]\nreadyDuration: 43\nstatus: sUfSiGT5KC7SNh7q' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: iq2V8Mlgk7z7TS99\nfrom: ucn6Z0QucveLXo1M\npayload: L2ECK9cWQQZ8KXMl\nsentAt: 1979-02-27T00:00:00Z\nto: DkQoQoe6gckfoX9x\ntopic: wuR6uW3mkzRb5zQ3' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: SGg4m3JWPEsuRG48\nfrom: 1UhBsA6WdlwDW3md\npayload: do07XPqFOSVpZsF3\nsentAt: 1977-04-23T00:00:00Z\nto: E3Oh61bfRwZDUQbR\ntopic: AkCKhnU0I2FcXf7u' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: RJTkou3LVhc2T4xD' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: as0XJpdKwO3K2qHN\ncode: 91' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: 0VH9oOoesqX9574W\ncode: 60\nonlineFriendIds: [0dmd3XZ0FHOPgftn,pDXC3HuMoq0trD3h,pE1XKfEemBgUTGQo]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: wWfnGrPNYaiGhrhS\nfrom: EWQRCOFnhRMPPLEx\npayload: JFQTHW90xzkWZW42\nreceivedAt: 1975-06-09T00:00:00Z\nto: PqiWqzQfz4SsQyKm' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: uCM9hmTwPKZhEWxt\nfrom: NfcpxJ4HG01xhtV8\npayload: a4WMfyUVng2BpDhA\nreceivedAt: 1979-12-06T00:00:00Z\nto: 425Db6aWTxZwUudI' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: u5VwQa1mQk7oll7C\ncode: 99' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: V11CYGdqZ9S1JQKM' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: ky4F5WLDLBXnzvvo\ncode: 14\ninvitationToken: XQKVd63rfHnHuEfc\ninvitees: 0JeYD67MXue21CS0\nleaderId: iXonIw7JDoVflXzE\nmembers: 4NU6yij0yPFLbAPB\npartyId: XNfCcv7g3Fvqm3tM' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"nfuk7U9a8aHHkvKG":{},"tfntGDPd1ALnjYck":{},"cP9YjwkdeeD4sEUx":{}}\ninvitees: [h0ax1fceBgLELH89,EitIKW5NZoxjjXZN,gIc1xaDx53E2as3U]\nleader: lyx0A8QDSgZzJnPY\nmembers: [8IkB712xIgbc9E9g,0FHV29gMoj0gGUxd,XcpLdmoTxHBwDGaj]\nnamespace: hElkJp0XMOL8srHN\npartyId: 1H7WDffmmlGBg8vl\nupdatedAt: 1979-08-21T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: jk9htlpQMr6VVe0a\ninvitationToken: Y2s2jxnbEe0Ulnfe\npartyId: UjYoYEGt1FdOuEaL' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: vkdvG3ZWERqYLJy5' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: LUCDOIbjY5a58U2P\ncode: 52\ncustomAttributes: {"ePEN09NwJTy6ayOP":{},"kmDkwlCftbRVfq1g":{},"ABNqDsjnuEX2uttL":{}}\ninvitationToken: qg85YfhB8v0bPx4K\ninvitees: BQVP6SFr61RxCmQN\nleaderId: 8ggXozR9LE0PzAzH\nmembers: VYbS5CbaNibKFAF5\npartyId: d5dRuSSZUDeTjGGp' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: bHxeSMFV3G6aQ9N3\ninviterId: mxvxjjjhK47mHXDH' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: 929h77OKtYitBVRP\nfriendId: uHpT2JPPeomBQk1T' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: 3LwwPbsGlGlXnyZ8\ncode: 70' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: PUtBC5hUceHcOXgd' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: PqQYkrXlMhKAox27\ninvitationToken: 68Srwsi98N2VhgEQ\npartyId: SQmxbQlivT2cVLMS' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: BREcFYtqhNfn7ebX\ncode: 63\ninvitationToken: YkRoWH0R1UT1fw3l\ninvitees: XbK4B8xAfdUCd2v0\nleaderId: 54MYdSeSeBMt6gAK\nmembers: fViMEJryuIZf7viC\npartyId: CPeGdYt5WYH0czmi' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: kXPtYBSvPI87uF33\npartyId: Fe4WLb25gX1SkXeu\nuserId: dAG1RUaElXuyX91j' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: 4OTG8Okebwt2S1m9\nmemberId: UtDflYjFqG2oNxbf' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: mUgUQsry9YKHNJLX\ncode: 45' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: yIo61EkbdBBrDS9I\nuserId: UW3zNdusUspJNCNV' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: NTr25LdcjWRlUErw\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: T0zbdk70S8tkVQFM\ncode: 72' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: 9BwrTSUOSyBQ7z34\nnewLeaderUserId: oV7UrU847M9Q35Ih' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: osmZN6Pcf3OSa5AL\ncode: 10\ninvitationToken: RAgcvM3OgglXpIFk\ninvitees: jjpokJ6yiopkGPaL\nleaderId: KVM5F6ZNlw5He7pS\nmembers: Z4z9UT2pcvfYbT9q\npartyId: 3eDU4KvGdssCG5NL' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: gepwYYD44dIgMu2F\npartyId: ZgGmvyJIAOMvuCvc\nuserId: vQ6p6Zo04nr0fPYN' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: AK8rKNdpnIUa2wqn\ninvitationToken: bfMDTx6R7umdYidw\npartyId: RDptoTHL7MpLnz91' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: sMTc4bUdau8ZwgFh\ncode: 25\npartyId: yXbCYmjpv4xpQ5AN' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: nSN1fAsvGHAPRQn2\nfriendId: KfgVxBW6azmRQXjr' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: p9S5Ho46HVZLH8MC\nchat: fj3Q9tfpVHSOQwTD\ncode: 78\nfriendId: z0wD1Ahlg1cFsUAc' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: DG5sZoPttSUiPb8S\nfrom: iHP3OzDPM7jvpJE7\npayload: BCZxBKfYUZrMXfqd\nreceivedAt: 1986-06-22T00:00:00Z\nto: qtA4bVI6LGw6B0Ab' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: sdI69e6P4bh5DjMQ\nfrom: tUp0RBbcI3qP0xt0\npayload: s0jeZ1nBhIfnmGLz\nreceivedAt: 1982-05-06T00:00:00Z\nto: HMHUo3QL1Ypm2KbB' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: JEVvmfTsIOv2TTkN\ncode: 76' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: FmWlZUBz6nqrDFdJ\ntoken: 4ajcia9MrLg7imz2' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: yIkbQ7NQwygUUc7t\ncode: 35' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: SqTVAhPifaB5mmLv' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: yU7lqCtrHTppxUcx\nfriendId: 7RNFEazNhYhIG3s2' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: OUiBUy08TWgfwgbg\ncode: 3' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 42' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: BqBjS0ita0RNbw0l' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: aRdiuDlpUa4aWara\nfriendId: 7qce7H1O5zCQkWdv' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: WNIWlkN1FFxw9skk\ncode: 24' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: tlaMuquha4RrN0wu\nchannelSlug: VDa76unVuDWzLNWa\npayload: NEKuObY7HVjSBVvR' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: 4VjA2zDpyKcRbo2U\ncode: 17' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: H7xwwsQ3VAfaatRw\nuserId: Up3DgR1AMVjhKaHh' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: xwDQPV1GO1MofRyQ\nmatchId: kmGFlzntV1LugfZu' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: s1QedfoFuojj44dw\ncode: 50' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: KCTOI8ZLYLTJB47r\nkey: w7a0h8eBQFCP63fM\nnamespace: 0QFg65md9MvXu1Q2\nvalue: xpCoDMs1gfkqqg0F' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: HXmLrxVfEJnsNWvq\ncode: 58' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: 8DFgYmnpE69nsvZs\nactivity: HHjH42REPHoR8TkE\navailability: 23' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: grsIaaj0spIjSvwV\ncode: 52' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: tzGV35jsuQHSLWau' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: z7d1ZVkqJrwB7jGW\nmessage: 7J3FXLU9L5VUC2iE' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: flUh1ZATBgYvQ66l\nextraAttributes: fSvc7RqNnjNkoy7P\ngameMode: 2KRSOJqSCPzCMaFQ\npartyAttributes: {"7DROxgU0064VzwrM":{},"7NOozwaBo1OG4avz":{},"Jb03fJLgyCKUr2pg":{}}\npriority: 13\ntempParty: IVkDoAKgbVliWnac' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: BRNaU2Li0cE9rXKt\ncode: 34' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: x8eE9rTwVeDHq5Fc\nuserId: UNccC5LEY84C0lHK' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: ZW0RcVXtEoPqkkGm\nnamespace: wNnoqn8ZVghy3VE6\nunblockedUserId: MxyFxU1Qcjb1aVx0' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: haWLkLiN5BZvYvr8\ncode: 52\nnamespace: 06p8jYGcjCsQdTqp\nunblockedUserId: GH22yH5kmRXf1iaH' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: 8G9X1WUO8NdHmHZs' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: ZxzJgDSYBvMVTPCK\nfriendId: 7DSigxWrRkW9MaYh' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: oQi9Tbyk32ZCTkUt\ncode: 90' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: 3bclfpdEbN6IWpVB' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: p4G60N8Vt3tCm6gW\ncode: 41\nplayerCount: 28' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: LPx0eICCCZsh4NZj\navailability: 70\nlastSeenAt: 1988-02-23T00:00:00Z\nuserId: HCrzHeYBabrBbaxG' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE