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
    'type: acceptFriendsNotif\nfriendId: 37ZVk982FulQGiN2' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: nDKhjPCCfY0Zicr6\nfriendId: Ja85HN8FoBtqdbX8' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: rEvbiByX31L1QoVL\ncode: 34' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: tl0fSTQrPccOz4ho\nuserId: DkzqhpUHq9cFGXnt' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: olX4zLfOMIenjgcR\nblockUserId: 8Z47qC5cVZ5yoSno\nnamespace: xQ9gROt80QDZ1NHs' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: 8UtS1iT5oKFwo71i\nblockUserId: LzCmDB9hdkBFrETF\ncode: 56\nnamespace: MKaYa40Guab9i6IZ' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: 9HLUuEetZKWmB20F' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: 5G06kOrRF4s5KkMm\nfriendId: qruXURFn8hoLpka3' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: azeUUrMHrDaawVXA\ncode: 12' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: FPsSykhGRnXurjHQ\ngameMode: 6jwhJN57hKakMTQT\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: yDQLRYMq4lRq15fu\ncode: 59' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: yPxKBO94lbpBmIsQ\nfrom: ZaouGhMgmrFMBV9v\npayload: 1D9Ko0FBxWrWiP5M\nsentAt: hosRy26C3c06QKY0' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: QNQ4nhnmOzmJ4AQ6\nuserId: hVJMX7ZQgBkRe9K8' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: Ln1JU3IryHahYXZ1' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: Lj48RE17aOlyfn4a\nnamespace: SVCf7rsAVtqU0zwd' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [yDeCUxFyPvWjRRgz,4tQiRmwitu6Kmzww,S9jf3UZ1Yw0OLnHu]\ncustomAttribute: GYc8ROBRwJwYsLP2\ndeployment: dLpFtQGMb4juBmyA\ngameVersion: qd4GJaEMpZ9nkyQj\nimageVersion: vzsE1DlUjPoOkWHv\nip: LiyODori3C7X6SL7\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: rAejq8zoeG4B2Hfh\nmatchId: lNGz83X3YMRbZcXh\nmessage: a6m81cDe0jb5dyqN\nnamespace: UKPIX4nowmPcOPfV\npodName: HIdlzBY0y9DiTmyr\nport: 47\nports: {"Qvcx2MC2K9WTLo9l":93,"IaDEWwLPve9aBrh8":0,"ya7uojlcSrcG0rOA":69}\nprotocol: R72lxGUBUICx3SRZ\nprovider: 4HlPsCupWfsjnc6J\nregion: EAEYmrS1IqbnebvZ\nsessionId: t0oTWvJQFvhVnFdc\nstatus: LwxEWDUl5tiB6QRm' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: 9tvxngE4wUaN8uIg' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: JvmdMyvBPFFbdqF3\nuserId: eYzN0AHaYwSlkjES' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: M6mgFNONjd7Rp9eU' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: iBAUVX8P9VO717ba\nactivity: [0wrFRD4TtPk0Ty9z,jAG2FP7FruKbwUeD,ElISKx4nKhglJQWF]\navailability: [96,64,97]\ncode: 73\nfriendIds: [EPD3atp15C9TOxiN,YLsUY4xAlG4Rn2QB,Tah9sm235qAFUfW5]\nlastSeenAt: [xdPRicFIWnIa6YPl,JXqxe5Z6sEin1dgz,mR94k9Agxxsg8wOi]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: IgkeiCdEbi9zIA5z' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: vkQnKdUUgfMLxsFJ\nattributes: {"kamyEjYrXHnr7NYv":"sQ4gydAJNxHNWg97","IX1hHFXlBd86leJl":"M2RX8egFfjED5OUX","b4Xy8tMBcwyRv1xr":"RVxOaqDOfZtna61Q"}\ncode: 49' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: 6LtsPPHzvyPurId9\nfriendId: 07kKN3fFJbuIraAs' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: pk5y7QGKBSrLH8De\ncode: 73\nfriendshipStatus: Xgp7F9bhTihWmBar' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: nbWU7IdLo1r0OXNM\nkey: QARPJVT4S6vNREWv' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: oxfU12KhakUxKI9D\ncode: 81\nvalue: 0F4qdOUapF8eaknY' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: 92h8qGDOfKusCQqI' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: Es1JhmTN1K6qYyLY\nchannelSlug: bDM4PAGoL191j9ii\ncode: 98' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: 9xb4kGnKDyBivd2E' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: 7h95X6JclTu6ufGQ\ncode: 30\nuserIds: [Ra9bBf8wJ6i2r8S3,d7XuZNG0OZclQWqc,7ayamvsOtrZZ5gty]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: PhJ7fAMQ5PKbMBqb\nfriendId: 8GoCERrkQDSyZGMq' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: ojtxM4qW3LjbhkdN\ncode: 5\nfriendIds: [uQ2mClb4mB224s8g,UYFKVpWNmU1uHJ8i,KAcnYZfh7NLym49t]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: tbTDnLWmabR3OqQh' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: MVE1WGx9bMWgI6Bg' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: k0gvvy1syb3FcGSJ\ncode: 63\nfriendIds: [nSPtsR6gVThmMKLy,NGSTpSuFaF4ldte7,RBRFHZ8CC4SxTPA4]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [mCZQ8S6ItVU4zDkw,sty6KatEZ1XwjC7a,6ML8RsJJYNEQPLcn]\nmatchId: Rvhsq4QsTNEUxrCP\nmessage: ZtVVFIyLGWdfRwBT\npartyMember: [bd7PAVWkxtsCg14u,2aqah6oYbUEZ24RL,7JVCKTpd8WmGBG3F]\nreadyDuration: 9\nstatus: 5AhOwMxdJYTThoYh' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: 4jFIZuxQWIUNsd5d\nfrom: oxOcI1TNTrTbzDDY\npayload: pQPlmE3BYjZuj5Kj\nsentAt: 99\nto: knxguFhsKRzokTC0\ntopic: i5dSVya5j7cXt0wg' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: ucweLQqjcyacAONQ' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: JwiHtGFf6uMKJIbP\ncode: 84' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: 6rDnrYYhfLZV4xxS\ncode: 58\nonlineFriendIds: [7iBxhx86EF8vvpGh,4B4BbeR5ZgjfZyAb,B8aQGFfSMbvOtg2U]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: Ux0jIChnxAikXpqF\nfrom: 4p0qoTWMeci1qeXQ\npayload: xn7aGQVn04x5VS0Z\nreceivedAt: 25\nto: RjPsNI4Hdv1TGFk5' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: 8fYaqan9WuZqMYBG\nfrom: vqDnr6mJ52iYHbim\npayload: lAfLJ6ACiEfGqGmY\nreceivedAt: 56\nto: fv4WnHyoahYjqRMw' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: pKTstq3wv4qRyMtz\ncode: 96' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: 6kqyhdZQ19aqrZe1' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: yGw8RM2LTjq02bME\ncode: 27\ninvitationToken: CeJWwAmZ5mKJEueI\ninvitees: 7CSdAwEteNm4LHM8\nleaderId: 5gT0ACH6Wj3LK1yT\nmembers: g2xrOkVx9kNhaAFv\npartyId: ga5gRfsutotkZ5Zd' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"FVtyTYpexiCJUoqc":{},"ceURlkPe8lqjlLgM":{},"PWt81YsLB3F9bL7D":{}}\ninvitees: [sZHwTijfwAtaoMl4,9nFMgfjsF1646yfI,RBHtSb0QFy7ImRj4]\nleader: mroSIhBwvsu0toYf\nmembers: [8BvGNgbCqGjNOYLY,OLA6hr9jMKDGF0FN,5tF4yj3QTWz3Ceyu]\nnamespace: l3asRQVCa6mJREsx\npartyId: RoZ2elrItTWYPEZi\nupdatedAt: 68' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: 5Aab246RosCis1Rr\ninvitationToken: vj5UTTSTi4v0hmkc\npartyId: q1yqSMUdvdmjeKkO' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: W89IRflTw5wdxBq1' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: PQHQyiP9gIePsrPK\ncode: 5\ncustomAttributes: {"fTGcwQcml8mAhtCt":{},"G4Mp4DXrsINuVGWD":{},"9eJrAvOlcwQO9vvT":{}}\ninvitationToken: S6PledeI3VjMElU2\ninvitees: KtHHKkDib6Oqz6EQ\nleaderId: ZBl1p2UmrMA6I1Xv\nmembers: KS1WP7TFpTN7fJni\npartyId: uafROFRNJFQTMZpO' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: WYAXuWA1jj8SqvYc\ninviterId: eTFwby4HcjtSuuzW' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: LQ9ameUsU8m15iJo\nfriendId: 6OYUnRDiDpKwAiI4' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: CHYFumfPePlRqvRS\ncode: 58' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: 67BUKwZVzQV4ZtBc' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: E5HRZZtrtk6YYveQ\ninvitationToken: cJWht2T2A7c41TpL\npartyId: rLC0eHocRZtoGwuX' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: rU8zcPJIx6f8xi80\ncode: 70\ninvitationToken: p3Q4RsGz1HAtCmQF\ninvitees: rr56kxgOMXmern82\nleaderId: mhv0lw9kAQmx7u1Y\nmembers: 0bYzqqTlnRZZlEdB\npartyId: Kwvrn9i8bIjaVImi' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: EpuyETuI7opA0uGf\npartyId: ZRWjaWfGsAlyvcnH\nuserId: OOBJg7RhsEAIUSU8' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: 6w6OfVNZqUAkvlAm\nmemberId: W0jJzSu1uHQjYFjE' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: g4zqRbyUdSUTZjaO\ncode: 10' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: UGZ98NWindjTCvN2\nuserId: 0KWSrmh4dNHwszCj' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: PviAThehn6lo7Uix\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: 541AhYeNSgo6Olw2\ncode: 83' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: NLpYWNXUYjBKKHIM\nnewLeaderUserId: bVYvva0RbsT4q74J' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: QNWoI1Uyp32cQDfh\ncode: 41\ninvitationToken: im2pOmfRX2CJB9AU\ninvitees: OqaCP8j3Z2LrgW3X\nleaderId: 22km8FZfZYhDGywT\nmembers: 7oxW6HzpWwa4K87B\npartyId: IXl4RExDgBCutEZT' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: ZbkP1Qxw1xWu3UdD\npartyId: qWTZiJ1lsJslNFyx\nuserId: ZxOzI3IzcS3IJOhM' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: xNTIjBFz5MDIgdrj\ninvitationToken: 8RssNt3E7CFeXyu4\npartyId: JrjND46m3gRF4mK9' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: Bm3TGPVoBvE7z3dj\ncode: 41\npartyId: 55MOaTGOFZgVeBF6' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: ra5CkYu4fxl3pgBB\nfriendId: cpJW5QywiszOKqZZ' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: OoCC7lOCeXslFfsf\nchat: dj5ZQHJIBObaorlf\ncode: 44\nfriendId: JGbBH6zsaSCAyEWF' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: LgbEvgUn7zRh4cFQ\nfrom: V3lkkVFoIsjPOqRl\npayload: sUAJo8aTEOfnZHll\nreceivedAt: 49\nto: QkDN2A14Xhn5jNel' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: QYMoZ9jF9J9qQUi1\nfrom: FXTaM5cVf8dsVirP\npayload: XeOSRgrKWCLkpiNA\nreceivedAt: 19\nto: sITV1cImnRhfg1T0' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: FohxM3uyfbmkCtFH\ncode: 57' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: imD0ryI2l7zePAco\ntoken: ZdDyITXQDxf92wZd' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: CcuL46lj1zguLXRy\ncode: 47' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: 1hbHwlb7aP76Zr7e' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: Rv9X92dyrggzAQ7J\nfriendId: X7J9YvaJhBae2nwD' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: 2kLMXRvYxbNTHpIX\ncode: 66' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 0' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: zVQH9LCXEkpBk3qf' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: u1nGeJjecG4k6YTX\nfriendId: te3I2LAf6uxtoTyj' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: iMoV2ITKoRAu8Pnh\ncode: 51' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: x3SxnZ1BEqf97WwY\nchannelSlug: Dt6rZtw8uCHNYSxe\npayload: KNkyJaPW0iX30z64' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: qZdG4fJDqVJIGQkq\ncode: 64' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: CIUOYlsQNy5d4ACv\nuserId: Z0aEYKrIvKg5bgXP' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: 5sun26eEwRr5O8Qh\nmatchId: AJRalUI6WlQNIDWY' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: mF0Orxi1BpvQuZVk\ncode: 0' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: oIoadSu44k3RoAXx\nkey: Vexh4S3Quluw1ZVs\nnamespace: MNEvuaP4ozqoOALf\nvalue: qQoOpq40mcInwCju' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: nTrpILogJqCAYTJU\ncode: 98' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: O7Xa1ujxvdWUuRdJ\nactivity: p56G3CDgcqQJmSoP\navailability: 63' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: XTYgAqGvQmB7hMlz\ncode: 12' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: Y0fEdUdP17rI2X1E' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: b3rq8GLTijc9jo2t\nmessage: AhyWHIoUm9GAjJFx' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: 6HtaD3qLnV1aHRQ9\nextraAttributes: RB2Uz1W0hdZElJcd\ngameMode: Wa0G2VD7344jzHSC\npartyAttributes: {"EykhJe97ctumwgUh":{},"C8EyxrgpN6zbzGkM":{},"5VM1aTBJSAalxpJF":{}}\npriority: 7\ntempParty: WmBpgDBHrKGxTy3e' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: AnYPRtVWfWAkyrZb\ncode: 15' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: ypmr68mJStmyTG0q\nuserId: Giz1kK2xtYnR4UBc' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: xLAxHiGRDTsRONxL\nnamespace: MqVkIIbGTOMMuU0s\nunblockedUserId: Aax7VljOBghiEdEI' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: 5VU2O4MNtQT40sEt\ncode: 8\nnamespace: ReY3W9BX1Sx2x4D2\nunblockedUserId: GWlObB1mYluDpN19' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: 0kbp8mULyDX5O0gi' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: 07ZLEdEFttddG4QI\nfriendId: s5qgn0VIX16ZXaJP' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: 8AQVJx7iIfTgLzVg\ncode: 42' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: t45kza5jAUZ8Q1Bi' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: mXE098nHQdtBpG40\ncode: 59\nplayerCount: 61' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: z1tBFlniYTlsIUIn\navailability: 7\nlastSeenAt: xikv4atU0mvVCaka\nuserId: wwlyotJkC0FP58lN' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE