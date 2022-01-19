// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/public"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// listProvidersByRegionCmd represents the listProvidersByRegion command
var listProvidersByRegionCmd = &cobra.Command{
	Use:   "listProvidersByRegion",
	Short: "List providers by region",
	Long:  `List providers by region`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicService := &dsmc.PublicService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		region, _ := cmd.Flags().GetString("region")
		input := &public.ListProvidersByRegionParams{
			Region: region,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicService.ListProvidersByRegion(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(listProvidersByRegionCmd)
	listProvidersByRegionCmd.Flags().StringP("region", "r", " ", "Region")
	_ = listProvidersByRegionCmd.MarkFlagRequired("region")
}
