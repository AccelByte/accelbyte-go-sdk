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
    'type: acceptFriendsNotif\nfriendId: 4DFkWOVXTCVRi0QB' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: p6owi7zvd1NWe7w1\nfriendId: 7t3bGohVVShXJD9l' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: nlW4jgT5E0XoMIdg\ncode: 16' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: 1H07epjpYXFyAuQp\nuserId: bRqQRVTANWxyHUx3' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: QirlBOrxjTzXyn7g\nblockUserId: iwjpZRzsU10b4PWY\nnamespace: WNx3jzDcvgbIE7IX' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: QSiORU6qvygRzjJ6\nblockUserId: wT4JFNxjRQseCR0M\ncode: 65\nnamespace: uVKDWdje9M3v9DHV' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: onN970R08RdYbUgZ' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: lJHRB5RcczJM4VUh\nfriendId: OTjtLtpwiB3bM7Uy' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: fwKdkuXd3vs1dX1S\ncode: 84' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: vN8kjjkd8mIvP2DY\ngameMode: W67Z5mpDhjHn1Jhm\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: WgkBKuYPrX3UyUi9\ncode: 45' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: QSrQBjhFGFbo0wvG\nfrom: j3NO2NEc742aFMhA\npayload: GjIW5grZ8MZZejf8\nsentAt: achci7SjRKTudtf8' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: ZHK92nVkEDK25eZu\nuserId: VJTCzBxxnvvrBbCs' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: ji1RFiOWyPXM2Iym' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: S0cFzG1vT0o16IYa\nnamespace: lCtOwsqlYB4UHpUW' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [Ig0xDVx6NeTWYfBa,lFO41xoDfoCoNZVS,4NktBa7aRTEnwfie]\ncustomAttribute: Dldxtkme4rbZkIvJ\ndeployment: EbXyTSrJzWkNba3t\ngameVersion: 9ah8jNKGI7DgfaDV\nimageVersion: Ms37WZsqTVekLr0a\nip: 0LtlpM6ccIMrnBOM\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: zI05ocPyA2o1QsFN\nmatchId: 33TNJMfKpza7X28t\nmessage: 1qqgdlWySb5uISGb\nnamespace: IGaFMmaSwTrGMp98\npodName: i7FFNFLN4fXSHnWM\nport: 2\nports: {"v2X2hLq6HYm3Xpc4":81,"yAc9Gf11hzKQG9Bb":32,"UqK6B0SrLIbEwgNX":41}\nprotocol: pNbX5lxZ5R84W0bb\nprovider: 316ePNpj0lR4e6wR\nregion: jeqyDM9ltyC7yHjE\nsessionId: jKoh41wL6V9pZ32T\nstatus: 1jaJLWd2R0IHRCqh' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: kPNssjNsbS2ltjZ4' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: SaWNfMBIZASRjHRt\nuserId: NPFcZIf6RCvvdScw' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: RiruleO24yJ1Ta88' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: QsOTZAbbGkvrj7JM\nactivity: [i1y3Ii5cMjI2ZflR,0PLdwKO6t2heQgXa,8iMKwG9ddTqWidbO]\navailability: [15,18,46]\ncode: 47\nfriendIds: [vEuUIM645XqSYC1A,SoFeZILifZS4C1tm,LmSNYMOSLVW8BC0z]\nlastSeenAt: [rWhuyocc6L7O5oL2,RLjdeS8TtlIsbEqi,qqFeTcoctG2ofVoi]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: n9FSefIJrmlaIP0o' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: F07ZKjLlAnKMvS8M\nattributes: {"hZ1fuyYJgXJp2q0Q":"yWlbZt57zfm05pds","YPCSatLgPftjcrf6":"XzFxLUM5I3tATqea","BFC26jjE4h4BMCfh":"AFCI9hCHZrFhf9t3"}\ncode: 84' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: wjYbf0KXQ3kHVit5\nfriendId: hpPVX0FvV11XX8wR' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: JmQzmvI4LbpaumcF\ncode: 1\nfriendshipStatus: YOMzENSLaNumor7d' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: SmROh4dRV3x38Z7k\nkey: PWyuCCTjZhRQ4XsF' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: ftPF7MTaUh5Mcunb\ncode: 7\nvalue: RHqb6OVMFsTdqi2t' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: B3D25PbBa27cznDA' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: dQU0QaeZP0gXxZgl\nchannelSlug: BKNceNes03O1TWuP\ncode: 11' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: p54ytssJKwfbrDi8' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: fg7XkBTaBY8Lg1v2\ncode: 12\nuserIds: [m6jIlRgOkjlhk2cl,vfgbv2Ei2GmfKS6G,6hCc2iwrQbxBJxgG]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: Tm9W4pziEnuy04Ri\nfriendId: Xa0IkdvpiJqyVq4O' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: VTkkVJYn1MHKjkAw\ncode: 81\nfriendIds: [Txen6VCDrwlqrLKe,MdHHa9P2zu5HA97v,bZVpEap9vw9waYJA]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: dOzK35uyDelVShgi' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: n6xQdBicGRNIEIgV' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: iKmPAKLyOaXfnIyW\ncode: 15\nfriendIds: [u3xik8NMvjy0Cwbs,cyNwIu5G3feblW2J,jUtya92dwXXLpLPk]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [YB4IeGO8u8ihAxxh,x2pHiSSB6woz2rpl,E8otsyX1fK3CP8e7]\nmatchId: fK01fwGjn0Td3feg\nmessage: Ss0qxVaGtDYokJDj\npartyMember: [SYfc8Dez9elhTZUe,MFI1qXmEHRnqVWly,1hWh0Y82wMPPkpnP]\nreadyDuration: 42\nstatus: swWKLVPX4XyKFmdf' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: YC8ZjBzSXjByYbSH\nfrom: SOL0oI1eaMF1MJC3\npayload: uaulS9CBW9qvRGSL\nsentAt: 97\nto: jlvQm76m9eCQqbt3\ntopic: ymirHRYhHVZrBoIf' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: vUyaqXtCmIWXjpmw' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: 0qSFiSLPgmp0cfe0\ncode: 15' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: KYr4M05bmF2K8Zfl\ncode: 13\nonlineFriendIds: [W9iVUN7ajiHO0ZKd,Apk4I9EVOjkkKUdV,gbdY9s3PjslUInfQ]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: ZZek465SQ1xL0AYX\nfrom: 9BN7bv6ewXkmr3nD\npayload: 8sHqgvkuPSXxyVHq\nreceivedAt: 20\nto: ubITTq0wzxzW4vjJ' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: pIbgAF7M2P7tyHrL\nfrom: JcTreyGByq4vdj7C\npayload: WHeQMjyXdaqzYGL3\nreceivedAt: 11\nto: a0RHV0EIHr6r2v9Z' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: NCpo0xdFc099Jrtn\ncode: 68' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: kbecqb2Qf4mWTrVa' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: tvEwt6Obofv8ccXx\ncode: 36\ninvitationToken: jecdeK9vwTuPTSga\ninvitees: yNswHETnUxTWmfMC\nleaderId: jbHdl3cGSati41ZZ\nmembers: wNWyInyJHqTBK5lM\npartyId: pxnLmG5Op6LnXNlM' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"Av2CJ02Xprnbkf0l":{},"UBtc62uSMQOJ5TM8":{},"z7rSFQH6Nbu7hQFf":{}}\ninvitees: [ZO38nuDgdbstryRA,M9EI40pvn2Zqv0Mp,SavGBkUOSBsrD4Ne]\nleader: rCNSY5bselAeIGUs\nmembers: [h945g7I8TuZ9ztuS,c286FpEk5l0QWfIj,GBUMqGj89dnFhxPc]\nnamespace: sePqzOEoALs3012G\npartyId: k7Je63nELbqAcv3z\nupdatedAt: 42' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: WKakdB0iOtMPh0QM\ninvitationToken: hiBzv8W7bAxIDYBO\npartyId: rYXRhdZU0x6fQ6JN' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: 5bg94QhbdcDbhBLZ' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: RiHwqHx8V0xerJv3\ncode: 11\ncustomAttributes: {"EWYTus11ciFHR9Td":{},"nC620LMgEl3tPx1V":{},"5bl4xmUBRjOo88iv":{}}\ninvitationToken: JuWaK2HTLPvTG7Uq\ninvitees: bqMRn1HPfGnsEedR\nleaderId: MOFD1SF2BIbevwpz\nmembers: F2SFZn3kMWlwv8TM\npartyId: AbCOIbDUsBEIoPYE' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: c5VRWWhqKmuro5Ew\ninviterId: mdrrf3KpzrYTx0d9' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: 0aLB9RFZ0pdTdhMk\nfriendId: iXJJlstiAWXhsUtp' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: kmAUldmFhZjKH8Dd\ncode: 27' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: Bocy96TiwsEwHgO5' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: UA9c4HjimJC5Pl2s\ninvitationToken: MqwbASsbW0BNGvG8\npartyId: wVzQQMquTsiKAGTI' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: gGLvW1ZWYJrqGhvD\ncode: 45\ninvitationToken: WJeM7rORNFPcyzSJ\ninvitees: WhTDP1k24HHyxaqK\nleaderId: Q2mZSqV9YupHh2QA\nmembers: mbh9hC2yhnM3ezH7\npartyId: fTySxWwXTfCkF49D' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: Uhvh6qlVKBNzaRee\npartyId: QtnwX98LXt7qECA4\nuserId: 8TQbQavK5sKc9qHl' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: 2tuJjPcaX9Id6LcV\nmemberId: ANpJx1gKmm56FhQH' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: C2iTzYup26aohv7K\ncode: 4' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: vjKsw61awGxv4Wft\nuserId: zLXeADgJz4cuFode' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: rUMZiyZKw2Zpo8A7\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: 4tsH4NJsMiIUgEKO\ncode: 88' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: XHjavZVq8tcgNKBB\nnewLeaderUserId: zKLtK32FeiOxVEX8' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: LFMdzOTK7Gypbj2U\ncode: 92\ninvitationToken: EhkPkXoza8au9aKY\ninvitees: BwezDidejyAMLyqV\nleaderId: F1wwsgOf44q1LhsX\nmembers: eACVwlh0jWb8onuD\npartyId: crtZwi8R75JuhAs1' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: qyyVKlvrrPiTEu3k\npartyId: EC9JYgIzwWrvCSkk\nuserId: Pwkdm2RYu3hz03Lj' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: 7hIo5JBZMCB4oi6f\ninvitationToken: Ss4wO5MF0BvcunP6\npartyId: sgSPH0qD27447KUf' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: LOCcngwWJwkKpcgt\ncode: 33\npartyId: TOeouamLAnp5HPzY' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: 5dVsJCsFWBeabpLI\nfriendId: wjGfa8UvuPSoFAaj' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: cgM5dy7sCvnwLhrk\nchat: vEJKTdIpqDO5lRh0\ncode: 66\nfriendId: PYpHkR37MmMzJ4q4' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: q64t4esBKFy8WAl4\nfrom: a4IXDi91LPm4JL3r\npayload: XbdU4sdIWFDbSNRB\nreceivedAt: 80\nto: p5p7SFu9bzzf8zmV' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: dNnA7jO0HzjHxG5m\nfrom: u3YmihGRvnLMizzk\npayload: aRrsB1cntcyC7Xdy\nreceivedAt: 86\nto: x1VNjMCyayQujkCu' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: DppBK06hwsGPDvry\ncode: 35' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: dTYQUl0TTmhvqyCa' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: WE3p6aQwzLQUqkZi\nfriendId: w8tY2JGGJx6xB6L3' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: f26cRgWVdgXNantT\ncode: 58' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 77' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: NUjHQDjwqpRY2umB' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: Eive2fDxtUYmOgyh\nfriendId: VSIptKXOU7t6CsXF' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: N3ksCSdYjZO0Q1Zy\ncode: 50' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: qfKGKH5dPbNQ5GgB\nchannelSlug: 2sqXomgZMwC27gXT\npayload: Vpi3qyEGxf6YK9jU' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: o40pEyPgzXAbRrpw\ncode: 39' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: Hk1bvvqDqbJkwHeu\nuserId: GvVBWw2xHPvEOvw2' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: hR0Tne2If0NuGJJA\nmatchId: 3jlLYBrekjH9Ejn7' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: f9E77pnnnB4Mwvb7\ncode: 13' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: ua5jJ8nWzUhOowTH\nkey: tT92l6lpW0r4imZ9\nnamespace: JLFUVBRsXGuENrSW\nvalue: ZfjNfH2Tb5uIQ8Sb' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: FzPwthhm4sSS86CT\ncode: 51' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: BDIq1MBF2Dp5FSrp\nactivity: UKhxhSQILnE6zkhX\navailability: 89' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: BZe18n2gJFEBxyCF\ncode: 43' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: nSG0KaqS2HfFNwpu' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: PrM5wZCBpgJQT7xu\nmessage: 5F7WO5sOfLvzsrXC' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: PR3IfcdRr4RPEu2r\nextraAttributes: IbmnJzoMGCWR51fr\ngameMode: lPfAMmd69jccEDtk\npartyAttributes: {"6qE0yCp9EE89H5sj":{},"HlfYLo2IIPuagrH9":{},"yjbX08lABN2swjvN":{}}\npriority: 67\ntempParty: MVWZvXNOQudIlXAS' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: jC9O2vvEUNSH2fuD\ncode: 10' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: SFBQDJnItuT8fVKS\nuserId: svixeR8sTgYDfAXt' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: WzNyUqPKMVGpiLXD\nnamespace: AnLAY28DlsgYGwbb\nunblockedUserId: sBOekeSli2eFnHWO' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: wHkiR0zhrzIHoVYu\ncode: 82\nnamespace: qzDtH1TrsQ1hULQA\nunblockedUserId: GV4RvDQXMzTrEju6' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: Rz7KqdklVZfAVokv' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: 0OnydGMEiaeCrm06\nfriendId: BooPBBmZzZuj8aXK' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: ewdWuC2eW0qh55e2\ncode: 5' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: NrNZ54LQOLCzp8gg' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: Cd3MSKhPY8LBo8DI\ncode: 3\nplayerCount: 42' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: GV0gRC8epaW2jLmv\navailability: 75\nlastSeenAt: 5LXTP26W1GlR47gz\nuserId: DuYJAZF1F2ZhNnA6' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE