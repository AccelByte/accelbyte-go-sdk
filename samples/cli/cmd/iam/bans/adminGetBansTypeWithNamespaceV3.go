// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package bans

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/bans"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetBansTypeWithNamespaceV3Cmd represents the AdminGetBansTypeWithNamespaceV3 command
var AdminGetBansTypeWithNamespaceV3Cmd = &cobra.Command{
	Use:   "adminGetBansTypeWithNamespaceV3",
	Short: "Admin get bans type with namespace V3",
	Long:  `Admin get bans type with namespace V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		bansService := &iam.BansService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &bans.AdminGetBansTypeWithNamespaceV3Params{
			Namespace: namespace,
		}
		ok, err := bansService.AdminGetBansTypeWithNamespaceV3Short(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	AdminGetBansTypeWithNamespaceV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetBansTypeWithNamespaceV3Cmd.MarkFlagRequired("namespace")
}
