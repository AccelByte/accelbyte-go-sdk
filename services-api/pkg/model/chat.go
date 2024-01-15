// Copyright (c) 2017-2019 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package model

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

// Len implements Chat interface
func (c PersonalChatRequest) Len() int {
	return len(c.Payload)
}

// PersonalChatNotif is the notif message for incoming chat message
type PersonalChatNotif struct {
	*ChatMessage
}

// PartyChatRequest contains user's party chat
type PartyChatRequest struct {
	*ChatMessage
}

// Len implements Chat interface
func (c PartyChatRequest) Len() int {
	return len(c.Payload)
}

// PartyChatNotif contains user's party chat
type PartyChatNotif struct {
	*ChatMessage
}

// Len implements Chat interface
func (c SendChannelChatRequest) Len() int {
	return len(c.Payload)
}
