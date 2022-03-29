// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package usersV4

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicDisableMyBackupCodesV4Cmd represents the PublicDisableMyBackupCodesV4 command
var PublicDisableMyBackupCodesV4Cmd = &cobra.Command{
	Use:   "publicDisableMyBackupCodesV4",
	Short: "Public disable my backup codes V4",
	Long:  `Public disable my backup codes V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.PublicDisableMyBackupCodesV4Params{
			Namespace: namespace,
		}
		errInput := usersV4Service.PublicDisableMyBackupCodesV4Short(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	PublicDisableMyBackupCodesV4Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicDisableMyBackupCodesV4Cmd.MarkFlagRequired("namespace")
}
