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
    'type: acceptFriendsNotif\nfriendId: MKO3if6VolHZuRzd' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: SSheimAnP5YRO4xS\nfriendId: qgfW37KpEarYTWDj' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: v895Y3qw4XwNGXIE\ncode: 11' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: rCHV0FX05o0mkwpm\nuserId: aiOEZie975KVxB3o' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: MYwlzqODNBb93ldU\nblockUserId: RnmfV80VR0UYwU4A\nnamespace: wVzNml89rpelRQEs' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: inHsZaGpvaPBuPDr\nblockUserId: H4YPardfjDhKjJPs\ncode: 96\nnamespace: agoxQ3GJPWbvgrEF' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: 3AQKn9azjMBk6cME' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: aGvLl6gvXFyoNufy\nfriendId: DkavXnDzs8csjls7' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: dF991cdmWWjXlnz0\ncode: 48' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: So5hAk8kk6HzOISb\ngameMode: Dj9u4ctfdMJ0wVjl\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: HJVK1wY5OVZhL9Xu\ncode: 50' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: KHimi5yx2Nz8rztd\nfrom: hnBXMkkHGKKvN00O\npayload: ZKwGlhvyfJLh6uFE\nsentAt: 1996-11-15T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: kud1gmJ7BzdmlXyw\nuserId: 2vl9Xw7sHr7AwJnt' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: h8RUZW4eOTTHT14r' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: qLl5GpVRQkKPTMtH\nnamespace: ILMWDXYmWePoBdRT' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [0sO9KrXiPOF0ekFS,DXcOSIHc3gpQ2INQ,PxoJdvBxSzBpPHa8]\ncustomAttribute: HrhmTFAaC2yEakYB\ndeployment: uHBjroT9zoyh5OfY\ngameVersion: h5R4kiOLkMXVVVPS\nimageVersion: AThPzo0RErmYfKIm\nip: HLZlqN1vn7IRbSVw\nisOK: False\nisOverrideGameVersion: True\nlastUpdate: hpsQxkE8XXZOgM0P\nmatchId: I4th02KIJQxD40ZE\nmessage: 1gzgsa0mMNxLfe6J\nnamespace: RHbJdOPX2oKcLnTY\npodName: ahpYtb1RQwdJOtsn\nport: 5\nports: {"JHpAtvKr2MBlOVlY":31,"icGqcD7sce5oQSpm":15,"z0xhoJDow3LFjsPI":86}\nprotocol: 0lWgJtJH3pDYg0Vr\nprovider: 9ZQMsHWyD6PjbjvC\nregion: QAJv6dl6wFdLDNRE\nsessionId: Au7oIE1MvkPvsIkV\nstatus: b63IlS83jkbaBFzO' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: D2EegvtCRmDo8KcC' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: RmpkaaJvOCe3bF5g\nuserId: Wz8DweZY5CrpKJeu' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: qQ6TZfYbE3pTWFWM' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: VBR2hZblAwa6PQu6\nactivity: [jJxqxEJUr2xTk32a,YMWOAk0A5y7cDkBq,fXdYXo0LM2yXWPZY]\navailability: [GQ6qaff9eG3NyvCK,wzJN1UsIA1KNiuFt,PtJUmncTMZjX4faI]\ncode: 89\nfriendIds: [H0fSjX5uIzcKiCAM,g4DDym9PUin4qibS,4DT9Iq2UTNdeVt5S]\nlastSeenAt: [1981-05-08T00:00:00Z,1977-10-03T00:00:00Z,1988-09-08T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: YpQARv7TiLijiKSG' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: nDlJYlRorQSQJkNz\nattributes: {"gzen5OShRtuzhit5":"D7Wk6FSnXxKsARlz","kmq8sQdUvSnLbeJM":"W7WTOzmtaVonrGyR","LOJpr0OXFPX3Onkj":"wVkSfe4R1KTjOswR"}\ncode: 94' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: LYZulOkpdrlObUJh\nfriendId: mccRD9dOW5uOtiLF' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: 88lr9xZm3K6n8Ggs\ncode: 24\nfriendshipStatus: kcF17DoudIwfhWnn' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: nD547SOo9sSbFNIY\nkey: WLVqayNvfEH17MZk' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: i3fTTL9F5O6p3J2F\ncode: 26\nvalue: 2ZpZVJkAaEZ9fK58' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: m5SFtJS7FhebM97R' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: 9a0ASV24kWSf8Hu0\nchannelSlug: GLEjIWizlo0wWqDR\ncode: 95' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: 4QctHawekizLmCg0' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: rpkiLeLBgPL7p1QU\ncode: 27\nuserIds: [QdX7bhhclP4KHOIj,IqczwpFW3jzEPVAT,ESNFr4IXTdAMy4CS]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: dPUV8pUdDXKzA2BL\nfriendId: aaN4y6ImS2c3DVqA' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: THXenbAeV15TSkV3\ncode: 94\nfriendIds: [IGkjnf4cgnSiyJFs,dcLQrAVHZuRuJtJ6,sa2NN2oupRf9XkNb]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: MKTYwSSRFcC3yc5h' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: Vo7N3ZuAy163XnL2' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: yBgCdRuAcUqbJ2n8\ncode: 75\nfriendIds: [stnFv9b5iXPm3vSy,iefcQiFIEmcbukSd,emkaIe7fs2DpcbAW]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [XAWk7sjxP6BCmwZI,LKmvnGTPk4LGHy7C,wkd0cdjqH68iiubS]\nmatchId: PlLsSqcc4ghtu858\nmessage: RCEU1PyKo2eyW4Gr\npartyMember: [6H9CHZqQuqGibF6U,5GHbRihlcF0XZglt,cD6efwdUJ8INLO8t]\nreadyDuration: 19\nstatus: nku1lhDsh0LVRrau' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: 5kSEaPhLV7wJdFlR\nfrom: FWii4O1OAv0RM8Oe\npayload: QPDpqnDw3rplN6LS\nsentAt: 1979-10-28T00:00:00Z\nto: aAbwnfaKBRtQGU2P\ntopic: FjyoDpcKTIFde0Y3' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: Xyh8Gb1HTwRNXxdo\nfrom: 4kJQ1WjzIA6KQdRQ\npayload: MR8r3rqvG3kCQSJE\nsentAt: 1986-10-06T00:00:00Z\nto: zBZcSA8HRX966p6m\ntopic: MGA4Xx2AABNNI2sp' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: dbfOkc0d3BVKI6yk' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: ed9499dSVOQTdW0o\ncode: 35' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: UIthRRNfRAlJN0cw\ncode: 87\nonlineFriendIds: [12tjT1mYrbYmDZS9,wfbEsJYqnezd6Slr,pdA9baK9CzKkOws4]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: RpmzoBkDzZZ3fMqf\nfrom: rdOKqZLZrt3FWPZD\npayload: 9anEQNOfvGM6qb07\nreceivedAt: 1976-03-15T00:00:00Z\nto: Oynl4QUPmtvwH5Zt' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: rq7p9zaXjbyKj5C9\nfrom: 1IYhcXLO788ECxuq\npayload: 6Tj3vfCeLqPv6EjQ\nreceivedAt: 1980-11-18T00:00:00Z\nto: z9vfHUwkqkGIkHEZ' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: edG6jnSh74kIrnJc\ncode: 35' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: Tp3SC05m71X8hMep' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: cZrndCIb6nWgK60u\ncode: 93\ninvitationToken: tw0xOMStVqnG7e6z\ninvitees: VSQLWRfhwpEciwcB\nleaderId: g6ZZebkSAqALL8Rf\nmembers: dWQ2k88zcLGcI7ik\npartyId: W8tqBq5kgamvVgjI' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"Y0TluOopo7Y2q5I8":{},"YV6U2XXkin1LGFBS":{},"rrMEhmbF79qLk708":{}}\ninvitees: [ebJLqawiyKjoMW8r,KX69a13M62KPWziz,Ibp8sqtr4Qi78Jf0]\nleader: 1DHW3EpDrp4w1vp6\nmembers: [H167cgaS3jMuFROE,TMYAg9hdPJNpdF9l,15EAMm4kfvuYTsG5]\nnamespace: hE6nkerBnMJok2dK\npartyId: wpTYCUmZdevEUpwu\nupdatedAt: 1985-10-25T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: W9wU6HhLp9bHAfo9\ninvitationToken: wlhK9JJMkzCfYbbq\npartyId: 9eGQQRlUQ7NhhKZD' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: VHBIqpdkS9c9QyNY' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: IUVRbEVniOQXNAZr\ncode: 47\ncustomAttributes: {"hvcgpL58OGXyibqd":{},"stTxWeJkRQ9vTFTt":{},"njsGcM5iWFxbkx4P":{}}\ninvitationToken: wXtEgI2E1vA4YYtx\ninvitees: w8Zy4OAcD1U9UEhX\nleaderId: fqmZ8jCLciB7p9fh\nmembers: eUcG7d79AfR42OM2\npartyId: ZicwebivBv7mvLE4' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: Eg9BvSkpeNMsXP2u\ninviterId: iPMse7n4NDaKYacg' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: zLjUT6WWEdOpFVdb\nfriendId: bJLWprOGfwBZ0TOi' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: GqtEuYnEvPoKz4Q1\ncode: 2' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: ZcIhKz2SN4DuG5PB' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: slIz1ESUMOsmpr65\ninvitationToken: MK28DDXLWUNK1T9T\npartyId: NlwerrG33mfYR6pn' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: d3nnPoExaPVmkEVt\ncode: 34\ninvitationToken: ThKRG0zSOosi9kFc\ninvitees: lRnLofhj9o39JP5U\nleaderId: 3IgA3G0gd5tWXLek\nmembers: IymNVNhXZ2ZKmLlB\npartyId: OJGVF4eKriS23eTV' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: 4AVvRQrraa7xnmMU\npartyId: HbcUAArUlyMid3eI\nuserId: 3gWUPZjHknJFxwC1' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: 7fHBCuRPIl9EcpYk\nmemberId: oN29pAEelLed4lE5' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: crFJmZhXyIg9LWlo\ncode: 92' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: DW4Eo4dFGReC1PiK\nuserId: 2qaQLkYw09yvXQ9f' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: nurPq8XOKetMH236\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: FDNlExn9fpX2QqMS\ncode: 93' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: 1kma0qKNdm2gXDlI\nnewLeaderUserId: 6RL9KDPFYcRDQDHd' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: jcbPyc7e96sFUa6H\ncode: 96\ninvitationToken: N5AdNo2g3DExxO6j\ninvitees: 8cd6FIq0rFV0UyrZ\nleaderId: z4lfBhZdHK39RW98\nmembers: ShAWx5mkFO3EVtIT\npartyId: 8QTcG95uQqdhsU8s' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: JIGhccbrT5H7rmJX\npartyId: WoSfysk2wYrgqvGI\nuserId: v2veHcWskNViLAj9' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: EMvLl2Yio1FuxbVY\ninvitationToken: DdalUzKQxoqu4unO\npartyId: GaMM47CItQlGAIEi' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: N35t8C4tCurMtudM\ncode: 93\npartyId: 3URpNra1OBK9HkyX' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: I4OQEyktpoefdZge\nfriendId: 5dAnx3rkjsm5Vw7P' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: hYd1D5IymN8EjQXq\nchat: aM5ZjsC23BrjHfzy\ncode: 47\nfriendId: 3Mw105q8gI7YWz0F' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: 6S4vnMmUGyK58Zjk\nfrom: qLAM7JZ0rw23w56W\npayload: Ib6hx9DYceZbRKXF\nreceivedAt: 1976-08-18T00:00:00Z\nto: yG3j5oLTPZ2eOb38' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: k52EaKTYffPDU4XU\nfrom: YZ3NrF9HkanG63Hw\npayload: TuI1bEyzPCABPtHg\nreceivedAt: 1988-01-30T00:00:00Z\nto: 25aq7msvL3vmNBBb' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: i2aNHcwrmSjttFIU\ncode: 46' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: 904xsWw925Skskxc\ntoken: VO5ZHttrfuWB0kB9' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: NPnYM5XPU7fLf5VD\ncode: 98' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: XmVlTGXOXmbX64ai' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: ELCJPBEe7pkDi94J\nfriendId: 531TeIk3q8nad0ak' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: SpsZTjzEM0mCWjwQ\ncode: 94' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 65' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: MQx6KEAxxH1oayxW' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: bIlhle4bbZVOE5os\nfriendId: TqEJKhdDwBx41tAi' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: 7IVnAjtc53Kdpi1Q\ncode: 46' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: cUA7YEN6EuxHwwoY\nchannelSlug: dYbu8syMDmymnJV0\npayload: Cv3Xsv4JLu0IVHWQ' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: hVc5e4wsnTndinC0\ncode: 89' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: KSCuJsqQqBSBVzvm\nuserId: C4X0Bmh0i5PFiSvO' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: lWiB3c917tgVn2Rj\nmatchId: 9P2s3kwJoaZiUFtk' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: sCKMWseEEW9xaU7O\ncode: 0' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: iuI3hERSiUTgDHVs\nkey: j5B49iSLcMRCWvlo\nnamespace: SmPoLqo1P6tov622\nvalue: UoKhlQ6ojCWMogAq' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: A5T8ZPHfO2dlhqUi\ncode: 47' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: lvp8IXIeLaDMOXrG\nactivity: 8QU6jolAY7JWyfm6\navailability: 97' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: cYilUaGILY27yq2A\ncode: 7' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: FeFQxzS4H4MbIwN7' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: lr3IfKf4Uv0iCcQZ\nmessage: jwZ39N437A7AYVxS' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: bhm1rA2xOT6JFkzb\nextraAttributes: F1uie3vdkIZQ0TPF\ngameMode: nscrkpnAGztO2o1o\npartyAttributes: {"K9oYC4SmVC7qNU5G":{},"tV0BJv0aLrO8zm93":{},"KjZJg5HgdWEylq3Z":{}}\npriority: 14\ntempParty: fcUxslYsJNrZIhBC' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: tbqSKqfP2okfFVV6\ncode: 39' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: LlaQheTplRDtEp4z\nuserId: AdPoFHS5CZjKpP88' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: FUGvqNz4Wjh0WYHi\nnamespace: oI8VAP87KymzwTgu\nunblockedUserId: VieQVnQPmnV74nY2' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: P2Q7CMIk5IkUh0pK\ncode: 45\nnamespace: 85hOiqBAd3vaguhL\nunblockedUserId: HlX3VyOpWRCyB9xR' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: 0KfnU9IqBMtHZA5W' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: e3K3jpH9AhN6VWI0\nfriendId: X3hS3DYSuuutyS4W' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: cBarZSQWjTTo6hWY\ncode: 45' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: pYzEJ2nZG7xOhasg' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: vThq8oTCC76ZEkOb\ncode: 12\nplayerCount: 10' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: lJHtBYewd63CgI6w\navailability: 77\nlastSeenAt: 1999-02-09T00:00:00Z\nuserId: rLGVC1gHJLkQHgVE' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE