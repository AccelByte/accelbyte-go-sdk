// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package accountIdentifierTag

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/account_identifier_tag"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminQueryTagV3Cmd represents the AdminQueryTagV3 command
var AdminQueryTagV3Cmd = &cobra.Command{
	Use:   "adminQueryTagV3",
	Short: "Admin query tag V3",
	Long:  `Admin query tag V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		accountIdentifierTagService := &iam.AccountIdentifierTagService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		tagName, _ := cmd.Flags().GetString("tagName")
		input := &account_identifier_tag.AdminQueryTagV3Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			TagName:   &tagName,
		}
		ok, errOK := accountIdentifierTagService.AdminQueryTagV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminQueryTagV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminQueryTagV3Cmd.MarkFlagRequired("namespace")
	AdminQueryTagV3Cmd.Flags().Int64("limit", 20, "Limit")
	AdminQueryTagV3Cmd.Flags().Int64("offset", 0, "Offset")
	AdminQueryTagV3Cmd.Flags().String("tagName", "", "Tag name")
}
