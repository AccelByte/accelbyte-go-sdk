// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicChallengeMyMFAV4Cmd represents the PublicChallengeMyMFAV4 command
var PublicChallengeMyMFAV4Cmd = &cobra.Command{
	Use:   "publicChallengeMyMFAV4",
	Short: "Public challenge my MFAV4",
	Long:  `Public challenge my MFAV4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		code, _ := cmd.Flags().GetString("code")
		factor, _ := cmd.Flags().GetString("factor")
		input := &users_v4.PublicChallengeMyMFAV4Params{
			Code:      &code,
			Factor:    &factor,
			Namespace: namespace,
		}
		ok, errOK := usersV4Service.PublicChallengeMyMFAV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicChallengeMyMFAV4Cmd.Flags().String("code", "", "Code")
	PublicChallengeMyMFAV4Cmd.Flags().String("factor", "", "Factor")
	PublicChallengeMyMFAV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicChallengeMyMFAV4Cmd.MarkFlagRequired("namespace")
}
