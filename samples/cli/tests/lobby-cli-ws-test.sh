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
    'type: acceptFriendsNotif\nfriendId: cCHIDMgCwanYs8Jb' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: 7FrQJutbaRga0b2T\nfriendId: H8qq4tifrhiVEvAu' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: LZKw6iic0Q1JL9OB\ncode: 39' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: LBBpm6lu1nmFpF3L\nuserId: EVsOqB4cBUyOFch2' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: RBYwB2ju9gS39skF\nblockUserId: WlkHHnlaAjXzZrM5\nnamespace: 5YkOcsZy6sNKaHcv' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: TSijhtO3q6IlfGsj\nblockUserId: yokp1yO7aws5yJKA\ncode: 48\nnamespace: OcANutC0HMm66xDh' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: luZWx20sNbDvYDUQ' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: XmwIy2JMzn5H88YP\nfriendId: 845YtIW15hJfkPyY' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: JxKmD5VYWhhAzBB3\ncode: 4' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: XL3cziHgeW7l8PDU\ngameMode: fUtt4zc2D9OsLkWp\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: guDQs4oMwqCV5g80\ncode: 17' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: JxO89YGuJ5D9ymTM\nfrom: dIELjquaNfyKckXV\npayload: n37XcVeK4f628c05\nsentAt: 02KWvzKBbgDplity' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: 6cp5l5V0R504sBV0\nuserId: TRnUbRAhO757SDrE' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: pNzVHL0xQjLjuk8y' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: lNdt4RBgOzWlS63E\nnamespace: ioP5qQ6ohsLIaBkC' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [FST20cyZeAAzuM5U,wHldq16x5fAGoAEH,IEtZ7dc5WyEgZujB]\ncustomAttribute: i9C6S19zyHIYUP9O\ndeployment: VkHGrNwA3cgZCD4W\ngameVersion: v2mqvjDExSV42UrA\nimageVersion: yQFEIFKdbeRPBHWB\nip: JAqLDo06c5NdzTn0\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: vXmDrHt70Mfuggp2\nmatchId: xbR35QwMmgW65BKs\nmessage: 8nKDjohRDUxprdaQ\nnamespace: FATBBOChfpdDQVWh\npodName: UnmyluFD10nWlqM7\nport: 60\nports: {"m14QMGPLv1NiN7YS":4,"l8lyZqO5qIvFNSGU":77,"NRpyELPyk1fTrVTl":56}\nprotocol: cCsU4djZFk3hcEtK\nprovider: UN1qhVOcwkTXfKUL\nregion: BpqRQdaW3atY2aYS\nsessionId: L7mGSKNNaXM0Mywb\nstatus: AmOriVLp7UPqNbI9' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: nD2Ia5hwQitRKbeF' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: ImS0G1HNr0fHjxUo\nuserId: tu0VWcutLOvGeLGp' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: fV1XTAZ7ILN37AZ3' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: tfvz9HJL9msgQClD\nactivity: [aUMQpFMwD5RoXMtO,5vxYFtNLNOvkwAmT,EagX3tSGygxYzgiL]\navailability: [vPV3tVfRsV1Vmky0,fDJLureJn5BWC0xV,czIJakY0MKJWppeC]\ncode: 60\nfriendIds: [QkiwasRRlIoUPDSV,UOu52R0XcvAxRefr,YYF9VCCLas2xffei]\nlastSeenAt: [PCmsO39mYHrhONNo,Zv3za3jykqfeLMXC,HIQidktvoasAhieK]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: sFfO3QSKZGE992DJ' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: 5zzoXw7tDVLMUWV8\nattributes: {"UAKGmtM9DuLid1qH":"g0doyxXEfAWmmKLa","hXAchXEuzZWbuXkg":"L1MSaRwyjFqnmIlw","apc4lNuOT5jHOGw2":"dC2f94Pmowl86MvG"}\ncode: 62' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: 4lLFJlbtPO8zTEvs\nfriendId: rNQB5pqljTGxhvUW' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: Qg38QFJuifo96sv7\ncode: 30\nfriendshipStatus: HFw31iV23QfziRdr' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: eKNDZKngK2l9181X\nkey: hLGgELjvaU8EXgsy' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: n7TJq1UIhjM7ER4b\ncode: 51\nvalue: xlPt1aTKJI73fFac' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: uqdicZw7aM1wm57F' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: hd83ZRbF1wWmyt5u\nchannelSlug: AhB42qCsEx9JaOWJ\ncode: 81' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: XK606QgOsSqxaxCi' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: gCpI1zccgthZwcn7\ncode: 89\nuserIds: [0PYXrBNiwM4YLUa1,yqOtOVayfZyTsk46,Y80rRBrWhWvQnFlD]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: MvhRv1ESooLY3blx\nfriendId: xZt7uKG1GUWKnFz1' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: Fg5rMS9l2yPYHkwa\ncode: 27\nfriendIds: [cWNF5tIWM7Mo45Sc,08lL86cnJjsPtCAe,h9f3DaGlKbrdvOxc]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: HqLoZGIYeDYoPCkV' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: celQWuRq1ccyfcQZ' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: omhvNoOxQG9qlXoV\ncode: 82\nfriendIds: [BSHADR44hOsa8RnG,jRUIkALReEGaFUNH,fjZyi5DfwYysYK5X]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [j7zavQhNGGtseSGT,kYV7lE6jQ77hUKE5,DjUBniVO099ZZXuk]\nmatchId: O5SwTU2zvahocXce\nmessage: qFZG42O2LWgjhhZs\npartyMember: [Lmd3YyW1wqRL6goX,KVfFb4y1fardjiAR,LUElVugtKXigmy6f]\nreadyDuration: 18\nstatus: eGeSzlygXQ88vgmD' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: y79O7YlVamryzCei\nfrom: 3VmqM6A00a7fgeMd\npayload: NYfLyHN1mJkEPIwH\nsentAt: 61\nto: U5tnxINFA2nflqMP\ntopic: j5jm4wpVxSzejzy9' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: x8sYS9oRvLxFIEOM' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: LAqtGaFPfhMyfp35\ncode: 84' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: T1cxQJDfCYLhkkVp\ncode: 75\nonlineFriendIds: [ejqqlecz8KSniGyg,0Wy2YVAAVs7T1dZn,suhyawwL6CHrFpv5]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: g4vrJ5rQ9wvSlCUn\nfrom: LdnvUdziS7JsVQLO\npayload: j5nc21ea6CphzNji\nreceivedAt: 65\nto: BR9O5sXIJXuG45YM' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: EpbPioxRalcbw9fK\nfrom: ynUPkpIu2xGqXOnp\npayload: BxLoZsUNwJ9EvWqO\nreceivedAt: 2\nto: fBPCuyMdpG6ebF7B' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: GL45uRowhrWyuedS\ncode: 60' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: xnMqdPPpsJTDB77y' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: zNAYU5RSnLLWuGDI\ncode: 80\ninvitationToken: mWXWsKEvuQYBVJG1\ninvitees: 83A1ZCDPVEDEvnjI\nleaderId: aB98nFx4cUVsMrcO\nmembers: tbtsNtTBlbkmgW2j\npartyId: Zgo0YFjUK6TORTYp' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"50TmLCJFejOqoF5I":{},"bbrid7BX1EbWYMfy":{},"sxwr89i5TehcjPov":{}}\ninvitees: [HZE1dD3BFl9X2HKl,GEDfn22FRzgl0VJW,N7M2rAD1z2poSjw7]\nleader: lijH3vC6lpasPwcD\nmembers: [1bxiEofSr2m9j8iT,FD7HfqtgYbfw4arH,ff9v1iIZyuQCeiFK]\nnamespace: eQjJfCUfdmQKQ7NN\npartyId: uGznpchImP76mnND\nupdatedAt: 3' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: DH9W8eAX2l2NXFwc\ninvitationToken: TDI2Jq1WH5IjtHpG\npartyId: XOInvbTJkhGtiP8o' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: nzMN5D7Xs8n6Wv8O' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: 58NqquWG4Xgg4Dxr\ncode: 72\ncustomAttributes: {"ISv0MiWJfHWmRwKM":{},"hc5dBLMYk6v7wswE":{},"QZ7zfw0ebb9SC7LP":{}}\ninvitationToken: q5xlS4LMDf36koug\ninvitees: 2CE5hlSsrTwcwZlc\nleaderId: V9ttUUXidbHiUjQl\nmembers: hVUdv7KJw7KB0uOq\npartyId: uJqe4O4EwI2k21K1' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: 7C9tYgPCBP3rga3l\ninviterId: 2UdBYbAq0T6gkR0g' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: j6QU6CNMEsvflPP7\nfriendId: fePdRgqRDc18pOhI' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: cwVuMVq4OXCsq9AU\ncode: 21' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: F79DLI5r5gwklJ8x' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: yIB0HqURH7AHhA9j\ninvitationToken: eg7FdT2L3ASDT7tc\npartyId: MEPi3lparuPaJA5O' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: tF2hrmsPeQ7n32on\ncode: 85\ninvitationToken: IyhUhVrg7o7BBoac\ninvitees: hy5HroSwGIaUaJe0\nleaderId: DqaDiw278YhPsO3f\nmembers: aYGiVGKblRvvpVhK\npartyId: YtW0l6HUWAEBGnlY' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: 6GR6FoB4Zbrq56bG\npartyId: vG2Hl4dQHfz8sdkl\nuserId: SigCqQzkgPMPZERB' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: g29CoSLcDiP7WN70\nmemberId: nHo8nQWasxVjifM1' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: 6LvKExfiMh93b80X\ncode: 93' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: vQ2Qg9E1P0TVQtH2\nuserId: c29hrroEkELUvr7h' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: fM2L8oxVekE0mEfx\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: mqLyPmzHjfnjZAwi\ncode: 37' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: TOSx6v6UsdDgCGNa\nnewLeaderUserId: yhSs8ZdMqUL2AjfT' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: SsurHGYidbHAa7m4\ncode: 93\ninvitationToken: gakPrl9Pj0OrsJCQ\ninvitees: DfDCRYlnLnxOzh1w\nleaderId: IZRmoWTJz5bhWmgv\nmembers: mmzTczF9KQYGXKQl\npartyId: Jo7lIxJkSPIn1np2' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: 9t3MU3hoyKZHltpu\npartyId: bgk0nUQmzRIfueqM\nuserId: gZq1XoYxM0vjmCEX' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: wOBd6KHl3KPgVK1v\ninvitationToken: m2Aei7ELv2sUdqG0\npartyId: lI5ZYYDq6dqMeXyp' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: 6lwN398hyaEyxXoH\ncode: 20\npartyId: yW9jeE3epDTDDh2J' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: A7aZzdjQufN9ZTUZ\nfriendId: d05NfYn2Hc5cl4eb' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: ppBE6XuiswQJLsA7\nchat: gOl7fyFXkw9RqMox\ncode: 22\nfriendId: g3Ue2SjZVSD1V3nx' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: 9vT95YmMkOJXRZOV\nfrom: GcRx1RMiVHHnT3l6\npayload: zlQMdKHJzYfAZqXk\nreceivedAt: 18\nto: jcz9n847RDuyVJFw' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: ZCizvzniMrZFJJRz\nfrom: JAkThuzzmUgEK3Zg\npayload: u2Y9GzJC6oV8JM0R\nreceivedAt: 40\nto: 9LeSs365fsfwJhuP' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: fTPKm3KUjKQHzWfw\ncode: 52' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: owUpvrnrXWhMjZ3C\ntoken: 8EVzZlMB9D4hJ4Bh' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: 29ugaavBpvhDAkUW\ncode: 3' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: 4nwMyensNLDsCVYi' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: VPWpZMgfwR2blom2\nfriendId: 5UIrSxo0BV6ATsm3' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: gYxlAu2uP0fMWrIl\ncode: 93' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 94' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: mxP8KXWg6fXofLxf' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: z1R0W3J1mAOrBaaV\nfriendId: yF3hBUHiAU6zvoDS' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: 4X9fOoLQVLohikWh\ncode: 68' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: tcIjCIYb2GcD1ymp\nchannelSlug: StKNP7XrdLiddxhh\npayload: 5xLPqFiLnvFxf0AW' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: cbjVp7dbJF2qd5W1\ncode: 43' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: 8JsYS8l525Ms98Qm\nuserId: psZeAlSHiVweIJK1' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: Ebf3J3OT3JlHnDUR\nmatchId: fRkXFMiulqtuHemC' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: AOrchXVpL9W5Ooo6\ncode: 58' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: Fz1KKtkMnB2h22WQ\nkey: BKEdJCxKXupP2U71\nnamespace: KNDzjWUcXakeWCms\nvalue: cdNVxK8gWKWqbPwp' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: QX4zGMwKNvgbNZ5i\ncode: 26' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: dTP1ji7saRjgolXs\nactivity: bRL25tj9AhzjHqBP\navailability: 92' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: QzSe8UK7XD7zDFsz\ncode: 72' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: uR1fa5eqwGyRHhsJ' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: hsQ9XD2Dn3eoEOvR\nmessage: 97mLQD2L0ctQmmWP' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: tJ1SBZ1bEwFYkl4Z\nextraAttributes: f33Gm82K7w1mbk6T\ngameMode: 7QkfDcNQWf4rG1sa\npartyAttributes: {"HwemLAXjvE3xLwbr":{},"R0fOx9zTG0WjQUEJ":{},"OXF4LHoYG1Zezx8p":{}}\npriority: 65\ntempParty: tgdgbAEUqPUDJbJG' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: lo8oS5xw3c4uI08o\ncode: 33' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: sRyKavnLonigcZ0d\nuserId: OmM2atgcWzP8OLIj' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: stNMfO5OmGazgWru\nnamespace: QgenZch2bSParGM4\nunblockedUserId: mAD4CPrn38RasW3a' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: DnyIYqqbkrfWfKiI\ncode: 74\nnamespace: 9qnOMJWAeaCGGiXf\nunblockedUserId: mEM4ZvOzeLTgl0nZ' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: 3u74AeXSBBrvDAuG' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: yNSLULLectkxHpmR\nfriendId: yD91zNOhhlvw0dxj' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: 6TsvDIAUxv8ePZRS\ncode: 2' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: 4b6m7VbwNfbZCdEz' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: GJ2fOVkemBGkwD0i\ncode: 42\nplayerCount: 90' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: 6yopVzttT1RzSPqV\navailability: 10\nlastSeenAt: esoEu2SxRtfMxvic\nuserId: ZeAvs7MPjpvowVWT' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE