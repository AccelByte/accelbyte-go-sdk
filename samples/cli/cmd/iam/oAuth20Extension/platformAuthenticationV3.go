// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20Extension

import (
	"net/http"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PlatformAuthenticationV3Cmd represents the PlatformAuthenticationV3 command
var PlatformAuthenticationV3Cmd = &cobra.Command{
	Use:   "platformAuthenticationV3",
	Short: "Platform authentication V3",
	Long:  `Platform authentication V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		platformId, _ := cmd.Flags().GetString("platformId")
		state, _ := cmd.Flags().GetString("state")
		code, _ := cmd.Flags().GetString("code")
		error_, _ := cmd.Flags().GetString("error")
		openidAssocHandle, _ := cmd.Flags().GetString("openidAssocHandle")
		openidClaimedId, _ := cmd.Flags().GetString("openidClaimedId")
		openidIdentity, _ := cmd.Flags().GetString("openidIdentity")
		openidMode, _ := cmd.Flags().GetString("openidMode")
		openidNs, _ := cmd.Flags().GetString("openidNs")
		openidOpEndpoint, _ := cmd.Flags().GetString("openidOpEndpoint")
		openidResponseNonce, _ := cmd.Flags().GetString("openidResponseNonce")
		openidReturnTo, _ := cmd.Flags().GetString("openidReturnTo")
		openidSig, _ := cmd.Flags().GetString("openidSig")
		openidSigned, _ := cmd.Flags().GetString("openidSigned")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth2_0_extension.PlatformAuthenticationV3Params{
			PlatformID:          platformId,
			Code:                &code,
			Error:               &error_,
			OpenidAssocHandle:   &openidAssocHandle,
			OpenidClaimedID:     &openidClaimedId,
			OpenidIdentity:      &openidIdentity,
			OpenidMode:          &openidMode,
			OpenidNs:            &openidNs,
			OpenidOpEndpoint:    &openidOpEndpoint,
			OpenidResponseNonce: &openidResponseNonce,
			OpenidReturnTo:      &openidReturnTo,
			OpenidSig:           &openidSig,
			OpenidSigned:        &openidSigned,
			State:               state,
			HTTPClient:          httpClient,
		}
		_, errInput := oAuth20ExtensionService.PlatformAuthenticationV3Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PlatformAuthenticationV3Cmd.Flags().StringP("platformId", "", "", "Platform id")
	_ = PlatformAuthenticationV3Cmd.MarkFlagRequired("platformId")
	PlatformAuthenticationV3Cmd.Flags().StringP("code", "", "", "Code")
	PlatformAuthenticationV3Cmd.Flags().StringP("error", "", "", "Error")
	PlatformAuthenticationV3Cmd.Flags().StringP("openidAssocHandle", "", "", "Openid assoc handle")
	PlatformAuthenticationV3Cmd.Flags().StringP("openidClaimedId", "", "", "Openid claimed id")
	PlatformAuthenticationV3Cmd.Flags().StringP("openidIdentity", "", "", "Openid identity")
	PlatformAuthenticationV3Cmd.Flags().StringP("openidMode", "", "", "Openid mode")
	PlatformAuthenticationV3Cmd.Flags().StringP("openidNs", "", "", "Openid ns")
	PlatformAuthenticationV3Cmd.Flags().StringP("openidOpEndpoint", "", "", "Openid op endpoint")
	PlatformAuthenticationV3Cmd.Flags().StringP("openidResponseNonce", "", "", "Openid response nonce")
	PlatformAuthenticationV3Cmd.Flags().StringP("openidReturnTo", "", "", "Openid return to")
	PlatformAuthenticationV3Cmd.Flags().StringP("openidSig", "", "", "Openid sig")
	PlatformAuthenticationV3Cmd.Flags().StringP("openidSigned", "", "", "Openid signed")
	PlatformAuthenticationV3Cmd.Flags().StringP("state", "", "", "State")
	_ = PlatformAuthenticationV3Cmd.MarkFlagRequired("state")
}
