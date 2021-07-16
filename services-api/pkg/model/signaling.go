// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package model

// SignalingP2P is model for signaling for game P2P connection request
type SignalingP2P struct {
	*BaseRequest
	DestinationID string
	Message       string
}

// Type implements Message interface
func (SignalingP2P) Type() string {
	return TypeSignalingP2PNotif
}
