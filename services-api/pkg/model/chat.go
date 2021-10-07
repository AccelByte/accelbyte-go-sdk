// Copyright (c) 2017-2019 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package model

import (
	"time"
)

type Chat interface {
	Len() int
}

// ChatMessage contains user's chat
type ChatMessage struct {
	ID         string
	From       string
	To         string
	Payload    string
	ReceivedAt int64
}

// PersonalChatRequest contains user's personal chat
type PersonalChatRequest struct {
	*ChatMessage
}

// Type implements Message interface
func (PersonalChatRequest) Type() string {
	return TypePersonalChatRequest
}

// Len implements Chat interface
func (c PersonalChatRequest) Len() int {
	return len(c.Payload)
}

// PersonalChatResponse response message after sending chat request
type PersonalChatResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (PersonalChatResponse) Type() string {
	return TypePersonalChatResponse
}

// PersonalChatNotif is the notif message for incoming chat message
type PersonalChatNotif struct {
	*ChatMessage
}

// Type implements Message interface
func (PersonalChatNotif) Type() string {
	return TypePersonalChatNotif
}

// PartyChatRequest contains user's party chat
type PartyChatRequest struct {
	*ChatMessage
}

// Type implements Message interface
func (PartyChatRequest) Type() string {
	return TypePartyChatRequest
}

// Len implements Chat interface
func (c PartyChatRequest) Len() int {
	return len(c.Payload)
}

// PartyChatResponse contains user's party chat
type PartyChatResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (PartyChatResponse) Type() string {
	return TypePartyChatResponse
}

// PartyChatNotif contains user's party chat
type PartyChatNotif struct {
	*ChatMessage
}

// Type implements Message interface
func (PartyChatNotif) Type() string {
	return TypePartyChatNotif
}

//
// PersonalChatHistoryRequest list of user's personal chat request
type PersonalChatHistoryRequest struct {
	*BaseRequest
	FriendID string
}

// Type implements Message interface
func (PersonalChatHistoryRequest) Type() string {
	return TypePersonalChatHistoryRequest
}

// PersonalChatHistoryResponse list of user's personal chat response
type PersonalChatHistoryResponse struct {
	*BaseResponse
	FriendID string
	Chat     string
}

// Type implements Message interface
func (PersonalChatHistoryResponse) Type() string {
	return TypePersonalChatHistoryResponse
}

// JoinDefaultChannelRequest is the request models
// for join default chat channel
type JoinDefaultChannelRequest struct {
	*BaseRequest
}

// Type implements Message interface
func (JoinDefaultChannelRequest) Type() string {
	return TypeJoinDefaultChannelRequest
}

// ExitAllChannel is the request models
// for join exit all chat channel request
type ExitAllChannel struct {
	UserID    string
	Namespace string
}

// Type implements Message interface
func (ExitAllChannel) Type() string {
	return TypeExitAllChannel
}

// JoinDefaultChannelResponse is the response models
// for join default chat channel response
type JoinDefaultChannelResponse struct {
	*BaseResponse
	ChannelSlug string `json:"channelSlug"`
}

// Type implements Message interface
func (JoinDefaultChannelResponse) Type() string {
	return TypeJoinDefaultChannelResponse
}

// SendChannelChatRequest is the request models
// for sending chat channel
type SendChannelChatRequest struct {
	*BaseRequest
	ChannelSlug string
	Payload     string
}

// Type implements Message interface
func (SendChannelChatRequest) Type() string {
	return TypeSendChannelChatRequest
}

// Len implements Chat interface
func (c SendChannelChatRequest) Len() int {
	return len(c.Payload)
}

// SendChannelChatResponse is the response models
// for sending default chat channel response
type SendChannelChatResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (SendChannelChatResponse) Type() string {
	return TypeSendChannelChatResponse
}

// ChannelChatNotif is the response models
// for sending default chat channel response
type ChannelChatNotif struct {
	From        string
	ChannelSlug string
	Payload     string
	SentAt      time.Time
}

// Type implements Message interface
func (ChannelChatNotif) Type() string {
	return TypeChannelChatNotif
}
