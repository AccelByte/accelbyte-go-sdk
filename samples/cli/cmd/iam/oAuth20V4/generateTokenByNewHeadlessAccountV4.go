// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20V4

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GenerateTokenByNewHeadlessAccountV4Cmd represents the GenerateTokenByNewHeadlessAccountV4 command
var GenerateTokenByNewHeadlessAccountV4Cmd = &cobra.Command{
	Use:   "generateTokenByNewHeadlessAccountV4",
	Short: "Generate token by new headless account V4",
	Long:  `Generate token by new headless account V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20V4Service := &iam.OAuth20v4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		linkingToken, _ := cmd.Flags().GetString("linkingToken")
		additionalData, _ := cmd.Flags().GetString("additionalData")
		extendExp, _ := cmd.Flags().GetBool("extendExp")
		input := &o_auth2_0_v4.GenerateTokenByNewHeadlessAccountV4Params{
			AdditionalData: &additionalData,
			ExtendExp:      &extendExp,
			LinkingToken:   linkingToken,
		}
		ok, errOK := oAuth20V4Service.GenerateTokenByNewHeadlessAccountV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GenerateTokenByNewHeadlessAccountV4Cmd.Flags().String("additionalData", "", "Additional data")
	GenerateTokenByNewHeadlessAccountV4Cmd.Flags().Bool("extendExp", false, "Extend exp")
	GenerateTokenByNewHeadlessAccountV4Cmd.Flags().String("linkingToken", "", "Linking token")
	_ = GenerateTokenByNewHeadlessAccountV4Cmd.MarkFlagRequired("linkingToken")
}
