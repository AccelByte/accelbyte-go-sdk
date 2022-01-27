// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package ssoSAML20

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o_s_a_m_l_2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PlatformAuthenticateSAMLV3HandlerCmd represents the PlatformAuthenticateSAMLV3Handler command
var PlatformAuthenticateSAMLV3HandlerCmd = &cobra.Command{
	Use:   "PlatformAuthenticateSAMLV3Handler",
	Short: "Platform authenticate SAMLV3 handler",
	Long:  `Platform authenticate SAMLV3 handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ssoSAML20Service := &iam.SSOSAML20Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		platformId, _ := cmd.Flags().GetString("platformId")
		state, _ := cmd.Flags().GetString("state")
		code, _ := cmd.Flags().GetString("code")
		error_, _ := cmd.Flags().GetString("error")
		input := &s_s_o_s_a_m_l_2_0.PlatformAuthenticateSAMLV3HandlerParams{
			PlatformID: platformId,
			Code:       &code,
			Error:      &error_,
			State:      state,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := ssoSAML20Service.PlatformAuthenticateSAMLV3Handler(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	PlatformAuthenticateSAMLV3HandlerCmd.Flags().StringP("platformId", "pd", " ", "Platform id")
	_ = PlatformAuthenticateSAMLV3HandlerCmd.MarkFlagRequired("platformId")
	PlatformAuthenticateSAMLV3HandlerCmd.Flags().StringP("code", "ce", " ", "Code")
	PlatformAuthenticateSAMLV3HandlerCmd.Flags().StringP("error", "er", " ", "Error")
	PlatformAuthenticateSAMLV3HandlerCmd.Flags().StringP("state", "se", " ", "State")
	_ = PlatformAuthenticateSAMLV3HandlerCmd.MarkFlagRequired("state")
}
