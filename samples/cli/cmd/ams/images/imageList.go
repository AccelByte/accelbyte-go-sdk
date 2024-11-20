// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package images

import (
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/images"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ImageListCmd represents the ImageList command
var ImageListCmd = &cobra.Command{
	Use:   "imageList",
	Short: "Image list",
	Long:  `Image list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imagesService := &ams.ImagesService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		count, _ := cmd.Flags().GetInt64("count")
		inUse, _ := cmd.Flags().GetString("inUse")
		isProtected, _ := cmd.Flags().GetBool("isProtected")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		sortDirection, _ := cmd.Flags().GetString("sortDirection")
		status, _ := cmd.Flags().GetString("status")
		tag, _ := cmd.Flags().GetString("tag")
		input := &images.ImageListParams{
			Namespace:     namespace,
			Count:         &count,
			InUse:         &inUse,
			IsProtected:   &isProtected,
			Name:          &name,
			Offset:        &offset,
			SortBy:        &sortBy,
			SortDirection: &sortDirection,
			Status:        &status,
			Tag:           &tag,
		}
		ok, errOK := imagesService.ImageListShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ImageListCmd.Flags().String("namespace", "", "Namespace")
	_ = ImageListCmd.MarkFlagRequired("namespace")
	ImageListCmd.Flags().Int64("count", 1, "Count")
	ImageListCmd.Flags().String("inUse", "", "In use")
	ImageListCmd.Flags().Bool("isProtected", false, "Is protected")
	ImageListCmd.Flags().String("name", "", "Name")
	ImageListCmd.Flags().Int64("offset", 0, "Offset")
	ImageListCmd.Flags().String("sortBy", "", "Sort by")
	ImageListCmd.Flags().String("sortDirection", "", "Sort direction")
	ImageListCmd.Flags().String("status", "", "Status")
	ImageListCmd.Flags().String("tag", "", "Tag")
}
