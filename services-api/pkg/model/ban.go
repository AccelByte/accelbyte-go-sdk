// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package model

// UserBannedNotification is the response models
// for when user got banned
type UserBannedNotification struct {
	*BaseResponse
	UserID    string `json:"userId"`
	Namespace string `json:"namespace"`
	Ban       string `json:"ban"`
	EndDate   string `json:"endDate"`
	Reason    string `json:"reason"`
	Enable    bool   `json:"enable"`
}

// Type implements Message interface
func (UserBannedNotification) Type() string {
	return TypeUserBannedNotification
}

// UserUnbannedNotification is the response models
// for when user is unbanned
type UserUnbannedNotification struct {
	*BaseResponse
	UserID    string `json:"userId"`
	Namespace string `json:"namespace"`
	Ban       string `json:"ban"`
	EndDate   string `json:"endDate"`
	Reason    string `json:"reason"`
	Enable    bool   `json:"enable"`
}

// Type implements Message interface
func (UserUnbannedNotification) Type() string {
	return TypeUserUnbannedNotification
}
