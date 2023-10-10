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
    'type: acceptFriendsNotif\nfriendId: B8beA6gAqpjPpkC2' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: xbDIRJWjscFDmeUL\nfriendId: RcALqJk92Q6NVxpA' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: s9nKSWppwJK617Sd\ncode: 5' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: 1S58uRr2KTVj1T5e\nuserId: xGQs1WhQj0M6pWjh' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: vgC5T1EDZHF5iQPP\nblockUserId: ACRPkD8j2hLPHx5a\nnamespace: RivILqNiZqJW1qKD' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: ui5Uyvbb43tofSzT\nblockUserId: O0qjyNFvIqoDOiAG\ncode: 47\nnamespace: F6oQ1eTCTmeocjWr' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: imsQcfT0P3wVG2zK' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: yQOSjsCw1bYJXedU\nfriendId: GYhz5obeNYeb4Ca1' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: Y9r6a8oGrnWq8Dv0\ncode: 36' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: INyM6wZOZf5qrQj8\ngameMode: wmCj3mpYGlfVhuRg\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: 3hNcOeONa44J821O\ncode: 45' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: siM7EChR08nZPuP1\nfrom: aT6dAyyvHhaGQaKg\npayload: 5r1PW6xjYIeK9lkU\nsentAt: 2PykyY1E3GVp1w36' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: 0fX8hddargMXeu7Z\nuserId: Ks6LCzxnDfIwxGiI' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: nDoN9qGn9n43cWTS' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: S2m39BoEBrRrqzxh\nnamespace: X4uBRnTXoaxULKuM' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [4N2I1aE0GoKVlgFE,Fd8FMfaSGVDPN3ud,ED1J7hLSa4Loot2X]\ncustomAttribute: 4PINPH8Uu6JkMsOr\ndeployment: Or1OwjW6xvIu0JpW\ngameVersion: jnT3uNI6BffsGXMd\nimageVersion: CEIHBsp6Dgz9yEdX\nip: OuWXKl47Zmdbao61\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: DNmHuOyiyVna0ivz\nmatchId: VfQAW4r6RN4piA1c\nmessage: MpTupD9X2LSEPmlV\nnamespace: K3kW8x0CSAvJqYdi\npodName: c5wM71Vb5FZl1FLD\nport: 0\nports: {"7Yz1Q1w2mm6nUBKz":87,"XqxrJfqCqPXZTAu7":69,"RByUu7EmZfUnfLjY":86}\nprotocol: FITpqGTqcOW9PUab\nprovider: ZT8vH3EBbMFKygwq\nregion: 9XUbOlWkgoGEpwoo\nsessionId: vh0jLxhMv1vWyQqI\nstatus: PYT5BbcCAg6abKwj' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: Ab5iHzQhrwynnkSj' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: mUu2PaYXi7r8PJKH\nuserId: ZkNzBKUn2h1hLf6f' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: Xe3CNHS1ZIDacSLr' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: ZjvNkvJgQgGY2CmY\nactivity: [mJLAFkbh8jD93mmT,TjIf4UawPzyuryuR,jioU0r1MRf6t86tg]\navailability: [36,65,48]\ncode: 61\nfriendIds: [g24ZB7hcb9XWpwB6,m9Qdk3wtVk2w5AQb,qz3yfpjobIf2jARB]\nlastSeenAt: [ciaZwtsZRqosf7q6,y8iNTCYKGqlpASC5,me65Cnoj6d4NJRzq]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: BrvY8GcxPdks2boA' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: xTAIMRlTFjewPup8\nattributes: {"4ezpuFOpvBBQ1pUE":"VxEXs6M3kX0cgLiz","1HBi0Lx5XrUmA2U7":"udSl4G6MeMYCrt2Z","PeisxYboKsoabqfp":"JdCZ7np03SPnJ0AP"}\ncode: 0' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: AhNAHdKnAKNHoawJ\nfriendId: 91JIIAxdBo1alkgM' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: HiAs3H703f2DtKW7\ncode: 4\nfriendshipStatus: l7LsWzznYmV4urS1' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: LFK1fbc5Nms8Yjl3\nkey: hjQIfktpCiMxEQ2k' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: u2U0DJrPZVMKih78\ncode: 22\nvalue: cKaffukaW3GhQfWV' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: v2z0P10jqsrr8Tpf' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: P9pU47cAca77wkA1\nchannelSlug: bseAY4C8S2QFp9GD\ncode: 40' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: 9kxYbrHuaGKODPkH' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: kuK05A8TIvZLLztl\ncode: 8\nuserIds: [VlJj9qJ540tShVPr,jE2J2akaESYWkWOy,fomyiLv1ROByPAq4]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: ScBbaxITgTM9yCZX\nfriendId: U6QEkA7F8G3LGRbg' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: sbheajNAX6wInU5A\ncode: 61\nfriendIds: [qYhrQHLLcm2Tztfi,rVWiBBIYwTfFrlP1,fTo4PJX4X3TzTG4Z]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: bVOD0aVGogPnAkcY' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: iWMmwrY0xROXkUP6' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: KnACP5D0DI8FIdS1\ncode: 11\nfriendIds: [vHC6GIg5p7TMWCSr,9FnvBHih1mMvxg4r,IubzyJCNt5A8FLBq]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [iETzcaOCh3ZUEuMV,16e5sMzhfxmUX5Ks,Hwlp5Q2BgGpPpSta]\nmatchId: glfS3YHAuVykyce6\nmessage: we11bkQKtzTtPxsV\npartyMember: [5AhS0ISZ0CoGdSTc,Qltez1FeZurPgt5s,3cdaJxbTa77glmD5]\nreadyDuration: 38\nstatus: 319pJDG8UHPMXnPk' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: lxJFIx7hlCTesVUX\nfrom: t193dO2TLM61Ot0g\npayload: g11zwXF8ilS5teAp\nsentAt: 36\nto: 6dsW4qJAsNGwIFcL\ntopic: Cp5xL9OSlaJrkvcQ' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: FSSFSut2oVrZag8O' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: YB6FLwWgl9vcp5VG\ncode: 58' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: XGjOZ1vZawIfromN\ncode: 6\nonlineFriendIds: [ymmQezzP8ua4DOPL,bNRcWdhGP6sHPrve,66d73YMwNGlnvWpJ]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: QXCNX16aKpy6g3Fq\nfrom: Dhl57gwrcVNM9iQm\npayload: QKex8bDskLJPnv7Z\nreceivedAt: 53\nto: VoDbAOsK5Zhiwznh' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: kILN46Q6DFubto6d\nfrom: RIzXcZkGGNBuT1Kl\npayload: MFIuAyUpbrqJwQPf\nreceivedAt: 62\nto: JA1ezsbO8huS8hQS' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: FKFs7vrOcav02WvW\ncode: 24' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: qb72rnDZNwUhPqA9' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: cG8WEmNK6razRnIJ\ncode: 40\ninvitationToken: lpfdJWLYgKfdPfrn\ninvitees: wZtDmhLoTZASTHqa\nleaderId: 0K3ZW1S3FZPCcw6j\nmembers: Dludwmmt1F1tSZaq\npartyId: KG22aUaCs0TziYH7' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"ugVehR5GmQEPpu37":{},"NyV1sgdUeU9dn7Z0":{},"AmrPfwrQZffjGjqP":{}}\ninvitees: [vG4wijL5zDcKEV70,2UjAAabc8Jn3GwTt,kFbjLl5zWNS3znl4]\nleader: lKk9ZU4JAegdg3TT\nmembers: [K2m4cYeLwvmQlwWM,sXj2jsf5BaTQNUwG,f7E3CfBvru4r8JqO]\nnamespace: 99OpkbquCyKBQvbd\npartyId: bd2y8JBnRg71W4DK\nupdatedAt: 20' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: TnH1SBHSQ1orU9L9\ninvitationToken: MvHLDrZwoF0HXIsq\npartyId: 1czjVAY9rPq9DGBJ' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: RWVzHE25RwamGc2Q' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: kJDl8SbnkfnYZaq7\ncode: 70\ncustomAttributes: {"J2rlo7HKC6MKdhFF":{},"WcPsXwYUYPD3lASq":{},"NqQMNWPyEMEsx9RQ":{}}\ninvitationToken: l7v8f2Ti65Xy43V2\ninvitees: 0ivyaYtyp2u6HlSV\nleaderId: wJFBRzBqPwd15B3H\nmembers: InT4ZEp6zdDsS7cK\npartyId: ehR9Kpwpd4FZahLu' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: EGTZQT5xv8AtdXBd\ninviterId: SOrpW81JhvfWopGv' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: Xeq0UgPdSDyKfZqS\nfriendId: fUmXc8NRBslYu97h' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: w9yvJrSn5rWKxzgl\ncode: 44' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: jQHnUR3sdB5uNEDX' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: yqEM1rik8nT1Pb8K\ninvitationToken: KBd8oam1cN73tIdj\npartyId: M3EQlWbqHWLFceW8' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: y9Vfvd1r2pZbZyVH\ncode: 45\ninvitationToken: DKNkJaPVnZ2Lb3ul\ninvitees: 6PPXM1gAgxreIRMK\nleaderId: HZGZLF5NvOFeb260\nmembers: bp5hGFTOe9mRD8dP\npartyId: AzKr1WWdfbFcvvt2' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: MZmcemmi3sqiS9lm\npartyId: bDemWmNFYusYzjKK\nuserId: 4jKg6L7UaQWWKzBG' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: 6eBlNtfXS1R5Nbm2\nmemberId: 1Fqi67y1Ts28YASE' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: TGPTo2dtWsEUYxo7\ncode: 53' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: JPh0oBOS5SHCcWwb\nuserId: ZcHCIGyLmGYYzWAV' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: ls64wTM1WMiL6l01\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: 4N2RGNYyUnbX399g\ncode: 16' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: Q3dmAHw7wqxioxZw\nnewLeaderUserId: W7YTzegGoIUbwbTY' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: xmawkUbDONJg5tdO\ncode: 26\ninvitationToken: szQN5ZeEKfnqZwNS\ninvitees: VHVDb5yaYgglFJmd\nleaderId: AFB0FYJslQbDBhEc\nmembers: cNQMpdDKLV2UEyK3\npartyId: KLQSXpEWOErezxNN' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: cCX2LbbEfVYam7ly\npartyId: qN7CdlbjljEb79TA\nuserId: cjT6lIouiAoy5Y5f' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: oH0vdF0P3AIokx4r\ninvitationToken: tJsKsfiuZ7lzldwV\npartyId: UVc76nGy0YBPZj7h' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: NJmXUR2c05TSqJda\ncode: 5\npartyId: DPmuRz8wvZBwvE2E' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: K9Xzob4gvP1i3qiw\nfriendId: JnTGVre8RFTGf0rT' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: rFflM73At7KfWLOe\nchat: KhVCr9o7S0VpKh6O\ncode: 68\nfriendId: eNPStbT3tJEcErAD' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: flfzkIubri6rtCRO\nfrom: 2Qqf5j7fiUsjZ7ul\npayload: dMhbyeTz7F85gOgh\nreceivedAt: 26\nto: ILcUf0oZ9stKPM8S' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: OY8bPszc4Jm1zpx8\nfrom: mNZWPUy96LdZ4mLC\npayload: 25FLdmsHQsYnyicV\nreceivedAt: 72\nto: FuxzgUAIbKYFHXbC' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: ZbePTxal6LpjAsJh\ncode: 18' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: kEkV24YXrIkdQBll' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: KXTuscEcNwFh8ZB7\nfriendId: XWjoTOYgvbYq8KXb' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: pNcdgOWLPR1QGj5c\ncode: 43' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 19' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: R3hRqacAhkbpp7Zc' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: QZfeU3pStqfL7bkE\nfriendId: 9YZwxB05PwzDA8iw' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: gzddfo08bncbkxI4\ncode: 43' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: GfuoAgA16207OzYk\nchannelSlug: DVA5BZn3gWhhGKtz\npayload: BPMLFjjKXoYrDnOV' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: PrBxY8MYyowSkCed\ncode: 8' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: 2kQgxr5mOHIlw8da\nuserId: vib4XeqpDmyJLrbO' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: FV6lggXnKqgKUK7g\nmatchId: QR2HJtQ3ycFNYT2w' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: rrNwb97ynOuUa19w\ncode: 100' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: wqpovCDHaQWcLipL\nkey: AkhHoO04WrI1co7A\nnamespace: cu5E2W4x7icxr9Am\nvalue: BrCCZnLLs1kgnz5A' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: BnAf8PRRUeZUgYPZ\ncode: 23' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: VvJYRlymtUPs4bGA\nactivity: iPxU8VkTiVRaYEU6\navailability: 10' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: Ds04d1b31QAeYKk7\ncode: 88' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: wPMSpbs68XArHZ1O' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: CS8TQgOzZNnSYVTN\nmessage: vx7eWOiAgvKEylXd' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: 2lla9PwVJIdgw6PW\nextraAttributes: Bks6Pw1gMF4tdGyC\ngameMode: 1Xx38zYA01Su7i5V\npartyAttributes: {"eoG00ckTxBwxgb1s":{},"felYXKB1FikWk53I":{},"OXHYNpbAxTYA0v1n":{}}\npriority: 17\ntempParty: 4mr1HunKjAQwPWNg' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: 3fU1qk1datYHpYI3\ncode: 5' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: wGBcWv70RVILNozr\nuserId: VcKMmYvOXbjzDxwE' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: rIqBG5J5C8ALBIVn\nnamespace: hVuqKIkl9JM0TCBG\nunblockedUserId: EIiFxf5YVJveG6Lz' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: l76itibdJXe1K1Kx\ncode: 31\nnamespace: qp4eQHXSFLbJTyjZ\nunblockedUserId: NdKI8NAnLHPaPxrd' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: 4MDgQQy4wh5nW7XM' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: Mq61CeKPITbRJjcN\nfriendId: BgsGS3bZxgRvNWfa' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: YKFbMddzK6fRJAFl\ncode: 18' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: cbDvuuKJhMegqU1D' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: wA3saBv7qUGFC5dm\ncode: 1\nplayerCount: 13' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: oB2JLxOVFhNUEGzK\navailability: 42\nlastSeenAt: keG9dGDjSXCVAoKK\nuserId: jKi7mlWxAQdp4bBf' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE