// Copyright (c) 2017-2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package model

import (
	"fmt"
	"time"
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
	TypeRefreshTokenRequest            = "refreshTokenRequest"
	TypeRefreshTokenResponse           = "refreshTokenResponse"
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
	Availability []string
	Activity     []string
	Platform     []string
	LastSeenAt   []string
}

// Type implements Message interface
func (ListFriendsPresenceResponse) Type() string {
	return TypeFriendsPresenceResponse
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

// FriendsPresenceNotif message command to notify friends
type FriendsPresenceNotif struct {
	UserID       string
	Availability string
	Activity     string
	Platform     string
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

// StartMatchmakingResponse message message to reply start matchmaking request
type StartMatchmakingResponse struct {
	*BaseResponse
	Message string
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

// PlayerBlockedNotification is the message of PlayerBlockedNotification
type PlayerBlockedNotification struct {
	UserID        string
	BlockedUserID string
}

// Type implements Message interface
func (PlayerBlockedNotification) Type() string {
	return TypeBlockPlayerNotif
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

type GetAllSessionAttributeResponse struct {
	*BaseResponse
	Attributes map[string]string
}

// --- START FROM HERE, THE MODELS ARE GENERATED BASED ON lobby.schema.yaml FILE ---

// AcceptFriendsNotif
type AcceptFriendsNotif struct {
	FriendID string
}

// Type implements Message interface
func (AcceptFriendsNotif) Type() string {
	return TypeAcceptFriendsNotif
}

// AcceptFriendsRequest
type AcceptFriendsRequest struct {
	FriendID string
	*BaseResponse
}

// Type implements Message interface
func (AcceptFriendsRequest) Type() string {
	return TypeAcceptFriendsRequest
}

// AcceptFriendsResponse
type AcceptFriendsResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (AcceptFriendsResponse) Type() string {
	return TypeAcceptFriendsResponse
}

// BlockPlayerNotif
type BlockPlayerNotif struct {
	BlockedUserID string
	UserID        string
}

// Type implements Message interface
func (BlockPlayerNotif) Type() string {
	return TypeBlockPlayerNotif
}

// BlockPlayerRequest
type BlockPlayerRequest struct {
	BlockUserID string
	*BaseResponse
	Namespace string
}

// Type implements Message interface
func (BlockPlayerRequest) Type() string {
	return TypeBlockPlayerRequest
}

// BlockPlayerResponse
type BlockPlayerResponse struct {
	BlockUserID string
	*BaseResponse
	Namespace string
}

// Type implements Message interface
func (BlockPlayerResponse) Type() string {
	return TypeBlockPlayerResponse
}

// CancelFriendsNotif
type CancelFriendsNotif struct {
	UserID string
}

// Type implements Message interface
func (CancelFriendsNotif) Type() string {
	return TypeCancelFriendsNotif
}

// CancelFriendsRequest
type CancelFriendsRequest struct {
	FriendID string
	*BaseResponse
}

// Type implements Message interface
func (CancelFriendsRequest) Type() string {
	return TypeCancelFriendsRequest
}

// CancelFriendsResponse
type CancelFriendsResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (CancelFriendsResponse) Type() string {
	return TypeCancelFriendsResponse
}

// CancelMatchmakingRequest
type CancelMatchmakingRequest struct {
	GameMode string
	*BaseResponse
	IsTempParty bool
}

// Type implements Message interface
func (CancelMatchmakingRequest) Type() string {
	return TypeCancelMatchmakingRequest
}

// CancelMatchmakingResponse
type CancelMatchmakingResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (CancelMatchmakingResponse) Type() string {
	return TypeCancelMatchmakingResponse
}

// ChannelChatNotif
type ChannelChatNotif struct {
	ChannelSlug string
	From        string
	Payload     string
	SentAt      time.Time
}

// Type implements Message interface
func (ChannelChatNotif) Type() string {
	return TypeChannelChatNotif
}

// ClientResetRequest
type ClientResetRequest struct {
	Namespace string
	UserID    string
}

// Type implements Message interface
func (ClientResetRequest) Type() string {
	return TypeClientResetRequest
}

// ConnectNotif
type ConnectNotif struct {
	LobbySessionID string
}

// Type implements Message interface
func (ConnectNotif) Type() string {
	return TypeConnectNotif
}

// DisconnectNotif
type DisconnectNotif struct {
	ConnectionID string
	Namespace    string
}

// Type implements Message interface
func (DisconnectNotif) Type() string {
	return TypeDisconnectNotif
}

// DsNotif
type DsNotif struct {
	AlternateIps          []string
	CustomAttribute       string
	Deployment            string
	GameVersion           string
	ImageVersion          string
	IP                    string
	IsOK                  bool
	IsOverrideGameVersion bool
	LastUpdate            string
	MatchID               string
	Message               string
	Namespace             string
	PodName               string
	Port                  int
	Ports                 string
	Protocol              string
	Provider              string
	Region                string
	SessionID             string
	Status                string
}

// Type implements Message interface
func (DsNotif) Type() string {
	return TypeDsNotif
}

// ErrorNotif
type ErrorNotif struct {
	Message string
}

// Type implements Message interface
func (ErrorNotif) Type() string {
	return TypeErrorNotif
}

// ExitAllChannel
type ExitAllChannel struct {
	Namespace string
	UserID    string
}

// Type implements Message interface
func (ExitAllChannel) Type() string {
	return TypeExitAllChannel
}

// FriendsStatusRequest
type FriendsStatusRequest struct {
	*BaseResponse
}

// Type implements Message interface
func (FriendsStatusRequest) Type() string {
	return TypeFriendsStatusRequest
}

// FriendsStatusResponse
type FriendsStatusResponse struct {
	Activity     []string
	Availability []string
	FriendIds    []string
	*BaseResponse
	LastSeenAt []string
}

// Type implements Message interface
func (FriendsStatusResponse) Type() string {
	return TypeFriendsStatusResponse
}

// GetAllSessionAttributeRequest
type GetAllSessionAttributeRequest struct {
	*BaseResponse
}

// Type implements Message interface
func (GetAllSessionAttributeRequest) Type() string {
	return TypeGetAllSessionAttributeRequest
}

// Type implements Message interface
func (GetAllSessionAttributeResponse) Type() string {
	return TypeGetAllSessionAttributeResponse
}

// GetFriendshipStatusRequest
type GetFriendshipStatusRequest struct {
	FriendID string
	*BaseResponse
}

// Type implements Message interface
func (GetFriendshipStatusRequest) Type() string {
	return TypeGetFriendshipStatusRequest
}

// GetFriendshipStatusResponse
type GetFriendshipStatusResponse struct {
	FriendshipStatus string
	*BaseResponse
}

// Type implements Message interface
func (GetFriendshipStatusResponse) Type() string {
	return TypeGetFriendshipStatusResponse
}

// GetSessionAttributeRequest
type GetSessionAttributeRequest struct {
	*BaseResponse
	Key string
}

// Type implements Message interface
func (GetSessionAttributeRequest) Type() string {
	return TypeGetSessionAttributeRequest
}

// GetSessionAttributeResponse
type GetSessionAttributeResponse struct {
	*BaseResponse
	Value string
}

// Type implements Message interface
func (GetSessionAttributeResponse) Type() string {
	return TypeGetSessionAttributeResponse
}

// Type implements Message interface
func (Heartbeat) Type() string {
	return TypeHeartbeat
}

// JoinDefaultChannelRequest
type JoinDefaultChannelRequest struct {
	*BaseResponse
}

// Type implements Message interface
func (JoinDefaultChannelRequest) Type() string {
	return TypeJoinDefaultChannelRequest
}

// JoinDefaultChannelResponse
type JoinDefaultChannelResponse struct {
	ChannelSlug string
	*BaseResponse
}

// Type implements Message interface
func (JoinDefaultChannelResponse) Type() string {
	return TypeJoinDefaultChannelResponse
}

// ListIncomingFriendsRequest
type ListIncomingFriendsRequest struct {
	*BaseResponse
}

// Type implements Message interface
func (ListIncomingFriendsRequest) Type() string {
	return TypeListIncomingFriendsRequest
}

// ListIncomingFriendsResponse
type ListIncomingFriendsResponse struct {
	*BaseResponse
	UserIds []string
}

// Type implements Message interface
func (ListIncomingFriendsResponse) Type() string {
	return TypeListIncomingFriendsResponse
}

// ListOfFriendsRequest
type ListOfFriendsRequest struct {
	FriendID string
	*BaseResponse
}

// Type implements Message interface
func (ListOfFriendsRequest) Type() string {
	return TypeListOfFriendsRequest
}

// ListOfFriendsResponse
type ListOfFriendsResponse struct {
	FriendIds []string
	*BaseResponse
}

// Type implements Message interface
func (ListOfFriendsResponse) Type() string {
	return TypeListOfFriendsResponse
}

// ListOnlineFriendsRequest
type ListOnlineFriendsRequest struct {
	*BaseResponse
}

// Type implements Message interface
func (ListOnlineFriendsRequest) Type() string {
	return TypeListOnlineFriendsRequest
}

// ListOutgoingFriendsRequest
type ListOutgoingFriendsRequest struct {
	*BaseResponse
}

// Type implements Message interface
func (ListOutgoingFriendsRequest) Type() string {
	return TypeListOutgoingFriendsRequest
}

// ListOutgoingFriendsResponse
type ListOutgoingFriendsResponse struct {
	FriendIds []string
	*BaseResponse
}

// Type implements Message interface
func (ListOutgoingFriendsResponse) Type() string {
	return TypeListOutgoingFriendsResponse
}

// MatchmakingNotif
type MatchmakingNotif struct {
	CounterPartyMember []string
	MatchID            string
	Message            string
	PartyMember        []string
	ReadyDuration      int
	Status             string
}

// Type implements Message interface
func (MatchmakingNotif) Type() string {
	return TypeMatchmakingNotif
}

// MessageNotif
type MessageNotif struct {
	From string
	*BaseResponse
	Payload string
	SentAt  int
	To      string
	Topic   string
}

// Type implements Message interface
func (MessageNotif) Type() string {
	return TypeMessageNotif
}

// OfflineNotificationRequest
type OfflineNotificationRequest struct {
	*BaseResponse
}

// Type implements Message interface
func (OfflineNotificationRequest) Type() string {
	return TypeOfflineNotificationRequest
}

// OfflineNotificationResponse
type OfflineNotificationResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (OfflineNotificationResponse) Type() string {
	return TypeOfflineNotificationResponse
}

// OnlineFriends
type OnlineFriends struct {
	*BaseResponse
	OnlineFriendIds []string
}

// Type implements Message interface
func (OnlineFriends) Type() string {
	return TypeOnlineFriends
}

// Type implements Message interface
func (PartyChatNotif) Type() string {
	return TypePartyChatNotif
}

// Type implements Message interface
func (PartyChatRequest) Type() string {
	return TypePartyChatRequest
}

// PartyChatResponse
type PartyChatResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (PartyChatResponse) Type() string {
	return TypePartyChatResponse
}

// PartyCreateRequest
type PartyCreateRequest struct {
	*BaseResponse
}

// Type implements Message interface
func (PartyCreateRequest) Type() string {
	return TypePartyCreateRequest
}

// PartyCreateResponse
type PartyCreateResponse struct {
	*BaseResponse
	InvitationToken string
	Invitees        string
	LeaderID        string
	Members         string
	PartyID         string
}

// Type implements Message interface
func (PartyCreateResponse) Type() string {
	return TypePartyCreateResponse
}

// PartyDataUpdateNotif
type PartyDataUpdateNotif struct {
	CustomAttributes string
	Invitees         []string
	Leader           string
	Members          []string
	Namespace        string
	PartyID          string
	UpdatedAt        int
}

// Type implements Message interface
func (PartyDataUpdateNotif) Type() string {
	return TypePartyDataUpdateNotif
}

// PartyGetInvitedNotif
type PartyGetInvitedNotif struct {
	From            string
	InvitationToken string
	PartyID         string
}

// Type implements Message interface
func (PartyGetInvitedNotif) Type() string {
	return TypePartyGetInvitedNotif
}

// PartyInfoRequest
type PartyInfoRequest struct {
	*BaseResponse
}

// Type implements Message interface
func (PartyInfoRequest) Type() string {
	return TypePartyInfoRequest
}

// PartyInfoResponse
type PartyInfoResponse struct {
	CustomAttributes string
	*BaseResponse
	InvitationToken string
	Invitees        string
	LeaderID        string
	Members         string
	PartyID         string
}

// Type implements Message interface
func (PartyInfoResponse) Type() string {
	return TypePartyInfoResponse
}

// PartyInviteNotif
type PartyInviteNotif struct {
	InviteeID string
	InviterID string
}

// Type implements Message interface
func (PartyInviteNotif) Type() string {
	return TypePartyInviteNotif
}

// PartyInviteRequest
type PartyInviteRequest struct {
	FriendID string
	*BaseResponse
}

// Type implements Message interface
func (PartyInviteRequest) Type() string {
	return TypePartyInviteRequest
}

// PartyInviteResponse
type PartyInviteResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (PartyInviteResponse) Type() string {
	return TypePartyInviteResponse
}

// PartyJoinNotif
type PartyJoinNotif struct {
	UserID string
}

// Type implements Message interface
func (PartyJoinNotif) Type() string {
	return TypePartyJoinNotif
}

// PartyJoinRequest
type PartyJoinRequest struct {
	*BaseResponse
	InvitationToken string
	PartyID         string
}

// Type implements Message interface
func (PartyJoinRequest) Type() string {
	return TypePartyJoinRequest
}

// PartyJoinResponse
type PartyJoinResponse struct {
	*BaseResponse
	InvitationToken string
	Invitees        string
	LeaderID        string
	Members         string
	PartyID         string
}

// Type implements Message interface
func (PartyJoinResponse) Type() string {
	return TypePartyJoinResponse
}

// PartyKickNotif
type PartyKickNotif struct {
	LeaderID string
	PartyID  string
	UserID   string
}

// Type implements Message interface
func (PartyKickNotif) Type() string {
	return TypePartyKickNotif
}

// PartyKickRequest
type PartyKickRequest struct {
	*BaseResponse
	MemberID string
}

// Type implements Message interface
func (PartyKickRequest) Type() string {
	return TypePartyKickRequest
}

// PartyKickResponse
type PartyKickResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (PartyKickResponse) Type() string {
	return TypePartyKickResponse
}

// PartyLeaveNotif
type PartyLeaveNotif struct {
	LeaderID string
	UserID   string
}

// Type implements Message interface
func (PartyLeaveNotif) Type() string {
	return TypePartyLeaveNotif
}

// PartyLeaveRequest
type PartyLeaveRequest struct {
	*BaseResponse
	IgnoreUserRegistry bool
}

// Type implements Message interface
func (PartyLeaveRequest) Type() string {
	return TypePartyLeaveRequest
}

// PartyLeaveResponse
type PartyLeaveResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (PartyLeaveResponse) Type() string {
	return TypePartyLeaveResponse
}

// PartyPromoteLeaderRequest
type PartyPromoteLeaderRequest struct {
	*BaseResponse
	NewLeaderUserID string
}

// Type implements Message interface
func (PartyPromoteLeaderRequest) Type() string {
	return TypePartyPromoteLeaderRequest
}

// PartyPromoteLeaderResponse
type PartyPromoteLeaderResponse struct {
	*BaseResponse
	InvitationToken string
	Invitees        string
	LeaderID        string
	Members         string
	PartyID         string
}

// Type implements Message interface
func (PartyPromoteLeaderResponse) Type() string {
	return TypePartyPromoteLeaderResponse
}

// PartyRejectNotif
type PartyRejectNotif struct {
	LeaderID string
	PartyID  string
	UserID   string
}

// Type implements Message interface
func (PartyRejectNotif) Type() string {
	return TypePartyRejectNotif
}

// PartyRejectRequest
type PartyRejectRequest struct {
	*BaseResponse
	InvitationToken string
	PartyID         string
}

// Type implements Message interface
func (PartyRejectRequest) Type() string {
	return TypePartyRejectRequest
}

// PartyRejectResponse
type PartyRejectResponse struct {
	*BaseResponse
	PartyID string
}

// Type implements Message interface
func (PartyRejectResponse) Type() string {
	return TypePartyRejectResponse
}

// PersonalChatHistoryRequest
type PersonalChatHistoryRequest struct {
	FriendID string
	*BaseResponse
}

// Type implements Message interface
func (PersonalChatHistoryRequest) Type() string {
	return TypePersonalChatHistoryRequest
}

// PersonalChatHistoryResponse
type PersonalChatHistoryResponse struct {
	Chat     string
	FriendID string
	*BaseResponse
}

// Type implements Message interface
func (PersonalChatHistoryResponse) Type() string {
	return TypePersonalChatHistoryResponse
}

// Type implements Message interface
func (PersonalChatNotif) Type() string {
	return TypePersonalChatNotif
}

// Type implements Message interface
func (PersonalChatRequest) Type() string {
	return TypePersonalChatRequest
}

// PersonalChatResponse
type PersonalChatResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (PersonalChatResponse) Type() string {
	return TypePersonalChatResponse
}

// RefreshTokenRequest
type RefreshTokenRequest struct {
	*BaseResponse
	Token string
}

// Type implements Message interface
func (RefreshTokenRequest) Type() string {
	return TypeRefreshTokenRequest
}

// RefreshTokenResponse
type RefreshTokenResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (RefreshTokenResponse) Type() string {
	return TypeRefreshTokenResponse
}

// RejectFriendsNotif
type RejectFriendsNotif struct {
	UserID string
}

// Type implements Message interface
func (RejectFriendsNotif) Type() string {
	return TypeRejectFriendsNotif
}

// RejectFriendsRequest
type RejectFriendsRequest struct {
	FriendID string
	*BaseResponse
}

// Type implements Message interface
func (RejectFriendsRequest) Type() string {
	return TypeRejectFriendsRequest
}

// RejectFriendsResponse
type RejectFriendsResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (RejectFriendsResponse) Type() string {
	return TypeRejectFriendsResponse
}

// RematchmakingNotif
type RematchmakingNotif struct {
	BanDuration int
}

// Type implements Message interface
func (RematchmakingNotif) Type() string {
	return TypeRematchmakingNotif
}

// RequestFriendsNotif
type RequestFriendsNotif struct {
	FriendID string
}

// Type implements Message interface
func (RequestFriendsNotif) Type() string {
	return TypeRequestFriendsNotif
}

// RequestFriendsRequest
type RequestFriendsRequest struct {
	FriendID string
	*BaseResponse
}

// Type implements Message interface
func (RequestFriendsRequest) Type() string {
	return TypeRequestFriendsRequest
}

// RequestFriendsResponse
type RequestFriendsResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (RequestFriendsResponse) Type() string {
	return TypeRequestFriendsResponse
}

// SendChannelChatRequest
type SendChannelChatRequest struct {
	ChannelSlug string
	*BaseResponse
	Payload string
}

// Type implements Message interface
func (SendChannelChatRequest) Type() string {
	return TypeSendChannelChatRequest
}

// SendChannelChatResponse
type SendChannelChatResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (SendChannelChatResponse) Type() string {
	return TypeSendChannelChatResponse
}

// SetReadyConsentNotif
type SetReadyConsentNotif struct {
	MatchID string
	UserID  string
}

// Type implements Message interface
func (SetReadyConsentNotif) Type() string {
	return TypeSetReadyConsentNotif
}

// SetReadyConsentRequest
type SetReadyConsentRequest struct {
	*BaseResponse
	MatchID string
}

// Type implements Message interface
func (SetReadyConsentRequest) Type() string {
	return TypeSetReadyConsentRequest
}

// SetReadyConsentResponse
type SetReadyConsentResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (SetReadyConsentResponse) Type() string {
	return TypeSetReadyConsentResponse
}

// SetSessionAttributeRequest
type SetSessionAttributeRequest struct {
	*BaseResponse
	Key       string
	Namespace string
	Value     string
}

// Type implements Message interface
func (SetSessionAttributeRequest) Type() string {
	return TypeSetSessionAttributeRequest
}

// SetSessionAttributeResponse
type SetSessionAttributeResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (SetSessionAttributeResponse) Type() string {
	return TypeSetSessionAttributeResponse
}

// SetUserStatusRequest
type SetUserStatusRequest struct {
	Activity     string
	Availability int
	*BaseResponse
}

// Type implements Message interface
func (SetUserStatusRequest) Type() string {
	return TypeSetUserStatusRequest
}

// SetUserStatusResponse
type SetUserStatusResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (SetUserStatusResponse) Type() string {
	return TypeSetUserStatusResponse
}

// ShutdownNotif
type ShutdownNotif struct {
	Message string
}

// Type implements Message interface
func (ShutdownNotif) Type() string {
	return TypeShutdownNotif
}

// SignalingP2PNotif
type SignalingP2PNotif struct {
	DestinationID string
	Message       string
}

// Type implements Message interface
func (SignalingP2PNotif) Type() string {
	return TypeSignalingP2PNotif
}

// Type implements Message interface
func (StartMatchmakingRequest) Type() string {
	return TypeStartMatchmakingRequest
}

// Type implements Message interface
func (StartMatchmakingResponse) Type() string {
	return TypeStartMatchmakingResponse
}

// UnblockPlayerNotif
type UnblockPlayerNotif struct {
	UnblockedUserID string
	UserID          string
}

// Type implements Message interface
func (UnblockPlayerNotif) Type() string {
	return TypeUnblockPlayerNotif
}

// UnblockPlayerRequest
type UnblockPlayerRequest struct {
	*BaseResponse
	Namespace       string
	UnblockedUserID string
}

// Type implements Message interface
func (UnblockPlayerRequest) Type() string {
	return TypeUnblockPlayerRequest
}

// UnblockPlayerResponse
type UnblockPlayerResponse struct {
	*BaseResponse
	Namespace       string
	UnblockedUserID string
}

// Type implements Message interface
func (UnblockPlayerResponse) Type() string {
	return TypeUnblockPlayerResponse
}

// UnfriendNotif
type UnfriendNotif struct {
	FriendID string
}

// Type implements Message interface
func (UnfriendNotif) Type() string {
	return TypeUnfriendNotif
}

// UnfriendRequest
type UnfriendRequest struct {
	FriendID string
	*BaseResponse
}

// Type implements Message interface
func (UnfriendRequest) Type() string {
	return TypeUnfriendRequest
}

// UnfriendResponse
type UnfriendResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (UnfriendResponse) Type() string {
	return TypeUnfriendResponse
}

// Type implements Message interface
func (UserBannedNotification) Type() string {
	return TypeUserBannedNotification
}

// UserMetricRequest
type UserMetricRequest struct {
	*BaseResponse
}

// Type implements Message interface
func (UserMetricRequest) Type() string {
	return TypeUserMetricRequest
}

// UserMetricResponse
type UserMetricResponse struct {
	*BaseResponse
	PlayerCount int
}

// Type implements Message interface
func (UserMetricResponse) Type() string {
	return TypeUserMetricResponse
}

// UserStatusNotif
type UserStatusNotif struct {
	Activity     string
	Availability int
	LastSeenAt   string
	UserID       string
}

// Type implements Message interface
func (UserStatusNotif) Type() string {
	return TypeUserStatusNotif
}
