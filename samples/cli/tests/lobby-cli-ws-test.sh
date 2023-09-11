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
    'type: acceptFriendsNotif\nfriendId: Yd6DNEDiW2eTh8zi' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: 6vQZxaOJUNqXtK8z\nfriendId: YSqpIK59G1RUrL9n' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: T3z7ZI5siHDMmGbN\ncode: 37' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: HlIHLfoSRMpwJD30\nuserId: uJRFi4ZkmuAyn5ju' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: tkosqJdy9HDmoIjl\nblockUserId: uqeHOSHCgeYXg33N\nnamespace: XaTCXg7vAlu2dukM' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: mjizLrsAWW24YmBm\nblockUserId: FiskBmLLM2izILbr\ncode: 27\nnamespace: CKFVkv7Oaqmmoqhd' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: LqGUF3iwjJC8mgYK' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: xCrAcdkkAx7vWR5y\nfriendId: ecXXM6Xvd3NVm7b1' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: ydxsdTfy5kg0hJcP\ncode: 99' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: I6fUgdzJp85njLYK\ngameMode: RQT2PqdEuACDMNDz\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: 8H68Czp9qhZWfCf1\ncode: 33' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: VrRii50Y1rLSMuud\nfrom: eR2Ci4sliZaF2U1j\npayload: rL2C8TsoArtcW3dV\nsentAt: GpgGl1PodnbGvfER' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: qVkzWGQmQwd5RzsE\nuserId: EuPTCNdTZPplBLsx' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: nyy1OMTClHEW6Isr' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: bKVLl8CW4Ybq6uqR\nnamespace: dhkqELuvqYOykMz5' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [WnEfnZlJ2CBNIo4t,o0FmcgHsT07ezBkS,j0QlsUCTYF2azLC6]\ncustomAttribute: HXq6E5p1oPwSRyMp\ndeployment: mwUQzpcujql4EJBe\ngameVersion: IdYtYKUaFSadbDQx\nimageVersion: 04bljuKCAcAAIBCt\nip: jbSKAiAaaNfeyKds\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: iVUx9t0j08FVYVsa\nmatchId: NK0g3ziaWnSR6XBq\nmessage: 2foZrIrYFihm63ET\nnamespace: R5fE8qb0DI2JF6rZ\npodName: 4t6C2tKucMy4qbN4\nport: 70\nports: {"wuFVX42z9d4oWJAb":25,"aGD62atYwPWyRpce":74,"frmyBl01K3CxZ0YH":24}\nprotocol: eRvB0zja2twDEV2p\nprovider: FnH5T4wth7n4ZSO3\nregion: MrQ1iY2zSTACBTps\nsessionId: ThCTjVePawOijg7Z\nstatus: E7lBZaxHsnb0H3Vu' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: SyYjbxn6VO4IDC6o' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: TsS1ZZiitRvYp1bv\nuserId: gzwprB1Sp1SclrcO' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: rpHtXB9jpH8Frh4P' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: VYhQjDQdNAGB5w4l\nactivity: [ef0n1jwyEtDrq68v,q3tfislYtV9JxhXo,zGk2U6n2Jbn4apVx]\navailability: [31,19,61]\ncode: 7\nfriendIds: [XZ5fQPAz0Sg6iHAD,vgtzpjcIXhsyWMpq,dOp0JIqUgkp30ILW]\nlastSeenAt: [nA26qCWFvcMBGPJL,h7q4IuUUM1wwXKRZ,RBLHFS5Dmzp6RmNw]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: bE7z7gyLghQeWYEp' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: WyjUnoDKdTAy66bc\nattributes: {"iHSnbRlgm7bwDKab":"vIv2oE4JjVtbOagg","Jej3LW8zYSVTcZOF":"1T2XJs4AIkxibg5m","4aRhia006k4NoBx1":"Ol95bgvT8PGSUMaC"}\ncode: 25' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: S1jwpMJyAFU5NyA4\nfriendId: fWtoAw2r92lpfUgH' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: d1jv140fnS3vs1cY\ncode: 11\nfriendshipStatus: rHvH6yPNAseehwm7' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: q9MJ3JQNYb9mTIqx\nkey: p8qagapaJYymtir5' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: RHtDMpcOlw6DOfU8\ncode: 60\nvalue: 6KGyfd4D35FwUOqV' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: PHGeROKHkoVJyjgX' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: n9Daez1rvVBp1w1T\nchannelSlug: HUZDlsnSUPgkZ3sm\ncode: 53' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: KwsQ99odHK8gRxIq' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: sT9DsOWlqxTQ5FqF\ncode: 100\nuserIds: [CcNv1MEbW8fh8s0m,iOpbbaM6qcdSrxaA,WTuiD6KFkeicvKDY]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: g1Ikf60MDe62wq3m\nfriendId: pQ350v1qdZwZbisS' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: 0Eq3CnohoqA44J5m\ncode: 94\nfriendIds: [2fLejXrxV1wsQEqb,8AfrCDwI6pdmmDZf,2AbJyRW4ZZ5OaMyO]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: XHGJ39HzWl5yYPDU' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: cbqXvsGpijm6wPFe' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: iJzsdvpu2X0YPbgV\ncode: 30\nfriendIds: [KmcfGm9voLsjP57B,3QEQPNeA1l9m4hlU,BJf8rsD9zyW02Rep]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [spLOOi2tuIuCtMYd,eVexElZIep9NRYeN,cWdhB9V55tavfTin]\nmatchId: X3MJ9YnR0yo6VhTn\nmessage: d4hbb6vKwB6WX0MM\npartyMember: [caTFplEzXCZjhUY9,4JlbbhzqV6ogJgBC,SQVf0ZExnFUmKMXD]\nreadyDuration: 74\nstatus: vfw0QkQ7uGVzTuRa' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: 3LCyGRAWIof4Ss5Z\nfrom: GlQiCt2YbuVE5Y1c\npayload: ss20SAP2hTJnxTsr\nsentAt: 21\nto: oELtgeH5z2a4BDDt\ntopic: rh65qhVu5KLO4wYc' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: 91HMkKfgYAPSvo2i' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: z2PJz08VacXbBjRm\ncode: 42' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: wvLLYBbOOq44HNLy\ncode: 52\nonlineFriendIds: [OHdpvSvSO4CgaAUY,4hyL6p7aQDDIeWA3,mNXj8sCFBUNXXJ4I]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: odeGrLtMTeEHjkdj\nfrom: nFwao2MJlzxdimjB\npayload: jf1TaUs6KEpNyIXR\nreceivedAt: 63\nto: FbhAvDKYatSN9ElY' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: IhQU5ImF3EzFX3JA\nfrom: VG6jXPNYYndZOZ40\npayload: p1vSDx3JFLyqv3Vw\nreceivedAt: 68\nto: Y9QDWkjT9S08QlP8' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: RSGVuMbMzGlOc14M\ncode: 33' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: a11QQaM5Ustq4zLn' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: YYSrTfdanWSl9lRp\ncode: 72\ninvitationToken: m3j1dptwXrwydrM3\ninvitees: naXNPyiyIJrFsrTF\nleaderId: mBIcnfO4sCKxyREK\nmembers: FhTKOu6fH1IEgFhw\npartyId: UneIwSwsknodaNVq' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"lB4z16aIUxdInC0x":{},"ihyCpkObvD2X0B9m":{},"ODkDnj2h1vklGDS0":{}}\ninvitees: [xnTdzVmSX0N426Wf,vk3QT5HERnOY4R2I,fBpSDJaagikwOMp9]\nleader: mg6rwYg1EsmetmWS\nmembers: [qY24GN3ni2Rah3cd,2gWQ29tHB5DeBhmv,FPzfFyjpAgPUPrqC]\nnamespace: 5HZt4Jtcs4cMQgfc\npartyId: fo17lMhPZsm5wzGc\nupdatedAt: 18' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: XU7yzINnVjNHq9tW\ninvitationToken: BHEiYlHsiIMHMtma\npartyId: K8WDuRnEbnT2d0qI' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: 5WYThQRCnBAT0VTv' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: a9H1r4td3HZPxt8A\ncode: 6\ncustomAttributes: {"U6pBRK41lJE16FM7":{},"TAlsnlwoYnAKUgjD":{},"6lx6U575jvB71l0f":{}}\ninvitationToken: MCXoHrdFnkWQYJbx\ninvitees: avVFVuXs4G84jGJn\nleaderId: o5GBvqcKIfLL89Js\nmembers: 0NLdqO6pChuQW86U\npartyId: FjvjqNDcAmCa1b2F' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: 6a0TUS3xDf5JV13y\ninviterId: 90GQAC8n2NOHfDfS' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: XJh5JnrVBNejCF2M\nfriendId: j3r7KwJWnkxCBj5w' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: OTBk9AagII9cIFtv\ncode: 72' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: UCaz5ZtWEmiJuTgQ' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: y7HxwkA5Nsr0czvf\ninvitationToken: VCWtT0ltXyLbbODS\npartyId: KFoblCy89QaQskeE' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: MiNZ6z9NwCWb5OE0\ncode: 37\ninvitationToken: se1XH0CXkSoxpHMU\ninvitees: OppzvqwKNeuuv7Sf\nleaderId: J09IUGNtsYLdNM1k\nmembers: Pj5NQBNqJAbh8t73\npartyId: I1FygwABJhWn6Hjj' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: 4SOFFfF5OKtIbWtS\npartyId: FDmewvnhrW84aYw9\nuserId: oxu3ZpkidgXnrpTJ' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: zL34BmoONhMnvVUI\nmemberId: EqgaR2B8IHrFpqvT' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: 2r1uimzs2HkuTiEQ\ncode: 11' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: X3uDd7o2ZMukk7HG\nuserId: 41YNAihBTODOZmtu' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: lKHh0Bz9or98CBoi\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: Ljv0WyemuHWwC94A\ncode: 10' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: orI5vsHtrTJOacho\nnewLeaderUserId: IesNb7INIj1ADcJH' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: wjVuRhTTtso1TsRO\ncode: 34\ninvitationToken: PKKcrncvOL8nTvcf\ninvitees: Bp2qQGTLQFo1o2GE\nleaderId: WygIbZkTiKJznmRt\nmembers: 9fz2c6hU9I4DsWcM\npartyId: XOmxev3fL8135WSp' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: zyiFBoHsLduT6RFu\npartyId: pe8keTxVj7B0HQrP\nuserId: CBpY2OeSbyHFELIA' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: p0jPnlOrllJrf9K9\ninvitationToken: 1sQKrwendmJIMhcO\npartyId: FMHTU5ZcczufxcrO' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: xI1coy4ezq42PpjA\ncode: 44\npartyId: Ausj17MsHhpCNK7n' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: kkEf9mAOfU7JjhFB\nfriendId: vdTMIIKoEhC5J6gt' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: PZmRbzMrGTTIMZAd\nchat: 5buPAjCiNBDJ4BvG\ncode: 48\nfriendId: ypqqyTnIiZPO0IvP' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: qhDFRUB2l8WmA9sm\nfrom: WwUkdBCTfd4dlzxZ\npayload: B7u8gWhqHsydB5ZR\nreceivedAt: 90\nto: 3u6LatL5wrDqOA7h' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: sebXVeVt1PfsvgcZ\nfrom: Y3MUxnY9oIVHKw5q\npayload: oMU1Ce8pbu7zKKO6\nreceivedAt: 56\nto: eMqe9Ig4vixTfW2s' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: 7A4mN1JoFfsVsC2C\ncode: 30' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: ntn1Jic87PYRDI2H' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: iDB7ywvVpFk505f0\nfriendId: axeDxybVOm4KGkvc' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: BW0H40EWxH3236iK\ncode: 85' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 15' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: soLHCRTnd9pUIVca' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: HMFc7cmfvJGg0Zhw\nfriendId: cm076ajVsftpW8Le' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: TxBGFuz3ij4qH4Xf\ncode: 47' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: r2Pn2Sd5y6I0axKJ\nchannelSlug: KKiDcfi4BXPppPta\npayload: wRf4t43WNd7iydFd' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: SyZ7omsYGVfE26M7\ncode: 80' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: iWBk89Qy6WUvcfhz\nuserId: CqDjXt8LUHQvtwBS' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: G6YMiM5rppTLRrp0\nmatchId: kc5g2KjrXQHKNf7D' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: uCYm2LYWQeGmxF3v\ncode: 90' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: zlLavSrh0RAveD8I\nkey: UYMHLd5hY2PZDqRy\nnamespace: KJLty0SqpXy8EhRG\nvalue: CEjLTZblQYigdf4b' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: kTjupdC7jbc7aMbr\ncode: 80' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: uFQcxwszhf9OM15W\nactivity: ddxgTOe15keUOl6T\navailability: 93' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: 6WPKCJ2V4XTlq6pw\ncode: 19' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: mFwccIcJQBjUcAex' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: Jfmp8ogMcFrgxrqK\nmessage: JbZ46GK9ThCKDaAM' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: NQH4wjNrQw092fPN\nextraAttributes: ScCcTtLyr9hh937u\ngameMode: f3sbkwKNzDYZNop2\npartyAttributes: {"8l6pWwakiwuKBsxU":{},"zlVoJRqUzqu0sPYa":{},"BpHAFhicQzlDtLD9":{}}\npriority: 84\ntempParty: 2yDn2anApHBZVxT7' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: YObl4hpWDWbi7AaS\ncode: 9' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: IsnZNmjUO8f83rbx\nuserId: lbsgR0NUo13h83us' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: t2N8haidXKbfvTDO\nnamespace: jfbUIVBgIGsQHv5G\nunblockedUserId: w1gFO7IUpHdMZEDS' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: ivD3ytAiATx7FwUw\ncode: 66\nnamespace: J8yGztdFcBs8HjU0\nunblockedUserId: MB396b6xWmQ1p4t0' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: EC3aKVhl7IoCNyfb' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: RCBNmGlHp8zjdMrI\nfriendId: cyF6uELXaMCKecPI' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: KZCwhaxFv5tXaPnr\ncode: 47' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: 27y4W5OlWHWvKwMF' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: YSaHSRHIsRJQuW2Z\ncode: 92\nplayerCount: 77' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: VsGfo8BWE8Ett3Zk\navailability: 12\nlastSeenAt: L3qBlSS3ExyE2aJd\nuserId: h8Wsc6Rsn3yXMYO2' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE