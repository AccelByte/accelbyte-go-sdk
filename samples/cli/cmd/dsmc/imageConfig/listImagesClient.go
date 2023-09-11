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

// ListImagesClientCmd represents the ListImagesClient command
var ListImagesClientCmd = &cobra.Command{
	Use:   "listImagesClient",
	Short: "List images client",
	Long:  `List images client`,
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
		input := &image_config.ListImagesClientParams{
			Namespace:     namespace,
			Count:         &count,
			Offset:        &offset,
			Q:             &q,
			SortBy:        &sortBy,
			SortDirection: &sortDirection,
		}
		ok, errOK := imageConfigService.ListImagesClientShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListImagesClientCmd.Flags().String("namespace", "", "Namespace")
	_ = ListImagesClientCmd.MarkFlagRequired("namespace")
	ListImagesClientCmd.Flags().Int64("count", 1, "Count")
	ListImagesClientCmd.Flags().Int64("offset", 0, "Offset")
	ListImagesClientCmd.Flags().String("q", "", "Q")
	ListImagesClientCmd.Flags().String("sortBy", "", "Sort by")
	ListImagesClientCmd.Flags().String("sortDirection", "", "Sort direction")
}
