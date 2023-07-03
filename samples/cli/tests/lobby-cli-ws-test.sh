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
    'type: acceptFriendsNotif\nfriendId: BhYpZenaHJAZ7sXP' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: k8hh0iH8CqCULgEY\nfriendId: v2aLyygMTdb3LISD' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: h6v4LZneYWB4iOLB\ncode: 39' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: 2qxa95bz25JdW6Ku\nuserId: 5wA1c5I4ss55m695' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: 0MhPM10PK709tmJj\nblockUserId: Km2asokgi6Ycurmu\nnamespace: CzVhI2VYzLXlIqKi' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: 4Sa3YkpD8FPZh6nK\nblockUserId: TrCcL7ijthOlheCj\ncode: 54\nnamespace: FzZIjRdA2xI8xqUW' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: BnotNSyAnTY9NK2q' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: MLdGTGLSvoEtutn1\nfriendId: LpV3PjHPoBytQlLx' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: YkYmBrQZrhWeecXK\ncode: 62' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: B8W63mluxYLSC5Iu\ngameMode: B2noz274LTeS64kt\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: uAEZMi8u7YIiN725\ncode: 48' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: Zz2xJWRTAwfY52l6\nfrom: OXAsbc87G3Cpwlt4\npayload: dthNx4zw36lUeKqv\nsentAt: Kf5i4gsk9JgHVJZC' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: IxOXJ72ZzMctSOjA\nuserId: 0wLFqZxXU2DVJ5JE' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: NAjYEb2lFWZwCZjC' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: daNZAaTlCIdOvTnR\nnamespace: r1g3EwRJfjZJzI6n' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [Nrwwfb1GnfEqe8fc,lycSYI80UNAg4vTS,8LnuEyrvHvZmly52]\ncustomAttribute: W2Xntvn9x29PfkCo\ndeployment: 7tKHeQB2c6d2tZPk\ngameVersion: LcOusCyUvoBIv32r\nimageVersion: czeUxheQjA6byS8L\nip: oecXXBXAdOVKD3Ub\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: l3ZMF29bEZBASjt9\nmatchId: 5oHoyC53F35AcpxT\nmessage: tl9Wdx16ZfcjOz1T\nnamespace: 6Kk35jPjFCdbFlur\npodName: a1aq1b8V12oAxfjM\nport: 2\nports: {"dgKSqvUXZl2WzFym":46,"ZslK7ElYL5YwnN47":86,"LFayvUIqmdHr5Txr":22}\nprotocol: 5vzsF2wgM5ikTSVs\nprovider: szaijMlzxkT0LGGT\nregion: fSBzV0BCa820Vwbm\nsessionId: 6VzGVnFiEwLzCjmr\nstatus: mG4CO7pbH0EmDb9T' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: 77zpGwQkXVjaZF1q' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: ZiLltgx7syCEUsTS\nuserId: oRd1ndwfvbxgNOVm' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: c7sRpmzfRUZekAFQ' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: lj72Ia1lWq0SMyv4\nactivity: [xuU903n7TPT8tvpH,bIUdE2KMDFbL3V4S,0tinwdcnxV9aGaZz]\navailability: [60,41,39]\ncode: 86\nfriendIds: [AtnjuDGTqXdf55pl,zPK4WvwwytZ5UGnU,RbSwpZMAPKZbGmBP]\nlastSeenAt: [XbEAwEDQ11cvwR8P,Q8uh3S8AFQeLLOPB,FYXRrWodmNiTmNxY]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: 6Uc9W3I0FWO6lsqI' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: J8nxmrNOLEDHNUK5\nattributes: {"Afhza9F70pjxAmZJ":"pypirMYxKLPsgXYz","fK2iVi94dNABUGBu":"t0W4qKoidUD2GC4E","zx0rUFK2vqgBMeba":"TsNG036BNVqooFSF"}\ncode: 33' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: 58Dul3WmEvjntBMu\nfriendId: heQkpwVJtwsLS012' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: VsSFCDgxnEEpx6ST\ncode: 25\nfriendshipStatus: ASF6DIFG5a0atHlM' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: s5PfqrWpTDGgZLTx\nkey: f24Z2YZYoMsDoRXj' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: 7PrjtjhPpFb2NDfn\ncode: 99\nvalue: SKR2HM4nKJo2RJqM' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: gbEkV6ALTshaRm8j' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: zu6cXROD6rFPKoC4\nchannelSlug: BIvqIwcUmo1nyNCj\ncode: 99' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: nDq6AIZfbjidhqeg' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: YGTrML3PUjPL5j5u\ncode: 65\nuserIds: [3aD0GzhrLUWVoiWM,y0e9I67HBnh5fWBd,ZeZ3SMiiORT2zfsb]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: fbvHnAcGrUqHMW5F\nfriendId: qdlgnzLHQq3eOFYi' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: L5scTDhIDiEjO3gC\ncode: 97\nfriendIds: [2suPK7zkwaDWG6wZ,WKubdSfmQmQikMCC,tcfx1xI0q6tVBrf7]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: NB36lNVQDnaRJ8Mo' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: 1rDIAL7HKrQOHt55' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: UacVZKSQBAQdhPMU\ncode: 1\nfriendIds: [4Q5s4o3Lfxul51E4,i3t4pt2Tqw40Yj5y,Vk2PGLMnrKQMIPAZ]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [k4MkunYvn2E7XHYN,wGV2y8E81c9XHbke,rl0n62sTmmd1e40A]\nmatchId: E0oxPrdjcW5VMRhx\nmessage: 3A3BBPg44K9m9DGo\npartyMember: [PY1jgFtLMvrSEcj6,PrjU38B9LUYlBdrh,QJdWn2PIvqVKSGTz]\nreadyDuration: 21\nstatus: A3IHI8IaNL39xxnr' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: CYfhAOTpHXxNmmCb\nfrom: fIxZgofD83j1F6Za\npayload: lNTZZHcWg69QuKAX\nsentAt: 88\nto: aFAgsTDo1OvifrND\ntopic: vbktPWYshy8zGbOi' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: 9uAqvM92Y7D5u4xb' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: 10ChzDnU9pNHSDzU\ncode: 73' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: UAr8UjbPsSzNzM1n\ncode: 54\nonlineFriendIds: [tykSRThJfJAxl40z,tHEi0xP1dN3xIkNg,M8UJ9FoiIQGXQCgW]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: Ca6dACwUBQDLjWKn\nfrom: LPjOfHbbofMBoT1p\npayload: xVzMBVOK98MP6wX4\nreceivedAt: 6\nto: 7nSq8wK7gzGz3AOx' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: JZ0Jzv3axrMaVftu\nfrom: uWWgPHNWgWPc0usK\npayload: Xe1l551Lvnh7taGW\nreceivedAt: 80\nto: MN1To70KVLjEfA6O' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: SxHyuqZa4UJsc0zh\ncode: 17' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: s66SaRPumabqxmBK' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: 09lzRbr53aEqUxQC\ncode: 94\ninvitationToken: aRjCL4FrIxDxPdAm\ninvitees: 6r7jUVYqtFWGbnwA\nleaderId: EWcYIaLQ1np9sm3u\nmembers: 9nE1uW6H9HtpWxvn\npartyId: xTSm0o6e46DXj388' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"dj21Mb0jqMXblkmC":{},"P4o7idSCjn8DLOIZ":{},"Y4EG0xanxoBLn2a8":{}}\ninvitees: [vbIwLvkf2ge6WpR5,P8poMY1WWodbOdwU,oc3zMlaG0EmGVaQv]\nleader: NN7ZokjTH3S18nHa\nmembers: [o6pboK6ym306aMi1,3mS4sJv3MPilxz7s,0Y98rBzsnLLtmhka]\nnamespace: gdxBUNDdnflv2ib3\npartyId: oC8xTFRkuEEJ23PY\nupdatedAt: 42' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: 905fzTO0wHXtncd8\ninvitationToken: VfDaPbmi7CM6xbDt\npartyId: EMVvZ9cXPiSiQjal' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: QHuTgjJQwbL0g6Lj' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: l0OsEMGLtAUcEOpy\ncode: 31\ncustomAttributes: {"eTUjhnfnGP4RpAVW":{},"9YcEJhr35mkKIcUL":{},"khsaVBBsgXCRtBRq":{}}\ninvitationToken: oBW7b2UnkeK5hObn\ninvitees: 9SwKhIl3JNSe9JRy\nleaderId: ZqGIeZZWZrYWQv91\nmembers: kRD5l1Ml960b5T1f\npartyId: I7RvaaWc6ZKPQM1B' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: VJ8aVz4qx2VgU7QE\ninviterId: LhlTs4EYTqEY2gZc' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: 6qbq7qznJF7XV6sL\nfriendId: lQR17tR6D776S7DO' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: npCkAyoql12R0zTy\ncode: 28' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: 6JunISdwnbph9xeI' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: s5E6EuCCsbvSUbhd\ninvitationToken: eYHHBIk722Y36tC9\npartyId: VLG6Jv1Z7poQbl4U' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: VR2ajrMrQNflVdOU\ncode: 90\ninvitationToken: rZbIZWHO4UiB0rTX\ninvitees: uODHRRerXyDeYLgw\nleaderId: ZkqjDA0MuasMhZLH\nmembers: rdfDFmJUWVlfe2KD\npartyId: CCVTuHjXiwjRMe1y' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: pvtps3eWMyvnygI8\npartyId: Lhci5ePpPvmAYnCi\nuserId: 3fXK2C7U3pFqZSWD' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: pDrfjmO0P03J9iQc\nmemberId: 9XIhhsrZkbVOKs21' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: 4uiOS8xCdMpmCz34\ncode: 50' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: Yeqmvo2R0sK6OOaY\nuserId: y3l3XmRGjiSAPTB2' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: 5KXjW6mxpKFd16aO\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: ziqsDJ0vc8AaDrT6\ncode: 34' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: pXmxsbpehwmgFajZ\nnewLeaderUserId: AKDPwOmUFEBMB774' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: XQj2iJgJJjegSXiC\ncode: 8\ninvitationToken: 3CRhIPOLOjL9lZsg\ninvitees: xsuQl6yt1i8wkTxj\nleaderId: cCvWgNRzh05SMEls\nmembers: tn5QPNzIjHVi2IaO\npartyId: gQEir6Wcfowzt6fa' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: ezZycWS6rBNErAHS\npartyId: 0t7xtsBzDM9ipiLn\nuserId: p1Xjl8EmRK28MIhv' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: VUgAdfsxlq5pplsS\ninvitationToken: Nuj4sQU96n7prsM9\npartyId: YNAEA0rsQXcyweRe' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: yPVdbltnozcVMAwi\ncode: 88\npartyId: xNqwQk9oE9f8aCKg' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: A5ANcj3miXP0BPJR\nfriendId: RF03DRdisIy5l49M' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: hDqiRZpAq4m8Cxrs\nchat: c1JhhpTKFldDQMrI\ncode: 26\nfriendId: D5sXWdKli0rsZOS7' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: g2vkSSgaBMBNMyD6\nfrom: gAuhh6jb6vNy5oS7\npayload: Hgqb12oZzXnrv4q8\nreceivedAt: 88\nto: RnrTuKLMrIHQuOHi' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: bItDtON3LOvuy9iz\nfrom: eWDumRwdmxs3ELcN\npayload: JsMSz8jjnndxZPaZ\nreceivedAt: 61\nto: 25PqWMDPyxVbHRYb' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: RuqUKykjid6G3xyp\ncode: 57' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: 9R72QQICK1CtkskA' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: OBwn7bT5KmoZ3ZrB\nfriendId: Fk4aTNxvOXkSVDmX' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: TI0fL0WJTwrAtHxN\ncode: 72' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 26' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: bPA9E847yUl6eqPL' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: drGsUsTOyEOdiXJ1\nfriendId: 03rrJcS3ca1QF1l4' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: ZIml1GvJrg1tY2dx\ncode: 56' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: ha69oYJ3ctKls6fa\nchannelSlug: SsIHl8F1vF40cnSx\npayload: BMyhvOzN9fMRHCzb' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: f7EQIbXQSUzI4aXG\ncode: 92' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: etU66UpLSES5kWlR\nuserId: srs9IeIHFzYXbCnx' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: da5UM5sTFVICFdFE\nmatchId: rjGEGHUxpB9HDbFf' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: kbZB9E8aduAh4SDl\ncode: 45' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: kqX19zjGfeTCcBBK\nkey: GlntLJDg66slo6ho\nnamespace: PFCpbkOyXJw809gB\nvalue: CmJ0i0WYjQmWI5fU' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: D2MEOz9lJLxo39EW\ncode: 38' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: BVey6HIbx9mgjLrt\nactivity: O3FkxKfTVE4Ms90P\navailability: 83' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: 5eXRkOCFr8a8jJOb\ncode: 77' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: WjLm2VA3m2cjIjQI' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: 9UHqA3ePrWDUHpHf\nmessage: NWyYXTgaclvavlsb' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: VxyrrG1lXpqZbTAH\nextraAttributes: OA3OcNmGAwXX9kvK\ngameMode: qrRURTHgnVB1fhsZ\npartyAttributes: {"xIGeX2bvyp86PlzM":{},"9XjBZf4ZJapaxL4s":{},"yRYCZanq0s9btGPN":{}}\npriority: 100\ntempParty: FkCX0m3Q7SMzAXK7' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: 2ZDTI0hRcL3PXVeO\ncode: 97' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: 9Y0PIIY3RwJ3wDrn\nuserId: U8i7taab0KxlXTC6' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: kgFEX4QB6xnaWezK\nnamespace: lbO9TtZ7EZFB1CyP\nunblockedUserId: OQCsGAkUhfVl7caS' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: HRKRKiyjAkYtOij4\ncode: 10\nnamespace: quI4osDTdmbVwbZ8\nunblockedUserId: MG6HUzXeADqvYXLQ' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: prsUaUsh1x6TCcIf' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: M0ipvbwTPLfsvPks\nfriendId: gPGwOqvOrt9E2wVE' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: 1RNmDnqvlNMBNqEV\ncode: 56' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: r0rB7zdOgkZUlwEC' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: xEJWStjXPTRH5wUu\ncode: 32\nplayerCount: 42' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: PDqrepSu9X6Plcvm\navailability: 40\nlastSeenAt: FyWrR6qJTpl4t2dV\nuserId: FdDPYDtXnF5rlFL5' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE