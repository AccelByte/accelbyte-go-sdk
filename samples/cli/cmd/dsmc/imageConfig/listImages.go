// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/image_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// listImagesCmd represents the listImages command
var listImagesCmd = &cobra.Command{
	Use:   "listImages",
	Short: "List images",
	Long:  `List images`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imageConfigService := &dsmc.ImageConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		count, _ := cmd.Flags().GetInt64("count")
		offset, _ := cmd.Flags().GetInt64("offset")
		q, _ := cmd.Flags().GetString("q")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		sortDirection, _ := cmd.Flags().GetString("sortDirection")
		input := &image_config.ListImagesParams{
			Namespace:     namespace,
			Count:         &count,
			Offset:        &offset,
			Q:             &q,
			SortBy:        &sortBy,
			SortDirection: &sortDirection,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := imageConfigService.ListImages(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(listImagesCmd)
	listImagesCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = listImagesCmd.MarkFlagRequired("namespace")
	listImagesCmd.Flags().Int64P("count", "c", 1, "Count")
	listImagesCmd.Flags().Int64P("offset", "o", 0, "Offset")
	listImagesCmd.Flags().StringP("q", "q", " ", "Q")
	listImagesCmd.Flags().StringP("sortBy", "s", " ", "Sort by")
	listImagesCmd.Flags().StringP("sortDirection", "s", " ", "Sort direction")
}
