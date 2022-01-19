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

// queryCampaignsCmd represents the queryCampaigns command
var queryCampaignsCmd = &cobra.Command{
	Use:   "queryCampaigns",
	Short: "Query campaigns",
	Long:  `Query campaigns`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt32("offset")
		tag, _ := cmd.Flags().GetString("tag")
		input := &campaign.QueryCampaignsParams{
			Namespace: namespace,
			Limit:     &limit,
			Name:      &name,
			Offset:    &offset,
			Tag:       &tag,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := campaignService.QueryCampaigns(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryCampaignsCmd)
	queryCampaignsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = queryCampaignsCmd.MarkFlagRequired("namespace")
	queryCampaignsCmd.Flags().Int32P("limit", "l", 20, "Limit")
	queryCampaignsCmd.Flags().StringP("name", "n", " ", "Name")
	queryCampaignsCmd.Flags().Int32P("offset", "o", 0, "Offset")
	queryCampaignsCmd.Flags().StringP("tag", "t", " ", "Tag")
}
