// Copyright (c) 2017-2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package model

import (
	"fmt"
)

// Message types enum
const (
	TypeUnknown = "unknown"

	// Server messages
	TypeConnected    = "connectNotif"
	TypeDisconnected = "disconnectNotif"
	TypeError        = "errorNotif"
	TypeShutdown     = "shutdownNotif"
	// TypeHeartbeat    = "heartbeat"

	// SuccessCode
	SuccessCode = 0

	// Matchmaking status
	MMStatusStart   = "start"
	MMStatusDone    = "done"
	MMStatusCancel  = "cancel"
	MMStatusTimeout = "timeout"
	MMStatusBanned  = "banned"

	// System Components
	SystemComponentChat = "chat"
)

// Lobby messaging protocol type
const (
	// Party
	TypeInfoRequest               = "partyInfoRequest"
	TypeInfoResponse              = "partyInfoResponse"
	TypeCreateRequest             = "partyCreateRequest"
	TypeCreateResponse            = "partyCreateResponse"
	TypeLeaveRequest              = "partyLeaveRequest"
	TypeLeaveResponse             = "partyLeaveResponse"
	TypeLeaveNotif                = "partyLeaveNotif"
	TypeInviteRequest             = "partyInviteRequest"
	TypeInviteResponse            = "partyInviteResponse"
	TypeInviteNotif               = "partyInviteNotif"
	TypeGetInvitatedNotif         = "partyGetInvitedNotif"
	TypeJoinRequest               = "partyJoinRequest"
	TypeJoinResponse              = "partyJoinResponse"
	TypeJoinNotif                 = "partyJoinNotif"
	TypeRejectRequest             = "partyRejectRequest"
	TypeRejectResponse            = "partyRejectResponse"
	TypeRejectNotif               = "partyRejectNotif"
	TypeKickRequest               = "partyKickRequest"
	TypeKickResponse              = "partyKickResponse"
	TypeKickNotice                = "partyKickNotif"
	TypePromoteLeaderRequest      = "partyPromoteLeaderRequest"
	TypePromoteLeaderResponse     = "partyPromoteLeaderResponse"
	TypeGeneratePartyCodeRequest  = "partyGenerateCodeRequest"
	TypeGeneratePartyCodeResponse = "partyGenerateCodeResponse"
	TypeGetPartyCodeRequest       = "partyGetCodeRequest"
	TypeGetPartyCodeResponse      = "partyGetCodeResponse"
	TypeDeletePartyCodeRequest    = "partyDeleteCodeRequest"
	TypeDeletePartyCodeResponse   = "partyDeleteCodeResponse"
	TypeJoinViaPartyCodeRequest   = "partyJoinViaCodeRequest"
	TypeJoinViaPartyCodeResponse  = "partyJoinViaCodeResponse"
	TypeSendPartyNotifRequest     = "partySendNotifRequest"
	TypeSendPartyNotifResponse    = "partySendNotifResponse"
	TypePartyNotif                = "partyNotif"

	// Presence
	TypeFriendsPresenceRequest  = "friendsStatusRequest"
	TypeFriendsPresenceResponse = "friendsStatusResponse"

	// Notification
	TypeGetOfflineNotificationRequest  = "offlineNotificationRequest"
	TypeGetOfflineNotificationResponse = "offlineNotificationResponse"
	TypeNotificationMessage            = "messageNotif"
	TypeUserUnbannedNotification       = "userUnbannedNotification"

	// DSM
	TypeCreateDSRequest  = "createDSRequest"
	TypeCreateDSResponse = "createDSResponse"
	TypeWaitForDSRequest = "waitForDSRequest"
	TypeClaimDSRequest   = "claimDSRequest"
	TypeNotifyDSRequest  = "notifyDSRequest"
	TypeDSNotif          = "dsNotif"

	TypeAcceptFriendsNotif             = "acceptFriendsNotif"
	TypeAcceptFriendsRequest           = "acceptFriendsRequest"
	TypeAcceptFriendsResponse          = "acceptFriendsResponse"
	TypeBlockPlayerNotif               = "blockPlayerNotif"
	TypeBlockPlayerRequest             = "blockPlayerRequest"
	TypeBlockPlayerResponse            = "blockPlayerResponse"
	TypeCancelFriendsNotif             = "cancelFriendsNotif"
	TypeCancelFriendsRequest           = "cancelFriendsRequest"
	TypeCancelFriendsResponse          = "cancelFriendsResponse"
	TypeCancelMatchmakingRequest       = "cancelMatchmakingRequest"
	TypeCancelMatchmakingResponse      = "cancelMatchmakingResponse"
	TypeChannelChatNotif               = "channelChatNotif"
	TypeClientResetRequest             = "clientResetRequest"
	TypeConnectNotif                   = "connectNotif"
	TypeDisconnectNotif                = "disconnectNotif"
	TypeDsNotif                        = "dsNotif"
	TypeErrorNotif                     = "errorNotif"
	TypeExitAllChannel                 = "exitAllChannel"
	TypeFriendsStatusRequest           = "friendsStatusRequest"
	TypeFriendsStatusResponse          = "friendsStatusResponse"
	TypeGetAllSessionAttributeRequest  = "getAllSessionAttributeRequest"
	TypeGetAllSessionAttributeResponse = "getAllSessionAttributeResponse"
	TypeGetFriendshipStatusRequest     = "getFriendshipStatusRequest"
	TypeGetFriendshipStatusResponse    = "getFriendshipStatusResponse"
	TypeGetSessionAttributeRequest     = "getSessionAttributeRequest"
	TypeGetSessionAttributeResponse    = "getSessionAttributeResponse"
	TypeHeartbeat                      = "heartbeat"
	TypeJoinDefaultChannelRequest      = "joinDefaultChannelRequest"
	TypeJoinDefaultChannelResponse     = "joinDefaultChannelResponse"
	TypeListIncomingFriendsRequest     = "listIncomingFriendsRequest"
	TypeListIncomingFriendsResponse    = "listIncomingFriendsResponse"
	TypeListOfFriendsRequest           = "listOfFriendsRequest"
	TypeListOfFriendsResponse          = "listOfFriendsResponse"
	TypeListOnlineFriendsRequest       = "listOnlineFriendsRequest"
	TypeListOutgoingFriendsRequest     = "listOutgoingFriendsRequest"
	TypeListOutgoingFriendsResponse    = "listOutgoingFriendsResponse"
	TypeMatchmakingNotif               = "matchmakingNotif"
	TypeMessageNotif                   = "messageNotif"
	TypeOfflineNotificationRequest     = "offlineNotificationRequest"
	TypeOfflineNotificationResponse    = "offlineNotificationResponse"
	TypeOnlineFriends                  = "onlineFriends"
	TypePartyChatNotif                 = "partyChatNotif"
	TypePartyChatRequest               = "partyChatRequest"
	TypePartyChatResponse              = "partyChatResponse"
	TypePartyCreateRequest             = "partyCreateRequest"
	TypePartyCreateResponse            = "partyCreateResponse"
	TypePartyDataUpdateNotif           = "partyDataUpdateNotif"
	TypePartyGetInvitedNotif           = "partyGetInvitedNotif"
	TypePartyInfoRequest               = "partyInfoRequest"
	TypePartyInfoResponse              = "partyInfoResponse"
	TypePartyInviteNotif               = "partyInviteNotif"
	TypePartyInviteRequest             = "partyInviteRequest"
	TypePartyInviteResponse            = "partyInviteResponse"
	TypePartyJoinNotif                 = "partyJoinNotif"
	TypePartyJoinRequest               = "partyJoinRequest"
	TypePartyJoinResponse              = "partyJoinResponse"
	TypePartyKickNotif                 = "partyKickNotif"
	TypePartyKickRequest               = "partyKickRequest"
	TypePartyKickResponse              = "partyKickResponse"
	TypePartyLeaveNotif                = "partyLeaveNotif"
	TypePartyLeaveRequest              = "partyLeaveRequest"
	TypePartyLeaveResponse             = "partyLeaveResponse"
	TypePartyPromoteLeaderRequest      = "partyPromoteLeaderRequest"
	TypePartyPromoteLeaderResponse     = "partyPromoteLeaderResponse"
	TypePartyRejectNotif               = "partyRejectNotif"
	TypePartyRejectRequest             = "partyRejectRequest"
	TypePartyRejectResponse            = "partyRejectResponse"
	TypePersonalChatHistoryRequest     = "personalChatHistoryRequest"
	TypePersonalChatHistoryResponse    = "personalChatHistoryResponse"
	TypePersonalChatNotif              = "personalChatNotif"
	TypePersonalChatRequest            = "personalChatRequest"
	TypePersonalChatResponse           = "personalChatResponse"
	TypeRejectFriendsNotif             = "rejectFriendsNotif"
	TypeRejectFriendsRequest           = "rejectFriendsRequest"
	TypeRejectFriendsResponse          = "rejectFriendsResponse"
	TypeRematchmakingNotif             = "rematchmakingNotif"
	TypeRequestFriendsNotif            = "requestFriendsNotif"
	TypeRequestFriendsRequest          = "requestFriendsRequest"
	TypeRequestFriendsResponse         = "requestFriendsResponse"
	TypeSendChannelChatRequest         = "sendChannelChatRequest"
	TypeSendChannelChatResponse        = "sendChannelChatResponse"
	TypeSetReadyConsentNotif           = "setReadyConsentNotif"
	TypeSetReadyConsentRequest         = "setReadyConsentRequest"
	TypeSetReadyConsentResponse        = "setReadyConsentResponse"
	TypeSetSessionAttributeRequest     = "setSessionAttributeRequest"
	TypeSetSessionAttributeResponse    = "setSessionAttributeResponse"
	TypeSetUserStatusRequest           = "setUserStatusRequest"
	TypeSetUserStatusResponse          = "setUserStatusResponse"
	TypeShutdownNotif                  = "shutdownNotif"
	TypeSignalingP2PNotif              = "signalingP2PNotif"
	TypeStartMatchmakingRequest        = "startMatchmakingRequest"
	TypeStartMatchmakingResponse       = "startMatchmakingResponse"
	TypeUnblockPlayerNotif             = "unblockPlayerNotif"
	TypeUnblockPlayerRequest           = "unblockPlayerRequest"
	TypeUnblockPlayerResponse          = "unblockPlayerResponse"
	TypeUnfriendNotif                  = "unfriendNotif"
	TypeUnfriendRequest                = "unfriendRequest"
	TypeUnfriendResponse               = "unfriendResponse"
	TypeUserBannedNotification         = "userBannedNotification"
	TypeUserMetricRequest              = "userMetricRequest"
	TypeUserMetricResponse             = "userMetricResponse"
	TypeUserStatusNotif                = "userStatusNotif"
)

// SystemDisplayName is the sender display name for user notification
const SystemDisplayName = "system"

// Message will be passed around internally
type Message interface {
	Type() string // Returns the message type
}

// BaseRequest will be expanded by other message
// types and contains user's ID
type BaseRequest struct {
	MessageID string
	UserID    string
}

// Type implements Message interface
func (BaseRequest) Type() string {
	return TypeUnknown
}

// BaseResponse will be expanded by other response
// types and contains HTTP response code
type BaseResponse struct {
	MessageID string
	Code      int
}

// Type implements Message interface
func (BaseResponse) Type() string {
	return TypeUnknown
}

// Connected contains result of making connection
type Connected struct {
	*BaseResponse
	LobbySessionID string
}

// Type implements Message interface
func (Connected) Type() string {
	return TypeConnected
}

// Disconnected contains info of disconnected user
type Disconnected struct {
	*BaseRequest
	Namespace    string
	ConnectionID string
}

// Type implements Message interface
func (Disconnected) Type() string {
	return TypeDisconnected
}

// ErrorMessage contains info of error
type ErrorMessage struct {
	*BaseResponse
	Message string
}

// Type implements Message interface
func (ErrorMessage) Type() string {
	return TypeError
}

// Shutdown contains info of server shutting down
type Shutdown struct {
	Message string
}

// Type implements Message interface
func (Shutdown) Type() string {
	return TypeShutdown
}

// Heartbeat used for keeping connection alive
type Heartbeat struct {
	*BaseRequest
}

// Type implements Message interface
func (Heartbeat) Type() string {
	return TypeHeartbeat
}

// GetOfflineNotificationRequest message comment
type GetOfflineNotificationRequest struct {
	*BaseRequest
}

// Type implements Message interface
func (GetOfflineNotificationRequest) Type() string {
	return TypeGetOfflineNotificationRequest
}

// GetOfflineNotificationResponse message comment
type GetOfflineNotificationResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (GetOfflineNotificationResponse) Type() string {
	return TypeGetOfflineNotificationResponse
}

// NotificationMessage contains user notification message to be sent to user
type NotificationMessage struct {
	ID      string
	From    string
	To      string
	Topic   string
	Payload string
	SentAt  int64
}

// Type implements Message interface
func (NotificationMessage) Type() string {
	return TypeNotificationMessage
}

// ListFriendsPresenceRequest message command to list user's friends (Request)
type ListFriendsPresenceRequest struct {
	*BaseRequest
}

// Type implements Message interface
func (ListFriendsPresenceRequest) Type() string {
	return TypeFriendsPresenceRequest
}

// ListFriendsPresenceResponse message command to list user's friends (Response)
type ListFriendsPresenceResponse struct {
	*BaseResponse
	UserID       []string
	Availability []int
	Activity     []string
	LastSeenAt   []string
}

// Type implements Message interface
func (ListFriendsPresenceResponse) Type() string {
	return TypeFriendsPresenceResponse
}

// SetUserStatusRequest message command to set user status (Request)
type SetUserStatusRequest struct {
	*BaseRequest
	Availability int    `json:"availability"`
	Activity     string `json:"activity"`
}

// Type implements Message interface
func (SetUserStatusRequest) Type() string {
	return TypeSetUserStatusRequest
}

// ResetUserStatusRequest request directly from client to reset user status when the client get disconnected
type ResetUserStatusRequest struct {
	UserID    string
	Namespace string
}

// Type implements Message interface
func (ResetUserStatusRequest) Type() string {
	return TypeClientResetRequest
}

// SetUserStatusResponse message command to set user status (Response)
type SetUserStatusResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (SetUserStatusResponse) Type() string {
	return TypeSetUserStatusResponse
}

// FriendsPresenceNotif message command to notify friends
type FriendsPresenceNotif struct {
	UserID       string
	Availability int
	Activity     string
	LastSeenAt   string
}

// Type implements Message interface
func (FriendsPresenceNotif) Type() string {
	return TypeUserStatusNotif
}

// StartMatchmakingRequest message message to start matchmaking
// The user id should be the leader user ID
// Priority spans from 0-10 the highest the priority the faster it party will get matched
//
// PartyAttributes can contain any of:
// - server_name: string of preferred server name (for local DS)
// - client_version: string of preferred client version (for matching with DS version)
// - latencies: string of JSON map of {"region name string": latency int} containing pairs of region name and latency in ms
//
// Temp party should contain comma separated user IDs in a temporary party for matchmaking only
type StartMatchmakingRequest struct {
	*BaseRequest
	GameMode        string
	Priority        int
	PartyAttributes map[string]interface{} `json:"party_attributes"`
	TempParty       string
	ExtraAttributes string
}

// Type implements Message interface
func (StartMatchmakingRequest) Type() string {
	return TypeStartMatchmakingRequest
}

// StartMatchmakingResponse message message to reply start matchmaking request
type StartMatchmakingResponse struct {
	*BaseResponse
	Message string
}

// Type implements Message interface
func (StartMatchmakingResponse) Type() string {
	return TypeStartMatchmakingResponse
}

// CancelMatchmakingRequest message message to request matchmaking cancel
type CancelMatchmakingRequest struct {
	*BaseRequest
	GameMode    string
	IsTempParty bool
}

// Type implements Message interface
func (CancelMatchmakingRequest) Type() string {
	return TypeCancelMatchmakingRequest
}

// CancelMatchmakingResponse message message to reply start matchmaking request
type CancelMatchmakingResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (CancelMatchmakingResponse) Type() string {
	return TypeCancelMatchmakingResponse
}

// MatchmakingNotification is the message of matchmaking result
type MatchmakingNotification struct {
	Status                   string
	MatchID                  string
	PartyMemberUserID        []string
	CounterPartyMemberUserID []string
	Message                  string
	ReadyDuration            int
}

// Type implements Message interface
func (MatchmakingNotification) Type() string {
	return TypeMatchmakingNotif
}

// SetReadyConsentRequest is the message of set ready consent request
type SetReadyConsentRequest struct {
	*BaseRequest
	MatchID string
}

// Type implements Message interface
func (SetReadyConsentRequest) Type() string {
	return TypeSetReadyConsentRequest
}

// SetReadyConsentResponse is the message of set ready consent response
type SetReadyConsentResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (SetReadyConsentResponse) Type() string {
	return TypeSetReadyConsentResponse
}

// SetReadyConsentNotif is the message of set ready consent response
type SetReadyConsentNotif struct {
	MatchID string
	UserID  string
}

// Type implements Message interface
func (SetReadyConsentNotif) Type() string {
	return TypeSetReadyConsentNotif
}

// RematchmakingNotif is the message of rematchmaking notification
type RematchmakingNotif struct {
	BanDuration int
}

// Type implements Message interface
func (RematchmakingNotif) Type() string {
	return TypeRematchmakingNotif
}

// RequestFriendsRequest message command to request friends (Request)
type RequestFriendsRequest struct {
	*BaseRequest
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (RequestFriendsRequest) Type() string {
	return TypeRequestFriendsRequest
}

// RequestFriendsResponse message command to request friends (Response)
type RequestFriendsResponse struct {
	*BaseResponse
}

// TypeInfoRequestRequest message command to get info
type TypeInfoRequestRequest struct {
	*BaseResponse
	Id string `json:"id"`
}

// Type implements Message interface
func (TypeInfoRequestRequest) Type() string {
	return TypeInfoRequest
}

// TypeInfoRequestResponse message command to get info
type TypeInfoRequestResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (RequestFriendsResponse) Type() string {
	return TypeRequestFriendsResponse
}

// RequestFriendsNotif message notification when someone requesting friends relation
type RequestFriendsNotif struct {
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (RequestFriendsNotif) Type() string {
	return TypeRequestFriendsNotif
}

// ListIncomingFriendsRequest message command to get list of incoming friends (Request)
type ListIncomingFriendsRequest struct {
	*BaseRequest
}

// Type implements Message interface
func (ListIncomingFriendsRequest) Type() string {
	return TypeListIncomingFriendsRequest
}

// ListIncomingFriendsResponse message command to get list of Incoming friends (Response)
type ListIncomingFriendsResponse struct {
	*BaseResponse
	UserIDs []string
}

// Type implements Message interface
func (ListIncomingFriendsResponse) Type() string {
	return TypeListIncomingFriendsResponse
}

// ListOutgoingFriendsRequest message command to get list of Outgoing friends (Request)
type ListOutgoingFriendsRequest struct {
	*BaseRequest
}

// Type implements Message interface
func (ListOutgoingFriendsRequest) Type() string {
	return TypeListOutgoingFriendsRequest
}

// ListOutgoingFriendsResponse message command to get list of Outgoing friends (Response)
type ListOutgoingFriendsResponse struct {
	*BaseResponse
	UserIDs []string
}

// Type implements Message interface
func (ListOutgoingFriendsResponse) Type() string {
	return TypeListOutgoingFriendsResponse
}

// AcceptFriendsRequest message command to accept friends request (Request)
type AcceptFriendsRequest struct {
	*BaseRequest
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (AcceptFriendsRequest) Type() string {
	return TypeAcceptFriendsRequest
}

// AcceptFriendsResponse message command to accept friends request (Response)
type AcceptFriendsResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (AcceptFriendsResponse) Type() string {
	return TypeAcceptFriendsResponse
}

// AcceptFriendsNotif is notification message when someone accept friends request
type AcceptFriendsNotif struct {
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (AcceptFriendsNotif) Type() string {
	return TypeAcceptFriendsNotif
}

// RejectFriendsRequest message command to reject friends request (Request)
type RejectFriendsRequest struct {
	*BaseRequest
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (RejectFriendsRequest) Type() string {
	return TypeRejectFriendsRequest
}

// RejectFriendsRequest notification message to tell that friend-request is rejected
type RejectFriendsNotif struct {
	UserID string `json:"userId"`
}

// Type implements Message interface
func (RejectFriendsNotif) Type() string {
	return TypeRejectFriendsNotif
}

// RejectFriendsResponse message command to reject friends request (Response)
type RejectFriendsResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (RejectFriendsResponse) Type() string {
	return TypeRejectFriendsResponse
}

// CancelFriendsRequest message command to cancel friends request (Request)
type CancelFriendsRequest struct {
	*BaseRequest
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (CancelFriendsRequest) Type() string {
	return TypeCancelFriendsRequest
}

// CancelFriendsResponse message command to cancel friends request (Response)
type CancelFriendsResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (CancelFriendsResponse) Type() string {
	return TypeCancelFriendsResponse
}

// CancelFriendsNotif message command to tell user who send friend request that the friend
// cancel the request
type CancelFriendsNotif struct {
	// UserID ID of the user who cancel the friend-request
	UserID string `json:"userId"`
}

// Type implements Message interface
func (CancelFriendsNotif) Type() string {
	return TypeCancelFriendsNotif
}

// UnfriendRequest message command to unfriends (Request)
type UnfriendRequest struct {
	*BaseRequest
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (UnfriendRequest) Type() string {
	return TypeUnfriendRequest
}

// UnfriendResponse message command to unfriends (Response)
type UnfriendResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (UnfriendResponse) Type() string {
	return TypeUnfriendResponse
}

// UnfriendNotif is notification message when someone unfriend a friend
type UnfriendNotif struct {
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (UnfriendNotif) Type() string {
	return TypeUnfriendNotif
}

// ListOfFriendsRequest message command to get list of friends (Request)
type ListOfFriendsRequest struct {
	*BaseRequest
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (ListOfFriendsRequest) Type() string {
	return TypeListOfFriendsRequest
}

// ListOfFriendsResponse message command to get list of friends (Response)
type ListOfFriendsResponse struct {
	*BaseResponse
	UserIDs []string
}

// Type implements Message interface
func (ListOfFriendsResponse) Type() string {
	return TypeListOfFriendsResponse
}

// GetFriendshipStatusRequest message command to get friendship status (Request)
type GetFriendshipStatusRequest struct {
	*BaseRequest
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (GetFriendshipStatusRequest) Type() string {
	return TypeGetFriendshipStatusRequest
}

// GetFriendshipStatusResponse message command to get friendship status (Response)
type GetFriendshipStatusResponse struct {
	*BaseResponse
	FriendshipStatus string `json:"friendshipStatus"`
}

// Type implements Message interface
func (GetFriendshipStatusResponse) Type() string {
	return TypeGetFriendshipStatusResponse
}

// CreateDSRequest message command to create a DS (Request)
type CreateDSRequest struct {
	*BaseRequest
	MMResult *MatchmakingResult
}

func (req *CreateDSRequest) String() string {
	return fmt.Sprintf("CreateDSRequest{MMResult:%v}", req.MMResult)
}

// Type implements Message interface
func (CreateDSRequest) Type() string {
	return TypeCreateDSRequest
}

// WaitForDSRequest message command to wait a DS creation (Request)
type WaitForDSRequest struct {
	Session *Session
	Request *CreateSessionRequest
}

func (req *WaitForDSRequest) String() string {
	return fmt.Sprintf("WaitForDSRequest{Session:%v, Request:%v}", req.Session, req.Request)
}

// Type implements Message interface
func (WaitForDSRequest) Type() string {
	return TypeWaitForDSRequest
}

// ClaimDSRequest message command to claim a DS (Request)
type ClaimDSRequest struct {
	Session *Session
	Request *CreateSessionRequest
}

func (req *ClaimDSRequest) String() string {
	return fmt.Sprintf("ClaimDSRequest{Session:%v, Request:%v}", req.Session, req.Request)
}

// Type implements Message interface
func (ClaimDSRequest) Type() string {
	return TypeClaimDSRequest
}

// NotifyDSRequest message command to notify users that DS is ready (Request)
type NotifyDSRequest struct {
	Session        *Session
	MatchingAllies []RequestMatchingAlly
	PartyIDsToSkip []string
	Error          error
}

// Type implements Message interface
func (NotifyDSRequest) Type() string {
	return TypeNotifyDSRequest
}

// DSNotification is the message of DS status notification
type DSNotification struct {
	Session *Session
	IsOK    bool
	Message string
}

// Type implements Message interface
func (DSNotification) Type() string {
	return TypeDSNotif
}

// SystemComponentsStatus is the message of System Components Status
type SystemComponentsStatus struct {
	Components map[string]bool
}

// BlockPlayerRequest is the message of BlockPlayerRequest
type BlockPlayerRequest struct {
	*BaseRequest
	Namespace     string
	BlockedUserID string
}

// Type implements Message interface
func (BlockPlayerRequest) Type() string {
	return TypeBlockPlayerRequest
}

// BlockPlayerResponse is the message of BlockPlayerResponse
type BlockPlayerResponse struct {
	*BaseResponse
	Namespace     string
	BlockedUserID string
}

// Type implements Message interface
func (BlockPlayerResponse) Type() string {
	return TypeBlockPlayerResponse
}

// PlayerBlockedNotification is the message of PlayerBlockedNotification
type PlayerBlockedNotification struct {
	UserID        string
	BlockedUserID string
}

// Type implements Message interface
func (PlayerBlockedNotification) Type() string {
	return TypeBlockPlayerNotif
}

// UnblockPlayerRequest is the message of UnblockPlayerRequest
type UnblockPlayerRequest struct {
	*BaseRequest
	Namespace       string
	UnblockedUserID string
}

// Type implements Message interface
func (UnblockPlayerRequest) Type() string {
	return TypeUnblockPlayerRequest
}

// UnblockPlayerResponse is the message of UnblockPlayerResponse
type UnblockPlayerResponse struct {
	*BaseResponse
	Namespace       string
	UnblockedUserID string
}

// Type implements Message interface
func (UnblockPlayerResponse) Type() string {
	return TypeUnblockPlayerResponse
}

// PlayerUnblockedNotification is the message of PlayerUnblockedNotification
type PlayerUnblockedNotification struct {
	UserID          string
	UnblockedUserID string
}

// Type implements Message interface
func (PlayerUnblockedNotification) Type() string {
	return TypeUnblockPlayerNotif
}

type SetSessionAttributeRequest struct {
	*BaseRequest
	Namespace string
	Key       string
	Value     string
}

func (SetSessionAttributeRequest) Type() string {
	return TypeSetSessionAttributeRequest
}

type SetSessionAttributeResponse struct {
	*BaseResponse
}

func (SetSessionAttributeResponse) Type() string {
	return TypeSetSessionAttributeResponse
}

type GetSessionAttributeRequest struct {
	*BaseRequest
	Key string
}

func (GetSessionAttributeRequest) Type() string {
	return TypeGetSessionAttributeRequest
}

type GetSessionAttributeResponse struct {
	*BaseResponse
	Value string
}

func (GetSessionAttributeResponse) Type() string {
	return TypeGetSessionAttributeResponse
}

type GetAllSessionAttributeRequest struct {
	*BaseRequest
}

func (GetAllSessionAttributeRequest) Type() string {
	return TypeGetAllSessionAttributeRequest
}

type GetAllSessionAttributeResponse struct {
	*BaseResponse
	Attributes map[string]string
}

func (GetAllSessionAttributeResponse) Type() string {
	return TypeGetAllSessionAttributeResponse
}

type UserMetricRequest struct {
	*BaseRequest
}

func (UserMetricRequest) Type() string {
	return TypeUserMetricRequest
}

type UserMetricResponse struct {
	*BaseResponse
	PlayerCount int
}

func (UserMetricResponse) Type() string {
	return TypeUserMetricResponse
}
