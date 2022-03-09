// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package campaign

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/campaign"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ApplyUserRedemptionCmd represents the ApplyUserRedemption command
var ApplyUserRedemptionCmd = &cobra.Command{
	Use:   "applyUserRedemption",
	Short: "Apply user redemption",
	Long:  `Apply user redemption`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.RedeemRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &campaign.ApplyUserRedemptionParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := campaignService.ApplyUserRedemption(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	ApplyUserRedemptionCmd.Flags().StringP("body", "", "", "Body")
	ApplyUserRedemptionCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ApplyUserRedemptionCmd.MarkFlagRequired("namespace")
	ApplyUserRedemptionCmd.Flags().StringP("userId", "", "", "User id")
	_ = ApplyUserRedemptionCmd.MarkFlagRequired("userId")
}
