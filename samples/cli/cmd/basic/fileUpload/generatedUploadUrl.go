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

// GeneratedUploadUrlCmd represents the GeneratedUploadUrl command
var GeneratedUploadUrlCmd = &cobra.Command{
	Use:   "generatedUploadUrl",
	Short: "Generated upload url",
	Long:  `Generated upload url`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fileUploadService := &basic.FileUploadService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		folder, _ := cmd.Flags().GetString("folder")
		namespace, _ := cmd.Flags().GetString("namespace")
		fileType, _ := cmd.Flags().GetString("fileType")
		input := &file_upload.GeneratedUploadURLParams{
			Folder:    folder,
			Namespace: namespace,
			FileType:  fileType,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := fileUploadService.GeneratedUploadURL(input)
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
	GeneratedUploadUrlCmd.Flags().StringP("folder", "", "", "Folder")
	_ = GeneratedUploadUrlCmd.MarkFlagRequired("folder")
	GeneratedUploadUrlCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GeneratedUploadUrlCmd.MarkFlagRequired("namespace")
	GeneratedUploadUrlCmd.Flags().StringP("fileType", "", "", "File type")
	_ = GeneratedUploadUrlCmd.MarkFlagRequired("fileType")
}
