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
    'type: acceptFriendsNotif\nfriendId: 7s7LXProImkPOhfM' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: FiZQGMer1PN6fSR2\nfriendId: 035BrqWoYBSIwtQ3' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: YFdtJ4PdvbiADBqz\ncode: 80' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: 5r3WMQHEfVmn5uMN\nuserId: pDKYmy4WEyhxXqv2' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: vWoOSmbbAJOaBMmi\nblockUserId: y53MJVb57OYdUVhA\nnamespace: L8CB8WVhYQFMAVJL' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: p1RnOdT0lOSEoswn\nblockUserId: cnz848KnkbNKl3Sg\ncode: 41\nnamespace: dDt4RPGfCc1US69y' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: XzEolng23JQDVHud' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: ud760IKEpeh4PX6y\nfriendId: NATfd90zC9frLQjN' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: ggvgk0DiQQ1Ipxhh\ncode: 3' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: DtjHgcP1HY5S9Bbk\ngameMode: bzzp1dYQdz9Ly6H3\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: PQdJeJkBNYrtYRzX\ncode: 68' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: sDdfYwQ1iFbN0GX4\nfrom: hQMDZfHQjFqAh38f\npayload: pQVEk7xFRlspxCPI\nsentAt: snDdCr8vIrndCXww' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: s8AEjFyQSOoRp1Xn\nuserId: dSh0GCuHpCDkXkPu' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: 01ZW3HF50R1fk9Gk' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: gc4jUqCNtSGsv7i8\nnamespace: 0ytMEwoKSxTUFW6t' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [BxMrNev5kF25CrqX,QbEXuZKkQkoBWXAE,3Fnqpsh0j01gRM4l]\ncustomAttribute: f32amC8VfEARh7oI\ndeployment: 6BYEYTgt1StBkyWT\ngameVersion: WBJ4AbFaJV2drFmS\nimageVersion: CFwDTiGyNIkXfA4I\nip: q2eg6q6sCwSThxvl\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: Oe3mQg742bLim7u5\nmatchId: xUYFkftW1XipX60Z\nmessage: y0Y6Yr8zDDzDZ3CT\nnamespace: XucL7xH5TVeOZEPL\npodName: Q9UHwRXQlgG2edm7\nport: 62\nports: {"iAp3mJzUm5I3DJow":35,"eZSYALXfUSlo5r4E":80,"KL5GtdlTtxpgpYWk":54}\nprotocol: hHrDUJHjEca1jSoI\nprovider: CcI9ufgDiGMhc9Op\nregion: JED4tpxWG0SiQRxp\nsessionId: VUUkHk7U9Tm45Qjc\nstatus: nasl7cggs6iYRuXC' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: QWucpkW6d4Qjkz6e' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: L8LYqxnxsHLqF3Ls\nuserId: uLoXycjHjdaypYkC' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: xXwCDngXNU69G0Ev' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: rUQmlkjK8b5GBLM0\nactivity: [eh9x9lfDhfTg4PBC,SAb97vm11TGwviyv,CGjXeHZRLs7aT7Ir]\navailability: [23,61,20]\ncode: 21\nfriendIds: [i2lXtq91XNc5huYO,oo4k9ltTtpnqrwz2,gTW6O4rwoioeu975]\nlastSeenAt: [uPIE9uKvJyuaWzl1,Qvs3zRMsBeLv6m5M,00qqGuzzUWLrXP9U]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: PBV60JtaxURjbCTj' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: SUN7hSUcIE3r0mdn\nattributes: {"3FefCsK3F7gmCOCL":"u6EPV5XX8Thg18Hu","wZqJmujnu0240dUl":"9e3AedUWeLbAzIW1","kq7jSCEa25KgnL4d":"IBDj6LVk9WjbGP5S"}\ncode: 52' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: cY3J6nUhRp8g0W15\nfriendId: OFExslCozibOdZSU' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: gk2U1WVBz2cYzefM\ncode: 68\nfriendshipStatus: Q53eungHY6QgwzRi' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: hUrf5aGkfmCnAyiL\nkey: vsgRU5wEtAmrTqrv' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: p9ksKuv6okG1uRGj\ncode: 87\nvalue: aZYH0RwC3PV0lO0h' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: CFIY2JLYLIWBL0aO' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: PaIoLSAwteuXki2r\nchannelSlug: LUKj89Rw1nEwdCss\ncode: 54' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: PRDIGtezd0NOAEUM' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: DmMmPSKDUNfzclVK\ncode: 40\nuserIds: [QeUTISXOtJhB2B8a,2FkSPBynKFcnEXOw,57naUtaxbcdxKACV]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: oNODy6Klbc4X7aJQ\nfriendId: XBqG9NvjWrTd0bHH' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: caIcM1tWHzeWAxLj\ncode: 19\nfriendIds: [KpyimxDqdvfHH0BQ,HVL7jiQupqgvwvKJ,gfhmwzFF7KwyAzX0]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: ENv100PSETpTp6UQ' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: eSa3yuD0qJxiu64t' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: bxT4ylPZRn0NPdbW\ncode: 48\nfriendIds: [HltHFDUlwP6U4SKI,asabLOoxHiLUOvC6,3mO8Q6RxuSD0Ihsq]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [HqDbdcWat6y6si85,hQmAq7iYKMnWQZEo,qATdzbkV3s1g1j8S]\nmatchId: IfzsPhiSmNpvuNIC\nmessage: HVdpA3pJ3qeaOKfK\npartyMember: [3WrKFxA14Ez7OnnD,yW2VnE5BS3myEn8w,nJ6KYL9ZSCOw7NPl]\nreadyDuration: 41\nstatus: W0fBk4Ijx3EVNtEF' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: KAipSwx7BNXHOPen\nfrom: tNxAKz3Wq7XMmNQE\npayload: iJlrE0L4VhnOwjSM\nsentAt: 60\nto: GgfIycy5fpHcrTa3\ntopic: 42b5OD1NllspNpzS' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: CvC5KdlXztjPrLWN' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: w6hJ8dujLFw6wL7J\ncode: 74' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: xo5PLSKPXN6aH43G\ncode: 59\nonlineFriendIds: [1Yf60kcbvdt90JKb,O7rLbkBmY78INb0m,QRHFD3gLxtnj92Gh]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: mKjN58NKueWxiLOW\nfrom: 8IlZAlKXE2MBiU5V\npayload: 9zVsMBCA07aDhBSy\nreceivedAt: 97\nto: jYb59T2QewTCWVFm' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: Bww0lEY9MBF0UrgL\nfrom: qbilmX9wxEvcl6OW\npayload: smgbcaS5PcKwSm3R\nreceivedAt: 78\nto: hqUlpte5Z9dj8cZE' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: TBk0gKeJcmTWD9X6\ncode: 61' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: Ik9Lv8DCcIU7Eu4e' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: XqhLx7OUSCF2PUsS\ncode: 35\ninvitationToken: fU8okisiao6IOyYx\ninvitees: iaCdWDrkaMkrejL9\nleaderId: hbIJcynufyFlGwvq\nmembers: 3yEk7flnKgHOv8dh\npartyId: yE5ComHm53V6iEGB' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"JkzF79IwTn35seu6":{},"rBRGXSGkP4vvA3lN":{},"djwJcev7pJJ6jgbV":{}}\ninvitees: [WALhXpXRNmC7nmdR,gtXMCstoT0Hh4FVN,n52Rybw9RabhGGx8]\nleader: FYbautaYXW7Xxv9S\nmembers: [YLH4Z3VEPFnn7XSl,6RoBD8t5cqTqoPgB,cY7LxXUVoub0qA2O]\nnamespace: zRbQYzIolSGS5rEA\npartyId: I65UKACJ6pePNHkz\nupdatedAt: 98' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: sL8TcTYpTyOHYmNA\ninvitationToken: GA8ttBBNiG3vkJvL\npartyId: Rtd6WIuDoiOHE2dP' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: ck3nmdU7sVYcoKSz' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: 61xwoU9e9FI75SAn\ncode: 13\ncustomAttributes: {"FLebR309eG9HIVEU":{},"ZxoM5BHWhyk44hWg":{},"AQruclAW80CjR2ak":{}}\ninvitationToken: e9Bv6pDDEbBJ8Jop\ninvitees: iCAYmwlodcdnDkMU\nleaderId: uFIVU0lUvn4RERE0\nmembers: 28VK3oIM0JO0caWW\npartyId: 7NeTGtlOaL0WbWE9' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: XbIbbI9ZFKH27dzq\ninviterId: rr6tzX4CnW98kE8U' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: 2D7zU6aH4pDqgmw9\nfriendId: QSsg97FjNBo4obMc' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: yu0lHfNdNbMXz2SI\ncode: 79' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: Zb5mzSquaA3LoA2E' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: b3DH58W8H09gHvHb\ninvitationToken: GCZjUm1DK2gLbAZv\npartyId: 1tlJUEfxgfi7gbcx' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: I8CO40zpwO9Rm3el\ncode: 88\ninvitationToken: DHpO4aIAB0WJJ1Iw\ninvitees: XPE8VCFTU3FS1JDR\nleaderId: n1JVDo01Ta3IHQ3f\nmembers: WrebZVci0e24wAD6\npartyId: vhns05moJ6tIjRfK' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: dsRgvfTj3YZtM1Oi\npartyId: 4STWsaElAm32BhjG\nuserId: iqb8IggxhwucUtEm' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: PbEcpcVdcv0EbwcC\nmemberId: sVeWxZDk4ccwApAZ' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: aPdJeZiIwTcEbJ4w\ncode: 36' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: ZfoP99gL5kqaHM4P\nuserId: 5h2HqdtdyKpMEG3g' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: PMelPgeFDCouOLG1\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: IQ1sPtz5Fl8HsJG5\ncode: 90' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: dvOywA5YI1acfHWr\nnewLeaderUserId: 8Kk96jvY2wAahyRk' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: eItHBFhJqw8mfFs6\ncode: 2\ninvitationToken: vvVS7iNl2qdbtV0P\ninvitees: 8o6wx0B55ddk6wxs\nleaderId: 7HNeOS9n3m0pbzHS\nmembers: qFRL0suNXC51MB19\npartyId: FK78OpOHP4ecmzE5' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: Yl3wXzK4XOl6347h\npartyId: 1KZX4CL5WRRjx1QS\nuserId: P51gbyTUu9kKOygG' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: zTeSgXFiCTBJZvId\ninvitationToken: p9OgISLcsrrvva93\npartyId: u8yLuOqEk4RfPAMU' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: lVLeYWBx1mjdDKxH\ncode: 2\npartyId: L0bV8bM77BtghZoO' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: LDOj2aX4rzVjprnT\nfriendId: PI8QVEfttDwD02Rh' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: 9Zs1Gc3W8OpQWiXQ\nchat: wBel4feoz9OQ7oOQ\ncode: 46\nfriendId: 6faBKpBXbKiQQ412' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: dqLkS9W5vYwrz7IB\nfrom: SGYIlOK83rrhly7c\npayload: xGSpMtjv5vJeizfH\nreceivedAt: 62\nto: gujiBScvPR6JeIvS' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: b2dOl8GrNIVOuMGW\nfrom: SDxVLpP5gagFUSpv\npayload: a4NQ4hNWttMudkDS\nreceivedAt: 34\nto: LaSfPbZ8O7a20put' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: UksT1jX09cHW4CZC\ncode: 10' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: NPOcCO27b2tthYuV' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: UPwj8W8spY8TuCiK\nfriendId: NAArkbSXV2V4QpLI' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: pNLy6LlChOKfTzFW\ncode: 17' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 3' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: Q1340AT8jyB0qLGA' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: UxkZg6bO8Dxd5HRP\nfriendId: Hbs0zlA7ie02m4q8' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: ZLzQQxjJxX5sYe2M\ncode: 4' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: 3mS5WRBvcdmVcN9e\nchannelSlug: PjVvTMr3vTOuDB3y\npayload: 9llrUhtw7m9C8tyj' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: 8yEk8wTUJSiqVIvk\ncode: 7' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: 1dKo9xKmt9B6bSYF\nuserId: IdqSLqXIRtIhVb9v' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: lNBWzuH3CEqwdI7y\nmatchId: 4ZG1FIeBeybU8ZUF' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: dV7OBB7faQJ2XnCd\ncode: 92' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: dyrzPMG7ZYpr6kqk\nkey: TW5kQMKrQUNJBRtS\nnamespace: notkdqeeq5Zr5rOZ\nvalue: rHluNGqyy4rLSnPI' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: 105D1frAShZapwT6\ncode: 67' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: ANxJO5rJ5z9J7FT9\nactivity: J1M29ZKpi0oGtsSy\navailability: 7' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: 9aCdIQN7yUFuFKVL\ncode: 63' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: egVJ8lrk9nPRhUfx' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: 1Xi7XzMXA6krmbez\nmessage: 87jTAm2KYfXZQBm3' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: Z1A6YDXOMvtb0kLr\nextraAttributes: EGjCNebUoVLtVmDW\ngameMode: Tq4Dv75NaWnWY8ou\npartyAttributes: {"ONIs6jdmUxClD548":{},"Xn9XeNqjmq9eUWuu":{},"b52jHQvdmIUGapkP":{}}\npriority: 31\ntempParty: 4VqoQAjJHv88Qjv7' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: VP5nVQSFofQ71rYK\ncode: 60' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: gNdh2oZRjxWo96yr\nuserId: 07ARGJRslzIaXNJQ' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: ivYhoEXvaplrbkzD\nnamespace: Z8v5oxemFvnU4ZUD\nunblockedUserId: 5QUUQTEgtwgorkSo' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: jYeX7QZbY1Nejz79\ncode: 69\nnamespace: OCrgwzhz1dr400eu\nunblockedUserId: TAs0zn7IpuxKBiCA' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: ZI0p3r6jAL1DcMPq' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: s3CoSpoClcYD4vOR\nfriendId: 4pfMtx722QEeqZKK' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: 3xijbj6lRX1Bmh8Q\ncode: 14' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: B92Et7XPswYr2oCT' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: VhGdFeypb6ND380K\ncode: 15\nplayerCount: 57' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: 0WqyWK3Zu2dSzDdn\navailability: 79\nlastSeenAt: sh9PPP1wm2yIGBUt\nuserId: FhkA46KEFQAIp3zZ' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE