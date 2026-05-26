// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package extendFiles

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/extend_files"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetExtendFileCmd represents the GetExtendFile command
var GetExtendFileCmd = &cobra.Command{
	Use:   "getExtendFile",
	Short: "Get extend file",
	Long:  `Get extend file`,
	RunE: func(cmd *cobra.Command, args []string) error {
		extendFilesService := &csm.ExtendFilesService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		filePath, _ := cmd.Flags().GetString("filePath")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &extend_files.GetExtendFileParams{
			FilePath:  filePath,
			Namespace: namespace,
		}
		errOK := extendFilesService.GetExtendFileShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	GetExtendFileCmd.Flags().String("filePath", "", "File path")
	_ = GetExtendFileCmd.MarkFlagRequired("filePath")
	GetExtendFileCmd.Flags().String("namespace", "", "Namespace")
	_ = GetExtendFileCmd.MarkFlagRequired("namespace")
}
