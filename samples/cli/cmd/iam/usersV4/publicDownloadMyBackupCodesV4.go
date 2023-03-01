// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"bytes"
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicDownloadMyBackupCodesV4Cmd represents the PublicDownloadMyBackupCodesV4 command
var PublicDownloadMyBackupCodesV4Cmd = &cobra.Command{
	Use:   "publicDownloadMyBackupCodesV4",
	Short: "Public download my backup codes V4",
	Long:  `Public download my backup codes V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		file, errFile := os.Create("file")
		logrus.Infof("Output %v", file)
		if errFile != nil {
			return errFile
		}
		writer := bytes.NewBuffer(nil)
		input := &users_v4.PublicDownloadMyBackupCodesV4Params{
			Namespace: namespace,
		}
		ok, errOK := usersV4Service.PublicDownloadMyBackupCodesV4Short(input, writer)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicDownloadMyBackupCodesV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDownloadMyBackupCodesV4Cmd.MarkFlagRequired("namespace")
}
