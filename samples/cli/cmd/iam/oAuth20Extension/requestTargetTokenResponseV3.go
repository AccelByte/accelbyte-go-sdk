// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20Extension

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RequestTargetTokenResponseV3Cmd represents the RequestTargetTokenResponseV3 command
var RequestTargetTokenResponseV3Cmd = &cobra.Command{
	Use:   "requestTargetTokenResponseV3",
	Short: "Request target token response V3",
	Long:  `Request target token response V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:           factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			ConfigRepository: &repository.ConfigRepositoryImpl{},
			TokenRepository:  &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		additionalData, _ := cmd.Flags().GetString("additionalData")
		input := &o_auth2_0_extension.RequestTargetTokenResponseV3Params{
			AdditionalData: &additionalData,
			Code:           code,
		}
		ok, errOK := oAuth20ExtensionService.RequestTargetTokenResponseV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RequestTargetTokenResponseV3Cmd.Flags().String("additionalData", "", "Additional data")
	RequestTargetTokenResponseV3Cmd.Flags().String("code", "", "Code")
	_ = RequestTargetTokenResponseV3Cmd.MarkFlagRequired("code")
}
