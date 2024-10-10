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
    'type: acceptFriendsNotif\nfriendId: E21w7P2dBgxvoFZt' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: nqhdo0iVgwqcJVv1\nfriendId: ZoyuhYj6XXyhlAD6' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: SspBK6K9gKr5GwZC\ncode: 70' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: hJhRXsgaYRwgpDHj\nuserId: CcKVrSHqYkQrL0kx' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: 3skvpyqKp6fjWpmP\nblockUserId: tsyZHCLtLltFXtLv\nnamespace: nB6Vnr4XIXuIv3b5' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: g8il9esry7D8aBcD\nblockUserId: xtfvtchNudEKaN2t\ncode: 68\nnamespace: oaGAysHyxpJKqT1Z' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: IVCF7oBnQxaY234w' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: ew4FW0Am0OOOi1B2\nfriendId: bmIjPk425OOuSqVU' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: 66T5yYmPBJamq2x3\ncode: 26' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: J8cgx2r8rzfvIMDh\ngameMode: OM5xYvzru5xUablp\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: OKuSen9G1FnMd8eB\ncode: 58' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: XM1euQatXobmNuNY\nfrom: oezORMn20tleHwq7\npayload: IzwkJCAhRtz8wwSn\nsentAt: 1971-05-18T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: aO89XGFrKdGx7nKJ\nuserId: HssCyOK4GbJ3g0bs' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: Hjuqsmi5TiUd5Rgp' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: sn3zoWl4QzIYqxDs\nnamespace: yjZocHONdCvvmQne' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [pySvI6idXieU6FKc,pXSzgAs2BPqbaVMY,c8F24MEUJ9iiYS82]\ncustomAttribute: 7MMh02Xlky23eZ2r\ndeployment: FytCUdMN5VeOMx6Z\ngameVersion: vAoEpD10LOBLKpD1\nimageVersion: AuMXnLsAjdXLsjed\nip: kHLMCFjRIJBmrNw9\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: PJyDPs2vpgWoiQ0f\nmatchId: DhlxjsD3zrI0Lw9j\nmessage: XiE1xYJckIPn6xIB\nnamespace: JMefdIFRdTbryTwL\npodName: KbXi3ZS64Mmtjha3\nport: 32\nports: {"PYqGfZzvNKorRoPW":57,"aRxb6FNTLRekXXGm":5,"sSPHKwjg4sKsJ1Fu":52}\nprotocol: WoDwtP4EMW84HkkD\nprovider: JjRHBpMu4jFaZvW9\nregion: YfOeexXil0z3ufno\nsessionId: otOum2Yy1IHySd9Y\nstatus: lhGFNQekXo6FvvT0' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: igaSonbI0K1EdZJl' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: c2Yg7hKDLikPpLpH\nuserId: WeIzKsU05KavN374' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: Xhqmz4LRpxi8L5CS' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: HO6GqWT4NXLBEYL3\nactivity: [uhekTrbiikiH1qQD,kkXAYABOnCYXNYrX,eN4X4GbGHXfo4b6E]\navailability: [KF4PNYtIKOZg5uwP,unmXDeoKO6JBFZ1n,mhWG111TewPKmtNH]\ncode: 34\nfriendIds: [A5sLGA8EPQqhjYU3,X7lRBWwSZJGuXVYt,KCo3srg0VYCBfNnj]\nlastSeenAt: [1999-03-13T00:00:00Z,1998-12-07T00:00:00Z,1983-08-13T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: 4tmTdaNW4eAP30DT' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: 7paRb48ryxbYyudm\nattributes: {"JYN35OgSOfiqhVBy":"atSmI3JpNKJJfQDK","gz7FHqzu4WRPXvMv":"g5L3vMR0pG8tuP3F","wP4YKAiyOwcK5XwK":"PRzK7tp13mqzpFeu"}\ncode: 47' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: urkonbvYqePTMGAV\nfriendId: oMpCRfVnI82EEt69' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: p8fcktYCMFlpgVZA\ncode: 4\nfriendshipStatus: DKt5PFQDONmod4ZS' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: 4BY4Aw9BkYkhSvnF\nkey: uI04n8HeFghAst7L' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: 8tyzWukfPSAbKkbo\ncode: 41\nvalue: mlkd0HDiNxLjn4WT' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: l8aOmqrIDGR3KKG3' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: 8ZVsli8PnwoiPrrX\nchannelSlug: TAVzIJFjCPpFeuP3\ncode: 32' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: zPLIyQqup5FZ4gwi' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: x6vVkTsVWcNdfWsT\ncode: 62\nuserIds: [3cSmXB1AnKpzVzIG,cs2gZcNSyS2fwsKm,ekvAUQsyeDoxaLXR]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: BaYHjpIkswzCURNV\nfriendId: 16JH1oMI4XEUPDnV' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: 77VQTG9IJLuQS1k1\ncode: 52\nfriendIds: [hXhA0hhh9R1F1TlS,5ni7CxGqf9V9oTHE,GleIlT8asmv3q0D5]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: CTRnCJyFckX2krCR' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: p611IEYgOyDfraYs' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: 99jzf2bPbG31A8fT\ncode: 44\nfriendIds: [wPyJMQtuNBIy6yh3,EWMAUqHCKHWpMiiR,AWcOaWfKlDr9JhZC]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [mgq1EfYuZBK5YK4i,zrhrNB2o8hlUOgAG,nr34aV5c38DYC7It]\nmatchId: bgsnoV6HCeahJa06\nmessage: MgT7Lm5QegZRsS6A\npartyMember: [Qoircqp9unoSyLEi,0F5ugqV68WTUEh2Z,h5CLJcrMs2vKJ1Ez]\nreadyDuration: 28\nstatus: oPcZ5rBaoCzv9S8h' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: RzHE6a7E85k1iboW\nfrom: FcJNEAT548Au7e8W\npayload: oGVCe4IJ4jSYYJot\nsentAt: 1995-12-19T00:00:00Z\nto: O6VFKlQEJVCnkDCC\ntopic: h2A3TVnyxzyjUwM4' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: T3ZVIvY4LeKBImvA\nfrom: HUIz7tqERxfGJcD7\npayload: ThxTvMrd5zkokcdI\nsentAt: 1997-09-02T00:00:00Z\nto: ZfAm4fnXhiJHrEAn\ntopic: ocoh4DtPR7V720Pn' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: YZLskiPOvTuGasmi' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: 43oKzewzwjkgNiKU\ncode: 95' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: hujWqasRj14asVGc\ncode: 6\nonlineFriendIds: [CNGYuDH08G0gfpYt,vqmWt5TJjnkooFBC,pI6Kr7m6U3Iw5IrY]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: X6KRwr6Lq1jOMLnv\nfrom: IrJtNbjiacNgw5up\npayload: 3QbuHKUyk30liDmc\nreceivedAt: 1984-01-04T00:00:00Z\nto: Jl9JQlQ1Izuk8TMb' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: oXOImzgwfkkjIXk7\nfrom: jCcFrSylkMj4CpWy\npayload: BE1MdZMGySWAbycZ\nreceivedAt: 1991-11-28T00:00:00Z\nto: AB8k4Ulqth7HNktW' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: YGBRmGQXikh6MmQC\ncode: 57' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: vr1sawdOfrwhrWG6' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: 5S6pcY5BTr8aGqZX\ncode: 37\ninvitationToken: QiT1FzTviJAkFweJ\ninvitees: sqEM1adF81ZCDa6O\nleaderId: sMLbS5aP8PjnToQ8\nmembers: ti6PvpZbdy5IlISf\npartyId: 0qeFGnhWQHFzplMZ' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"tU0CbQKKqVeVntOR":{},"a1KcQPCbLo7eTkNh":{},"NyyM1GHXFNhwbLNb":{}}\ninvitees: [aqSjcRLbybH8peZz,WOZMqILU6zZO603t,V1R3PsVehOD8196u]\nleader: SVX8Wq1ChextDF0g\nmembers: [rMc9ifPDZbiMFsT5,iA14CmKZsHMzAPvk,7nnokzEYnB0Pm8DU]\nnamespace: 4ZsEanawbZMv1hQt\npartyId: 7EpmiC6Bf5H3mdKf\nupdatedAt: 1989-07-30T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: gEP3UfLkggDm5yXd\ninvitationToken: RqDYEawFvoVi3xBH\npartyId: Zml1JpeLf5aunNlK' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: nynvBxuYqUhSPQvE' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: 0GjjCx0MXqmokhQ7\ncode: 69\ncustomAttributes: {"m3TuJXmmSgWjUeJY":{},"ztTDoZhKQHgJrgUc":{},"Iz4GegURyFqLeElp":{}}\ninvitationToken: erua5TO1MyLlIOff\ninvitees: YXX6ZgN2a31jR79P\nleaderId: 66doSbPa1G2RWmo2\nmembers: L8a7Lex7LIxaZ9b7\npartyId: SgVHsXbIDFmMQQdK' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: 0P5MhoDnA6gufnyh\ninviterId: fbXGavDbpg232Tmm' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: dwK1Ow7J6oFXAeKc\nfriendId: z0Xk5jALSsD4boxF' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: qHPJN6zcxO0PqOwn\ncode: 90' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: dAdNcizR35JD89AV' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: jy9LfYHqxb2bBFR9\ninvitationToken: gDPT9FH6b9zOpXKC\npartyId: MnQG3AgyTd0iWouQ' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: 7Fvu0Q4G3CJ1n16g\ncode: 34\ninvitationToken: vWhmYo6IcC2WCRpA\ninvitees: vbWzr9UQkuEllacH\nleaderId: 2qowatdk37dU1Qlb\nmembers: UiQdW43iGqlh3Btx\npartyId: UAKxghKmDOdZ7iCA' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: kdinhg25Jd4aWefo\npartyId: g9QJEAZ09etEjgbA\nuserId: O3iPIvZDUSpOpQIA' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: XrBO3aoKl0PnZdAl\nmemberId: zHPEHfITrWwmXi43' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: braxH7uK15NZuRwb\ncode: 78' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: BhkER1fSDbLh4P62\nuserId: 2zcWdG16tPKUc0kc' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: 9mtXFjjiyHw9vjUC\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: 11Wd4hEChQ7z5xsB\ncode: 78' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: vwYH7feNT8w9rleH\nnewLeaderUserId: urV9SfEqABqMP6Do' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: oMQeN2JZCqLCacwK\ncode: 71\ninvitationToken: RWbiblWKSd4FQsGm\ninvitees: d4NjYLo4nVFf2Rdk\nleaderId: W6Ja2t8Se3uZ5ih9\nmembers: JPUdvn8bCqsW3hwI\npartyId: z1JnA9DBm16BwBkF' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: jzD6R8fc2lx46QSk\npartyId: lP8SYRavbdQ5VBpM\nuserId: sEKxi1febQrfmRfM' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: mQunxp6VuRK6M6fV\ninvitationToken: iiFMMpf0PQqy3dqF\npartyId: a554naH5JQPU8k4g' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: PvgBWaooBxYSYuyH\ncode: 18\npartyId: 8iubofWrd6Q6kfot' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: lL98ExKYKCKBaNXT\nfriendId: 7UL1yFEty4ZwU6rp' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: kJx0lCBrxrwCkmgf\nchat: N6MnXLVZVhYmgg9H\ncode: 33\nfriendId: OQBYp0UJVGXZPDTE' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: a7jHkynvvsXPScrT\nfrom: Fp0q71hVq4Wu0Uod\npayload: k8f54tZN65UohyCv\nreceivedAt: 1984-01-24T00:00:00Z\nto: mO8Xd1KgA3fVH0ud' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: 01ukkI5aVUpDeNkL\nfrom: 8B6za1FTNQAZBmDy\npayload: pgXNmCXTjvV63vgU\nreceivedAt: 1973-06-02T00:00:00Z\nto: 1vLlQaY8EB78XKIy' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: ogFVqSzC86fky0Qq\ncode: 30' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: ewU5G9kE9iWW5h5U\ntoken: byfFNzUMTDoQOmIt' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: cvDj0jXnXrBNma3R\ncode: 79' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: tMweALlMtaKid81D' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: 1FmSOlJ4DgP4wkZS\nfriendId: UW995pBLg2ncgSWI' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: Fv4sYLRiPOW3PmZQ\ncode: 64' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 33' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: Yt99NMVXVj5Mza6E' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: ggg9rQ8hAT0a6gx9\nfriendId: IxqpTKSIkm8Wl4Uh' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: tmYBzfq0aHmq5a07\ncode: 17' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: tKfjZxrYmjuGUKry\nchannelSlug: gAGkF6beQs6PwLWV\npayload: 3bYdOhbjJlR1Uvg8' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: WlhKjMR4dgrEtcNh\ncode: 97' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: 5V1frTKANMR5sRoV\nuserId: QlNpQuBNU1LgrAFU' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: vEq5shM0NQAydR7i\nmatchId: A1HoccgA2TvAuhz4' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: 7pe6qmgkQdLbeMj7\ncode: 87' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: LhPbKBMyvHoyW9XC\nkey: viVilzfewRK4I9X5\nnamespace: Ark5bgkV7mGON6DP\nvalue: zaarZcsFPyzOQvuc' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: dgwzgPNokftYnKgR\ncode: 37' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: Jru8C80IXqLwIy4J\nactivity: nd81KoTuRF5olW7v\navailability: 73' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: Ooy4wPTgd1NSPNqj\ncode: 31' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: zNJZ7bUyZKbQ3W0F' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: 3PvoV6zKzaPvd8H9\nmessage: VqdHfBvIlFage8vl' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: SDTbI94werzWM5Cd\nextraAttributes: sSpCCG1zVez44wa8\ngameMode: GRxWJfY71w4c72Bi\npartyAttributes: {"J4qxqVVa27wAQLkV":{},"fVHurLVDrXbUo5Qo":{},"khnMWKysluf6JM2m":{}}\npriority: 96\ntempParty: aZiMXx5viZsbXu6k' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: mTWJOzNLIrftz0D6\ncode: 27' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: oDLtQyNDo14G1BVh\nuserId: 2UiZFzL9lDfy6R2x' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: ful0l3fJP4OPEFpB\nnamespace: eCnq2UsEWlvaI91B\nunblockedUserId: he70VWt4vA8fANMB' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: dcQL2pVT8DY2VvDj\ncode: 61\nnamespace: 8iXT65iPLW7EUs01\nunblockedUserId: T7WwewBBjLzXozRH' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: v00PGJ82upgjQhFS' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: sZ5iiWZnEhRGj1h0\nfriendId: 9PARAcDReyIiXkWW' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: oecnmmkCeLUm6reg\ncode: 65' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: 3nFD72fObSieqJaa' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: wXxQo5ECK3ZbP9zj\ncode: 19\nplayerCount: 12' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: T0p2xegwhvIR0dq4\navailability: 59\nlastSeenAt: 1985-02-18T00:00:00Z\nuserId: YVgjmTPgfBN05zbo' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE