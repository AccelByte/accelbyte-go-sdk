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
    'type: acceptFriendsNotif\nfriendId: bsxVvEa2mLlMJqyh' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: jT3gX62T9Y5oaXj5\nfriendId: aTpCTp0Y7ed4gwVA' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: GV5rruZLtm29E7by\ncode: 60' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: Re7kkCMc78X06ktR\nuserId: x2YcN1As0zxFUqt4' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: mn2Gi75F9lkXTepn\nblockUserId: IKnxmgIO1qwtb7jg\nnamespace: UiMju5op0t3ESuKh' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: LTGc8jmL3LjbbEZH\nblockUserId: 5iTIG7uMZrUXwiRk\ncode: 79\nnamespace: B22rg1gBJBdbtNBB' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: zVcqrDDlHwtap3Mk' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: zH7NpFx5t1xQ6A2L\nfriendId: RsNPulHIb5mJRpj6' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: 8nrzO2JH6DgRvbac\ncode: 16' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: axKPC9fxYjknhjhQ\ngameMode: NdfEpjcILj92R7MD\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: W9utGVVHLidrJ22B\ncode: 74' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: WauawpkBVigfQ1ui\nfrom: F5QQzrlwpGchuyoL\npayload: SsCIH7b7BsxOwbR3\nsentAt: 1997-05-23T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: mkiNGhdOqiDthwbi\nuserId: 5deJ88egJ1289dL5' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: gnQvZv67lzP5L2yX' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: RONoHok8kWbp97SG\nnamespace: Etllg7ZSb6KLCnTR' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [o7i8RVKpeSdc7TO9,m322duIJ4BrpC0JN,AZKLbQhxOrV9mJ99]\ncustomAttribute: N8kQ49W0CQDG5KDa\ndeployment: NaWSmHTAH2Qgpcz9\ngameVersion: 3d9TzL7aAjoXUuQh\nimageVersion: vFXnFj2eRhVE21aI\nip: Fg7BMgrYbQk000jJ\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: 8AjkjlAd2t4zvjIT\nmatchId: GVksDfGCXNIJw47h\nmessage: XiTZpTpJNManYt1R\nnamespace: PoxbwFCjPLKtTIzT\npodName: cd74gO1GeHK7w7os\nport: 50\nports: {"Z6f4faisfBoUgbas":35,"ubKgzXVMUPwGCzri":12,"mdOEdvGFIuOe5hB0":80}\nprotocol: fz5746V1tkft6Fzl\nprovider: 4SwYpHSUnhVAvZ9A\nregion: nYWoFU5RvC0HqBTb\nsessionId: ZyLoHCDtDBlIS2y3\nstatus: xz3eFWWKR2KWyzU3' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: jSE6KhGMocgdNfh1' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: JRla5iWtXTiBmqVZ\nuserId: DuedxgsJu4tDqCVI' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: 0Ue3E9b3zy1G59YH' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: KrGrsgeFsVR6Nt5I\nactivity: [hkEWUoThRDNlqNow,fKTDnvVrVxgI7x7R,oTOTld64SjeFrO9U]\navailability: [uAZA8MnJ4vmZhLJT,ruBasDTcShh7rEZk,QvWcQJCexBA0RkRV]\ncode: 59\nfriendIds: [eKW1gj981UMypdoN,T00RsKfEiyF75Nje,QumPfSZVcyYMLQmH]\nlastSeenAt: [1998-04-07T00:00:00Z,1977-11-25T00:00:00Z,1981-11-08T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: 3qlimg0QZTZY4MLt' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: fPDJlbrXxquO5d4F\nattributes: {"EWsKOYIgIRB3P3MG":"rranND9pUXb5XjgZ","0t7RJzh5b4ZM4dqE":"PkHCmTb3aDbHWPiE","g1VnbkXCk2Oa7KN3":"GMopDWt4OT4x9tqB"}\ncode: 45' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: vBRCupVaxGm7Yuor\nfriendId: lq592AOSqDVzhhnE' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: Vaezb6KjSRMIyQMi\ncode: 51\nfriendshipStatus: l9ekEpbK2l6yDXJx' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: 0V4cC917NTF5Wnsv\nkey: u67955jjVFHSlSXK' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: ykMd6NZ2fuNAhaZ7\ncode: 82\nvalue: g4VcxpuILXKjx9NX' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: y2AvaIm0K1CbYASR' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: x0xjVTt5pTRnCRCF\nchannelSlug: DGiKJtROuNzXOqyn\ncode: 65' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: Am9vif0ANQCXh6JR' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: K6TGi9nazhaFVOgD\ncode: 24\nuserIds: [qkg1UxVnsZudC9Ya,H5CaDSre0gG622W5,d8NLHRmObp3FRWqJ]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: 60ERmGGMQg8YiC7c\nfriendId: uyfrTDkVG70KXae3' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: PXa66FhieJBo4d2s\ncode: 69\nfriendIds: [0275VSnTFqmBSPIu,Gp6NySHnEg1OcpkL,bhkg0KKeeFUTEJHB]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: OHIFKECkMh9qS4UC' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: 3eKWjg6TQA2nI8XA' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: gmXM25PcCD8zLAzo\ncode: 85\nfriendIds: [aA2DbmzVSPeNvf8R,j29OxxNW1HQbzxAm,uJ8DYUNsDeinnHRQ]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [qbLS37lFaT8ljURB,BhmQijyhbfYHkaVz,fP4JqOJevYfbBfqT]\nmatchId: AnPyH7YBCGBAP7lW\nmessage: LvDsvZehNZp7wFzi\npartyMember: [qcnWUrtTUzVRJ5Lc,hvUT4OsnYA3zmzQF,EFR2NzwYvcXx3qjC]\nreadyDuration: 87\nstatus: fO7sMmIAFINgznI3' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: H4rjo5dTV6gNMFma\nfrom: y4eZIjHqguI9H7ys\npayload: ma2QjoHk0VHPWrXl\nsentAt: 1987-01-02T00:00:00Z\nto: ikDjvP7VwR8PH9ni\ntopic: S0RrL9OKA59sKhJQ' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: I1ZH1rGza1eMstPy\nfrom: MxJuAApLxtPY3u2i\npayload: bfepHNxL32rMFH4T\nsentAt: 1983-03-22T00:00:00Z\nto: 5OoPvkSTjgpRkYIs\ntopic: rd0j64FaInpSHbgB' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: Ndq0BJ2y17YgwMxu' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: kdeMOmTf6HOZiRji\ncode: 0' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: PO8aFEAywOyZ0PJt\ncode: 69\nonlineFriendIds: [lEJliSpOeiIbpE2Q,03hG0Q0jrudFfu8V,8RTqw7xj56Mc5l5e]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: mrvdTJWMH9oGFoNu\nfrom: gc6OKJOpK402tIW4\npayload: o4qsZB2wRM6i8X66\nreceivedAt: 1988-01-30T00:00:00Z\nto: PhHjpmpPqeEBSrA9' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: Axhjz8Tv70cXLNgr\nfrom: 534T6rVqH11U6FOr\npayload: cd8gUa6AK3NEgkzL\nreceivedAt: 1971-11-24T00:00:00Z\nto: 3K5qdQn6jcTQnsh8' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: I31HSkPcm71AJOKj\ncode: 13' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: qlPhbsEwZGNhii3l' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: 3gtHoVYZFfTERduU\ncode: 91\ninvitationToken: 7eEaH54iUiSDmOS0\ninvitees: a0Z5Td5PKcZOIbLo\nleaderId: IaTLqzGCzdI5uR5d\nmembers: TO7MsImgTsbiwSZA\npartyId: WmYJQfOiwBEq3CPc' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"3CPvMxFEYahlZR9H":{},"cx9GsU0NmEBpsSlM":{},"Kgs3zx20xsonq9Nc":{}}\ninvitees: [IEQPuAcZGJtu1Aa0,rKsB7NSzutgJRG7v,swdB16LohDpuCuwp]\nleader: rVw7M9x9VvqvwsHW\nmembers: [fums36eIyox38CLY,x0PWE28cV9XbNiJF,QzCHyuprQKNi4kK3]\nnamespace: 9ZDaDelS2EPPBJHm\npartyId: aK5wQCa4INWqsHJa\nupdatedAt: 1981-04-14T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: YNa1Zu8RxIEnUi7k\ninvitationToken: fGnTOwvzKfZ7eEaq\npartyId: awTAVgRii5kjmpzn' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: QpiYxwc31uenNL1O' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: kmFvvIYNEPGmF7hB\ncode: 73\ncustomAttributes: {"gQsJkcjDLqZ206TF":{},"CyjU4vkMEeoe6kqf":{},"xjefjTWyOiG0UgLa":{}}\ninvitationToken: 5ZLsg0ROOXutzTAA\ninvitees: kstE74tdcIYIgYVJ\nleaderId: bHqokjo0836EXPLg\nmembers: e9hdiwXdTLQW7kY1\npartyId: 6SGSAiA0DUfpXJOe' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: UGKBzyflQbZFzlhM\ninviterId: voBYn71Uyo72alQ2' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: ihXwsUrKBntpoIdR\nfriendId: zbAfCtx7cDReiqJr' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: nV2zy3eNzjTGG3hy\ncode: 69' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: vuOKXOyTOKMFWm3t' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: Lz6jhITwVkxNx1bU\ninvitationToken: kZiC99wOwHrq7zIU\npartyId: NZ3Ig7nbe7sjszFZ' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: obQRfLgX3EyV9ddJ\ncode: 41\ninvitationToken: eAl85col9XeOHidm\ninvitees: asyv8STUPSQSMKVa\nleaderId: sh2RSE4UbxcYQiiO\nmembers: XvIfyHdsqKxulZk7\npartyId: xQ3zyV9j2AdueJtX' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: 9RhMZMzZQauRUs3E\npartyId: dHJDdyKqegeSHJZw\nuserId: XZ2r9Nvu7BNO1olV' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: bLeK5oTdBkrOIkm0\nmemberId: p2Umb8VYmPkttjBm' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: ecYOyqNAzM9dIEKH\ncode: 45' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: NJsMgV2y2nymd9Mt\nuserId: 8xq6goOGrd5MXXhu' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: 2uDseG9vuOULp4x4\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: fA8lddsBwG9ButtW\ncode: 42' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: vTusUC5YvP3MwYFb\nnewLeaderUserId: dh3RmPUQVaeAfzT0' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: kNmt41B3qJuSsVE3\ncode: 23\ninvitationToken: FxDo6kg32W4X7sNK\ninvitees: WFj1wpDtDn2I7qkj\nleaderId: DvfCxt61rP3otbCv\nmembers: ovlwy1bUvdtGKBg0\npartyId: HvCtTRirXL5UqPvN' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: 3E8pDQbp766rZNDj\npartyId: 7z4aUAb56EktDf9S\nuserId: 6JppyKGywuHcKXsf' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: 2oo0KNN10pnJntUK\ninvitationToken: snUwZ7RMBQ4le9Ct\npartyId: 5QJKwn4HV90wL7ZJ' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: VqAWfrNNoSSp7ISx\ncode: 42\npartyId: bWCfRtpmatxy1VEa' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: WeGV5DoYchQYj0gG\nfriendId: HDHMNrc21VmIe0HZ' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: f8w2FAg5GqIH85tJ\nchat: VKSNT7prgkHRXEfF\ncode: 66\nfriendId: wgQHC4feHji3NObA' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: z7oBlvYKfVaThsmA\nfrom: RjWz0CRAYHQnocCx\npayload: ZeToYVSgYG6G61Mf\nreceivedAt: 1975-04-28T00:00:00Z\nto: Cxh5Zd2O8LUiZvem' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: O3cfCksWCQ8IcqWy\nfrom: vQ5Ev3cksyHAiOiB\npayload: Ln8HI8Ja43kO8IyE\nreceivedAt: 1979-07-06T00:00:00Z\nto: 7Dn7sr2UBSVXuE0G' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: i6beqEVUHvKsWs25\ncode: 82' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: lnpByIeyC3Jrq10k\ntoken: NZSvjZkfLLIH2LZZ' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: 9UHjRuJgsSB7EsYb\ncode: 87' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: qbmDCrKXm9Kjcynu' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: MRvqRpZClk3nJzuN\nfriendId: aF8boRjcddUDTwtM' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: SKPrVjgOXKMCYURO\ncode: 79' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 36' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: YThSW4LOfE9l1esA' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: 9ynxFuYkNGQjDaiX\nfriendId: LtuzWuKaUtjXJuyl' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: xGs6b5zqsg6pZQX8\ncode: 95' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: kemg8pPEsnQDHoVP\nchannelSlug: aHDLNUCrOLqF6PSc\npayload: GGi3IIwGayVJcBK5' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: bzBBbx0tLpicNaMo\ncode: 12' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: jQrQ5xMvK6w3kt7Q\nuserId: DGgQoV1SvsXohr0w' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: zH3HcKgp3LUli51F\nmatchId: DkwhFCKqRvLWTDdS' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: DeEPuuVoIyLzlisQ\ncode: 12' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: OpmgmxQM5WE5nlET\nkey: 0fQmMqysFvN2Be7G\nnamespace: JzzXzi2ZutLKwjpq\nvalue: 7VuGxO7uCBjfIjCT' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: n075bvmtoeDFiTkA\ncode: 42' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: BMJIifeJBD6S4lnl\nactivity: LzloTJiR3ed0Tgx4\navailability: 55' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: spWjjI5s7Q63dBQV\ncode: 38' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: FPfZPss55EzuKFKx' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: dzeyhGo0lc89uAIh\nmessage: bL9xrjZRoFZZD2yT' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: rz2H67ZEi1moEaa1\nextraAttributes: pMpciZTY2nAQ8sCx\ngameMode: R2llMLdkgQEhGTiI\npartyAttributes: {"lctrRi31aY2U9NkK":{},"iSnjprpBkGon7Px6":{},"MchfKLpleiUPAJu8":{}}\npriority: 85\ntempParty: AkpHWmr7F4zTyo2n' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: CEjz7FVyOldkS5eR\ncode: 33' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: lrOe7pUZETF5NuDc\nuserId: qr1ZBOOPYntCHL6f' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: p5Z81WL49IsYVv3O\nnamespace: ZamxxshWxe2ItkOO\nunblockedUserId: I9SdyijMiI3d4w9E' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: U0eGYcwKIpljJqzd\ncode: 57\nnamespace: J33zw09ZnmS2kM0E\nunblockedUserId: myU2FFmsYXuPrYfh' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: 4on0Lta0ZnrA1M9W' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: 0x4DoLHc5n5oAtme\nfriendId: qKyS7qrJ0gmU6COc' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: 8E6G18tzgwlD24eD\ncode: 52' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: 1xmefKtGTpB1NAD8' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: 3j41FwHC7Hiw7z61\ncode: 98\nplayerCount: 81' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: ta7bZTm8IIEFnAmc\navailability: 21\nlastSeenAt: 1982-12-18T00:00:00Z\nuserId: nzxRldCQHswzQElL' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE