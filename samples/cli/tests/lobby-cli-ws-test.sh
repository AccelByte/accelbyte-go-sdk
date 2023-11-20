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
    'type: acceptFriendsNotif\nfriendId: te6mJ7GEfgDMBVGZ' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: cV1xm2uprPEpk4pM\nfriendId: TOKi2ZBWFrqHLLsS' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: jweuVd2dGCke0fRA\ncode: 90' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: E1wlWNzWiqfGOY40\nuserId: fS8eSOaQXXzRnOcz' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: QKdIj0pyrKAtVodi\nblockUserId: Mp4rVOQ4L8i1fZwG\nnamespace: zaf76iUolWzDtaZG' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: vDQ0E0AROzBbGRgc\nblockUserId: t74Omp8z2TC4i9zb\ncode: 27\nnamespace: IqpfgaPhfWxfh0mS' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: UKQxwlg9mOHVq8j1' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: QH29tEzHH2XoKsZz\nfriendId: mEFKWTBGrOkgKJ1X' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: 09R14Xm70SWpX6Jy\ncode: 12' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: 8EPiOEvdTkPTOCXJ\ngameMode: HxW47sOWfEyff25m\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: L2ysaGplqkDVXX50\ncode: 99' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: wuuSQSp9VBIRmQ1w\nfrom: wnMNV4lT2z5Azq0Q\npayload: gCnPzQFQtrW1YjAq\nsentAt: 31DRv5KKQUugmJBQ' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: ZGOQlSoYqzV8IMwi\nuserId: bBhRQUVlADKmkGDh' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: SHtaB6k6p8XIi4Ye' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: dH1E1CCqqZhweG5c\nnamespace: xwr2EgWmbRGXGVql' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [ZPXjU0SObIE8VsSy,SYL8BLQpiyY3JnMI,w6WpncCPJbTpLdEt]\ncustomAttribute: juJj4zfb9zcNv54D\ndeployment: 5dltyK1ZW3Jg3yuK\ngameVersion: mpDoMv4BqQ0cDqnu\nimageVersion: gSqFkEpjPx9md6Fz\nip: HxKClszDLS2zNiGC\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: KNS6YXHPZWxpwsgQ\nmatchId: R53mVtxxTQMe8ADm\nmessage: AQjonHlcnmEkHbqK\nnamespace: m4FddCc6nRaCHGQh\npodName: LPerBogU3Q2a1UbJ\nport: 55\nports: {"NUU9EpUHTf2cUKzi":51,"tUS1S1mOIv0oSyLy":1,"1drEjBza2nrPqFou":83}\nprotocol: Dv3BK5IE0p617FRr\nprovider: 589v0c4DWaxps6Fo\nregion: 1MUMW88NM4jUgqVz\nsessionId: HHk04w0k9rmDk9nz\nstatus: COAeGVi0V5BMe0CB' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: 7MNod549XoZGy42I' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: AFQPHaZeAmmH3Rbg\nuserId: YYjhPSFvnxiRJXlN' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: cEr1RKdCRh4sOMEM' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: LBT090zAcaaAN94T\nactivity: [PdPfxWfC0GqNnNgQ,ddTn1kbBuu31Up7m,8tdC6iL2LmECLuzN]\navailability: [98,66,30]\ncode: 56\nfriendIds: [6cxc9nHfavZepqZg,R3wg1NcqRBPypjVA,O129XTLvFvQd9qwK]\nlastSeenAt: [HdeIKLwXOLaIJlGz,7DRvgYPSBFvkY8y5,ZFmzWK84scAv103r]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: MkW531rj1DDxLbYg' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: iRjEnxD3HuqJJxXY\nattributes: {"wReE0KjEEFMa1B25":"YIOU7JcO3Avt0bq7","pEkmTxF95GrBVCI5":"QtdxI2rxyAjIpVlk","aUzR6gdPmzISATBH":"sp3vmAozLlIH8uPX"}\ncode: 58' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: 98vGbPV2lvegwohz\nfriendId: ONmYOnilUKzQLI2b' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: 4DFR1O0RgYGpvE9P\ncode: 86\nfriendshipStatus: OcJ3pZ0TV1Xtd6Pb' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: dPxrdAGBfxz3iN3B\nkey: 05Cr2JDPylNZhK4L' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: ab3ndSPPHhVssgiJ\ncode: 44\nvalue: nAY1hpCG4o2EkCsK' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: 0BPePyUfPWsP1pS2' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: oGDgEAnPUXNgGRzt\nchannelSlug: dR9ijq057fnS0nol\ncode: 94' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: 0HGuVLwwOG8L2yQ9' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: lz1yZ7p0YxJjK4z0\ncode: 55\nuserIds: [vL1QhPXYl4cvOXIY,8KJOc7aEP6zw9U7C,e5dHYLl6ZNhnR5ze]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: T7knEg3ycNJFd7aR\nfriendId: uRUdamVves22wAjS' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: LA1PfcJ4oYYvu8nO\ncode: 20\nfriendIds: [KGotdofQCnmqa5j5,HZ1KyaMkfQ3ybkEa,kCsFDOATRzZNuW5x]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: T7XumyW4jzr3x4tl' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: dDBYtcHejyTlA7lh' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: ABiTr4Wyvaccbz8U\ncode: 78\nfriendIds: [thNX12SyjmUvR1ML,01tNFrQq7Nimo3Lf,KzLdNyZHeMHLypYw]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [4eyawHpuV7TziJLY,RlAXTlZISGWCuoKv,bN7Nck76nDwUsbHR]\nmatchId: h5e6ko3fLIi6l34J\nmessage: yHJQ5MPqpc4tLcpF\npartyMember: [UJCcBIzdpzmoEQvp,ymhx0jN1P5rIdDQS,uLdSQuODirZQKPtx]\nreadyDuration: 30\nstatus: PXadVfohOy2wmuDf' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: VtjhrtGVH8DVxxfg\nfrom: WNmlgD8ycOWg1jq0\npayload: mj3QlMQ7ifShEbiT\nsentAt: 26\nto: y7C013uCXTumnVrw\ntopic: ccKYpiUepvtUFSjI' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: vLHYwacp8vtpFv18' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: PsSUmj4MtfG9qTgE\ncode: 95' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: GaCPu8Ijp69X78ZY\ncode: 87\nonlineFriendIds: [l5jBqalBbJ1t6gh3,iuAeBhFHr1FUalQU,xZnUOpFLIGByrhVR]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: PyV67AqG3Lgz46J1\nfrom: 62Opdumhlt33yqWu\npayload: eUERajYGEJABVUXr\nreceivedAt: 42\nto: 2i6lGfEmvPGfUGei' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: E2qhtv9Svip6QEGz\nfrom: iyUwI7KyYUNES8qH\npayload: GZplnAZRRFhjvhx1\nreceivedAt: 54\nto: zhU68519qZU4tgCK' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: S0mAyLZhuFTrDlEf\ncode: 83' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: tPxDAK8fl12UlV4f' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: YjkjCxlXASVOKWNB\ncode: 28\ninvitationToken: Fi7uVvQgzXjszMIb\ninvitees: Zl20EkPAR7jCRAsM\nleaderId: qMYObVeq6FJwMDQc\nmembers: Lbr6hPNaZ06pDDub\npartyId: u1YFvwnP4ALJjxXE' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"H5PJXtId84nPXNjp":{},"u3TY1Cap6Y8prXyh":{},"Loe5cmtl89YiNEYH":{}}\ninvitees: [nSL2XXlNAGMwmDEZ,ZaryBAySHcvTnrK1,1Q45uD57SjF1K55u]\nleader: 2MepBwkt5R4lRyJs\nmembers: [tVPNmlsTYT5K7lRt,LlPmEXwFJyTgkhBt,uOoMrf3LJmPclWDo]\nnamespace: YRpaRtdRUQFEgBuk\npartyId: wyNlUgUsxshdtzi1\nupdatedAt: 39' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: fKk7nMcp02wQGJI2\ninvitationToken: WPon4pbAvhXLecoE\npartyId: d3Qzn59GJvvZssOM' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: mGyarKi8TUqjW1cJ' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: WmajMBLthuNUg4EX\ncode: 44\ncustomAttributes: {"G9PL4H4313DkJM05":{},"xSPPLfRntuGyNfsE":{},"JpwHaDqUjhGDIQNo":{}}\ninvitationToken: vegZVjI6S8jpnKYX\ninvitees: EQHJvpuAjFzmkEOO\nleaderId: 3DEGsD5e2Qa8IfFs\nmembers: NB6BXdE6b8t8bEn8\npartyId: iCgHlClLePCeudSm' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: snT8NGxNrgJ695tz\ninviterId: AMAEr65Y2IwpFrLX' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: XYRtQl1JpUM6R32H\nfriendId: P2jK0tuqBBpHVb1y' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: HH8fle5o5jdAv6RC\ncode: 72' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: qf2ZOQbrW4S4OTfd' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: 64YXuqob4FYtvaaK\ninvitationToken: 0Lc992h2RsSL0918\npartyId: 9VnuvbHA8dc7kz7Z' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: 7CPLScB9viIdaTV2\ncode: 61\ninvitationToken: k1TQAKsIJPBM4DSO\ninvitees: J94URnEOLuxbaBUX\nleaderId: XDvwmVnz11xA9TOm\nmembers: JnjJ0zxjwNRKQFih\npartyId: FAvv9yFd3eCSPI6Q' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: eLZr4Y3yDqKBLDWB\npartyId: 80gLD7Qe4EDq1kgg\nuserId: WmiLEkq6q2huxQLZ' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: bE7YJnuAna3pRrXE\nmemberId: ykP4j3Jeg2vnFdfr' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: j3tI0Ighq9nrWQOb\ncode: 44' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: XlcWj5s0fOecUGfv\nuserId: gGWNUnhQz98GrZXv' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: YB0eNwh5j5pmehAW\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: JK4T869rTwyyAX0e\ncode: 54' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: KcLD8JuRYl3CdHhj\nnewLeaderUserId: LEI9xIW9f1wk2if2' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: 8jCcCHfY7nFXhVkv\ncode: 89\ninvitationToken: JbbR9kdq0B1eg5iZ\ninvitees: yP4coaqnuOsxbuk2\nleaderId: 57NkbVtMk5HjxjJR\nmembers: skFns7XIDgJDifNN\npartyId: dbE9er7TPYFWOmfS' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: lsxFon9TmhrB03EB\npartyId: 35faDx0CEDCkwnd5\nuserId: F9eQVZNWU4qqvchr' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: Jbbzt3bIiJ5rqCgu\ninvitationToken: GDl4S2SUK0NNu9rW\npartyId: tAlT0c2GNjcnzA1D' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: yJsXlIeI1Mf1jp4M\ncode: 3\npartyId: hymkSVvwCbFMd5kF' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: DiAQjRAsGI6BwM2O\nfriendId: FFhz9Dd6E68fAAmz' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: EqlBVMFM89SWgdo0\nchat: UkbiJhTvjUkaYwLF\ncode: 97\nfriendId: 49gL1M6Q8nqXXEcO' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: tC6KxE8ZmlEraLwW\nfrom: oeD2BiW25dpNuPzg\npayload: 0S0UMu47IqDRgsfG\nreceivedAt: 82\nto: vLrTIBaH8ZXqJ5yN' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: Kqo2bv0nnIAzmwRQ\nfrom: JQSGT2tH10JE0K3k\npayload: nKXESW4GLskyTXF6\nreceivedAt: 24\nto: 6zXoicnldeWyjbir' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: H7Vy8AOqb6qbbsig\ncode: 7' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: BGDcLYBGnx8Sa5H2' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: qoK0ggMtlL2DL1I6\nfriendId: Wf0rlt94hs0WrnVm' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: pioV3d5nD0a6wK48\ncode: 50' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 67' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: 54bocMZkIZfuZPH2' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: rBVhqxDnBITVQGiP\nfriendId: OxDqE2ZDHT0bcd0l' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: xnDzJdzrt6bPJkgo\ncode: 27' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: fIH1BR31kMghM2AA\nchannelSlug: V4KqXNdsrTT047rj\npayload: 1q2YVTMuE0A6iSrr' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: Rl1yRQk9ITmaG491\ncode: 49' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: KHMlHIlj2W7ltHvy\nuserId: lzdGjQbzm7qDNzSr' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: 3eCLdLxAoxxBYhzj\nmatchId: L7pbwK1G1F7roM8r' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: QiR4YNhXh3ulhd0V\ncode: 33' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: e8maXcbW4Wx12G41\nkey: 2OMvOlgRIy8vFUr0\nnamespace: iurJbS4COQvZG7Lj\nvalue: HS1tXEc2mDoS5JfZ' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: LZ2ICiaZ0WFXdUVY\ncode: 79' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: mxEOX8qyJu7Dg6bc\nactivity: nV4HhQenNf8Z55B4\navailability: 68' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: lRV0DbGwl8zAM08w\ncode: 100' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: AuIjQGqagSKNdmZ5' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: wH1bx4dwA1iG5c1A\nmessage: UVtYkbbYJXiNjHQ9' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: wgPdCbaUUsx4aqw6\nextraAttributes: Lm7sQpESNckXqY7t\ngameMode: LovpLKdn2100aQNX\npartyAttributes: {"GdDzqQpLmfAR92dF":{},"wIffjCmVHBrAi697":{},"WMvXpkyqA2rDL9nq":{}}\npriority: 34\ntempParty: EFiriHyjV7LA6kCI' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: bMkqae4jekYfV8mf\ncode: 28' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: 5HZfdYjKqFAodOCf\nuserId: 3jSzB8iqbr3Hdpb2' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: vPacRQcsuK8qyOAT\nnamespace: 3COSc64Den9lqv4W\nunblockedUserId: nhhcbpTawXEG9C70' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: I2isCXRrGpqHMtQ6\ncode: 36\nnamespace: XEn5aaGE33eHQCgl\nunblockedUserId: Y4rNhtS0x5IS7VAB' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: 9hQGy88dPlJIb8Ok' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: OTIkIfkcIqxIuUBj\nfriendId: UppEwdBkS6lY15yh' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: seeCWAr9uIl6T83f\ncode: 65' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: SxHyrwAOYgsttjv9' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: ODbsxdXAdUNrXjxV\ncode: 79\nplayerCount: 57' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: oHLRI87McRE4lnEz\navailability: 96\nlastSeenAt: g9A5rhndjF3sT5zG\nuserId: v7juGgHYpwAWwiCJ' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE