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

// createCodesCmd represents the createCodes command
var createCodesCmd = &cobra.Command{
	Use:   "createCodes",
	Short: "Create codes",
	Long:  `Create codes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		campaignId, _ := cmd.Flags().GetString("campaignId")
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.CodeCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &campaign.CreateCodesParams{
			Body:       body,
			CampaignID: campaignId,
			Namespace:  namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := campaignService.CreateCodes(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(createCodesCmd)
	createCodesCmd.Flags().StringP("body", "by", " ", "Body")
	createCodesCmd.Flags().StringP("campaignId", "cd", " ", "Campaign id")
	_ = createCodesCmd.MarkFlagRequired("campaignId")
	createCodesCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = createCodesCmd.MarkFlagRequired("namespace")
}
