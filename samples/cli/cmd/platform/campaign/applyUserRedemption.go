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
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// applyUserRedemptionCmd represents the applyUserRedemption command
var applyUserRedemptionCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(applyUserRedemptionCmd)
	applyUserRedemptionCmd.Flags().StringP("body", "by", " ", "Body")
	applyUserRedemptionCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = applyUserRedemptionCmd.MarkFlagRequired("namespace")
	applyUserRedemptionCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = applyUserRedemptionCmd.MarkFlagRequired("userId")
}
