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
    'type: acceptFriendsNotif\nfriendId: ZzE0fOXiIYM2OYdt' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: WjzbhYF9848aiGJ5\nfriendId: 4GiQvVy0AnFs8RY1' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: SgYZ4y0c7jRtu16a\ncode: 3' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: MTlq02zo6bkJP0op\nuserId: Vn2HQO3dyKfVSwch' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: oqIIlS6uAspcZO1N\nblockUserId: p6DP5d2zgRmqNPZg\nnamespace: riSAfnAMZK8JetMf' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: qeyFzcedZtfwbEjj\nblockUserId: BTGvLONETN8RTrQQ\ncode: 33\nnamespace: qa1jRfHNaksWYSZd' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: ej2sy2o8D7urfMgt' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: DFLk3KXg4L5WgWP9\nfriendId: 6wa5lSeOFoCSS2H8' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: DJc1BLfij7jFdtLb\ncode: 46' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: s2qUEhLoDLrzabz5\ngameMode: zFrG5o20Auxxhyv3\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: mMtPVN83kyrIj4P0\ncode: 85' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: Gw1qXBRgKKiwlJid\nfrom: 3BNNVxz3DugVqt6B\npayload: E8ZuqC2KWxfwNj1u\nsentAt: 1980-11-26T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: ucHZW5ri2WZpJiI0\nuserId: DJqsOakwUFXfYHPr' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: 2hoGMpvRUT1wQiaf' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: a2QSwc2V09vQvrrU\nnamespace: ZG8KySSMdfxYBMoQ' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [efQmiUJRd2dAwME7,8ASDUHEEE3I7jR0m,3GWjZLI1CDQICpNr]\ncustomAttribute: wEkbP1kv46kKCvhi\ndeployment: hQzCsglA4fne3IrI\ngameVersion: cgewv4Y9chGY4Mvi\nimageVersion: 9XWluzubptaNRaKI\nip: oLeHYdCaMLtgkBHl\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: u5pVXw7PGcWmEbey\nmatchId: D3LwwR2KYPRlivcg\nmessage: M2pifdvvcxJA1T6V\nnamespace: rZmV1EOVlLucRmw9\npodName: T1ALjDi5yzZBkseP\nport: 56\nports: {"TXEspRUwZ0PEhvCG":74,"WqCW68Yt1yCkTZy4":84,"OLOpdVJaaRryUyxP":96}\nprotocol: tYPueCTeHEdj2DHE\nprovider: sI4gXp7kKS1bDAOp\nregion: BxH6QGIOm7qi5VPj\nsessionId: iVJgR25YIELV0E5r\nstatus: pIJipfde6kBYkOLu' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: WADh2BrFUpmcFBwo' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: 5DGnTdahOdatk8fQ\nuserId: GSWGnd8w3YPbavuc' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: ToBXCsZta7IYq2ml' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: XtAX5jau97vN7wEL\nactivity: [lFXxlEKDLkM1JyTM,kLUwiWhADf572a3I,KGiXJW9RrZdQmVvF]\navailability: [IzzwavwFvOru8w1Q,NJarsfZyeKIyQX2O,S9WmB04ATIac7Kdl]\ncode: 22\nfriendIds: [yBaODjSefTWwDaCp,XfJl68IlfFW3ftRy,7OyJMS8cXPCRfreC]\nlastSeenAt: [1975-02-08T00:00:00Z,1983-04-28T00:00:00Z,1983-12-29T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: t1399TcW2oPAf5Pq' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: K6YRck2OHpU7qYQl\nattributes: {"6Yd0SLWJuSVfMHMR":"ieXMefC7xEAkuOyv","Lumb9heCSp6Y4kfd":"JCnFP0qDEKhr29Tr","Fq0GFevkR5okbvfT":"U0OittVPKHmA74Kq"}\ncode: 83' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: 61zflkqn532N9Hed\nfriendId: VYOL7HemBjDad5jp' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: F9Hw0nHuE8pwt3cW\ncode: 72\nfriendshipStatus: VqKyn3gFANXN3LGe' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: 6yPKne2W3F8T0LH0\nkey: z5WK4tQHILCsNyEY' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: ggRLvGi9kN8Pxh0g\ncode: 13\nvalue: 8ABQ1SbM0K4ov1Fj' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: 2b7SCSIVoWd8MUCF' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: 1yL8dwAvBFIp81GA\nchannelSlug: n8MIbYrEjXrTMRo2\ncode: 99' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: U8UrQE7Mnnzjb9KF' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: KZQYvz1DpGqFg2zA\ncode: 55\nuserIds: [SCkZ8RcGAlYlxS21,djAS2Fo0h9f3p8Cy,fWnrs6bjYlNvy2TN]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: D2gzNtzf2uq8epDL\nfriendId: 6F4encZ5ZueG9PaO' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: 9fj4MCoOeNQJEp65\ncode: 68\nfriendIds: [DNb6fGvIbZIrvw2D,DR8xycA0rrEbbfgb,abg0n3oNow4VL5QX]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: 8Qz0naVTUIOnl0Mz' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: nSybo6k3183WqpFG' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: bwHP5Jq9FkLyohg3\ncode: 24\nfriendIds: [6GqfyKdSkH16lG2S,MTK7AfN7OP9GEHXb,JBID4LQShDwdUcgg]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [m5uvJdMDe9Xm1wpx,BkqQBFvyukuLVM9s,NeeXzP6Cs8raOjkN]\nmatchId: zJW1962qNuDzHGqh\nmessage: TPGUHc8N5fpUxDWx\npartyMember: [USAb13aFN555W090,gKArzHqD1PmsWMWd,ljBYv60GA9FpvTZe]\nreadyDuration: 60\nstatus: Tfj8kiYadcIk2kdY' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: LJMU3UCrQnRq8iBt\nfrom: 5LZdjyeS6xdw4Cgd\npayload: WCCcDlhWq6ywZU8z\nsentAt: 1979-07-05T00:00:00Z\nto: nROUj0FRlYhQPHHx\ntopic: pNnFFUDEwB9NMzYp' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: S3zDDH9nDeFzQl8i\nfrom: wf8AspRHb3klZhvS\npayload: DGDifHZGiMfIYDum\nsentAt: 1991-09-22T00:00:00Z\nto: b99XaB5AQBlHXNfv\ntopic: wMmfAYQ0o8VgfD4m' \
    > test.out 2>&1
eval_tap $? 40 'MessageSessionNotif' test.out

#- 41 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: ge6OXqRUw9JCqxbt' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationRequest' test.out

#- 42 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: EfTBWSKU1tiLOIch\ncode: 47' \
    > test.out 2>&1
eval_tap $? 42 'OfflineNotificationResponse' test.out

#- 43 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: o1IworHq3TznCM23\ncode: 58\nonlineFriendIds: [dvAxXg7rYOjVpnHX,EHpsWc4k6d265lBI,p30Xo5p2XqSPGybo]' \
    > test.out 2>&1
eval_tap $? 43 'OnlineFriends' test.out

#- 44 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: kIWDdZ6cfsftvmtk\nfrom: rtlFKCJtIN7BizMM\npayload: Ki8WzlwiRVsCLkla\nreceivedAt: 1991-10-15T00:00:00Z\nto: qCGs7RzhVeOy9k5Q' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatNotif' test.out

#- 45 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: HbfgEI8b9VNr1znj\nfrom: CEcaUrbvNMwSOnjj\npayload: T5ygxycfVPmX6ZLD\nreceivedAt: 1979-09-02T00:00:00Z\nto: hjF9QZg7YNH7DMJx' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatRequest' test.out

#- 46 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: Ff9TnPGTOwWvFAhy\ncode: 49' \
    > test.out 2>&1
eval_tap $? 46 'PartyChatResponse' test.out

#- 47 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: TQI6Ck7JPAyHpp4v' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateRequest' test.out

#- 48 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: AHwIjSLLbGPQAgfe\ncode: 74\ninvitationToken: zbER40iCg7wzlRPn\ninvitees: fOycgzd7HRMEX9Tz\nleaderId: 9t5SKAA2VaOayiw6\nmembers: OFEJ1ZxXZr4eIC6q\npartyId: q31FZK0ugL6RJshJ' \
    > test.out 2>&1
eval_tap $? 48 'PartyCreateResponse' test.out

#- 49 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"z6pSXEyaWVAOEFL5":{},"eDUARHTuvYgYT7Un":{},"XWqqfyQvfjTBB7Nh":{}}\ninvitees: [WL1UaJh38ZooXYbM,uuQvl7uUoc1QqhpZ,cAlwkpwtvcAaxBjX]\nleader: LqijsYkLFjKSBCtT\nmembers: [pGwDQf6G0DPrmxD4,xZNJFWYDu2PJBalj,DWW1RMsxLyO3Ozae]\nnamespace: 783KYVLRozDEMD24\npartyId: JemgzhPgtZyRsWcb\nupdatedAt: 1982-08-22T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 49 'PartyDataUpdateNotif' test.out

#- 50 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: x6I6g1CwrECdB7mf\ninvitationToken: iJPcW5ajgXBDeA9L\npartyId: vSqk2KLhPjMMouQ3' \
    > test.out 2>&1
eval_tap $? 50 'PartyGetInvitedNotif' test.out

#- 51 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: hxqcGv3srAIyF7L7' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoRequest' test.out

#- 52 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: xT1nhk8yVf2NVcZb\ncode: 94\ncustomAttributes: {"1hfNYbeYo6sMTL8y":{},"3i7gBh8o3axH2Bmk":{},"atzTUeIhXN7OV2dF":{}}\ninvitationToken: zTWMShudGNXUBT6Z\ninvitees: G1AZiex4dGqV374L\nleaderId: 3FjOKyu547m50QCs\nmembers: ITRS4VKXh5ujPIyW\npartyId: 241Ntc0dg7VqpSB8' \
    > test.out 2>&1
eval_tap $? 52 'PartyInfoResponse' test.out

#- 53 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: i7sCW61ecJJGyRCG\ninviterId: y3FXdQ3AUYFKJcwB' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteNotif' test.out

#- 54 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: kK1uXWF2Jh6fP1s6\nfriendId: B1iNjqOwgafdOiHW' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteRequest' test.out

#- 55 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: gxPCKc1Ddzbm1Rbd\ncode: 26' \
    > test.out 2>&1
eval_tap $? 55 'PartyInviteResponse' test.out

#- 56 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: cPqmgN0Rmwb1RuPp' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinNotif' test.out

#- 57 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: OFOzB6l4QDSYmzL0\ninvitationToken: N1JJzuD3WCF2VvMb\npartyId: pB4by2ZV8OcPS57X' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinRequest' test.out

#- 58 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: fVqnLzlIEQ3gaSBn\ncode: 72\ninvitationToken: JTw10jAstESlPhPm\ninvitees: dCSuFOudbhCIEa7d\nleaderId: 4T3S6fgmeI5uVrTB\nmembers: ImVPJTWpo9hICjZg\npartyId: IGbwV70nDfEN8oSn' \
    > test.out 2>&1
eval_tap $? 58 'PartyJoinResponse' test.out

#- 59 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: LTCNfopVXHTgcLyL\npartyId: Rh0SD4K0jYenbIQq\nuserId: n4HwA1ZBUgNvYTYW' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickNotif' test.out

#- 60 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: 7HW5uXcRWcftK4UL\nmemberId: duA2Ws0aMHeVRNbD' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickRequest' test.out

#- 61 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: crDld9vqmjAWVL5P\ncode: 92' \
    > test.out 2>&1
eval_tap $? 61 'PartyKickResponse' test.out

#- 62 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: rykBvCXcxPjDFRri\nuserId: 4JncKF4SzA3DuXA7' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveNotif' test.out

#- 63 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: LI2FahD75FhjC53h\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveRequest' test.out

#- 64 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: nrHhmzSyMucFsYEC\ncode: 86' \
    > test.out 2>&1
eval_tap $? 64 'PartyLeaveResponse' test.out

#- 65 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: OLybbaeaGqkksOlL\nnewLeaderUserId: 5O6Rk2JkTAaC2QYh' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderRequest' test.out

#- 66 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: q2aMlBg2fQSBWbWj\ncode: 40\ninvitationToken: Hts2ZvUyUUBMNULi\ninvitees: 6237LtlWFsy7ZzRH\nleaderId: WXAygZxwqBwrHuPy\nmembers: tB6DHdk3xjz55fDd\npartyId: OINUvFoplsUTcMwk' \
    > test.out 2>&1
eval_tap $? 66 'PartyPromoteLeaderResponse' test.out

#- 67 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: ySAqVMTSBNAunO8j\npartyId: cfFeQYX5vbgvNabt\nuserId: SwHBxki9hBZYAfYx' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectNotif' test.out

#- 68 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: ewUI5vdqywDmFu0H\ninvitationToken: sChUqXzUjfYlzWx1\npartyId: y1iNqtstNQhfnC4S' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectRequest' test.out

#- 69 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: 0X34B8fyPK6cy7Sx\ncode: 5\npartyId: CAsRSCSVVeWGh4Ei' \
    > test.out 2>&1
eval_tap $? 69 'PartyRejectResponse' test.out

#- 70 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: CSnr0QLOWoIrsNyw\nfriendId: cBsOvd1suAiKzPQV' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryRequest' test.out

#- 71 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: Gt9Q4DUj9oNP7T4G\nchat: WFp1Xtu6ZyTm0YkB\ncode: 74\nfriendId: t1V8kwadwaos4R9r' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatHistoryResponse' test.out

#- 72 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: jf4Racahi2ou7BFQ\nfrom: HsfZGHsNHjGo5pxf\npayload: A6Y7SuNQIydstAuB\nreceivedAt: 1975-11-13T00:00:00Z\nto: JQ5ZleuydzLA4xzH' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatNotif' test.out

#- 73 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: 15z8L8rHe3GkpDnA\nfrom: 3ootpkpbUppLKD5L\npayload: e8AnzDFSTDwZsMGD\nreceivedAt: 1983-05-21T00:00:00Z\nto: NHQ4y8X8HridjY7G' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatRequest' test.out

#- 74 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: En8DnVF7bbmeYElj\ncode: 0' \
    > test.out 2>&1
eval_tap $? 74 'PersonalChatResponse' test.out

#- 75 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: FQIlxF2UTVWNiwEF\ntoken: 53FV6YK4kj17otHt' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenRequest' test.out

#- 76 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: A33ab2byVxStwBLu\ncode: 51' \
    > test.out 2>&1
eval_tap $? 76 'RefreshTokenResponse' test.out

#- 77 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: gDXnvCiAZTuz5z1j' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsNotif' test.out

#- 78 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: 04L6QiLuoOGVeJfY\nfriendId: mZR3gDj5BZJBMHDq' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsRequest' test.out

#- 79 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: xRIXI9jcESTt0rWy\ncode: 78' \
    > test.out 2>&1
eval_tap $? 79 'RejectFriendsResponse' test.out

#- 80 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 55' \
    > test.out 2>&1
eval_tap $? 80 'RematchmakingNotif' test.out

#- 81 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: AAVqndQhyd0o6EI8' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsNotif' test.out

#- 82 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: 7ye3kfGHhcxs1ztk\nfriendId: XA7j6vuZJS0GJc2q' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsRequest' test.out

#- 83 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: TGbwqPaFCnox634u\ncode: 49' \
    > test.out 2>&1
eval_tap $? 83 'RequestFriendsResponse' test.out

#- 84 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: bJm2D8vqFEYqMVze\nchannelSlug: sUeDmMrirAz4c14P\npayload: KL2UamqAbGvcSg5Q' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatRequest' test.out

#- 85 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: ksAqo3jy5ERJqTkI\ncode: 46' \
    > test.out 2>&1
eval_tap $? 85 'SendChannelChatResponse' test.out

#- 86 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: TkEa4KQbeKsNrwFG\nuserId: tt7xsELkRDPivv3i' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentNotif' test.out

#- 87 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: FF6qhUwapgqH1IEA\nmatchId: 2RDCDDwfNjYM6cVt' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentRequest' test.out

#- 88 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: UoWL2METAZy85REO\ncode: 42' \
    > test.out 2>&1
eval_tap $? 88 'SetReadyConsentResponse' test.out

#- 89 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: w1NTJN9ecxOFdLpA\nkey: jNiaoR0hAEubD2tq\nnamespace: mlra9e0XPe3J9aK1\nvalue: gMKZAC4ZAIaQuKfk' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeRequest' test.out

#- 90 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: QDHA8OhMcHq1P7Zf\ncode: 45' \
    > test.out 2>&1
eval_tap $? 90 'SetSessionAttributeResponse' test.out

#- 91 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: rPYOHuhxUSfXwndS\nactivity: IseifIoz6KSXBRF4\navailability: 28' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusRequest' test.out

#- 92 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: tPL5EUfJNFTBIPv1\ncode: 27' \
    > test.out 2>&1
eval_tap $? 92 'SetUserStatusResponse' test.out

#- 93 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: 7QTnVbX20ks3nnBV' \
    > test.out 2>&1
eval_tap $? 93 'ShutdownNotif' test.out

#- 94 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: bKSZATz7b52sJRjB\nmessage: kE9gCEBhhtNPLnvU' \
    > test.out 2>&1
eval_tap $? 94 'SignalingP2PNotif' test.out

#- 95 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: vKtwP9SJxvtaa8PN\nextraAttributes: yxlKYUcTecBC4Ftb\ngameMode: GSIGfV14njBkQty1\npartyAttributes: {"Mtu7hp4ncwZlBscs":{},"ULCo53TC48Rgg1ii":{},"akYL5Ik3bSKWxfyS":{}}\npriority: 77\ntempParty: xqbVMHX00FYkb7Mw' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingRequest' test.out

#- 96 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: kq7DBTrgZ64P6qA5\ncode: 49' \
    > test.out 2>&1
eval_tap $? 96 'StartMatchmakingResponse' test.out

#- 97 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: bZw2x1RbKQgDEwT5\nuserId: VBbVSRle484UNRuc' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerNotif' test.out

#- 98 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: i4PnYFQBCAC34Aox\nnamespace: 2wRpsRCLE1tI577M\nunblockedUserId: TAfOU0xxSWocsSOB' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerRequest' test.out

#- 99 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: oFv8Zu2tWBg6kbH9\ncode: 79\nnamespace: gRhNa8dpbUDloeHt\nunblockedUserId: GIjmGlMDfv1hfOGC' \
    > test.out 2>&1
eval_tap $? 99 'UnblockPlayerResponse' test.out

#- 100 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: I0pUEt81WHGEXysq' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendNotif' test.out

#- 101 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: QFO6T9dDHsccRNkg\nfriendId: UvwVcWalK6Bjv5D9' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendRequest' test.out

#- 102 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: C5b8300LqXEWwuGn\ncode: 29' \
    > test.out 2>&1
eval_tap $? 102 'UnfriendResponse' test.out

#- 103 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 103 'UserBannedNotification' test.out

#- 104 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: bVGQVTr5iuTtqE5Q' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricRequest' test.out

#- 105 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: g3sNtRFvRWDVA4Wn\ncode: 58\nplayerCount: 26' \
    > test.out 2>&1
eval_tap $? 105 'UserMetricResponse' test.out

#- 106 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: XV7Xga8rD8GCbaB9\navailability: 83\nlastSeenAt: 1972-03-03T00:00:00Z\nuserId: 2G6sefRXUw1EejrE' \
    > test.out 2>&1
eval_tap $? 106 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE