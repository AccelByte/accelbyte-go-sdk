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
    'type: acceptFriendsNotif\nfriendId: l2gpACooYFl5h8TJ' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: 1CvlYRXu7Am1Irqw\nfriendId: EcBalDoNZdxwF3G4' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: Gkr7hVRem3S1568M\ncode: 35' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: oRwBuvuLAqnuEwgZ\nuserId: 0bpMNdDor0HkkK32' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: img9mcilj5s9cxiY\nblockUserId: oECNhWElNbZ5aH9c\nnamespace: IUYgxpV0GLmy0256' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: YM9ozz8ykTuYUqi6\nblockUserId: If5Tsj0paHQNqLuc\ncode: 0\nnamespace: 89APGbYVddiskmDc' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: 1xUaPX8x6QKUItD6' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: 04801NwzaePncofv\nfriendId: zgQrkIp78hKFbAc0' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: I6iBXk2bZKXjnOHI\ncode: 96' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: 1OgS1CA1uKyOyv3g\ngameMode: qtwnGy81a6eWk4Hx\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: JfdGFjEpDGhd2nQv\ncode: 24' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: oojni1TrF6hO6USs\nfrom: wypxsIS4lGvQsiYi\npayload: dXDrMWhWReUeudbQ\nsentAt: 54490uArQmQSf2X9' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: hzviPkFF79Ilvc1x\nuserId: gxCi3E7npO3sQPPG' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: BuKsJ9sIFYAJHRMW' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: 2vrYu9QV81Q07XOr\nnamespace: EjUZwzFagOBh4vZL' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [8EHhjoNKt0glx9UR,XRIyfyXyVSReBL8e,AjI2CfBipcdTEbsq]\ncustomAttribute: eu2smcl8LcvrGtFd\ndeployment: EGbmUZfstUsAKKyK\ngameVersion: UabyYlsvWIt3uiae\nimageVersion: 58CFDbTraimyY3LM\nip: dxAp41ExXzRUWfJG\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: VsrKCS4u6Xcf16L5\nmatchId: g5RSgmWLrS1C6Ydg\nmessage: aoiwwgfUiXjifG1I\nnamespace: B4J7pQwafJxWfbtU\npodName: 1UuybAWIzdaF8Bvm\nport: 57\nports: {"zN7W3OveYyCxTtvv":77,"fatdRX2qmFbcflvn":71,"PWIyC9sm9XWlsOFt":31}\nprotocol: gqArSgd8N92egidp\nprovider: 7ISISPGaVVmyUkSc\nregion: ayjUsn7IyqKXwvzb\nsessionId: l3LWcKfRtuX8lWcy\nstatus: 8NAkVq8f2h3fWi5G' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: 2M0LKbVoREfcQNc7' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: MZ1nkUOF8pz88xsG\nuserId: QV7ia2hRyPAekyFa' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: O0hsqiTrxmIflXMx' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: rWkX5H4wDUWPwcME\nactivity: [ZdgU6Ui8tflulQIG,3Alw2Oo9rFrJHcAY,rg9w73scDJGpcZ4I]\navailability: [53,31,92]\ncode: 100\nfriendIds: [w0gzJcsR44ZpQO86,IarEX0YXvHFev9J2,TrPl6bLl1dTFEhkB]\nlastSeenAt: [FRmr6QtO4EyvTpoJ,uHpjBfrboA4n8fwG,2yu5ve5oOJnvmdbT]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: qk0UVleG6pqPK4Nh' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: TkkbypuJy2t0VbdJ\nattributes: {"DFr2PcSeVEcXQsCl":"2BlVf9xRZaBdLgG8","XVwe36eP3mE54sdY":"Ev9fs8ZXdOxveZwt","niSBkopzPiU3oXh6":"RTGjomXMr5HjlcHp"}\ncode: 1' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: lp3pgcRoGbVuI8r6\nfriendId: xEFQEzdoK6z4FdhW' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: zzhqXSF3BTzg7Ng9\ncode: 37\nfriendshipStatus: zH32KmIJ8L6rFc12' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: xW2DAqYEoeJ820S0\nkey: th2Q4CMrkGhMqpUj' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: b4vTEsc7iYE0a4zS\ncode: 7\nvalue: 2NIoeNSYg7LXFWCq' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: 1fl97phABXwz0Eu1' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: P9etor3JP0AgdPP5\nchannelSlug: 9XhLuRiqzVrLqD89\ncode: 80' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: 2pUHmMFtKbpsoZ3y' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: osUGlL550AOAKuqe\ncode: 67\nuserIds: [zp5Z86AVOUWYnFQe,8Gd2uPbVvApn0vkh,sxZZywP2RCCLt6BW]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: xXNlCwUklD7IcIAB\nfriendId: edA7g2dD5iO5Qnw9' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: VjoqYxWFQBHDEoDP\ncode: 32\nfriendIds: [Ufsg7BueUtpKajPT,wL4CNlDL4H8vvOHq,sqyw7IZT59aovPhi]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: FS6VcOch93vIffv9' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: ycvhZ20d1RyofFNl' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: oK6yVqpEGsXGgsjT\ncode: 31\nfriendIds: [ZStQAhonaO85a8m1,odaJfPq6vt4gB0wh,cTjD7B9OcIWUJ33g]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [IJMUvZSYH8Vbel5U,FlD4zMpHhzfdaHZg,diQIzTGZp3e2l5dd]\nmatchId: wwjgVNSyhwRmi23s\nmessage: hnUxAg2q6oUatA56\npartyMember: [jL0v9CopGWVnYVUw,8E52AzcWZtJNqAWp,KjiOGVL9Rfjopyw2]\nreadyDuration: 74\nstatus: XYGZpUpXw1wwHewr' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: uo4UTWX3e5kmZTNN\nfrom: pGUetINY9Nyyn9KX\npayload: r0t6vwAEmjFPi50a\nsentAt: 70\nto: vuL9d8ATSpAo21L2\ntopic: Ek7EvnzKXVlFCWR4' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: u7mBDoxd6wY1x4qI' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: TvEdTrYPv7hSxIt2\ncode: 61' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: ah37Urn3eZCHgqNA\ncode: 61\nonlineFriendIds: [s7B9c8LxOXHM5BTd,RB4ytleuBf4resW9,PWObnaNxxchEbSSm]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: 9WRufsB0GYl6siPF\nfrom: xR0nAqXLpg2S6U2W\npayload: KJJ3hc98FE9SSmQI\nreceivedAt: 14\nto: LYjGajcVxypMCEk7' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: jUNsUbCMuflkn8tj\nfrom: oG0aTXcMiAjaiW6M\npayload: 0rCakrOlfXRptnu1\nreceivedAt: 78\nto: hR5SRcVe9iR2oNoe' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: EjLpKV6dHA5iS0mv\ncode: 61' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: LUnmxO4I8hMNfU9U' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: C4TL8o03P4H9zw41\ncode: 94\ninvitationToken: DuL5q44eAtX0aeSS\ninvitees: B4Aee2Os1f04QyLl\nleaderId: utMgvrrUzl2AyPpx\nmembers: IpZM8xR0mqft9Wx5\npartyId: Lc9Et7s1lH8d2PCk' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"BRF4WgCZY2dQb1Uh":{},"RGzjNsnahjLlbp2O":{},"GuwnYcR9A7V4F6Mi":{}}\ninvitees: [M8hSsRKbW8l4VziL,gEUKdVsvcbvayr3B,Szzsub6gbuuRvFVx]\nleader: rOSUSzLiFR08qs6q\nmembers: [3F0XaWE77fJrgR3T,Rt54XHWPY2jfBDSI,9PAh4TIBuCF65m1P]\nnamespace: UmXEJgzzU0mL2CHa\npartyId: TSD1MdulfkCRB8aR\nupdatedAt: 3' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: M5LSOYgxVfKsczvn\ninvitationToken: aL7uaLDfRqWABlEV\npartyId: Mf1AGJXlb8wCZfhM' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: vrzssohJyCzJctBy' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: o25X7ng3rDZUAuZG\ncode: 83\ncustomAttributes: {"tL6wstGjgfE5eNOR":{},"Og52vT0weXrl352L":{},"V2jxE8Yz1fVoxAKW":{}}\ninvitationToken: KxuEm1eQ3zvNfTCw\ninvitees: Ue8l8c2VQnuuLXXx\nleaderId: DqECm4tq11AWgwAh\nmembers: STySDpehnG53gt1M\npartyId: xm4gQC17wnx9qMLt' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: cPCaiHWS8EsiNZcf\ninviterId: xHomDloZjpCnqTvS' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: S1KhQ2dhYv16SlZJ\nfriendId: 1xWXXhNeKUbJz4Ho' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: oVbwAH9WaUaSlByO\ncode: 76' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: 1Rd8MQT4XBzGK76V' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: kStU1n6COYhpHxSp\ninvitationToken: xU1URIJj5MPqqCew\npartyId: NWS8BdlqbFlp4Am9' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: 4EPFgA4N0UM3V69n\ncode: 23\ninvitationToken: 1exyU8ZS0OHdcnVI\ninvitees: FCs2KuQDqQOXzbDW\nleaderId: 1FisTD0FFqHkphVb\nmembers: FJ3VQW0NzbI0M5q4\npartyId: INnASDqxUmhv1KIs' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: LuMo8a3AkX7qoHMc\npartyId: aHz10guvGkA3aQGj\nuserId: OKfvxQI6MBqOMr90' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: i9z8zvw0m4uNVIrU\nmemberId: q7MIIqlLcGifEMno' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: V9mDddJ0vKEgfs8N\ncode: 85' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: VXtB2utejFVDaMmg\nuserId: WDj9b5KfgOX22F4T' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: DYZNUA2kgYY7A71M\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: saYIw9ksLvoj0i8d\ncode: 67' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: ieV38Wr4egj1GO3Q\nnewLeaderUserId: qdodQQk0gZirnA6y' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: PqREFLwSdsN9xFVS\ncode: 46\ninvitationToken: bdtrpFHtmgR9SDOh\ninvitees: bb8xTv75AV0OJglH\nleaderId: Afct0YqN8fW8jrsa\nmembers: TBKhUsKc5EoSqNzc\npartyId: 37pXgclQT8qpTJvH' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: 3y6WxDvWtEUaN4Xd\npartyId: Oj5gn0esL2yG1vhS\nuserId: gxwGJt7qpxaCj5H0' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: Vw18CzwXS2k2S8nf\ninvitationToken: RpQNdxXo6tDAQVkK\npartyId: hJsJjPVWqSZKYodO' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: WLTIr3gBaByHnos1\ncode: 51\npartyId: SUC0yOxq4pPoJG4I' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: Ijhpi6l37daEqgSA\nfriendId: jnUWL6LesGw7rmvt' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: IH5DBN8c5Zj5UQ0R\nchat: KTiH6zO7qCt1NTGC\ncode: 15\nfriendId: jJtlOChGHcrPqe6j' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: 6Okq7wXiaLsqW7TM\nfrom: epe8wgBcQNZQXr3s\npayload: rQBd0AK5HNNEaXG2\nreceivedAt: 88\nto: kWCoVmw5TLkrjaAw' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: DeGHTudKnKgaEywY\nfrom: tmj4LEnOaoeEsWLL\npayload: iHzsPeJ35CwDSjou\nreceivedAt: 34\nto: JAERWOszXXvXAqPw' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: NW3pusDaE1dUXLWv\ncode: 25' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: NNB6tlB4vVQAeNfd' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: KtxI3QBH7FZYXdRY\nfriendId: qMK0AQPaSSkJNJ01' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: xQaPIrvgPekRDwsN\ncode: 55' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 11' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: 4zHyHge4j2XUVPcU' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: zyrYw5aJbLtSFhi6\nfriendId: 2AxMNfQQKZoGkaMg' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: OmzdTqElnOrk0M8o\ncode: 52' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: 9mMFh0B4OOw9RVQC\nchannelSlug: GjHOF8VsEng4rCTL\npayload: jvwAfXQV9AtJBAYO' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: Fk3KrBI6NOjM6eZA\ncode: 21' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: KXVUWcarMO8Q6Del\nuserId: 0gemejWsSjos1vRh' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: bFzqRnVNY43DGUII\nmatchId: WkU9WqXkmEXWjoZf' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: 9v36u6djJlYrzYMm\ncode: 65' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: 8ehP1FT5KWjckWXy\nkey: bSvHbgtGEtPVUR3z\nnamespace: THiTorKPsgYfirZ1\nvalue: ABNc4DIs5ejPnYOM' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: hSBFNfvbPpsnH9LT\ncode: 89' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: OTRFIUWXonRZ2rfr\nactivity: sw8DKLT92O2HlZMK\navailability: 27' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: yypECnFrJe6AcHs9\ncode: 86' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: uIkJAt46srsewbPc' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: fvSKeMNU5DQCR6i7\nmessage: zCd8FEhYdTJPNXOa' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: 8n6UYvjrcCUYCA9K\nextraAttributes: 8ffSE5kY2OxionSa\ngameMode: u34NGQ45at6WSG2R\npartyAttributes: {"IsfJ0dkQWlpEkGe2":{},"SYEB06CeDmRI0nKK":{},"jUVLx5KOvjuwuBoe":{}}\npriority: 100\ntempParty: rBddj8tVVRRDpw1B' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: 6pslTKKAgTXbktWr\ncode: 14' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: ZP5cMwC3D8gKti2t\nuserId: NuMoxT1xaLalV2Bn' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: ddFkxTaCp8p85hXY\nnamespace: JzQVjNsUAztWVFLn\nunblockedUserId: WNCWDjlVRL0rpwmL' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: XBIfwDTuaCPCMyy7\ncode: 29\nnamespace: oQgWAft7itEUdhET\nunblockedUserId: kJXkDdAvoLCp4Vit' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: 9JKc2u02rdHErvLw' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: 4qogtUfdNb14SH00\nfriendId: qEmClV3EPcK6sn8i' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: E2R81ZVf8VFeKM6d\ncode: 68' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: 81bYw8XkMsfBm53Y' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: JEDpeOyDgBj2758H\ncode: 53\nplayerCount: 22' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: ICnpE33uSSXyE00O\navailability: 46\nlastSeenAt: UbLJw2m26fPDCBwV\nuserId: AX6bwucsocKAjX7F' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE