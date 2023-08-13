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
    'type: acceptFriendsNotif\nfriendId: BcEugIIceVDv5bJ7' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: 4WnjJF3KHLaPFoIe\nfriendId: x2cHWnBS7j34dpSF' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: gSJjOPVObXmT8jVe\ncode: 77' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: jNWe8t1mcUdXlVtT\nuserId: 3DW6fqz5GmlTHr64' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: 97M2hyNhN0GnZaCb\nblockUserId: LKGL1WvP07Fxvof0\nnamespace: 4dabAqx1PiiRL7DU' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: mzrKsV6cHzH91L4k\nblockUserId: hkm0fQxjuLWa8LxV\ncode: 44\nnamespace: HwLVjWvV9L87L9ZL' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: N13u9d3ipAqFTpit' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: olvkfLdf0QRzpXVw\nfriendId: LiVMvxPounKjoff3' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: isfy83WiHUudlTBM\ncode: 21' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: cDYsfCdsIgHtq5mK\ngameMode: XySIKrpMmIGray1Q\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: K6JPLjX4l7VlxY2v\ncode: 85' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: byGofW0mIFNf1HV0\nfrom: U5XVKuVP9y4pFLc9\npayload: fHNWgKSDDH8pYutK\nsentAt: Ksv6DhLqUBFMsAwM' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: eGnPUdDcWgL81O4H\nuserId: q44yuZyxS7QUmfiD' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: EVNifEj1H63NDARA' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: UPDHOSjEuXQHbraX\nnamespace: lo26ztos2MLKWzTC' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [O6dQyVOkUxXSPnpw,gAOzv7QPQvkxVIfd,qNMqYiovH5ktwdjD]\ncustomAttribute: 9oW7sgxCvhdQNYB4\ndeployment: Eq82AvGX4c6xDjuh\ngameVersion: 1FzyewXrlA7uyF7A\nimageVersion: 1XBxkTwbULLE2LWn\nip: 4FS1eBPYAecou4Oo\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: mAZFdvijtLOkBf4Z\nmatchId: 3GJ2YaQrE2DpynO9\nmessage: CuEhTkeo75ILKB7X\nnamespace: 82GDEq0LgrmzpKYY\npodName: kwrzXPaXX5XOVoxr\nport: 94\nports: {"dvR39GCxX2lPTYsw":91,"X7kOePyHl53P86LE":20,"xilVOgedECR71A6A":46}\nprotocol: wAY0jmttbqLStCDV\nprovider: nsWIUcuNCESCj2a0\nregion: 4GQdHpqJink6vEYM\nsessionId: nkvQxjaDZHdrCQ5L\nstatus: OHmiVKfQU0D8n5R7' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: HeVzwDkqYTMaWJTM' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: J9dU8xFmRNQeKyuS\nuserId: jStOHM3Y5qRhFJ8R' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: S87RQFfumPrQOFDE' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: ihZkRF7Bv8egr9bv\nactivity: [QcfGr5lrXhHxWNyB,ETFFWyAGp74AtoR4,uW6QI9A3iG6v0bbj]\navailability: [93,59,85]\ncode: 23\nfriendIds: [euF5USh4eyc9w1fa,HXP4QukAMt5wubix,3lwP2V8xXKsXSJy4]\nlastSeenAt: [R64M5LekLyhL27on,qJbgLMw1siNmf6nS,rV9zVDFKCQokcu6V]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: AyV1HoYdja51qmJZ' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: c2WxH8cQ9qt7ABv9\nattributes: {"zafaj26ccKaguDrf":"DIpa2YN0yxZhVyCi","Jy0o4bhKjKrfZYg0":"ixQFX4nYTa8hVAR7","tolZMFKOnLDscCnV":"JIkMUDtAWrApyape"}\ncode: 97' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: 22PZwuY5ChsDUpSQ\nfriendId: EW2zTEnxRjIuGuD7' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: ID6qQXog0b9CCpIU\ncode: 34\nfriendshipStatus: vgM45Grg8GOTDeMt' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: kgrRtT7VINnRSVTg\nkey: aBb6US0IJApdFylE' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: pPLoOG0Mh6QK4Kwh\ncode: 99\nvalue: gMmMqqxq6z2oFGiN' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: eQyznNSpeyBUmRnt' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: WLUFSK9Tm8rk4hyL\nchannelSlug: oOyGgircbcnKmLvD\ncode: 38' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: PbbdvUtfKS7UbmC5' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: hktbWqQMaYbvkGnb\ncode: 32\nuserIds: [pL42CjfOUUN8YRhs,GE4Ssp23sqcWUx68,5if4o2MMVdevKNDj]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: mnkkusmBPgHNPXC8\nfriendId: qiaUo0BmfEQMTvDy' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: oTVGuyNdyN6oSRxU\ncode: 31\nfriendIds: [JNUTImMvKhapEP2d,nK1ttUOFjHNmAVro,RabQDu7unXy3wJ8g]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: UTXp8VECVhYi3kF5' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: yLocZYFtakLlDiuu' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: K0WRHaXcX4tonadX\ncode: 7\nfriendIds: [icvkxV6QuW2zSOxB,LoZEZfZRWT68Lmfe,4hPetI2TtHUrC5fi]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [CtoiycvK4YXqQGo5,1gdTH04qUxvOKpkt,FQ56EMTMcf4go9KC]\nmatchId: wnVIuLpiE8DClcWG\nmessage: irZXvnpJH4JCU7JS\npartyMember: [gAlj3truLLkyKEsL,nQNyB4R1hBMzwdhy,DuQ52cEITD3F59g4]\nreadyDuration: 31\nstatus: PX8N9QliCXiWgRgt' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: Zu8khoRXc2KQtYmb\nfrom: LIA7rHYc9ONQIp7l\npayload: TNLlwaT4Dmi668Ij\nsentAt: 48\nto: bSjSizWv8pW7R0Kh\ntopic: erXNGI39POJDYR2D' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: oE3D8vskIA4GnvAd' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: ao8cWdhVhVmdFqgb\ncode: 69' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: gKWiC1In3DwQEx9X\ncode: 17\nonlineFriendIds: [jpiFY3KsVRUR2aaQ,hv5gTFo0o9r4jyDb,I8vV5py8aQCI7fHr]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: jnBnz0e96kBSU6vr\nfrom: Lfcl2MBJ7CrCEOEK\npayload: Hheg6OVJ7fkKp3dQ\nreceivedAt: 71\nto: BchnPtTmwLjHW1bY' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: qL3TzJ1uC4B11Tgy\nfrom: FDlc8vnOurBUYkAl\npayload: k2zyjet2W3RuIXuj\nreceivedAt: 67\nto: b8GocpBFIeZtrtHV' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: mOmWe3nOl2EgKHA3\ncode: 54' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: vVIDiDEFHQd7F44j' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: mUYO3B6DeEEzBarF\ncode: 58\ninvitationToken: RjysqUHbMmiKYCwm\ninvitees: 3bKdL8dOPxSc0QR1\nleaderId: robUOa8naPstakM0\nmembers: vUv9r8PDMKgS65qP\npartyId: 6FbiKmUiB8FEjTKH' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"jCF7Zc35bkbHo3Kb":{},"CHTFlJYCxprwaXAC":{},"UdjKsWN8wuzaDDCZ":{}}\ninvitees: [0fb13SG59U3620s9,9tIOZ5Oi3DhL9r2p,kAJgqqhZ3FwGePI9]\nleader: as3pmT7LD3wQIjYm\nmembers: [SNAw2ZNHCIqu7J5n,9VkDgHL4sYdFbCpw,XJGEOaNZIy6eJCJA]\nnamespace: ztFgA1FwsioHJTgF\npartyId: JTW0XojYGPoTwbIV\nupdatedAt: 60' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: rROi87tDzVGPeYrP\ninvitationToken: tjS7h83yvu5Hcu97\npartyId: k7lyq3lJ9923mDUn' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: u0xMjqowyALkXWFw' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: ipf3LlSbfZWCFoT1\ncode: 89\ncustomAttributes: {"7cOG36LOVT1DEfRe":{},"f1y1VkRF2h5oYdOv":{},"AlbojdG7ZQerFdLi":{}}\ninvitationToken: 8QPvsSEPfDuE5uwS\ninvitees: 2PxP23qVVUmc9EuZ\nleaderId: D8schg4TwYuy4DL5\nmembers: XAbteWecCdFf8dNt\npartyId: OG1qoBHbCuNROBks' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: vScqtAjOyEvfbuD3\ninviterId: fxWLIji9CP52PVWb' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: TZOpam6nLNaaXmZx\nfriendId: JIrdSTpoobs31nfW' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: kyUlZ1hvKW2N49fl\ncode: 72' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: UNm8r3PjofYVrvs7' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: MIAN2TIdbxPhMkhE\ninvitationToken: EKs2AZGLPPtNZ0fE\npartyId: Euv0LcC7yRMH7ITt' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: 6nSgx0JFSK2ued40\ncode: 82\ninvitationToken: uGMfFdOUqREoxo5u\ninvitees: O0XSUaMEzppZ0slT\nleaderId: mWbSC0yTEKhp08SB\nmembers: gCkwh1ecfiZ4lXfj\npartyId: yN3C2ARGdoBAMzx8' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: UBKb9QoTNsSUfraa\npartyId: sCj2L2p7dBFCrPHe\nuserId: xOGtKaKvM8YyLEqN' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: rfLJUL3XZIm1qelB\nmemberId: yKrhW55oKTM8XOGj' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: mpMX9FdNqPQTYpEN\ncode: 66' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: Gv4zB4ctqIq04NkV\nuserId: ze6KKWDlaqsD7ntD' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: 78sqHZUcXqUZfMcV\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: gHFf6g2EsuqKdUKf\ncode: 91' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: OHnQw9OyPzbl0Lm3\nnewLeaderUserId: m4x9C40d4cwhmnOX' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: wCx89XpD70Gr9QEK\ncode: 83\ninvitationToken: 1urFrpgv8R2gRHvN\ninvitees: GB2UK1z9nqpaS6oS\nleaderId: uNLk5EgFZ4qcYkhk\nmembers: Q0usCOFfcINujvcr\npartyId: jkfLOpBC5waXMQsp' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: QL8sHP4jrSp3NeZM\npartyId: OwyhnVQqiqqUGhCF\nuserId: JncancZ7OoJt18RF' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: Mnh18PYCqNe6pxN9\ninvitationToken: 511xl9BaFdaJBeJg\npartyId: bROje7pXSPEqFokT' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: jcIvIEX1jnM7j0yy\ncode: 15\npartyId: s4hTKmnoPJcWbt3t' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: xcZTK4vktEdeyLYf\nfriendId: hlkILST6fMJwvAyl' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: J5Wae1nTyzQp5vc7\nchat: SnXBtZoFJd533YaY\ncode: 30\nfriendId: Ek9EAzjKYbTiTvms' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: P7UpqD3zaJZuUypd\nfrom: NzTWLVIG6JmjwaFu\npayload: 5B7IR4keE7ARPThO\nreceivedAt: 2\nto: k5VE85RCaEXM1snY' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: PZuBGJf0e4cuivKe\nfrom: yR7S8vOMLzMIcOyo\npayload: XYKyszvxzcKGbYxS\nreceivedAt: 19\nto: KoLdOTTC25c8KxuV' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: dP37KMYyslW1zX1m\ncode: 57' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: kypwc9Q2w3cR4OqD' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: 3RG4lwRIJ59LgIle\nfriendId: DJ1BLrEf2hqFhrog' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: pjLtvreHj40LuLQB\ncode: 11' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 7' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: QXgeRDhcmVzUXOYq' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: 1rlxsbrB1Q6ntL7M\nfriendId: UdnlmCMtWFNrBkvj' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: vCsrkqYP3BAWIJOm\ncode: 99' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: jOXljfkCQC8bwcXK\nchannelSlug: D5VFInZbK2LedDtb\npayload: cPaSRWh33CDpnXAM' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: 5OxgJekbAjQMwFsH\ncode: 23' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: ZRpgjQGIXTM7xlp5\nuserId: fzYTSdwfn58Sblf0' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: mBrY9zLjM2jQLRjE\nmatchId: YKbwniFv83ENnZbd' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: fLNqxFRKcjpV0cY7\ncode: 94' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: LP5tL1EO0ruhyTKD\nkey: 4xTwTiI5HqxwhJzS\nnamespace: W8EYhoIYUKBY5VZT\nvalue: nDoJTIwV7nef1vKd' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: fCqAzy2z3U0lgKyE\ncode: 26' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: XHcdeCT5mGDTnbj9\nactivity: UdNXRoz2P2TjF1xw\navailability: 47' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: Y1fZLpxevRmCgg5A\ncode: 72' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: oW80wiBHKFxzxmhu' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: wnGmjrwsjup17XsG\nmessage: MG0mjbc0D0iReFwL' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: P7GNpI7yX4Ri7mh2\nextraAttributes: kKqA8XxTuuTeRTSY\ngameMode: B5b6uNhWkWbQEaSQ\npartyAttributes: {"3JiEeD6WdjLPoqLK":{},"0Kpf3ToXd7ppqKaq":{},"KBcZ0IEpKbint7aJ":{}}\npriority: 54\ntempParty: hNuMXVt0KgLQW3Qr' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: XoMD3shOfcO9Nyaf\ncode: 61' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: assMEc1bDJEKMnss\nuserId: Ic2Y6g6QKI28ChIu' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: br9rjXBa5NsPkMlP\nnamespace: 7AvnCdGR9iRuJtWv\nunblockedUserId: rUTgDTuVrPZf32xw' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: R8r6mSo8H98uAVez\ncode: 79\nnamespace: 9aF9YQFXVsHS63h6\nunblockedUserId: pQyThcniAbGYjeBP' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: tmu16XvNOE0dOGTt' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: PzjWtcXm8HbLBBvG\nfriendId: WITGue0Ot3LqFWj7' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: XiQXcmNedFxPVQY6\ncode: 50' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: 640WkchVOaqnDT4T' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: XLHixqb4waRDGFga\ncode: 58\nplayerCount: 1' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: t7ZpsFfHHG81Fs2A\navailability: 31\nlastSeenAt: Ke3D8FBs0sRyHNZP\nuserId: C6sb1yR9vdRqNu4p' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE