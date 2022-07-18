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

// PublicGeneratedUserUploadContentUrlCmd represents the PublicGeneratedUserUploadContentUrl command
var PublicGeneratedUserUploadContentUrlCmd = &cobra.Command{
	Use:   "publicGeneratedUserUploadContentUrl",
	Short: "Public generated user upload content url",
	Long:  `Public generated user upload content url`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fileUploadService := &basic.FileUploadService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		fileType, _ := cmd.Flags().GetString("fileType")
		category, _ := cmd.Flags().GetString("category")
		input := &file_upload.PublicGeneratedUserUploadContentURLParams{
			Namespace: namespace,
			UserID:    userId,
			Category:  &category,
			FileType:  fileType,
		}
		ok, err := fileUploadService.PublicGeneratedUserUploadContentURLShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	PublicGeneratedUserUploadContentUrlCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGeneratedUserUploadContentUrlCmd.MarkFlagRequired("namespace")
	PublicGeneratedUserUploadContentUrlCmd.Flags().String("userId", "", "User id")
	_ = PublicGeneratedUserUploadContentUrlCmd.MarkFlagRequired("userId")
	PublicGeneratedUserUploadContentUrlCmd.Flags().String("category", "", "Category")
	PublicGeneratedUserUploadContentUrlCmd.Flags().String("fileType", "", "File type")
	_ = PublicGeneratedUserUploadContentUrlCmd.MarkFlagRequired("fileType")
}
