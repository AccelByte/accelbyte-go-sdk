// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package accountIdenfifierTag

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/account_idenfifier_tag"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteTagV3Cmd represents the AdminDeleteTagV3 command
var AdminDeleteTagV3Cmd = &cobra.Command{
	Use:   "adminDeleteTagV3",
	Short: "Admin delete tag V3",
	Long:  `Admin delete tag V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		accountIdenfifierTagService := &iam.AccountIdenfifierTagService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		tagId, _ := cmd.Flags().GetString("tagId")
		input := &account_idenfifier_tag.AdminDeleteTagV3Params{
			Namespace: namespace,
			TagID:     tagId,
		}
		errNoContent := accountIdenfifierTagService.AdminDeleteTagV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteTagV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteTagV3Cmd.MarkFlagRequired("namespace")
	AdminDeleteTagV3Cmd.Flags().String("tagId", "", "Tag id")
	_ = AdminDeleteTagV3Cmd.MarkFlagRequired("tagId")
}
