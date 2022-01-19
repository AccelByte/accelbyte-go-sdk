// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o_s_a_m_l_2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// platformAuthenticateSAMLV3HandlerCmd represents the platformAuthenticateSAMLV3Handler command
var platformAuthenticateSAMLV3HandlerCmd = &cobra.Command{
	Use:   "platformAuthenticateSAMLV3Handler",
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
	cmd.RootCmd.AddCommand(platformAuthenticateSAMLV3HandlerCmd)
	platformAuthenticateSAMLV3HandlerCmd.Flags().StringP("platformId", "p", " ", "Platform id")
	_ = platformAuthenticateSAMLV3HandlerCmd.MarkFlagRequired("platformId")
	platformAuthenticateSAMLV3HandlerCmd.Flags().StringP("code", "c", " ", "Code")
	platformAuthenticateSAMLV3HandlerCmd.Flags().StringP("error", "e", " ", "Error")
	platformAuthenticateSAMLV3HandlerCmd.Flags().StringP("state", "s", " ", "State")
	_ = platformAuthenticateSAMLV3HandlerCmd.MarkFlagRequired("state")
}
