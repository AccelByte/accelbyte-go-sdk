// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package campaign

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/campaign"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetCodeCmd represents the GetCode command
var GetCodeCmd = &cobra.Command{
	Use:   "getCode",
	Short: "Get code",
	Long:  `Get code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		redeemable, _ := cmd.Flags().GetBool("redeemable")
		withBatchName, _ := cmd.Flags().GetBool("withBatchName")
		input := &campaign.GetCodeParams{
			Code:          code,
			Namespace:     namespace,
			Redeemable:    &redeemable,
			WithBatchName: &withBatchName,
		}
		ok, errOK := campaignService.GetCodeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetCodeCmd.Flags().String("code", "", "Code")
	_ = GetCodeCmd.MarkFlagRequired("code")
	GetCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = GetCodeCmd.MarkFlagRequired("namespace")
	GetCodeCmd.Flags().Bool("redeemable", false, "Redeemable")
	GetCodeCmd.Flags().Bool("withBatchName", false, "With batch name")
}
