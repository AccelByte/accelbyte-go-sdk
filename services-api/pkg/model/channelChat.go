// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package model

import (
	"time"
)

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
