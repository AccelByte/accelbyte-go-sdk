// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package fileUpload

import (
	"encoding/json"
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
		input := &file_upload.PublicGeneratedUserUploadContentURLParams{
			Namespace: namespace,
			UserID:    userId,
			FileType:  fileType,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := fileUploadService.PublicGeneratedUserUploadContentURL(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	PublicGeneratedUserUploadContentUrlCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGeneratedUserUploadContentUrlCmd.MarkFlagRequired("namespace")
	PublicGeneratedUserUploadContentUrlCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicGeneratedUserUploadContentUrlCmd.MarkFlagRequired("userId")
	PublicGeneratedUserUploadContentUrlCmd.Flags().StringP("fileType", "", "", "File type")
	_ = PublicGeneratedUserUploadContentUrlCmd.MarkFlagRequired("fileType")
}
