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
    'type: acceptFriendsNotif\nfriendId: TNMnSzvp39IWsAxC' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: 3ayeZAbgH7krJzYZ\nfriendId: jXfmRfmteQ6vxrzl' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: cJkEvxw1esyQ7iDp\ncode: 3' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: CcWYLNvqeZtpK1To\nuserId: wvUQ0eLfyLEkxdj3' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: vKMIiFKiqvxcqiIo\nblockUserId: M96Vuqf9bJ0Lj6cd\nnamespace: kCNw2bdV5HjDlypd' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: 4EqvuNeX4Jqkodgy\nblockUserId: EtmuOL8ll4sYbMq2\ncode: 73\nnamespace: rCAUoVWROU28tFhR' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: 1KHofSh4s7eEFGSM' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: XUll16UkmVqJnZrZ\nfriendId: AvshiPqzQRJhSTzy' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: HHkNEa4JIt7RUjps\ncode: 31' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: ttDK9CLwCtFW6V3k\ngameMode: hLot3vrfvqnh59lB\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: DQHSDFTDXieCMCZE\ncode: 28' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: SeopwSGBCTw5luD4\nfrom: AAw7v8UCn9cJXz2V\npayload: K3RjyumhrkKpGfTI\nsentAt: 1992-10-09T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: oP73vNeF6FP3zz9B\nuserId: JoTYrBcpWKz6r28Z' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: 8ZUafdjaoTOP0k8r' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: 1THQlwWLiBI33xNR\nnamespace: 0zEiZg7uMZcr0HR8' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [urSyGVaOb1vj2U5f,Z16Q4mVUc9CSgYnS,t95iJO3ljHvhhKdl]\ncustomAttribute: FCNNVwNWfRmOeneo\ndeployment: qV6bnEuYhsXzT31J\ngameVersion: WGODokR3JhOGGUCh\nimageVersion: gXWbZ8GYmvFV43UR\nip: NgthhE2B2AzBNOIn\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: jXVHU4aYBSUIeo8A\nmatchId: FPwuVId63K58e7gy\nmessage: iFOMrGIBz8BJKUml\nnamespace: vroBtEs9BSScBdGz\npodName: kFnC215Xyc5IzXB6\nport: 32\nports: {"KqBiWBoBBKzf8ktI":30,"vEEHoc9EzKFpIikx":13,"uXl477sAowTFf3rb":84}\nprotocol: hD5JKvDJXE3XOYRI\nprovider: 7At0EIvH9njt6XQj\nregion: AXIuQRxRvoU83SMy\nsessionId: gVrPQmEP7BNji6PR\nstatus: 6u7izIHplR1HA8x8' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: P7eEGk40cxxlxiUb' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: d46lrWbpdsbgkypu\nuserId: XK6xJsETEF1DPTTr' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: eOUr5NCoJDC502f0' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: GPUiYFbdCEpDHbCM\nactivity: [AMeg65ZkHP6afldN,9jOWSoIkRlyMx8KO,v7DsFDAN14KM9Gah]\navailability: [LssSgQWAvpk1juwc,GT8q1Ulgzh4qs997,v0H2CQjjgsOs38lx]\ncode: 47\nfriendIds: [Bmin2CaRIDbOMd0O,RrTO6byG8oY0h142,OpcjToPeaSE8LwOW]\nlastSeenAt: [1976-03-01T00:00:00Z,1972-08-26T00:00:00Z,1992-10-21T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: 7MaIafDlODPFUXbx' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: EUsyLYrJNnKXy1nZ\nattributes: {"h1gWoewOt1sb1kcM":"JpWH19pUvbvloeu8","rweRLdEgqsSX5NMp":"JbD9AEOImxJqNkn5","jmgF7414kdRb5DrS":"qlf6fkItMEZ0xEDQ"}\ncode: 71' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: xbiLXw6MqZkwvVF2\nfriendId: lT8VLQ92TTcw9iJJ' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: Vm2G4BkqvWss9aBf\ncode: 92\nfriendshipStatus: bPRABHOdoUpzPgLm' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: 18yp4tzKkimByOuk\nkey: ZVlW8RkSoXPca5I8' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: lkGY4R9zYncM7VOa\ncode: 5\nvalue: Lw5prZnjTO2uwQKK' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: ufZZ9f2xu0DD74VJ' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: E4Fv028OrZSzOHkF\nchannelSlug: LeREHUsfQ0UuuIo4\ncode: 25' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: TOz6dJAQSYbUCfcd' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: 6V1LWHvomnlzxmGx\ncode: 80\nuserIds: [YpTCHZgFiW28e2Jw,ydpVCuErimU6JLwd,kxDdRRQRNfWZY4z7]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: 0V5T76PISzRkvvEX\nfriendId: DpObW2ke3bpgYxV5' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: hovg0ui7QxBi0hyd\ncode: 29\nfriendIds: [C12iRd5fBaRd6bse,SLiRMtDomdoQ9JUP,uaGRHt24lKCFN9cc]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: YBACzdj4GujlmKc0' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: VRcToFjnJpYITmSP' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: aq2Qx17eQgfiomxk\ncode: 62\nfriendIds: [Nax5y5MbY3Rm6fDw,9AjjVgDVTpIFz4Yq,7miwka77dOQhZ2hx]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [PHlgn7IPaZwYoqX2,7SnB9XT8Oips3U7i,SHYCDs5oR6IfRSyU]\nmatchId: E07a477nnuIM26PB\nmessage: cZgHeTkCH2itPBWb\npartyMember: [zW4ix65IZD6rDkYC,XGpu27RBFkGvRQe6,NgdkNexyUpBae4Xt]\nreadyDuration: 87\nstatus: BAL26nnUtJFOVG1W' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: fLkrhBLsaZm1ZpDB\nfrom: 3zXTchegkwE1oSAw\npayload: steSeIxyy7xxJI4t\nsentAt: 1984-09-18T00:00:00Z\nto: 9QdUx4inzT2otRQC\ntopic: gT07o4T2Fd1qk0Qc' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: TQpPcNhpFFirgIUb\nfrom: 1zuumGTbqLo5eynU\npayload: vE2qckOgDglj71fA\nsentAt: 1977-04-09T00:00:00Z\nto: BAgCVcdQKfcl5wll\ntopic: vk5ic8dnwpQ39NN8' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: bvNEsh9uhgr4KfNX' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: gBWIq07vS61eHU2q\ncode: 4' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: P5SBFcJNgs317l45\ncode: 47\nonlineFriendIds: [tYmLYsugoEnO3pt5,vH39XvXXy0iQ9Ho9,DLhXwKevv32nZR6e]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: CrHSzXK9Del7yO3Q\nfrom: kKJdVu5C7P0mNF53\npayload: 2IjWdGhyEsa9stNV\nreceivedAt: 1997-07-01T00:00:00Z\nto: H54FjzJxhXhqqRte' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: WCg1fxYCbE8wZkSq\nfrom: y3P7Qeb7lCO4mPFI\npayload: 5pPodtW8foTmrTeW\nreceivedAt: 1975-09-28T00:00:00Z\nto: M5nV8hvmrwo7OyzY' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: mbi93GCjspT7Qz6U\ncode: 21' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: r2Yws5wK0xJUvHkW' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: z9lv2ShSsu1vWVw8\ncode: 6\ninvitationToken: YRHld8fNdlJWg73K\ninvitees: yh9e5anCudijaYFX\nleaderId: danlamFAUp5uOLj0\nmembers: 4kJwn0M32DV0uqFx\npartyId: RpQENuQQpqFLuEXQ' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"e4STFFzW0ZYOniLt":{},"TJRM3Y4r0y2GN3Xj":{},"FuCun61J4ooMCClt":{}}\ninvitees: [bcMsewrPxVc8Ab7X,CZ9OMz05FdYR4t9e,BMXnAHkHIoaf8msP]\nleader: ifvi1SJMzlV6gzJi\nmembers: [A07b4qcvyMn1ox2z,MAx3t578yJqTk8wp,OB9LPu5xAnoVTzBK]\nnamespace: 949bEbCWIWj6OFIt\npartyId: 4YWHEq8wB003S3mR\nupdatedAt: 1991-12-11T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: 5LUdTK6GWkmJPMdR\ninvitationToken: ptpaiNBunf1Vysh5\npartyId: Mh3WcqpFLhJiqc3r' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: JSdOwivZzUQnVaxz' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: PnXIbr8c7yneMc0E\ncode: 45\ncustomAttributes: {"JoFNBgSw4CAx020T":{},"VrXztJOarIQtCivG":{},"c3v9i1xekbfrlbxG":{}}\ninvitationToken: 0ycsVcY4vGvVxuFh\ninvitees: bPCJFpJUWEh7xXtZ\nleaderId: KHDAZ435rnbwlgSH\nmembers: NjstoWsYIbCmQLbY\npartyId: TkNDnNSgUopcfKFw' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: gtsp6e70daX3X8Qd\ninviterId: 2hNHDtCVEzBu3Kid' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: e0LFsjAEiH2S5e53\nfriendId: eRQ7wNgr7ixajW8j' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: DtQg6esxmQioqCqN\ncode: 7' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: 9Oi6vpFPoBfE3cLn' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: ULqgIQwULgi2wxDu\ninvitationToken: tjSYIseqydoLCiCN\npartyId: PiuLPb4EMxspSGUp' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: JriJqnn5Dlqd2mW6\ncode: 90\ninvitationToken: qy4qOdyU3fRB3V5W\ninvitees: fij0NFbbO2p4ioYH\nleaderId: cX5kxjpvPZdhsaO3\nmembers: 8SSm6vHlitAh0PZ7\npartyId: PpwraKYuGfyI8D1v' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: GPiQtS9F7yiogpeg\npartyId: GUQeb1Z5lunPA195\nuserId: D3j3qdtbpHbTslQz' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: IR3kCle5BECpmA8u\nmemberId: xW4ZkHESmBk51ya4' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: JYtc3nO2dCkLQcQE\ncode: 98' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: uuk1tWG4fQDM5ELf\nuserId: XABEeGd6gssXskmZ' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: H2NVfzbzyeXJ1gHC\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: 1zCuUT1bmDWWTGxR\ncode: 80' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: 2yFg4DMmIHs3mQ44\nnewLeaderUserId: dgQaXBdDXWjjoOnw' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: YWMHyZ99W1safwWL\ncode: 89\ninvitationToken: RaymfRkgc8p8E201\ninvitees: 2VPeUfidhumBrD0f\nleaderId: SnzgSpTdhzeHTJKe\nmembers: qiunAZ054CYIBcLP\npartyId: bK5mHqPokq7VL3p0' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: dj68A0X3JHCXUsTN\npartyId: S5GH42JAf7eMzFij\nuserId: HhCTonBUCe6GdxgI' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: 5JSqn10P7L4vXhxi\ninvitationToken: xs4xGllD71hv9Dwo\npartyId: 1EEyc9I1oX5qTbmf' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: 3oYvZyNcwojWkGvw\ncode: 17\npartyId: RoZBahbw4AxRe5An' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: MQ0hzgoL0wJ3HwbK\nfriendId: 2Q7gSXRKXspclhZF' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: iYrWfcUV4pcUvkhR\nchat: OVRXqPQtFNRTM2Bg\ncode: 83\nfriendId: Hd340VuiRkgMsfea' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: g1TCZZSDI37Yql2v\nfrom: TMZNnyB5yMjD4t4F\npayload: eRqhkDgyPeTmtNPN\nreceivedAt: 1980-11-01T00:00:00Z\nto: EpVrxjHfjfZyWnmC' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: hBcV8n5yLSRqocB1\nfrom: ObsgyWB6RqiV77Lm\npayload: ychlo42ByaCXaWLn\nreceivedAt: 1997-12-05T00:00:00Z\nto: HCAli07W6gJInzSi' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: 4yRzDUdIXQFOzEZs\ncode: 64' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: q4ASQ0Jxz2OUmMfz\ntoken: AbeEf9WXkFsfsi1w' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: aF5YMOHOLTPkJ9qA\ncode: 10' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: BEleGurxTRANNbIA' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: dvLVwKpGZfjjApPt\nfriendId: AF1J3t6d45AhTwNS' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: CnKlKn2NEM005oKO\ncode: 5' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 98' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: 4KgyKJ2Cpksv3yr8' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: skugCW0GxHRj8mIL\nfriendId: sNOWntUteyvH7Nfa' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: gCzL9qhyvsl3DyHO\ncode: 30' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: 4hOGoOJxjTaPzhcD\nchannelSlug: T9T7l3w5geg3QQBa\npayload: VRHDx3beJTGuZZry' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: 7RQIpz9NoBTZsRMw\ncode: 91' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: qPntJtegDpCQA7aX\nuserId: t9Lr3kdb9Y8e9ZKp' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: 21cydf2Wuca4cyoc\nmatchId: deokQJ3WyyyO9BXB' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: M5WI1TI3R88vhL3w\ncode: 94' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: O7jtHTRGF231I0h5\nkey: W0atXUpslLSXfbjY\nnamespace: m9jod21BvAhBxkgX\nvalue: RemWfQjfZvkNXssj' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: yvacz60PXMTrwmlG\ncode: 82' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: KcDxs54GPlRrj21p\nactivity: vP7vCdKMSgevQ1NR\navailability: 48' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: W9AUPMW5mxQ8OtCv\ncode: 12' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: PGBx2r1Zwk7Hvwib' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: dy0V5vZIyNM5En8g\nmessage: IenT3idFWKrSKMqD' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: U7E05J6bF4m1ftke\nextraAttributes: RNL3Do12b6WX7o1B\ngameMode: QZpYNQkh81yxDQf1\npartyAttributes: {"IcqQRNxfZmUK68Ws":{},"2s2srk5Lz2zPJoEv":{},"jDS2Vjwy2ztHbIHQ":{}}\npriority: 65\ntempParty: JVGDh6h6AUSgYCwI' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: B2IuvKFx9sLmdUtM\ncode: 24' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: i9MSFvRZc6b7TX4d\nuserId: 2Johv4mVZ9gEu3Yk' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: ars3f8fbrypbA3So\nnamespace: uc5twi3zF5JBzgjv\nunblockedUserId: CKpwOwDL90kZZMpr' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: pDVPMufEcTq3cFkR\ncode: 100\nnamespace: YAoDf1SgUE4Cf13w\nunblockedUserId: rTTXdZfVOsFr9ujP' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: tgqDHntjBwfgy0Cm' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: yNIu7fwvNIrDCn9h\nfriendId: N2mbFo5DdIfZT4nR' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: 0tjnUXSqew2FJrbr\ncode: 3' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: 1rwK928c5XNnchpQ' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: AlfwfTwatfdjNTL3\ncode: 89\nplayerCount: 95' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: 6vRqHjxj3chLDqNF\navailability: 23\nlastSeenAt: 1985-04-26T00:00:00Z\nuserId: TTn5BeBSLnXkxIN9' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE