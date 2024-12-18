// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// CreateCodesCmd represents the CreateCodes command
var CreateCodesCmd = &cobra.Command{
	Use:   "createCodes",
	Short: "Create codes",
	Long:  `Create codes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.CodeCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		campaignId, _ := cmd.Flags().GetString("campaignId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &campaign.CreateCodesParams{
			Body:       body,
			CampaignID: campaignId,
			Namespace:  namespace,
		}
		created, errCreated := campaignService.CreateCodesShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreateCodesCmd.Flags().String("body", "", "Body")
	_ = CreateCodesCmd.MarkFlagRequired("body")
	CreateCodesCmd.Flags().String("campaignId", "", "Campaign id")
	_ = CreateCodesCmd.MarkFlagRequired("campaignId")
	CreateCodesCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateCodesCmd.MarkFlagRequired("namespace")
}
