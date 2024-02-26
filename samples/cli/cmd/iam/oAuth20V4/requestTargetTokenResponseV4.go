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

// RequestTargetTokenResponseV4Cmd represents the RequestTargetTokenResponseV4 command
var RequestTargetTokenResponseV4Cmd = &cobra.Command{
	Use:   "requestTargetTokenResponseV4",
	Short: "Request target token response V4",
	Long:  `Request target token response V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20V4Service := &iam.OAuth20v4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		additionalData, _ := cmd.Flags().GetString("additionalData")
		input := &o_auth2_0_v4.RequestTargetTokenResponseV4Params{
			AdditionalData: &additionalData,
			Code:           code,
		}
		ok, errOK := oAuth20V4Service.RequestTargetTokenResponseV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RequestTargetTokenResponseV4Cmd.Flags().String("additionalData", "", "Additional data")
	RequestTargetTokenResponseV4Cmd.Flags().String("code", "", "Code")
	_ = RequestTargetTokenResponseV4Cmd.MarkFlagRequired("code")
}
