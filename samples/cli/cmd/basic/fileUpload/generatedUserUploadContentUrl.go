// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fileUpload

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/file_upload"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GeneratedUserUploadContentUrlCmd represents the GeneratedUserUploadContentUrl command
var GeneratedUserUploadContentUrlCmd = &cobra.Command{
	Use:   "generatedUserUploadContentUrl",
	Short: "Generated user upload content url",
	Long:  `Generated user upload content url`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fileUploadService := &basic.FileUploadService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		fileType, _ := cmd.Flags().GetString("fileType")
		category, _ := cmd.Flags().GetString("category")
		input := &file_upload.GeneratedUserUploadContentURLParams{
			Namespace: namespace,
			UserID:    userId,
			Category:  &category,
			FileType:  fileType,
		}
		ok, errOK := fileUploadService.GeneratedUserUploadContentURLShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GeneratedUserUploadContentUrlCmd.Flags().String("namespace", "", "Namespace")
	_ = GeneratedUserUploadContentUrlCmd.MarkFlagRequired("namespace")
	GeneratedUserUploadContentUrlCmd.Flags().String("userId", "", "User id")
	_ = GeneratedUserUploadContentUrlCmd.MarkFlagRequired("userId")
	GeneratedUserUploadContentUrlCmd.Flags().String("category", "", "Category")
	GeneratedUserUploadContentUrlCmd.Flags().String("fileType", "", "File type")
	_ = GeneratedUserUploadContentUrlCmd.MarkFlagRequired("fileType")
}
