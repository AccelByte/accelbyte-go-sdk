// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package validator

import (
	"context"
	"crypto/rsa"
	"encoding/base64"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"

	"github.com/AccelByte/bloom"
)

type AuthTokenValidator interface {
	Initialize(ctx context.Context)
	Validate(token string, permission *iam.Permission, namespace *string, userId *string) error
}

type TokenValidator struct {
	AuthService     iam.OAuth20Service
	RefreshInterval time.Duration

	Filter                *bloom.Filter
	JwkSet                *iamclientmodels.OauthcommonJWKSet
	JwtClaims             iam.JWTClaims
	JwtEncoding           base64.Encoding
	LocalValidationActive bool
	PublicKeys            map[string]*rsa.PublicKey
	RevokedUsers          map[string]time.Time
	Roles                 map[string]*iamclientmodels.ModelRolePermissionResponseV3

	impl iam.AuthTokenValidator
	ctx  context.Context
}

func (v *TokenValidator) initImpl() {
	if v.impl == nil {
		v.impl = iam.NewTokenValidator(v.AuthService, v.RefreshInterval)
	}
}

func (v *TokenValidator) Initialize(ctx context.Context) {
	v.initImpl()
	v.impl.Initialize(ctx)
}

func (v *TokenValidator) Validate(token string, permission *iam.Permission, namespace *string, userId *string) error {
	if permission == nil {
		return v.impl.Validate(token, nil, namespace, userId)
	}

	return v.impl.Validate(token, &iam.Permission{
		Resource: permission.Resource,
		Action:   permission.Action,
	}, namespace, userId)
}
