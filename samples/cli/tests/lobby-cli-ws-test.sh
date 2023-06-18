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
    'type: acceptFriendsNotif\nfriendId: 3z7v5b13rChxkhY8' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: fo0ABaLHnxmv1dtF\nfriendId: oj4HgR4wdbCGUxGy' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: Zg6aDI8ditLIQB9H\ncode: 66' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: 0HH2Qf6gxZapVUoo\nuserId: 2FKC6rimJgbsq88u' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: KPAKgizASvX0fiT0\nblockUserId: DtoOPuszwJ3eZZ9c\nnamespace: dFakEHGkzhfK3cjK' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: aMSNE2mIAYzOyQ7C\nblockUserId: oKYv5h0UxSHIWTpp\ncode: 26\nnamespace: XfypF1dzb9ZIV2VE' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: XexAcUqIsIka5qs7' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: x3AEsswwl4hb0EY6\nfriendId: 9QYu8tI3b8FtNoC1' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: maSJwr4cEx8ryAIR\ncode: 95' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: I7rmHRtEvb8GnQMo\ngameMode: 6o8YL0gUp0aT73gY\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: k5yFJpkg3urs1NpZ\ncode: 52' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: 1kLgpJxnlkGM5QCP\nfrom: Ga6yL6fqCIGoSWh1\npayload: fkqp50o4Pd9ieTsu\nsentAt: MjIVedyDxsFkemNy' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: 8MLLFLUypoD5HIHa\nuserId: O8eDQkS4fXlPJXqk' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: NaNxFbjB0eOOHHTz' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: GBk3h3M70NINuYTx\nnamespace: ppu2umPHkV8g6VgB' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [wfdyoR9D1DcbKEDo,U6uFhLih1Y4zKvir,uA8Q2lcuUgpihdZ0]\ncustomAttribute: 4Lerv1hfkCJTJghw\ndeployment: ItobHjiPua0RePIj\ngameVersion: zttS734DwUI1eGaE\nimageVersion: 5GnAOiO3ATw7U6wq\nip: hbGZe9yBz7MSz2b0\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: ItPT5JKj573ffOa0\nmatchId: ylf6u7aFmSazuetZ\nmessage: r8TVEm0ohZ5QuHai\nnamespace: NwYC7aEdC7tlXtaF\npodName: qP5pEDpfNocUs4ir\nport: 58\nports: {"XT4JYILatQRmizEg":2,"T87P3mOsEqubrqqj":17,"ZWvQsGccil8Ntdyo":55}\nprotocol: cwAXtewIuquoheNv\nprovider: moC5H6eq28fP5Hj5\nregion: a86KJrPk4APBo9wR\nsessionId: iThDtU1WKgG2nzyC\nstatus: BYUtZU7Dol6VrdfL' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: 4GFA9qwRiYEPXg1T' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: QN5BWee1JI6ZpHjY\nuserId: YMUVa06Gfifu3s67' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: quZKQWzlO3yR4lOD' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: 0l0BDC8SvhUJNHsK\nactivity: [TqdHC3OLlMQCiLn8,YYqdz8S8DAeEO3Xb,SlDyfYp9xPoNrtf4]\navailability: [21,34,21]\ncode: 69\nfriendIds: [ViGDip3V1m5bORfn,NHm03IrhgqBdZERZ,jRpjraTxoirg5Pj4]\nlastSeenAt: [HuSEEwup7TYBrmYo,08FnNT5kLH5WJLTf,CQFXLy0o9Y0SlXLq]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: FDMqrz87a9I8UESO' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: VQ7CcA5pkCyRPFWF\nattributes: {"N2x1CQHwpaF2BAJV":"TckCZQ6N4LF3raSW","Aa2YpFwjH28nfejX":"DlSA2vuU25RKN9wN","OwBLGnuHbPrzprgb":"4ddlK71p1etKH1eY"}\ncode: 56' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: j0yo1WVmpmgrrFeb\nfriendId: E4FzvEunPISuDMPH' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: NthBJJZ4Dn0COeeH\ncode: 64\nfriendshipStatus: eYfzyymsg7FKe6Ce' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: LAslUqwGNqUg4kZ7\nkey: bIvlMBA6XWZwfTG2' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: Vo3oJORp8I3YM216\ncode: 66\nvalue: DuJQlanlp6M50tjE' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: tqxxmMCIZw02Ue2M' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: a0LNkH4ueHPHOLkQ\nchannelSlug: vYZW3uHrTxLyMvwq\ncode: 16' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: WdjDCAjtug4N5FBx' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: NLWEZ8ZW0DQZhvmq\ncode: 40\nuserIds: [gNj9kMcDV5nEKrfK,NIPFEba9ZsDPL7Nn,KBOd7ymtHFi5V9wN]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: m4unEoWDTWmZkJNB\nfriendId: O9cRNdMoPJbTlUWo' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: ZtTjA0H5iKO5igvs\ncode: 30\nfriendIds: [6hS2XgPDH6mYEthx,aJ4JhbcIfmT5qvJD,XhoYO97yh24NgXsa]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: 6YFvvzVINVKKFhJS' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: wXO1Mty5xAoKMXsf' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: 4tl3a3C7rj89uoqh\ncode: 58\nfriendIds: [yEbKtiv4J9rYFszG,Bey9a1jlNGhxWdom,2Jtyh6HsBh2QmJcn]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [7EKsLiDp33hxIKZg,9D1hH19xiYg01Ya1,fAJzlIZz09s4Sux6]\nmatchId: ccx26dDaL8NJo2ZK\nmessage: Qwhh58PLyiQ0HlPl\npartyMember: [xM86uZ5XQeKo3qWN,IjmGjRY096d7Q08f,ngOOXQpPIslihNYN]\nreadyDuration: 70\nstatus: 6idHZIaB4BryRz4s' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: LHbjRkHqYx3VnO1T\nfrom: mDWuY5gpNnktmUTY\npayload: iPuRimWBZsvhSRpa\nsentAt: 99\nto: uc4fmzGNu4VMpLv8\ntopic: oskhgAvXeUJdh8GN' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: gGREAuTmF0V4TAdF' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: eMwtKsEC8n4O4Iee\ncode: 48' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: yqQLRp9SPSpugeAR\ncode: 4\nonlineFriendIds: [5yVZoD6DOc6IEsXL,9xeOHtc1lAvIIpgw,OWjTWCok3BsA3abC]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: d2AD9gZbMXM4L7oE\nfrom: XJi3DZ0urdATh69a\npayload: S5eLCgVh8cm0o7J2\nreceivedAt: 75\nto: 4RLt9ikdGCPJcttF' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: Hinon1nGlNe9LH5e\nfrom: x9vWb74fH5O2yZRC\npayload: 9sCuGPEpTYH2nV0j\nreceivedAt: 96\nto: ozOAL1Va8mdMWpIk' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: irnRA4X7MbPQMgsz\ncode: 25' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: Mb0L05lW0ihPsjba' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: MaO5GINNqFb8sBKq\ncode: 22\ninvitationToken: zKMG1T3KRtMAueYj\ninvitees: UgwEKBMnHPoGRAe0\nleaderId: o0tNwU5wQ0AJRn4u\nmembers: XucRGYyc2yK2F8MQ\npartyId: Ze1sF2GWUQ49METO' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"A0wlLkfrBZYeE5B6":{},"U4L4xhWNPg71Rl7s":{},"JV66pM8ovrs0JUIL":{}}\ninvitees: [2UeKYihBA0lJta4W,YgoR5lGSQwL99Uq0,FBZHcyd1yBGGCIJK]\nleader: Fyo7PubrDOmLwlga\nmembers: [4Inkw4bAidnm1D7K,mCxI5seAS7mlCvvI,zza5keBpno6eRe3B]\nnamespace: kTN6uKwTz1FqEbMR\npartyId: V0AvZ8RxTYYp1evg\nupdatedAt: 92' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: BHNZsLvTmcJKs8Bt\ninvitationToken: PbrzW3h8ruyisAdw\npartyId: JBgzEZIAF1u6H7sb' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: uIWCZH4UPAmZH1Ja' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: onFpzIUj7akPfT5H\ncode: 1\ncustomAttributes: {"SCElAPM8pbl8TEfv":{},"VBpf6DF8xZrXmd9b":{},"1I3f9MftHYroRnVq":{}}\ninvitationToken: YUxWovFjh2VOYoch\ninvitees: oSZ6FnDZzQ63Vi6g\nleaderId: 7SYZjtY0nH6gdfYG\nmembers: 3E9iyQhmi3TzZ6br\npartyId: yF5wNX45irIgTje9' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: 9NasmzCfjBHI0bx4\ninviterId: 52y42BTdnFD6SYnG' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: V0KbCGIs06N0n2y4\nfriendId: hRRjsnLJ58sMaWCz' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: 0Trw4IvRfaLihoqG\ncode: 2' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: U9tnncoEap6pn8LG' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: MLpl8MsgVowRiFiZ\ninvitationToken: KFxlk2qDlgyEL7LK\npartyId: hbrUZI1im425DvI9' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: LPdkCk6sAcgR747m\ncode: 95\ninvitationToken: xsSkpbwf3yKX5tT1\ninvitees: dcA3NK2S5x1taRiR\nleaderId: emKMTKLGd4Xs1o6x\nmembers: zJ8pxvGPtOpRMzYx\npartyId: zrjQfD88uPIuiya4' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: he8c4FXWBvoSZDWZ\npartyId: ScH1z1P9hqIMvVfz\nuserId: 6mkhIuJB1Qps6Aug' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: rFVSblCoMFCKyEtY\nmemberId: pKu0AC4wMJq42OIz' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: qPeNRL3wcyPgCmML\ncode: 85' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: ZsamevqmSKqld0r4\nuserId: xNtdTErmbcax7LaH' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: YVXNAOBQYaDIbLoj\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: 69u1IVnufSce9ehG\ncode: 83' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: b2vWlKD5ZglTdrnh\nnewLeaderUserId: Z3e4l7uGa9BgfsWZ' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: UXna8qOEgngfa98C\ncode: 99\ninvitationToken: 8lxAsT6uOO3XsqbV\ninvitees: HTCwpE2b9OTA6H9u\nleaderId: NLcHett4FcsfB4fy\nmembers: DibF9OdTxqSX8cYP\npartyId: RCgeqXqpSLBMR0B2' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: jVKMtoi5lhiyRtH6\npartyId: Qautt4rV9KPNhxLR\nuserId: krS0gz0f4i24KaSZ' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: 1V9DYYir8lGHj8q2\ninvitationToken: XnHYrsZHZkHC6jQn\npartyId: mwjzlIhiRRnVDEj9' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: SLK8xWVShr4bg3F9\ncode: 57\npartyId: v64bDGZ0VD4effSI' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: 5lEBRYheMLaaFQpz\nfriendId: 3G7cZZvY19xxXwj2' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: qkrFa1MBRdFsTijI\nchat: xQpehzJlulrrXtKS\ncode: 70\nfriendId: NaNPpzuuOyCrFPb8' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: GtYNwiFaTCSDYI5D\nfrom: ECpO5n5H6Qw2l53Z\npayload: tCC205bcXOY2Wcs4\nreceivedAt: 20\nto: 6fDSWE73B7Pl7Guo' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: rf2yJp5a4G1aBnHG\nfrom: Lgl4J9TJuzAYLkAT\npayload: rK5bzEENG2XneGhe\nreceivedAt: 0\nto: TBEbhvQ3rl18lRjJ' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: JfP1rgyS9I5Klnzh\ncode: 65' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: Jwnj6LPTFhIwOohE' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: wZeYwF7BfTNLqtcP\nfriendId: lzB0n3pypk0BmEho' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: ks7gqp8ijYUDkOjK\ncode: 71' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 74' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: XnkvvCbqrbm1cqaF' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: 5JHaBsxIMQ4H0U8N\nfriendId: tyCbFoaQ8Fjd24si' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: uIjcYP16FTE7cASs\ncode: 76' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: naBWtgeaCeUseZZQ\nchannelSlug: VtLgbbsMLs5KfYdi\npayload: zECgP26tP65ArStO' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: vP9tn3rvWSGNs8QV\ncode: 54' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: 4rdO9TTI0wV0fRxk\nuserId: wuOZxN55TpW3vSmj' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: AHylhnVpTN7i3xmh\nmatchId: 9sqRF4Ov7V6iWa0c' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: c5fZFVlQoZpnPalW\ncode: 12' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: tgR4pzIr5rNp16yJ\nkey: 8nFSxNrTAevs8Dra\nnamespace: vcCzxCv7zbBjR7jv\nvalue: ULZfseN2PycC0Mt8' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: 3ydwwvsDTKHrhR5M\ncode: 24' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: icHGVBKnskBBO8Jl\nactivity: Yp93abAtw98SbDvs\navailability: 63' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: XiIZvUM4KGk7wsKb\ncode: 23' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: iZROd5GWs6RGHeOp' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: xBfnolKlkJiUXRnx\nmessage: Ok3inXJ0wK1bISaq' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: LYy56gNodijUuInQ\nextraAttributes: p7RWuFhNsOTv65FV\ngameMode: 6ycgSftiuBPMba9b\npartyAttributes: {"iGt1HCs2FGazaGqD":{},"i2dlPGtwFW1Eqyzb":{},"qveYyAX5hWPDzvtT":{}}\npriority: 30\ntempParty: ttcyw0G4yHF7lnkh' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: LTWMjM9X15EAXPfS\ncode: 72' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: A2twdQK2pA4XgSlC\nuserId: 7Qxf2WZ1q3MbdRQa' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: ogO2QZkWMljNwMj4\nnamespace: YUchjTcJILL1MHRw\nunblockedUserId: qhK8jfbIo0QPqstr' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: 6YbSEbDigpF6oLPO\ncode: 58\nnamespace: QaZQtz7gqChHaf0s\nunblockedUserId: q0JfPPL6dvaSQZF2' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: LmSyRKtm2StBzzEc' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: LYdue297WVpGMElr\nfriendId: Ys593Y3n59RbG0mH' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: pqZQGlMmY4qTK6ZA\ncode: 20' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: F9jERhsG2Y99GnPZ' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: bm57r9NHJeFc7b41\ncode: 32\nplayerCount: 99' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: kFvo2XvVmBnjS1jk\navailability: 93\nlastSeenAt: SQerHH54G5hv1lMR\nuserId: MLx1ropx9JPGYyso' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE