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
    'type: acceptFriendsNotif\nfriendId: uEyJIET6Eeryod2T' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: yCsYiolq1PJFlXS9\nfriendId: LiIeWADTMOuF78B4' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: nx7iGM2PN7SdNdqJ\ncode: 44' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: b7M1ZBYF35Nf88rP\nuserId: b6yQtOx5pg1AjNmC' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: TQ40uB4rqsggkREl\nblockUserId: 6bz8WYCk4k80atqd\nnamespace: KQF88huOrrBj4kNV' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: Pzlo0U87wQcc2hjO\nblockUserId: pYYuFV6d72K4bZQL\ncode: 56\nnamespace: v7S3o2mvGxfjyhD2' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: QbQa3EMD5kelnmeM' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: u1LFff2K9jogsm0i\nfriendId: YPJKN2TKgpzzOi69' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: GAHGKDnpF5pr5Wvz\ncode: 96' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: qJofjd9Non5zeh4N\ngameMode: pzlMMHn1fMEjG7N3\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: L73U8DLpMbOKye4t\ncode: 30' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: 9DiZBYGLrt7m5Tu0\nfrom: vHBHnDYLj8adhTdJ\npayload: WmQ7WI4XkF5hHyx5\nsentAt: mlHNDcKkKfuXu5XK' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: sCX3ja7GN7tm5oYp\nuserId: Gk7bGC62TOyjq4Cb' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: RyCnSIfMWOCVJQeD' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: 9jypCx6Nc9jUp4Wd\nnamespace: oIZzeFscesBVYjOx' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [9rmBYoG7a3lFtI7Q,PuymW0xLcCdGZI6o,3JyaOy5JPJjkwbyL]\ncustomAttribute: rm9uyUuKixINrAU6\ndeployment: potF2WmMdS49ukA9\ngameVersion: SDzL2m31LQf2BQXi\nimageVersion: pcOPNOUTM6twa7Mw\nip: EO5fApevzcASgm79\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: mpOr4ezYYmrtz8FT\nmatchId: HrPQKkoVXOaQtoJs\nmessage: s6vzF0wwYSzRYnx5\nnamespace: F2HY6ihT2CMxKw4s\npodName: 6nmulwightMLMEJf\nport: 22\nports: {"oBsLMggi6AAsiM6U":22,"aWTnaZRRhZmUAC8X":36,"ebznGuq2HvdgDfby":93}\nprotocol: i5QNNkLNvXbdUyhb\nprovider: ZCfSbLvFPgjuMxWQ\nregion: rDRQ7oNO2Ac2z6oi\nsessionId: gZSIu3FgA8lagKnp\nstatus: nTPiqemCUieZJuv6' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: CjncOnasmvCxJ3Va' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: ormBeYCDMjvcxASc\nuserId: Dcye1Cbt8oGTGhuj' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: DMgaxIUYAWsIIJ1E' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: lXwt2vc1UZxThqc5\nactivity: [T8R285STFrNe3yPV,CsEAOZ6feuafhTyF,LQNrsLE9Jlwq9mwp]\navailability: [64,75,52]\ncode: 12\nfriendIds: [fPEFvLLaToNkydrh,oam1q7gEC2XRkMGT,GbyvXX4DdrCP7tbg]\nlastSeenAt: [fnUYTXO8J12pDvs7,pBr6Z4Mw0Y1l20ID,EIRPbdromDdW3LAv]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: 2rVFxhYcIf1kXBNn' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: zc0xMTgx1xK0PDUq\nattributes: {"EGA8IsgtVfuxrYvL":"SybAfcYWNnIof0E3","RWb9LJ2M05x9mKlP":"PjQGFwl8qYqGvYnD","mm9kiiecncCIWeTo":"z8s6Derstxbl9pHJ"}\ncode: 18' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: JJNMIPUihvjZFHVb\nfriendId: BSO07FCOY7ctxWE8' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: ONWK0tAPoJmcVy1L\ncode: 46\nfriendshipStatus: 1jiGOexUF684KK0o' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: T7qS5bKfhRrNjAFc\nkey: p3wLUSxxc9aqXnya' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: WhmM4ftQiSQ4jZj3\ncode: 7\nvalue: GkRzdMM5G5sKNNTo' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: KFPBJw7u8ANfbkRp' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: ZnoWAHiyYKzqmOZx\nchannelSlug: B8UrZdBO06zmDmOj\ncode: 24' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: pgIC6odEaV56u1cy' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: GaLDk3qaNUb5NQ4H\ncode: 70\nuserIds: [yeU6YOeAhjWRet2d,Qn87AzXGN3CYZ6Q9,ZOuZHJJOwKGKeMkd]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: wuOS7nuwBPCplBCZ\nfriendId: mQurkR4tKlyuKHoB' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: 39rg1FPN3962ciBS\ncode: 99\nfriendIds: [m3rfBM1k955c7krV,E0b1VHEtOg9jZT66,I8mWk2zofAuo2fNW]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: SvaOAMdsm55KrteC' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: xX8MI26Qpps2ttao' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: wNvoj7UV7dbpFmHx\ncode: 51\nfriendIds: [yF3tZa59WRYkECN9,ocbWG4uBUz4qTHvq,VnLGAGAZTChJP3A7]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [eLSteotpS5HlQ9iV,nvPYr0sFfLLkZPBy,qvgfdS9jW9HAhMP0]\nmatchId: Hqmp8kV0lWFKpNgt\nmessage: 9ej9IydtJXZvdV7L\npartyMember: [99LYB0HvTd6HyzWP,OqM4y6tjKs61N9N7,HbBqgqqvDWMHrl6v]\nreadyDuration: 31\nstatus: Ndrjg20bynmRn7Ro' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: 7QyBzz2oE7YC0zCW\nfrom: u2EhCqsiTWLVfqYr\npayload: ZjUb2xoGRdBJ9NAJ\nsentAt: 91\nto: rYImCqoEZ6dO2HmK\ntopic: ljPpvGSnHaknaMzI' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: M86sFHn4QMREpXnp' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: YQJpnGKIkBqmv5K1\ncode: 82' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: GhGET2GTX4JNtE4w\ncode: 16\nonlineFriendIds: [CxkmgPpWPusReTGa,iqQDjvg3jxOTRGg5,t69d9xkpG90AElSk]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: rFV6Sa4gKf3C9oFA\nfrom: 8e2A7H8bfkzEDIh6\npayload: BHvqmAVIa9dlS9IW\nreceivedAt: 92\nto: NNvTOlCJ71xe4jzR' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: Zutspf7UTPlOqj8Y\nfrom: 9kzv9HnhQxWBJLmO\npayload: wKzfVhIhwB2Ewtby\nreceivedAt: 17\nto: yxTOxCK1tWLIJzXR' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: IbZczoWsQfMKgcwk\ncode: 39' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: Xz3AegjAZeWXv4nt' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: PYFrgvGrVRmvswU3\ncode: 76\ninvitationToken: vxFPc88GcDADpkTw\ninvitees: mUsIgNQ1dPygzGEM\nleaderId: ZiXKnqk3lXhocL6g\nmembers: r1z0tAkruJWMKSjt\npartyId: Azdv2bzMLxPrxD8V' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"6gP0ugZEm2OTZOaf":{},"ZTWIOZb1gKUZvCql":{},"ZBZ7tvLb3ERivlHW":{}}\ninvitees: [M4yubjXgv7ASpy19,QtRoYeRi3TFGaxJu,ipHEoYuILgiCpLlF]\nleader: 9WSTLrDqzUX2vhMg\nmembers: [s2HrCCgZNIp2EqlQ,fcglYyp3VFsmBJv4,KBVH3A51ZldsVjkH]\nnamespace: zlJItok9UopkBzmN\npartyId: i9flvCcGKQ54FrvA\nupdatedAt: 15' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: EPmbkin7mZ4Uyqn8\ninvitationToken: rAYuTKg29k7Q6cAb\npartyId: aZeicHoGAjILhWPT' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: pFsVaHL8EPdtfCcE' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: Aa6aW21XS3eN8Xo3\ncode: 80\ncustomAttributes: {"o5HjpBqGGoKMI8ZD":{},"SU5DRFYOx9vOQyVn":{},"reO5lorZN77t2wFd":{}}\ninvitationToken: u6UVPtc4PExwjVmG\ninvitees: 3UtBMgbmzDNE96yt\nleaderId: zG4BagW5ewFZFpoP\nmembers: jxco2Zk0O6Rw5odj\npartyId: J152fhO8s4YvPSaU' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: kGY7IcYZSw5VV2lF\ninviterId: JlC0JkwkMEHLrvfd' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: rgdtl9sewKOUD6CD\nfriendId: 4QgXpIW79bzSRCHl' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: MjB71jbbXUsHm1RG\ncode: 100' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: yoszmp2IKcJIuLWs' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: h7s7CZLXAgXXXcH6\ninvitationToken: NBrZzbxaFcTkzEMl\npartyId: DBU8uPWqmQUuv390' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: NqvxSMOLHArGikFD\ncode: 1\ninvitationToken: LXam9eMdfPfopFsw\ninvitees: tSZw6zo8ZmSTz9pt\nleaderId: hOSeDTv4KBAr9sYX\nmembers: 84StLfyeMpzEkcCg\npartyId: Xdij8HFqIHyZHPp8' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: v20ZMTCivqZrnlSK\npartyId: Y4QO0sgxbCVCtyTE\nuserId: Y4hjJ6wYBhuODNYg' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: zMDCe7UZZ32Yqf71\nmemberId: IHL3veWzcDo8ctbX' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: xDUq21zGC9r3ghNV\ncode: 87' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: eepG3mndwDyxbILS\nuserId: ENGrMGs5sQpPQWTR' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: 9AwQwkoG8aBYMMWs\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: mYek5DbSfS6ArHnE\ncode: 100' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: m5YwIOLByTByIKlQ\nnewLeaderUserId: StDc0A0djI2PI5St' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: WXuLUH38ISsdfIN5\ncode: 20\ninvitationToken: whyKaRzz1alJO7ot\ninvitees: 1Y5JwT3c6LSBOMzq\nleaderId: ZKcMNlYKk0CgsNZW\nmembers: 4fcC1lSoYauShyuQ\npartyId: f4TzJOuAWkNPvNYo' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: F96r5umJVsvdscfb\npartyId: 4knvnZO8i8a3GysD\nuserId: ML3cmuR1HTlVvMxf' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: jNJ5qCGOqBZiryTP\ninvitationToken: Mi4v1eqCy8d6UGTc\npartyId: zYfX5LE99nwjtNE3' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: 9xx86YticDuEf93j\ncode: 79\npartyId: q4KoD9QGeHpHFkdS' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: 0nVSLDULRwoAKZcn\nfriendId: PJicy5AidexgP6B2' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: qzt0GSoWc2j4TFXv\nchat: 2BbxM3zWP3HX8kxv\ncode: 45\nfriendId: 8ka1ZSikmlb9ArJW' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: PjYCBE7hczWePn77\nfrom: fB0iKl1arKHcdVoJ\npayload: 9fejANcWc1j1S4y6\nreceivedAt: 36\nto: ESRwC0v4fRYRaeVc' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: 9nakMwNMQNGViP9y\nfrom: e0IL93eQjj8MBYpx\npayload: qv3rC6wpbSWKbEuU\nreceivedAt: 37\nto: BQBKcaMY1e7OEw2X' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: Q3LZM3qkrOglD9v2\ncode: 96' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: QFbdWC56dhUpg3w4' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: mHDHbN5WiCGKiI5s\nfriendId: DUHynBCCRoA4tQat' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: sx4Bc9IORGl62WlY\ncode: 7' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 16' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: 6gRHkkxlbonv1LOP' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: mANgZDRsIhrWKxql\nfriendId: 93YuHJpnonwRk8R4' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: JTHsRvwaWWG26Tx5\ncode: 3' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: d5XU5AhV2XHMxFPI\nchannelSlug: Dbu1hDU0FZwizBfX\npayload: ixJMWynSu8L1zrVi' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: cyV0aPsZvOlfo6Wv\ncode: 3' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: NbCLjfNQHbgSsnMh\nuserId: Rl2TdVcuFhsutiVO' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: VIkUR234GSe5snL7\nmatchId: RK3NfPFXnZFn2mF0' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: 5JiEIKDJpkzb6YXK\ncode: 26' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: JCS65s4dKtbEXu4F\nkey: zGBuMqgwkeG3kaLZ\nnamespace: hg9CEKwNOEjGMvvx\nvalue: 66Qtsy5Zylt68xVn' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: dIF9kS2kp7FuZad4\ncode: 54' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: GPM0UJUeTJvgvaOB\nactivity: GiCUis6yQiPCNPRB\navailability: 88' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: tqVeCKb4S2clUHGZ\ncode: 58' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: oqTrMSkNFigZHnBp' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: mDgmtUSOSsHmQ2JB\nmessage: xGKeU7J7t70noJ21' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: 22dJqmH7IBgEL8OH\nextraAttributes: AtHH3BzAGYwxl6gm\ngameMode: 38eT76sSAyKyxm5z\npartyAttributes: {"2v7n7eGiLb8h5Rsy":{},"5GMg957KTNAbalym":{},"Ii4rUF1dVVIRUbF5":{}}\npriority: 15\ntempParty: o0nDh3frPlosvVsQ' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: fPQMF8WE2DFJnouB\ncode: 42' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: mItuHiRy3MR1qhrw\nuserId: Pl5KJd6vsZxSMmIX' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: CGh4wGZJlZf2ndCO\nnamespace: I7bDQ1BKpKkGHjqn\nunblockedUserId: fmJ1W56Z8kPs9nwx' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: Fa8nVF9QXNN8YTFk\ncode: 42\nnamespace: V6fDK0uQBEDGeBWm\nunblockedUserId: 4UBbZh8OkIfaD1uT' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: MnW4WazjRC4mFt5s' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: tGwbb00MlnHQDw45\nfriendId: R7Si3BpbV2Vw9LOR' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: tLW0L8vquQd1ew7Y\ncode: 45' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: PkgyP8RmvtwaqzDS' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: pCoH8F2APAunnRfg\ncode: 82\nplayerCount: 65' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: Y08D1OhgxjSwlciR\navailability: 50\nlastSeenAt: ga9TOMkQt9x9PNUy\nuserId: zhsI2GTp0tQVVxYa' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE