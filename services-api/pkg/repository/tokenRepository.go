// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package repository

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

type TokenRepository interface {
	Store(accessToken iamclientmodels.OauthmodelTokenResponseV3) error
	GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error)
	RemoveToken() error
}
