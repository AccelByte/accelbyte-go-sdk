// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// platformAuthenticationV3Cmd represents the platformAuthenticationV3 command
var platformAuthenticationV3Cmd = &cobra.Command{
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
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := oAuth20ExtensionService.PlatformAuthenticationV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(platformAuthenticationV3Cmd)
	platformAuthenticationV3Cmd.Flags().StringP("platformId", "p", " ", "Platform id")
	_ = platformAuthenticationV3Cmd.MarkFlagRequired("platformId")
	platformAuthenticationV3Cmd.Flags().StringP("code", "c", " ", "Code")
	platformAuthenticationV3Cmd.Flags().StringP("error", "e", " ", "Error")
	platformAuthenticationV3Cmd.Flags().StringP("openid.assoc_handle", "o", " ", "Openid assoc handle")
	platformAuthenticationV3Cmd.Flags().StringP("openid.claimed_id", "o", " ", "Openid claimed id")
	platformAuthenticationV3Cmd.Flags().StringP("openid.identity", "o", " ", "Openid identity")
	platformAuthenticationV3Cmd.Flags().StringP("openid.mode", "o", " ", "Openid mode")
	platformAuthenticationV3Cmd.Flags().StringP("openid.ns", "o", " ", "Openid ns")
	platformAuthenticationV3Cmd.Flags().StringP("openid.op_endpoint", "o", " ", "Openid op endpoint")
	platformAuthenticationV3Cmd.Flags().StringP("openid.response_nonce", "o", " ", "Openid response nonce")
	platformAuthenticationV3Cmd.Flags().StringP("openid.return_to", "o", " ", "Openid return to")
	platformAuthenticationV3Cmd.Flags().StringP("openid.sig", "o", " ", "Openid sig")
	platformAuthenticationV3Cmd.Flags().StringP("openid.signed", "o", " ", "Openid signed")
	platformAuthenticationV3Cmd.Flags().StringP("state", "s", " ", "State")
	_ = platformAuthenticationV3Cmd.MarkFlagRequired("state")
}
