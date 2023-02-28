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

// ValidateOneTimeLinkingCodeV3Cmd represents the ValidateOneTimeLinkingCodeV3 command
var ValidateOneTimeLinkingCodeV3Cmd = &cobra.Command{
	Use:   "validateOneTimeLinkingCodeV3",
	Short: "Validate one time linking code V3",
	Long:  `Validate one time linking code V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		oneTimeLinkCode, _ := cmd.Flags().GetString("oneTimeLinkCode")
		input := &o_auth2_0_extension.ValidateOneTimeLinkingCodeV3Params{
			OneTimeLinkCode: oneTimeLinkCode,
		}
		ok, errOK := oAuth20ExtensionService.ValidateOneTimeLinkingCodeV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ValidateOneTimeLinkingCodeV3Cmd.Flags().String("oneTimeLinkCode", "", "One time link code")
	_ = ValidateOneTimeLinkingCodeV3Cmd.MarkFlagRequired("oneTimeLinkCode")
}
