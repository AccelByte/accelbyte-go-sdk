// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
		input := &file_upload.GeneratedUserUploadContentURLParams{
			Namespace: namespace,
			UserID:    userId,
			FileType:  fileType,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := fileUploadService.GeneratedUserUploadContentURL(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GeneratedUserUploadContentUrlCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = GeneratedUserUploadContentUrlCmd.MarkFlagRequired("namespace")
	GeneratedUserUploadContentUrlCmd.Flags().StringP("userId", "", " ", "User id")
	_ = GeneratedUserUploadContentUrlCmd.MarkFlagRequired("userId")
	GeneratedUserUploadContentUrlCmd.Flags().StringP("fileType", "", " ", "File type")
	_ = GeneratedUserUploadContentUrlCmd.MarkFlagRequired("fileType")
}
