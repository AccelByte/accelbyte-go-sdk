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
    'type: acceptFriendsNotif\nfriendId: EXSJGCDEXXi7qkT1' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: 4hbEbPKDfbS8lREb\nfriendId: sXwTchtJd3o2xKX5' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: fYrqmeVy3WE3DRrv\ncode: 36' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: NKTZpsm9q8y36kpM\nuserId: fSkUEmJeMPk9yVsS' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: eNWNhvxvCrrjIlGs\nblockUserId: ZyDesF1DQsmEuqKY\nnamespace: Xt4Pjv6VHMzJqK5t' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: qYYzHRPraHSkdW4Y\nblockUserId: EdaUcwrAgvRZFU2M\ncode: 65\nnamespace: U5bXDJFJhyNGCils' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: CFn3tc1YAY9xgGvx' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: hGk8tPJJaWFlPPzt\nfriendId: aSixx6taMDPV2bcQ' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: KK1H2SFP8UQwM22C\ncode: 50' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: 3xDPelnM3APTKILF\ngameMode: ItmpdAenEeprIwTH\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: EfjnyjXjhUyBLU6a\ncode: 85' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: GBrf2Dd3QC1og5IO\nfrom: ipv1YPZqRnC5tjzE\npayload: IgSlmNVkjEyLKwTX\nsentAt: YkTyy4OU6L0wadJN' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: RVSlrptr1w2BM16M\nuserId: N149XtlYqSYiNY13' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: LN45osiBSQxOXHgo' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: ED0O1zrVZjJcKNmW\nnamespace: QsGpmybe7yxzMaW4' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [cVs9lAbuNGyPRsYp,bAJZWush3BHKVk0v,gwqrf9qsPfGUsJ18]\ncustomAttribute: THFtySupSPQAuCM0\ndeployment: PuOsHdvVtVzfutW8\ngameVersion: aDmwuIkDDD0wVo22\nimageVersion: 80UlT0vsOFOOssuG\nip: Pnqmp2IGrp7pavni\nisOK: False\nisOverrideGameVersion: True\nlastUpdate: Z4s60UJVuNupMVIZ\nmatchId: ZxyGlFUNhFmX58q6\nmessage: xJwcGk8xmb8CrjOR\nnamespace: snwL27lXvO7udIUO\npodName: U8sKnoxLDJgl1K0T\nport: 37\nports: {"q8pQ64f0cp7nbvEx":46,"4WZN5Z79Dro3ZCvs":24,"oOwDyjrvmZ5N8XzU":100}\nprotocol: xPct2Gvz8B7hlRpC\nprovider: Nu370hnCyUvhY93N\nregion: zNXtatso9iPlrvT3\nsessionId: sFThxhKQ4JmQA3QF\nstatus: xDTdHjFI7rA01dPo' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: jkChMWzOYU1OvWDP' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: tdIgi16SPnj17smM\nuserId: 6zlDoOXgZPjPHJac' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: lFbTFbCGgc41HlV0' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: u9z49OY1owa7nDAF\nactivity: [s9RMeoyDo2PP33SX,B7fg4inOsFaCOfy5,lmj6o3BDEpSUqKaY]\navailability: [69,73,4]\ncode: 17\nfriendIds: [IDEgXRONdJrEsDGa,xvorttLdPTVkVGvJ,2Vo3VM2sfgI7aD9A]\nlastSeenAt: [Ik4dQAWJJEYozz4I,QDl7cGtfxrIrRC79,nMxIlaVjbtpvEiJR]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: e4c1Zkw2wqxKrN41' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: DGHd0EpoQeUU0DmJ\nattributes: {"r5St4QQtgEy4VVrb":"vPb8Kj7xP2MRwymJ","alJZ2kmjv7RIPsBk":"9I8S5dlgJ2SodPob","zajaTpMJWHS4Qjkq":"sHcGRt1279bEI9P3"}\ncode: 17' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: GPsJNBUHKEyJCb0X\nfriendId: F2O6EEiZzM7Owz1c' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: zPHiKAfm9Qmm5Hdg\ncode: 49\nfriendshipStatus: wP2h5MZKAUBSibMB' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: TkMwC7PuyEjhqABz\nkey: vGS1TW2H8kvyr5by' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: RnJEW5M074715rKZ\ncode: 98\nvalue: yOxBdAzkcqcScsyO' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: H3tXpy7pDmDtMLXa' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: wk8ObmlmH9oU8b1m\nchannelSlug: NtGjWZsH6SKCZ7ZU\ncode: 89' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: AdOKZZYANxp1DUis' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: CvOzlO8p1k90Nw13\ncode: 51\nuserIds: [BpMmhJLh0zq1GSdY,G9xhYRasWoueyz7I,AqJF08vePrl90qfm]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: KIqEpy8v7vY3Gh5n\nfriendId: Ft4u82qF2DLN7APL' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: dIJZYi9nkA1pMVnB\ncode: 75\nfriendIds: [PtST3kdXCgQd3mXK,41bnsrQlXZetVf5N,SlCfysoE3TcECg1K]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: aOlDnRoRQWBBtYH9' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: j8Wsod71kK6385EI' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: f7EEdk8CL8QSB4fz\ncode: 85\nfriendIds: [Yz1pi3hwHMoKztVf,NyFAN6jMtcWBJXi1,E52sbo8CZogQ2h5T]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [cItR1ZgDqViazSHv,S9xJdX3NujHg1vbm,2jnteS8rWD9mgydS]\nmatchId: HPG0CoANwNjFFhUE\nmessage: AHIE31AQ8G4BHHQ9\npartyMember: [oRPUl1e8BRv2ufKk,dXVLFspw9FnXuMU7,wQ2ONN4MUturckG5]\nreadyDuration: 39\nstatus: RHLdtpLnb7CR00hv' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: HTpvTvFTuoHNPpmW\nfrom: 8CEXvTPTrBVANU18\npayload: jodJJN5kkJLz6IHD\nsentAt: 93\nto: Mx3AxXpbhy1nlGe9\ntopic: G4pHZ5Vqf9dCadDl' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: yfcyccaFfAhu9Ba1' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: Utfmx0UA6u5JZAzA\ncode: 40' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: UMTA0SMahvQI2RZE\ncode: 80\nonlineFriendIds: [SCPRec9a37l0R7OR,zSNRBjIplKSFlv9u,OzUGnvwXXDVCn7PE]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: Xr62UJmuYsEbjLSS\nfrom: j908iU8XxsxDO6PI\npayload: gqnqC6qrxopSqNqE\nreceivedAt: 47\nto: AAImT54e6B5Wc5al' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: RVdA4puwHMoRRhXM\nfrom: tIyulO1zK5iGwDfl\npayload: s46UqjbNetLTz0cx\nreceivedAt: 42\nto: fZA8quOVerGczc8r' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: MxmYnIckj4tctwOa\ncode: 21' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: 34Q5NGyGdZNpieOg' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: pOhk1ajL2ywCSmpE\ncode: 30\ninvitationToken: YlRKCRYhIoUIoNQX\ninvitees: YOvZUa5Kpm3Ih44L\nleaderId: VQEVMQwQgSPDv3D5\nmembers: TsrM1Ns7roJ8baBg\npartyId: CHz0Xgj4CIBYfD3V' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"LlLKkTIPnxqu68FN":{},"1FBwAXpLst2bUMPc":{},"qrLnoM4UctypFNZl":{}}\ninvitees: [j7ipzraZlJm5tI5k,lN1TQ6QJKzhoAMWD,9rUTOufpPOp87c64]\nleader: lq3aqdQuOBtqGbvA\nmembers: [wAnbNwquuFUSrtHx,oVMJt78jP0DCNNLP,ef4Vc3KL9S8ToGGu]\nnamespace: aNMPAofjnwWMXbyv\npartyId: 2qDAAoV0jSsWH2VY\nupdatedAt: 38' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: aj5a5GGPi5T79F83\ninvitationToken: 6jDmlAKfFOIobln0\npartyId: lk72jq5wdD8i7EBH' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: fg2R8d8jjSbFDttj' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: A9eMu8UrUCbs5Y5Q\ncode: 58\ncustomAttributes: {"gsxSCmo9zbeHZQ6u":{},"gKy2djariOZkgdN4":{},"FMcmEqnkz92EigOP":{}}\ninvitationToken: Dn5mHdXMU5qAphO3\ninvitees: dnxxLF4h7w7KFw63\nleaderId: byUZXBKnshyFh5nI\nmembers: sP2qCg53seZb95gM\npartyId: GToO7oEYgS3JMv6A' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: CgEY2twhTV9v1xbe\ninviterId: rfps6Y3N9Nhydi99' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: 4gbzNE6RtyIMuUVJ\nfriendId: kmFzDUdxM72BbnM1' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: UgPcVWmBCeoBXj4f\ncode: 88' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: 6bmZZfnlwqmYz8di' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: rvM7Mau2ECKhgRqp\ninvitationToken: 9AlbgXqcCRTy8D5F\npartyId: 8dNzqfwNIYW7Yo1P' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: XeOhXQRfmxwjBVRa\ncode: 76\ninvitationToken: qEaTQ8TgtRmFLeCG\ninvitees: y9XffaG2AgYBelW0\nleaderId: OgkIVXqiDE0HEmvG\nmembers: 53uV2ZFY5qBbmFeC\npartyId: QOYaClesodwtzsPL' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: wbkdesUKkC7GzdKJ\npartyId: kcmTi04osf3ZLwLh\nuserId: WIusKcCJ9lKRzC3H' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: PqlmU9u9rwLUWvVh\nmemberId: sxPm3901DohAv1nf' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: lLDskcQ7cCq9q2xT\ncode: 67' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: XbPvJE603fUTldVL\nuserId: 892wgfZYPGGxksOY' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: kZU66B1sVqV0aprn\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: xR1C47CBA8XKs7bk\ncode: 99' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: mu2Hg2w7A0sXRC5M\nnewLeaderUserId: HWsClOmXY9RH5ujP' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: Hp37cnih9VVYnEik\ncode: 51\ninvitationToken: u0chNmQheltG44BI\ninvitees: djcAgunVdTbYNKmw\nleaderId: Vjy0W1mhqe0SFZx2\nmembers: rFgY9yjkkwnbWVGm\npartyId: OQnp1uu0UffQdWgV' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: iarCThBVR4JPO6fJ\npartyId: K2YVbx2NzeYmycol\nuserId: WCR1HUI7CcGzqjl6' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: 8mXVN3HymMYDke0D\ninvitationToken: r3ucCstiR3bmAw7Y\npartyId: 5agn4lLVbNzWYULK' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: W6EoyaKFMIa5Ezyk\ncode: 81\npartyId: lV3gx3dvl4Um9FTq' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: ChRhoaclFyszewP7\nfriendId: TSVhtCjY1xahrqD4' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: QIm8O21BlyKcNGwI\nchat: kmO32FKiOMP0klEx\ncode: 8\nfriendId: AAsGPY63lCKFyQ9B' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: NUaFtOi7MWDAtV7z\nfrom: b3pAcajyKfXsvk14\npayload: hrxodykuexXLAfFx\nreceivedAt: 3\nto: XCV36gwyqNCVK7oS' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: sTSj5QdunxBTNWiD\nfrom: 9jHuHMpgT2FqoG1d\npayload: JSscBbpTPZdrR1Ok\nreceivedAt: 7\nto: FiothYmNp5YmQ0ko' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: XWyczFq2kt0Bb9k6\ncode: 87' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: jb8PC3USvAbY8TCz' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: zslwIlbyM357Ggfk\nfriendId: eIY6EJB0sPAHyPOc' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: g7b5VLFflXkYDCNT\ncode: 26' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 96' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: PZlzEcdYaKc4RULh' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: xceYIaaHvYpHF3K1\nfriendId: UFDbDQE84OwabM6g' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: 4dLaGHUDFerG9FBf\ncode: 77' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: YpJErQsXoBNSzdnk\nchannelSlug: mnzKYscKp4fqpVZG\npayload: 9GH1YT1tveApkuwV' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: lBnEXoalTOeXbrAq\ncode: 27' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: 1w7niDd40GKru5Hu\nuserId: NIXarIVrRgqek90H' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: E2lPKLCW8p93b49k\nmatchId: WbjFfdcm1XFfYXFQ' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: 8kamD2CRR4tw99mc\ncode: 89' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: QsKjVB9Um29iGWAb\nkey: T1Ay8SrySCPs46W9\nnamespace: yT4uaNVrvqWmMuV4\nvalue: sjmxiFfBIyfsJ0pb' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: RehvmatLVckN1Rz9\ncode: 21' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: k4aHkZIQNufvMov5\nactivity: nOxw7a09GoneIoL0\navailability: 63' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: lTDsDCecI6T3EfYB\ncode: 55' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: FzKfYs7CuwK7Z6gi' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: lh4ULd9PhYPYYmB5\nmessage: 3JZE5a43MnVXSHGJ' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: olGF1TgLSxqAUlAF\nextraAttributes: KfdgEFWXYTFEBkqZ\ngameMode: BFySqbAKLMSm8abd\npartyAttributes: {"qFNGmOdmrGRKLsY5":{},"UvohdhOXgcknfadg":{},"dxQfRIRlipvrf6Hw":{}}\npriority: 9\ntempParty: TqsJYMs9AVg2cGjh' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: dCXzE3I1JsWsEg09\ncode: 1' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: 91aUcZ4mVjYhhnCN\nuserId: 1uQl0taXZVzxWXRo' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: RoOAGgYfLIJj5gr5\nnamespace: NNcfumZLFefv40zm\nunblockedUserId: GIBk1CsIMkJdZd8a' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: eNo9S5ktHPUDSmxD\ncode: 33\nnamespace: 7HpVpef9OdrbiHoU\nunblockedUserId: 9pR0MSNUvRdNQ141' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: i8qWXBOUIn5PeRRl' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: wn5BFLVYgbHioCqN\nfriendId: uMaDYdeD07oQ7ykS' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: uMVNYTilwgY3qky4\ncode: 45' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: IlicMYVW9mfeXgg7' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: NpM9bpeDAof3HVgH\ncode: 49\nplayerCount: 57' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: RVlAf9dg8YrhSl72\navailability: 91\nlastSeenAt: 0JdiTB2gc7cEUALT\nuserId: nA7y0vxSgBx7CgUQ' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE