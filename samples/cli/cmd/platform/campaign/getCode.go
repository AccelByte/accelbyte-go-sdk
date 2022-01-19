// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/campaign"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getCodeCmd represents the getCode command
var getCodeCmd = &cobra.Command{
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
		input := &campaign.GetCodeParams{
			Code:       code,
			Namespace:  namespace,
			Redeemable: &redeemable,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := campaignService.GetCode(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getCodeCmd)
	getCodeCmd.Flags().StringP("code", "c", " ", "Code")
	_ = getCodeCmd.MarkFlagRequired("code")
	getCodeCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getCodeCmd.MarkFlagRequired("namespace")
	getCodeCmd.Flags().BoolP("redeemable", "r", false, "Redeemable")
}
