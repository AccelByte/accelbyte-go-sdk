// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/file_upload"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// generatedUploadUrlCmd represents the generatedUploadUrl command
var generatedUploadUrlCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(generatedUploadUrlCmd)
	generatedUploadUrlCmd.Flags().StringP("folder", "f", " ", "Folder")
	_ = generatedUploadUrlCmd.MarkFlagRequired("folder")
	generatedUploadUrlCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = generatedUploadUrlCmd.MarkFlagRequired("namespace")
	generatedUploadUrlCmd.Flags().StringP("fileType", "f", " ", "File type")
	_ = generatedUploadUrlCmd.MarkFlagRequired("fileType")
}
