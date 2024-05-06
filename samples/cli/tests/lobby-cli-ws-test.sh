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
    'type: acceptFriendsNotif\nfriendId: LKDvYL3pKbSVDRWw' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: xJyqib9Gpio2F9L6\nfriendId: cWDppSgiZECkdTF8' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: CMT6APZaFzUVXSlF\ncode: 88' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: 7XTBGhnQq31FuBoS\nuserId: G2UcpLIs61gZt7dX' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: z4UAiB2YWOl2HJnU\nblockUserId: ozOaPU91uurMU8YA\nnamespace: ED4fBPCXc3nfJeWK' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: CG9JHO6TfFosfJaY\nblockUserId: tz52PWwtRkgDnGKP\ncode: 36\nnamespace: DQnHFTvXyQwzopvz' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: prCg8vWUULsFtydm' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: u0dTjc0gg17cEWMA\nfriendId: ILeri4P36wBCXlFq' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: AUxgOAwtGJudoH4g\ncode: 54' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: uKape1VgyusgxSEV\ngameMode: R96ZvnzCYzybJ8qp\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: zpQkRAil02fjTIOF\ncode: 52' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: jnlN5FUwFWP4vgJ3\nfrom: Rj46udrYdsGeSm2O\npayload: tOOxBwY7GvLOgi1k\nsentAt: 1974-10-19T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: m7NiBRiVCqr42a7r\nuserId: IPirOJIdaIQe2pQW' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: 43tYCMlCi4SQO9Z5' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: GqqDCfhqaCw0TXLV\nnamespace: yn4u8qEBwm7a2WvO' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [jXGfcs5M7Is5aHIb,TmihU8z5HRmIgLUL,dcscAA0kFUlwZbXv]\ncustomAttribute: IXHA4gbRxsx1dUwR\ndeployment: RJLsNGZtHbb53UVj\ngameVersion: Xan4Jotqvjx13o4o\nimageVersion: hvCU5Kj1xoMWWwtk\nip: QsGjD0he5Ae4z6yb\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: jA71TToDD5KzzXOC\nmatchId: Was2T1dGDe08xbqW\nmessage: D2dgihXbH8eRca8x\nnamespace: 7h3iJcnV3CpTpVaC\npodName: xqbv8hg9aGS8NjGt\nport: 16\nports: {"CVMU2HWbHUMfCPc9":83,"frrLZ5QSZDNm4N0V":31,"V62Tu1nBjfTngLgA":42}\nprotocol: fZ02YWovdBzIIMFR\nprovider: oxlWcXxAPelphjzj\nregion: GuxHVVT8ooitunyj\nsessionId: isspckFAsN8b74C7\nstatus: q7HrjTIMadbksfqC' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: z5nTa42Z3yMn9X56' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: iu3GcItkTkNXKupt\nuserId: eoEi9QRQ69BDEYEU' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: 2V6sQ7CsjXNPkIaH' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: WGb9hKkIKZ6sMkDz\nactivity: [maMB52fAcJKoSa93,DX6aJ8DsCUTlk0Wj,ALnhcnRW2cFhQAnc]\navailability: [URJc9uipFlGC7nNv,XLo9iVuE6Tkvbpz7,kqZQgfdlXj8IrsvT]\ncode: 70\nfriendIds: [YCS4bMPgqFmqSdkH,g5OQ29DqXirqPYTg,n28E6bMIVtrXQL7A]\nlastSeenAt: [1980-08-12T00:00:00Z,1983-01-23T00:00:00Z,1977-08-23T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: 660Y35nvX0QwTt4P' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: YrIbaIZix2hjwvMU\nattributes: {"yUSKgsLJOJdZg0rS":"7mKiFGHFaPdjdhWL","JudTNFjDzz4MYF7i":"T7p20IsGt57LjzUb","itzigr640AcxslIC":"K3Kl8H8Jf2eIm0Kw"}\ncode: 54' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: 6eIzj573HwSBA7Y2\nfriendId: uD26zqNohgYfVpFh' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: 6jrPtskVC04nbnVU\ncode: 23\nfriendshipStatus: wqCkpIeEQnwv5WF3' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: EOhhBA1ukiq5eV9E\nkey: c6Cx6JVfnwzGgoev' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: fVVsqRP0nsrV0RUY\ncode: 52\nvalue: soAUrqUsStTI7T4w' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: C0BkwnxFymN7Kpay' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: tk4VfZYTRxKJryyY\nchannelSlug: cBlBUQ8tyF3IdTvi\ncode: 66' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: e7QIx0p92eMvv5EJ' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: 1YyUxT4FNkf9wB6J\ncode: 91\nuserIds: [fWep1gABAmDNlIOa,2bOsChpUPEljW7jl,ncOT6fzgZS6SS7J2]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: QOZ2amvdlPNfWL1Y\nfriendId: JIHzyqNJgGqLMgqe' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: iFlTJJVCBCYXQ3j4\ncode: 37\nfriendIds: [s0wzgbQmndB4jAU1,8p2hvetWl4xLLjlw,UakVhN16WnesKzcT]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: kewXqVdf83ZVCPQe' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: 9Z6J1Rla6OYiYBPC' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: ZaKN2UfGHAELR93b\ncode: 99\nfriendIds: [u3ZJNAmcPRPV3Ylr,Slr2JRVQCNqwJH9Y,xW8csjq85ZS56rkW]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [H4O9DWbP0ypu1Fef,FRZECB4nGUcAgukX,Ovq141W3GLTcrJgi]\nmatchId: wTBQ9a3Tp4mMLH2R\nmessage: ZlWhfdIh4OSwKDYv\npartyMember: [YqErqYAYcztyd50e,0T2rkD3JzFZIdnhz,NLSAKNaw6bYvx5ir]\nreadyDuration: 66\nstatus: Zz6KF8ewK0aHHH9c' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: 7Nx65RTBZ5QLkj4w\nfrom: OKJYQxkMOQCcHeAe\npayload: Fvaeqb3PUrRcVCM8\nsentAt: 1993-05-08T00:00:00Z\nto: Ndo8dw8AA4cAztFE\ntopic: 7BvHApvhfMIy6Mzw' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: GCIk1q5uQBGDF9WA\nfrom: 60Bu0VuGuXeNrnif\npayload: QWMZlKMhnhzzzIjV\nsentAt: 1994-06-09T00:00:00Z\nto: 2SBEau3rZMx0Pgas\ntopic: 8wHTatsqNgsXWECQ' \
    > test.out 2>&1
eval_tap $? 40 'MessageSessionNotif' test.out

#- 41 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: pA0ctzc7CXi8AHFN' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationRequest' test.out

#- 42 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: WLOyq2M6I7lcDmCN\ncode: 23' \
    > test.out 2>&1
eval_tap $? 42 'OfflineNotificationResponse' test.out

#- 43 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: li8uQtsIqvwsmARu\ncode: 59\nonlineFriendIds: [mJkhnh0DrnmsG12n,IH6fFfyrEKgW1uFp,zCOvh3VCXZGEdX8l]' \
    > test.out 2>&1
eval_tap $? 43 'OnlineFriends' test.out

#- 44 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: GYZobRbxTjGwGbHd\nfrom: hTFMWFGEjNDHvMhw\npayload: jYzw4tmZPndS9Ffl\nreceivedAt: 1976-12-22T00:00:00Z\nto: xSculxbuUxWUJlEv' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatNotif' test.out

#- 45 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: udeOMpziclSzTACM\nfrom: vYomJUbyHa3S80QV\npayload: 20F1lVm5hpozdgKt\nreceivedAt: 1987-11-01T00:00:00Z\nto: qJ8zwkhGUTGEfPet' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatRequest' test.out

#- 46 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: 5TpsmtGJNGMzl11t\ncode: 70' \
    > test.out 2>&1
eval_tap $? 46 'PartyChatResponse' test.out

#- 47 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: SxGTZaBJ2uyUYx4L' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateRequest' test.out

#- 48 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: M5l4ifU7Dh7jyfrG\ncode: 92\ninvitationToken: 7d2vYvnGbrWrgt6E\ninvitees: mqCpsicjyeVcPykA\nleaderId: Jws8u6uVMiGJ2Pxb\nmembers: YZR2kAHBxVRT4NT0\npartyId: BN6tXaOEYyEDsU7C' \
    > test.out 2>&1
eval_tap $? 48 'PartyCreateResponse' test.out

#- 49 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"JHwu41WL2ChzHsVM":{},"UmCbrV1JgFJWuyNZ":{},"5szcEs5plb6tLNyJ":{}}\ninvitees: [OYWEhWVasrX2MUN6,GuiEI79fcn0MREiv,g918EGoj1aXBD5Pb]\nleader: 7Pwt5pssL5y7caGu\nmembers: [IvLEwR8p9eLpjzsl,0EUt9qCb18AVIjkU,e0ZzvguXcu4RELHb]\nnamespace: 5lQnxZEr4AxEvcx4\npartyId: hRlKDMFAtuEEpvP6\nupdatedAt: 1977-08-02T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 49 'PartyDataUpdateNotif' test.out

#- 50 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: CbeBNb4vVKJgbpIo\ninvitationToken: WTV7bjHdGnkzz8y1\npartyId: TboTdCLYTBAzdUcY' \
    > test.out 2>&1
eval_tap $? 50 'PartyGetInvitedNotif' test.out

#- 51 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: fxSQzFoUszQA4JXd' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoRequest' test.out

#- 52 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: PdIAS1qhbyAMreH1\ncode: 55\ncustomAttributes: {"MNYbrdFAIWGvqbwX":{},"rPB1eU7gNOHq8jBZ":{},"xH0O0pldDFIQqQR1":{}}\ninvitationToken: 0PDqULEe88zQ1F5a\ninvitees: thwCu4C9rGnxzKNv\nleaderId: oS4X2oMOR9JS7DpV\nmembers: zZs5toJwGIt21dX9\npartyId: jycBRgYLsinGlMNO' \
    > test.out 2>&1
eval_tap $? 52 'PartyInfoResponse' test.out

#- 53 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: qArIlMfP7aEHpRaS\ninviterId: bS7bLWO7PoSJIXkU' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteNotif' test.out

#- 54 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: jzmC2a9wkTUDRirc\nfriendId: 3RoVKYRN0Oo2dDQU' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteRequest' test.out

#- 55 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: 3UUNHfTMNBbV0GYv\ncode: 13' \
    > test.out 2>&1
eval_tap $? 55 'PartyInviteResponse' test.out

#- 56 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: daYjbXZtrAx4WZRQ' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinNotif' test.out

#- 57 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: 0RW2Cbw7rN8jBN4C\ninvitationToken: GqkJvwFaokyVcOkP\npartyId: 4KOYBBIY5JO8mlVG' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinRequest' test.out

#- 58 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: PltfUygxOPoW0uxp\ncode: 68\ninvitationToken: KkVTqdBbKGPY9DQo\ninvitees: u4OVFV74lSDCLSrg\nleaderId: KjuOfNtBsx0pATPF\nmembers: aKZkTUtcEnmwsobK\npartyId: rmxOddntQSXX0MvN' \
    > test.out 2>&1
eval_tap $? 58 'PartyJoinResponse' test.out

#- 59 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: z2P5PmzNQHnRdOhh\npartyId: pmLCg6Jc4dtUgNeB\nuserId: fQWU9FzQ6H62uYhF' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickNotif' test.out

#- 60 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: NCkkJuMD17akpI1V\nmemberId: qeEfXFSGxK612KxU' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickRequest' test.out

#- 61 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: SL1sNaicMZ8yEnrH\ncode: 98' \
    > test.out 2>&1
eval_tap $? 61 'PartyKickResponse' test.out

#- 62 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: 6NeXMqiyI2NN9hHQ\nuserId: SI98RRu1ly8fajCX' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveNotif' test.out

#- 63 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: VBpIi7Va4uCkLNvk\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveRequest' test.out

#- 64 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: 8VtbnOJAG55lLlzq\ncode: 65' \
    > test.out 2>&1
eval_tap $? 64 'PartyLeaveResponse' test.out

#- 65 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: kjrT60Tg0teLhPA1\nnewLeaderUserId: fGmq6aegTkEUk2YV' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderRequest' test.out

#- 66 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: DImpBSrijsArZgQP\ncode: 67\ninvitationToken: e8NoSwPV8Ia20Hj6\ninvitees: oUovYq8WxTx7WeHp\nleaderId: uYDc5QN8q9b3vOzh\nmembers: jdDDE82yy56joRAH\npartyId: fV81b9bYBCxKhQPo' \
    > test.out 2>&1
eval_tap $? 66 'PartyPromoteLeaderResponse' test.out

#- 67 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: RpT1t1KqBmKFDNSm\npartyId: s3lXo5GmAGt8TY5j\nuserId: VBIWLn7g67fxqYMt' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectNotif' test.out

#- 68 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: NwdmIHbKnjlI74ry\ninvitationToken: 5X5CimEWWJmX6tK6\npartyId: wxORQDWQTFXt3x3s' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectRequest' test.out

#- 69 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: iAior55QqiiM5p1u\ncode: 54\npartyId: 1BrxeI3DRVXoWkJc' \
    > test.out 2>&1
eval_tap $? 69 'PartyRejectResponse' test.out

#- 70 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: L1eSlL0reDesbpji\nfriendId: AuBkpCOyhCARZC0C' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryRequest' test.out

#- 71 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: evfKLUP69TModgaY\nchat: ZLzlqTDrWGyaqTZa\ncode: 78\nfriendId: xSUNUehMp9NKliBR' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatHistoryResponse' test.out

#- 72 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: 1Pw7BaQE0m9RvEhM\nfrom: 9IMyzMu0XvK6WCxY\npayload: FZ6E5D4tmNbiJQ0U\nreceivedAt: 1978-01-13T00:00:00Z\nto: Jb3atbP68RJUxUzo' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatNotif' test.out

#- 73 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: zqgHFPxqFCDiZmWO\nfrom: k6zj3bg2mUgElk7d\npayload: yq8m7hZGZ8Kblky7\nreceivedAt: 1978-01-19T00:00:00Z\nto: A6fvfqFQxrm8tk1E' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatRequest' test.out

#- 74 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: 3F3EwCQHxypFVZmw\ncode: 56' \
    > test.out 2>&1
eval_tap $? 74 'PersonalChatResponse' test.out

#- 75 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: 7FAOpnuJVMJojVLu\ntoken: EzrtjidvIiXoQkUx' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenRequest' test.out

#- 76 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: tcw8d8KWevMOD02L\ncode: 57' \
    > test.out 2>&1
eval_tap $? 76 'RefreshTokenResponse' test.out

#- 77 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: ZiNceMLIxvFJbeK2' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsNotif' test.out

#- 78 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: Nks0D4yDBc1fCSoo\nfriendId: fq9GdnHkujievhcs' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsRequest' test.out

#- 79 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: HxCbXg9U7ZEztTzz\ncode: 67' \
    > test.out 2>&1
eval_tap $? 79 'RejectFriendsResponse' test.out

#- 80 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 6' \
    > test.out 2>&1
eval_tap $? 80 'RematchmakingNotif' test.out

#- 81 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: 5nnWxPTMRYRdE05T' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsNotif' test.out

#- 82 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: G89jz5d79QpA7cqb\nfriendId: Tp5Hnt7gxDiTRcCr' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsRequest' test.out

#- 83 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: 92BW0qCC6uBmIeXq\ncode: 56' \
    > test.out 2>&1
eval_tap $? 83 'RequestFriendsResponse' test.out

#- 84 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: gMyfwkW7bMTvJReX\nchannelSlug: lSCc6HaXvWY27qfQ\npayload: 2u8dpBQf16Glb69t' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatRequest' test.out

#- 85 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: oYzTJK61BdSf8omo\ncode: 46' \
    > test.out 2>&1
eval_tap $? 85 'SendChannelChatResponse' test.out

#- 86 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: Aul7MzYbuIQCZ2a2\nuserId: 69RaxPyp59wqM7sy' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentNotif' test.out

#- 87 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: wsdi61STewjQXfED\nmatchId: 1QIrhtYVBYbPnMyg' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentRequest' test.out

#- 88 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: 3c7PAFw18ats314L\ncode: 72' \
    > test.out 2>&1
eval_tap $? 88 'SetReadyConsentResponse' test.out

#- 89 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: m31E9fFcYMUxiJEi\nkey: XxqCqbna7qmBdr0t\nnamespace: JlbydzBZ3PRf85Gq\nvalue: FyYTsW8kyMxyicFy' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeRequest' test.out

#- 90 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: kC9F1BSdLkH7oS3H\ncode: 4' \
    > test.out 2>&1
eval_tap $? 90 'SetSessionAttributeResponse' test.out

#- 91 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: Sn6mFyA7CTcU2rg9\nactivity: Jvg2OGXlBeyFhWw6\navailability: 5' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusRequest' test.out

#- 92 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: 53RlTMdjswohUlFw\ncode: 44' \
    > test.out 2>&1
eval_tap $? 92 'SetUserStatusResponse' test.out

#- 93 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: dMlidqrscMrPzDZQ' \
    > test.out 2>&1
eval_tap $? 93 'ShutdownNotif' test.out

#- 94 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: cDnfpGjanzULjYRb\nmessage: RH3RwBQOZfA39zGE' \
    > test.out 2>&1
eval_tap $? 94 'SignalingP2PNotif' test.out

#- 95 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: JYMwVI8D4nPkrDnJ\nextraAttributes: VBDJliTTGcuJIWmZ\ngameMode: M7vF4042tPkcaD52\npartyAttributes: {"WSDTMehEMrgpFhIp":{},"079jHKljx0DVFKCK":{},"kBq6auxVwPgrxcU9":{}}\npriority: 77\ntempParty: zwqTY49YLsgs5m08' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingRequest' test.out

#- 96 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: p2Ob7eWqlWWU3pQM\ncode: 53' \
    > test.out 2>&1
eval_tap $? 96 'StartMatchmakingResponse' test.out

#- 97 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: of5v3x0vGqqrAbQt\nuserId: dTTzJ2qJYgqIJJF2' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerNotif' test.out

#- 98 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: GCtiU5rcRgVJ1vay\nnamespace: 8HuECcNqLEs2hBNU\nunblockedUserId: mHjQxD3AZ0MLmkYR' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerRequest' test.out

#- 99 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: WAFqHyRLyb5E3pYQ\ncode: 63\nnamespace: JFuZdeYdZ2F8PKHb\nunblockedUserId: eYMach9gtbqXZMvN' \
    > test.out 2>&1
eval_tap $? 99 'UnblockPlayerResponse' test.out

#- 100 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: iqK3536GtiVy5aZ1' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendNotif' test.out

#- 101 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: C2T3H0cQA896l0O8\nfriendId: XEoDJDzGXVveWJjW' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendRequest' test.out

#- 102 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: xRnWSjfAYLFDw5II\ncode: 55' \
    > test.out 2>&1
eval_tap $? 102 'UnfriendResponse' test.out

#- 103 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 103 'UserBannedNotification' test.out

#- 104 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: CElQHxMpBx2Hyp6X' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricRequest' test.out

#- 105 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: 9TAaxiIwDviTquaL\ncode: 2\nplayerCount: 28' \
    > test.out 2>&1
eval_tap $? 105 'UserMetricResponse' test.out

#- 106 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: dujhdUUY4YjnnI8H\navailability: 76\nlastSeenAt: 1975-02-08T00:00:00Z\nuserId: YvH8eucLze66DKMS' \
    > test.out 2>&1
eval_tap $? 106 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE