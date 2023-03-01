// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package imageConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/image_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListImagesCmd represents the ListImages command
var ListImagesCmd = &cobra.Command{
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
			Q:             &q,
			SortBy:        &sortBy,
			SortDirection: &sortDirection,
			Count:         count,
			Offset:        offset,
		}
		ok, errOK := imageConfigService.ListImagesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListImagesCmd.Flags().String("namespace", "", "Namespace")
	_ = ListImagesCmd.MarkFlagRequired("namespace")
	ListImagesCmd.Flags().String("q", "", "Q")
	ListImagesCmd.Flags().String("sortBy", "", "Sort by")
	ListImagesCmd.Flags().String("sortDirection", "", "Sort direction")
	ListImagesCmd.Flags().Int64("count", 1, "Count")
	_ = ListImagesCmd.MarkFlagRequired("count")
	ListImagesCmd.Flags().Int64("offset", 0, "Offset")
	_ = ListImagesCmd.MarkFlagRequired("offset")
}
