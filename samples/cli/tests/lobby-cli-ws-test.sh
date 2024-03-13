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
    'type: acceptFriendsNotif\nfriendId: UxvTTz6u04ObX5Wa' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: r4pjraX0cgXJ1pVF\nfriendId: GGLcIWutc3lAAL7z' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: 4EHJgX9oHZSufppk\ncode: 31' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: WJ7DIFvBVN03wIAb\nuserId: y2VQG3ooyoRJG4rh' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: lEjtegjL3UJfi4D5\nblockUserId: lBfFOB9FGhePTuhA\nnamespace: 2Uu3iMYVwZ2QaKDo' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: WL7epNfGeVJzRJuV\nblockUserId: BB16PB1DJ16V12Kv\ncode: 70\nnamespace: ZgLlTE4BtRnCtk9U' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: mRNZtuD3C1hBcP12' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: PubsQ3rFwe8tKHDp\nfriendId: G99mOOkif5cNbhIN' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: UAveYHI4bmwyoLfi\ncode: 58' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: OuD8a9th5l99MW9L\ngameMode: BjCqFazizzROaunY\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: TCP0GW6ZmZ4En8QU\ncode: 2' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: JK2KmQT4olem6Q3A\nfrom: UZqJztYNMJCwej4M\npayload: mcs37bwdVPSHXYZc\nsentAt: 1999-02-25T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: xqIKrfQOPgtZl8zU\nuserId: ZzO3bDkW2wEnvue0' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: K4HtQNsyJTCWDyDs' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: k5AQN0ayEWKiutxG\nnamespace: LPd32FJXqySL8T9e' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [40LgGyrOR5Mr4dqE,d9ctCIeBka07FBVp,wqL2HXhmRW7eBMkp]\ncustomAttribute: QVQ88uESUcoj9OQJ\ndeployment: rLVxH4z4B28ex5f6\ngameVersion: P40wMqtde3rf56Mp\nimageVersion: DevMynSkKuWilzxU\nip: 0r6ututNxSaCozR7\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: N8ZcGnyVpRawEF91\nmatchId: oQrq7G7HYDWrmCYB\nmessage: 7EDiDBK1xnUYSFLz\nnamespace: mZKHl5sKZAQQtpjy\npodName: 45Q33dsjwBr5Q59s\nport: 32\nports: {"hTk3UrQs1BlGwvVR":88,"OXk3sICgSwlgfDvC":90,"qdTbnO1YETAjrzRV":79}\nprotocol: 4VQlockWfIqp2zSH\nprovider: snH3Pv3lC4WNUk2d\nregion: TO0T0MqWkMqM7SWk\nsessionId: SH6UmpvKPYSkgVrk\nstatus: xOnxsZSkckzIgyv6' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: S2F2eQxeVZnIyF9d' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: 4zySrvONAYstFY9t\nuserId: tJM3TvXoU5e1IXu0' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: Kf2iyaEOiD8qxwym' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: wT7QogKNrbKrPcI2\nactivity: [CowIrR8c8WyFnYIx,aLfnD5PUGeMMGEtl,V32I8CJUAS4mXfHD]\navailability: [p3E54tdQxLbL5gO2,wFXu18OJyPeJhFgN,WhSZm7oh1Beu8xMQ]\ncode: 47\nfriendIds: [fD3v6mPXllBCjcZ0,94aDF3O5WLTFcHNB,vnW70XtlqTdHVIyN]\nlastSeenAt: [1981-02-05T00:00:00Z,1971-06-21T00:00:00Z,1976-12-02T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: zLPUbpzC3O4raKl5' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: wRo6swlBYST7eQZ8\nattributes: {"9ewuDE4OHkpvf6UV":"ZM3PzohabO8GT5aA","BqxHdPiOngrZ1j4b":"Z9ZJTJyx8fejZhpW","Qc0s9DwvvJL1ZP01":"L4k2N9MCXzHcvOOc"}\ncode: 73' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: yw3kknlDtO1Lc60H\nfriendId: z3hN9gVEYHMWTdJL' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: v0bAxGaUur43amkW\ncode: 68\nfriendshipStatus: LzT014YS7HWQvvpM' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: yPJPvviIEdF9XssA\nkey: ykFVcjfONyXjM2sD' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: L0gGnVxr25HL9sdY\ncode: 1\nvalue: wD6Twf7J9BmI9rp1' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: K5PFYDwPz2yAF1W0' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: ySuVX1UPp5TINe0g\nchannelSlug: HuFEiIUtB9Sx2J5d\ncode: 33' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: cXzYMouhz71LxPzz' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: KiqJS5VlsSWdOrtk\ncode: 95\nuserIds: [Tk64wunRSntiKqir,O2jDbIoHtHwd2czU,3Cd26KP1aGYzHLzq]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: j2H8ZfJxgcFk2JBW\nfriendId: ScrKKhT7RkuWHJpc' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: nHpgfFQ6bt9wKbxG\ncode: 98\nfriendIds: [y77UXYltQlj9isvF,mP8WVUDbjcKq6TTS,yfRLBO4nwCdtvQGZ]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: LEyHI8uqGt7zqoDm' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: pm9wsXJ7J1taGZ2X' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: v8LYyNHip4TlYiod\ncode: 23\nfriendIds: [rUCrNpP1F8Mj6E5N,3Vwzbp23BuoxlFUU,s1tIHj1qEvXVkAi6]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [elywktkTBhsbQjtA,LQLX5pHYjKTXIw60,SGSMLdyInvFGrKGt]\nmatchId: IWQbNCSHSoX7U63d\nmessage: PGDV200iRlIfPvnS\npartyMember: [KDiuxwYeTvkDfvR1,A9w19Wd7v1t7UDrk,EIPZumcZC1NNVmlJ]\nreadyDuration: 23\nstatus: i1rGZjUuYcV2ysf1' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: Z4fh48fQFAfdORF0\nfrom: pSUPRQKajKW2gvlS\npayload: IqlnoxIliJfZtGV3\nsentAt: 1997-07-31T00:00:00Z\nto: I67dr0wE0LAmLs2R\ntopic: 6TiuJOUqik4knQWY' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: Jd6eJRvVkBBYaRaO\nfrom: Lo1s9aulllnZrOzh\npayload: 61FX4NXGhrsCamGp\nsentAt: 1985-04-19T00:00:00Z\nto: UAGfQ13U9QyqcAv7\ntopic: MiAST7RadaeV16u3' \
    > test.out 2>&1
eval_tap $? 40 'MessageSessionNotif' test.out

#- 41 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: PboA5GVhDwmmVdVw' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationRequest' test.out

#- 42 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: yHMez0jmXGkV0FRK\ncode: 36' \
    > test.out 2>&1
eval_tap $? 42 'OfflineNotificationResponse' test.out

#- 43 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: cogyinBsvuiyOoKq\ncode: 38\nonlineFriendIds: [4P0ZQilkpljSTPKw,a9fBEWDkTQNizVas,CgmOr51dsRPqN07B]' \
    > test.out 2>&1
eval_tap $? 43 'OnlineFriends' test.out

#- 44 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: 9r1IoNKQvz1OZa8v\nfrom: kyifjEKbIAQinDm3\npayload: 83CXf21h25FXXzaF\nreceivedAt: 1975-07-15T00:00:00Z\nto: NH72n6S0SO5rfqYJ' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatNotif' test.out

#- 45 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: GF2nUO5HvRpPzFnT\nfrom: tirvvPgLRL5fj04C\npayload: 417MwDL86VeKuAEK\nreceivedAt: 1988-11-09T00:00:00Z\nto: HDrJoaEYYcKaw49y' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatRequest' test.out

#- 46 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: quAURMxNV0XlOp97\ncode: 73' \
    > test.out 2>&1
eval_tap $? 46 'PartyChatResponse' test.out

#- 47 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: NVDcSs89IKAeW8Jr' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateRequest' test.out

#- 48 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: UJIolMuPe0ZA1UjL\ncode: 15\ninvitationToken: 9NUBzCPPsf7QvdAQ\ninvitees: 3Jfojxt8tVt3Rh69\nleaderId: B1Ul4aefZQGRWPEt\nmembers: ZvP8ddTt2UPMKuxM\npartyId: jJxMal3m5Z7KsM94' \
    > test.out 2>&1
eval_tap $? 48 'PartyCreateResponse' test.out

#- 49 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"wFR8oen79HI5GlYC":{},"Ja5ikKqtQeI76LOn":{},"nto6vqxMf9DgtQIS":{}}\ninvitees: [OQp9sCKg3S4mXLI5,FuplBbe3zwZo6BkC,6eLKJAZRn0lF7BM7]\nleader: WGFFuJ1x0wmhaV8B\nmembers: [Z7aDufQz7RZh0cOj,0ukRMkGFeHF4VHPK,XLAt26kP24i9OMs6]\nnamespace: iPILi1hSOI18cfDH\npartyId: 2gVtMkljrNqT210p\nupdatedAt: 1997-12-31T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 49 'PartyDataUpdateNotif' test.out

#- 50 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: f5y00wOJ0XIUHyN4\ninvitationToken: 0RJT5u3SNfiySEvr\npartyId: ozZiLtDr9azjPJzd' \
    > test.out 2>&1
eval_tap $? 50 'PartyGetInvitedNotif' test.out

#- 51 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: meBaKmKHkpMuChRz' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoRequest' test.out

#- 52 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: rGLIOKj0QnXLDFkf\ncode: 20\ncustomAttributes: {"2T3KIQ9TZmDJEn0S":{},"edb9asDbvNKiKbPg":{},"yIozljMYIHobqk0v":{}}\ninvitationToken: lYKfL9ZZqnD5muJ4\ninvitees: Npd1HGEc4dqmtQY3\nleaderId: L4qQeU2NqHTeTsoV\nmembers: tRn3in9A5oMpJFE4\npartyId: l7yzICriVhcuS4bU' \
    > test.out 2>&1
eval_tap $? 52 'PartyInfoResponse' test.out

#- 53 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: XZvT0qW4cB1LcKY5\ninviterId: xinHsHqspi1dekc0' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteNotif' test.out

#- 54 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: T4P9RqMvhYQKBn0n\nfriendId: UBHXqRL7w05YN5Sc' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteRequest' test.out

#- 55 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: M1b8hJLeny166BZe\ncode: 33' \
    > test.out 2>&1
eval_tap $? 55 'PartyInviteResponse' test.out

#- 56 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: SQnXPNOThdCc1BQf' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinNotif' test.out

#- 57 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: KpiXCq1dEdzFXjvx\ninvitationToken: cfQwGdSssdfmTt1O\npartyId: u0zV8K8UyxYsFfse' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinRequest' test.out

#- 58 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: 58CcGBoX4QM9FRKn\ncode: 57\ninvitationToken: FwjYNY66v5N6N6Ws\ninvitees: mZA4HyWgq2jf4xHl\nleaderId: cJUu6Z8uJ14S18iH\nmembers: CiIYPLf1IFTIjAMY\npartyId: vz52M67mqllKgPs6' \
    > test.out 2>&1
eval_tap $? 58 'PartyJoinResponse' test.out

#- 59 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: 52iiF3THVfegaiKg\npartyId: LFG5EWiU8X7ofY9z\nuserId: 6570HjOjWpzNywqY' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickNotif' test.out

#- 60 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: PYfzSRePjS33ICCv\nmemberId: Ck3YxMWlgr5REicM' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickRequest' test.out

#- 61 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: Sz2O4nTRVKMVzAqJ\ncode: 2' \
    > test.out 2>&1
eval_tap $? 61 'PartyKickResponse' test.out

#- 62 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: pIjpdPvnC0ILcJNj\nuserId: ZCKNTHk1oENtRT5P' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveNotif' test.out

#- 63 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: SgrMiwTocyih7GYW\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveRequest' test.out

#- 64 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: 8IwNW1wa54E0Pbnt\ncode: 8' \
    > test.out 2>&1
eval_tap $? 64 'PartyLeaveResponse' test.out

#- 65 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: n0YatSvZ1vZGKglB\nnewLeaderUserId: yV8TPcQWLIqJtoCv' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderRequest' test.out

#- 66 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: vKuMmP5FJZaqqVid\ncode: 84\ninvitationToken: 0RISxE7Js6t2HasI\ninvitees: oQFmjrr8ZE0CIDF7\nleaderId: nq0XoR3dAQ8ZVUOE\nmembers: sLrkts12JWLya1Ip\npartyId: mPRW1QeB0fUTia16' \
    > test.out 2>&1
eval_tap $? 66 'PartyPromoteLeaderResponse' test.out

#- 67 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: eLez1cuBkSNHn06Y\npartyId: dP7j4JLmxmf1hFmP\nuserId: mLZmgFfcUQE0p3uB' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectNotif' test.out

#- 68 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: 0iip20o6b3wKeA7P\ninvitationToken: tUQ4fIEl9LP5FSqx\npartyId: bcByXOiEreV74Tql' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectRequest' test.out

#- 69 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: C7RQ5X1DaTGofDfB\ncode: 23\npartyId: 2hEHlnzsfXUa4AAL' \
    > test.out 2>&1
eval_tap $? 69 'PartyRejectResponse' test.out

#- 70 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: ez7zRzrWjedHrXfl\nfriendId: QspPmHhQceMAApvE' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryRequest' test.out

#- 71 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: Z6lwNOQ5mKQ9i4Gc\nchat: 5VJaCUNxUgxxH4bN\ncode: 13\nfriendId: 0hmzghVxfSj23ZAI' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatHistoryResponse' test.out

#- 72 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: idUI2lPlj5lVmQ30\nfrom: go98t0iOsVzx66n9\npayload: wu0insqEkgLT96ID\nreceivedAt: 1971-05-04T00:00:00Z\nto: c0VszJP5Y11N60xy' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatNotif' test.out

#- 73 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: 7dcRBB0IQ40PXcte\nfrom: Ir7JJ9TJ2iLpbjEW\npayload: 57GgnZuaQp2hT0e0\nreceivedAt: 1988-05-13T00:00:00Z\nto: oUOZtonl0ePqExOd' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatRequest' test.out

#- 74 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: EE3QPbacrwJGHhYz\ncode: 70' \
    > test.out 2>&1
eval_tap $? 74 'PersonalChatResponse' test.out

#- 75 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: 1aLFXoMCSKP6LCh6\ntoken: LK0fVFqlfE4Fmc10' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenRequest' test.out

#- 76 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: J4vyD8kDizy4UIEf\ncode: 85' \
    > test.out 2>&1
eval_tap $? 76 'RefreshTokenResponse' test.out

#- 77 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: sn5nCuKpYAXukSsn' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsNotif' test.out

#- 78 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: bZ51dIRmE9rNK9Nn\nfriendId: rHP3y01ruABlQqWs' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsRequest' test.out

#- 79 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: ER8XEn2plWYLrAqt\ncode: 36' \
    > test.out 2>&1
eval_tap $? 79 'RejectFriendsResponse' test.out

#- 80 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 63' \
    > test.out 2>&1
eval_tap $? 80 'RematchmakingNotif' test.out

#- 81 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: eobhvBIXAbfUZow1' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsNotif' test.out

#- 82 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: c8HAVhd8Xs1KC6vA\nfriendId: 9qQb8mRTvpIaAzqE' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsRequest' test.out

#- 83 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: peAZBYRWSXvjwPFp\ncode: 54' \
    > test.out 2>&1
eval_tap $? 83 'RequestFriendsResponse' test.out

#- 84 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: BusIGnrvSjaA9O6j\nchannelSlug: BrtUXeuNBprL4uqD\npayload: 0RPYQv1i7rT3EsXA' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatRequest' test.out

#- 85 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: 97AEVhOVJfokC7Mv\ncode: 100' \
    > test.out 2>&1
eval_tap $? 85 'SendChannelChatResponse' test.out

#- 86 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: IJYJy6QPso3iNdi6\nuserId: XFktBR96hstSXp90' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentNotif' test.out

#- 87 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: I5B2uXqTjwsoaVdd\nmatchId: nEsukh1SpakYy9u1' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentRequest' test.out

#- 88 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: ALuNmvjxqPWWU6XV\ncode: 85' \
    > test.out 2>&1
eval_tap $? 88 'SetReadyConsentResponse' test.out

#- 89 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: rTMlVmmbS0XDjB8y\nkey: wLTHOiy7z9Js7XLF\nnamespace: IpiWwefY8SUQ2U0n\nvalue: PfVTyNxU0wxP0tgp' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeRequest' test.out

#- 90 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: 65XAAdbhDNpx3qD2\ncode: 28' \
    > test.out 2>&1
eval_tap $? 90 'SetSessionAttributeResponse' test.out

#- 91 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: jS3oJCAPkYyd4FwO\nactivity: pGzjAlt9eQG17ZXk\navailability: 73' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusRequest' test.out

#- 92 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: grm438q6A621MwI7\ncode: 86' \
    > test.out 2>&1
eval_tap $? 92 'SetUserStatusResponse' test.out

#- 93 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: vKI56QtPGjw2kTs2' \
    > test.out 2>&1
eval_tap $? 93 'ShutdownNotif' test.out

#- 94 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: i3BRHFzqCrY7TQlZ\nmessage: ltYHqm3y4JldZhXM' \
    > test.out 2>&1
eval_tap $? 94 'SignalingP2PNotif' test.out

#- 95 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: TRS6VU1hIkx9kpss\nextraAttributes: eKd9h9RTS31GIi2y\ngameMode: xEp9HTGVoNeibjH6\npartyAttributes: {"17hHR8r80Lj5n0ze":{},"JDLfDOOQrVWqIDpR":{},"m6U1yk4Ln94oXaz6":{}}\npriority: 18\ntempParty: CnRxQwY4NtXprFCQ' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingRequest' test.out

#- 96 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: 1mQq4ZmWzqEURI60\ncode: 0' \
    > test.out 2>&1
eval_tap $? 96 'StartMatchmakingResponse' test.out

#- 97 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: jr0LcV8oeNXHmJCY\nuserId: iTUR7zCDSi3wCRqd' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerNotif' test.out

#- 98 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: JhBtQjftEYDqf04j\nnamespace: NK7Yxa9nA47T805b\nunblockedUserId: 296XuH04uDw3y3X2' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerRequest' test.out

#- 99 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: J0SdAEpEGiE1n09O\ncode: 15\nnamespace: r3w59hmav2A7kKZV\nunblockedUserId: wr3AKOYR2Pl7dJPe' \
    > test.out 2>&1
eval_tap $? 99 'UnblockPlayerResponse' test.out

#- 100 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: zFTZrBBP5Rxyh0dz' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendNotif' test.out

#- 101 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: J9vhYWSpHmmv5duL\nfriendId: gZiZrEmOuLnZZTEA' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendRequest' test.out

#- 102 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: IuB1BURlohWavv58\ncode: 80' \
    > test.out 2>&1
eval_tap $? 102 'UnfriendResponse' test.out

#- 103 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 103 'UserBannedNotification' test.out

#- 104 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: N1cI83RP4Iv4hW96' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricRequest' test.out

#- 105 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: UIMSSJZTkyujg7RT\ncode: 51\nplayerCount: 79' \
    > test.out 2>&1
eval_tap $? 105 'UserMetricResponse' test.out

#- 106 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: KU0hrXb955tvCYkC\navailability: 8\nlastSeenAt: 1977-04-02T00:00:00Z\nuserId: vN8UegN8p9ptTW2g' \
    > test.out 2>&1
eval_tap $? 106 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE