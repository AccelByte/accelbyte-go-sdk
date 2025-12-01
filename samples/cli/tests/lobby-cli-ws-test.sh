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
    'type: acceptFriendsNotif\nfriendId: mWROGWztBVHKwOLt' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: yfVkSKSGtgsc4ySu\nfriendId: UBZd4uZPHTh27Kmj' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: VPoU9w6suNARyfX9\ncode: 87' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: 2Dbu8VsfP4eTJU4c\nuserId: GG5zspPF73dWo9Sm' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: QgwTlkog9LP2dpT3\nblockUserId: IEKxiwS8OF2XJBB0\nnamespace: WhLOFRrENBuEPzMe' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: nXw9RYRWcR4XzALX\nblockUserId: HaNIV4H9j2v6R2O5\ncode: 78\nnamespace: FBYM5OVWn3CA0yry' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: J2xm3aV1AlKqqtmf' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: PgZ8v3u68EbSIbSd\nfriendId: K36Ut4pxNSy1bdFF' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: hVzteekGzmOo3J1i\ncode: 0' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: tnoJxGPsubiU4zBO\ngameMode: dINfLqJiZoRJjaMY\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: 6Q48gMKoARYSMqFk\ncode: 23' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: 1zss8PVHXh1WpNgb\nfrom: RutCUigFAbJiIWtt\npayload: IZQX4Jk8aiP51yin\nsentAt: 1987-05-14T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: QlrSZd5z7NkGqMLO\nuserId: P6npIVtlcxYM06u6' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionID: O8oU5Vbwz4AstXPz' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: Z4hyPOOGw4ZZFvOY\nnamespace: eejEI1BG7AMNYvcw' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [D7pNpBiw3UeNxL6M,dmQWQABPshsCObD3,noYs1mEAM7IkrfF0]\ncustomAttribute: 80WMynhI4O0lADzg\ndeployment: kMSB2Z3P5spSmspt\ngameVersion: eAMBI4VQ4bcHgz70\nimageVersion: TkXKwMQFuz2sBuvT\nip: V2Nc4L4NJAvGUPo6\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: RGaaSg2ihODlWfb0\nmatchId: QkWTQm0s54pSMMsb\nmessage: 6CuzN6owxEzWTdEn\nnamespace: ZW27NRVmpwr44MZe\npodName: 1ZFuY4t9ODthPdSa\nport: 32\nports: {"NCSB7ivd73Prfi02":1,"9qEhjw1NcQIkv8Oz":63,"0tOmVJCezrofrA1r":46}\nprotocol: cKUD0YyatNLX9ZVQ\nprovider: BJAd4iNeuEYGRZLC\nregion: VEQAajao2P2pYuTt\nsessionId: 9IhBnEjbOlnaGTpK\nstatus: uavMXLCGNg9DjA3X' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: ItrMVh9s5cawZxG9' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: hRafINPzfvMCN2Wf\nuserId: eDqC6WeOMAC8xUFX' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: GrsK6b8muXdv7Ebi' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: eZ6kcWvyO39iIVh4\nactivity: [ueYsXQexA76aQuTh,5vbIlPAHSdmQyR8U,LziQ4li3f07v9iQI]\navailability: [fBzlTaymfJeOHZVg,gxw7EGfJehAC1NZM,ySBeC0G1HYP6y7sh]\ncode: 93\nfriendIds: [UuDgiP3KGoajuS7j,lhWW0E8f0SD1mMlU,Encs9eEmy58COVwl]\nlastSeenAt: [1972-10-22T00:00:00Z,1990-02-18T00:00:00Z,1985-11-11T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: Q9xkibFHm0mv2qSW' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: YhzKJ1wwDILOnA2k\nattributes: {"9T3b5kk1Rpi5kSPW":"0z7qlLC3wGEmkgh1","DMY9CwixAG5WNOyH":"30n1Ej0x56Y0ooOr","6hRz9INduKEQyKUi":"PxBAAU8Gvcjht3cz"}\ncode: 58' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: h6lmBdF9g0Tdai8H\nfriendId: noOUmIfqA72deUSN' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: upSwOez7nBQ30Ry8\ncode: 96\nfriendshipStatus: wQMeZN4Idp41JGr7' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: MgSV6WlZzyRXoib4\nkey: mRKqIfMdoHLzP9P3' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: KaT6uc4zokxeu644\ncode: 52\nvalue: YH9POZDk6Un9x1YA' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: Bli8JJRkp99FN3tV' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: VgOnMZ1TqKlH1UFg\nchannelSlug: arTQHWDGKxXnZ7PF\ncode: 10' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: ZNH9GmNxrayWeue5' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: oRbHxJi7sbuIm7dc\ncode: 4\nuserIds: [4UMYaZSOlujA7Bhr,XYr2sTGEGr82CbmR,bxqbFWl4n4G8l3zl]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: lYXiinemUcuL4q3x\nfriendId: khvNX58ShIqkNkG5' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: mimCWlCl3wHLWZIx\ncode: 76\nfriendIds: [Dlfwga4b9ny3psSP,LCDOf3qKpalCPN3i,mHVDqavDUTOoqt7p]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: BX4Eealu68oQAFQ0' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: PUbNO1geqixlKdJi' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: FUcij64D1V6rNrrU\ncode: 31\nfriendIds: [Ms0tssDqAU5CxwBo,FdTfoc7rAsljLm6x,5uXNr29XFU0ppDp1]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [D5diErIjw2vli0Hm,lzwOBdjEId698m05,NKhdQePrMzLpdRhs]\nmatchId: wJOY0ScalcgX1MUd\nmessage: cS31Sbo5AhYM0vIk\npartyMember: [cA2GswP2tJL2evE1,b7xv2rwUMjkBbuEO,HaA6W6BD1mN3WxBx]\nreadyDuration: 53\nstatus: BpRhaa21DMDAC8sb' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: DllZ6AA2WDLcbv4G\nfrom: FeCUml7ghYV7Iqff\npayload: S3waR1pTGIsMA2Ek\nsentAt: 1997-04-20T00:00:00Z\nto: hyATO4bMU2hMOk8h\ntopic: 05TYzysDZgG3dufu' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: vjlDqaXlZkklvBqU\nfrom: V5hp438fGfcGmRPi\npayload: 0RVT7Yiz3ihVYRCh\nsentAt: 1983-10-16T00:00:00Z\nto: Gj8DpS8RQAAnOqAJ\ntopic: A2U9RIafTTYXC2Z4' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: huBM02zEIseYYXwU' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: CaUX7UDSNlI9Vvbd\ncode: 16' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: yyenltz2hlY73IwC\ncode: 18\nonlineFriendIds: [Z0j0zzK3e5GuVcUH,KNXEj9shPzWNfKxp,R2TGJZyRfqAzsJgD]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: lqn8b9JLnTb0jKma\nfrom: ctiavdWPcJSUaCzY\npayload: RzwrKyPurtTEMwpe\nreceivedAt: 1988-09-07T00:00:00Z\nto: CyDCb6b8EhB2EV93' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: HpsgQ8OLHSFXmukz\nfrom: aT4MAEb9BUXhNTGY\npayload: DxjlxZRWijizefxH\nreceivedAt: 1977-02-04T00:00:00Z\nto: IbGb6La8bPTNB2tj' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: 5VUvGS6YOV61ZoB1\ncode: 5' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: eqzHQOaLMe3TDA2f' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: lIwS8A6JylGvVkBd\ncode: 48\ninvitationToken: 7YYs3edJZhkVa51P\ninvitees: iKjJ4MPRhT8rXlUL\nleaderId: MgqRTTT8xQ15pvFV\nmembers: A3i52foiiSHiSdew\npartyId: cHnBOvbing89gMkv' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"wSza4QULWc0yr1d2":{},"punGX5YoopBp4s59":{},"3GFpihGT0BH4gV8L":{}}\ninvitees: [CIzkeQSa1SBLco1U,Ufw1CRMZ7WyBbnmy,Ar5rwo3hON1hB3rA]\nleader: s6IlxDAzLc2sCl1q\nmembers: [aoS6Eq7OCyxpnuzv,CCMWWM6HnyRdql0f,eb1JYjonGt0puRji]\nnamespace: fTTgAs28S7MBZPNh\npartyId: xD4QEV7Xo7TxZvHp\nupdatedAt: 1996-10-07T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: a7sE9FyqSJCla8K3\ninvitationToken: 7cFnKTpZeGHhbb6I\npartyId: CvqA83loDkkE3I2J' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: cnjiwoXikjqzDlYC' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: MV5aav8GUSetqAvG\ncode: 15\ncustomAttributes: {"yoGLroI8bmAYsrY7":{},"RKotxiGD2dlXxy9i":{},"Ndz4ZthzsxhOjiLk":{}}\ninvitationToken: 97DdrDp7wOZP4Ycj\ninvitees: GpKQzX64NXRMETOG\nleaderId: wipghGTA0egbu9uS\nmembers: Zilpl0VztHUSIbIs\npartyId: CKZupOMQvXZVHAZe' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: dZNk6fyNib8DWcUc\ninviterId: fR5fFmjevUuHoWdU' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: Alv4sYTjWIFwmL3y\nfriendId: K0RUwRGnDUHHTAnl' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: 2QsPqEDmOW2ASSDB\ncode: 21' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: ZgvEkVYbYtGTdBiw' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: 97xsaXZO2v6Ark9x\ninvitationToken: ZcvZ4fRcZ6SqEpes\npartyId: 7Ekhj4cTrybWRvKS' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: aRSaBCco9Pp8Ywpq\ncode: 89\ninvitationToken: gxqfhxamPwuvNWLE\ninvitees: Y1QyOFgEwZWmdbRa\nleaderId: 2FwnEPpqifkPRwpE\nmembers: IzaiTqDI3nMI8a3A\npartyId: AVCIwmbuTFa3WMUU' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: uvZiv9alaW3dkxjs\npartyId: 1qfzGF5WazPlGKxL\nuserId: hHMxl5OzrBxf8jdP' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: OBdwM7pTawfAEGSv\nmemberId: BNtNnbaGCLk1pMvO' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: sYyWCaJvbnq0Tfpf\ncode: 24' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: UvHi2RQXUWYvkF0d\nuserId: vXDD9iT3Q0KdpXXw' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: nT6Zr8yZkMXJpCFR\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: rdzJnw2mSfgNTGmq\ncode: 53' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: nr1jrYC2slzqZQBW\nnewLeaderUserId: XATLAMgKAlgksJDe' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: 7NeOwwErnVPcDz2N\ncode: 94\ninvitationToken: 8L6N0MXDEQNBaQ1A\ninvitees: GwIj5NidXrpQ6QOD\nleaderId: et5SpWSFiT8eqvLh\nmembers: qARTT9U2oZZyRxOn\npartyId: tTe827TgqOgwAvvo' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: a0PdI37HTb0M4B04\npartyId: VhUAeXzEqkXWGJp9\nuserId: 4ffOIpvWPmbRT2k0' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: Wi6ErErG18o4KFHR\ninvitationToken: fP2OBWC4eRNFvApb\npartyId: J21weK9xF87RFqlr' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: xtYFMFPF5DOb5uc7\ncode: 61\npartyId: fS9yoVW39AMRyTWX' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: ihYGf0aTlwmdycOO\nfriendId: RlCyEKvFKoTcAhwa' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: tQGO9b1hDsng0bBW\nchat: efYtNMXx5ol8MKfn\ncode: 22\nfriendId: gdexYYyiPFTYjEwh' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: Gn2YUZzXOmT6zfPw\nfrom: 72oGOg0El5J1nOuX\npayload: cnvxCICOQG8pGYSf\nreceivedAt: 1983-11-13T00:00:00Z\nto: aHL9G02nBvC3X1le' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: 5xzwIwqwszAFbSz8\nfrom: rBGA0nugPrcKzuDs\npayload: SJTwWPbPp2T491Bp\nreceivedAt: 1978-09-02T00:00:00Z\nto: 3DENZ6oTBbPg8PIq' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: 33TrI2QbxJtda1es\ncode: 67' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: hXR5fR6lpQW8e8RC\ntoken: qwwdXv5e5XF7tYG2' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: XqCg1JmKl5BwTqnD\ncode: 82' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: bRtpe3KnbE2k5mCy' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: 6WC3pedVrneikv6l\nfriendId: mN7hkcEwyULVpAsP' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: S3fCpQMUAKee6GG4\ncode: 56' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 1' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: VXRSuKQVTcXRP5lC' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: Y3JIBrxCDh0dx6ed\nfriendId: FGUDks9JkhE08D0j' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: zbiPQiVdN9Lql3oe\ncode: 52' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: wqKVeJmA7DO8nU5L\nchannelSlug: 2TSnKS6u9NpvLSFn\npayload: 8qvVMfhcDvjrS3uv' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: xrBaPdTeUwxzRgPg\ncode: 12' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: PxE5SmNk88UhJ6cU\nuserId: TU7JngPH3GoQPf81' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: gXwfJpJvpTTQFRJQ\nmatchId: IoI0n1jmObClU2bG' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: bwZ5jJVD91wNSPIS\ncode: 45' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: btJRx4QsCuNzafi2\nkey: ZBQcXenY2uBx7c1W\nnamespace: W9SZ3g8pzWLjR7TR\nvalue: wghwg80zD5Txf0GX' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: 7bN9JbyAs6h1ZaDr\ncode: 39' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: 1M71jNYr6HuhdLgq\nactivity: HL850A5oRYIJmFEo\navailability: 74' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: qjtWvVbisgWy1jYw\ncode: 44' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: Zm6Acbv8XS7a4FaD' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: ViZt9GCMMANKicJh\nmessage: Lqdj6YQLbdorMmLr' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: Llh5pub06ha4Fj5C\nextraAttributes: TDTjTldBnISZlCC3\ngameMode: FYFLzTQ69w3I8Jax\npartyAttributes: {"eI8FzFfbUDBwVjuK":{},"b1GpT4gg8Cj8Wip8":{},"pPa7gIhbpEF6gaak":{}}\npriority: 99\ntempParty: ygGfBF6152nJh23K' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: M6uYmNsppXhO0RSR\ncode: 28' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: NVfLPlTud8caJSIm\nuserId: Qtxhs0OerzEDt7TM' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: 96kh7Y93eMkIosqN\nnamespace: CS5sPSZYnD4kXIcY\nunblockedUserId: WxwJ7YshEbx7s8xs' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: weu3WS7DcOrbIXcA\ncode: 71\nnamespace: OvC23jatd3YqOuDu\nunblockedUserId: DDCs6H27EloOR893' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: MeVi5DjW2J4ba3Et' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: BsdbCf1s3LCodtOD\nfriendId: 6PTzjz78V7gDgXTS' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: sAdReuo5BdBEB6Hu\ncode: 76' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: D0PKS9gN3bkVl3wW' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: LI80tMHhkCx1SkUg\ncode: 72\nplayerCount: 84' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: 0wrOZJb7qC5cGgUO\navailability: 8\nlastSeenAt: 1996-05-15T00:00:00Z\nuserId: eUvHj4JJjasaFnec' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE