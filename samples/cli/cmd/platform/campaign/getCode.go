// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package campaign

import (
	"encoding/json"
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
		input := &campaign.GetCodeParams{
			Code:       code,
			Namespace:  namespace,
			Redeemable: &redeemable,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := campaignService.GetCode(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	GetCodeCmd.Flags().StringP("code", "", "", "Code")
	_ = GetCodeCmd.MarkFlagRequired("code")
	GetCodeCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetCodeCmd.MarkFlagRequired("namespace")
	GetCodeCmd.Flags().BoolP("redeemable", "", false, "Redeemable")
}
