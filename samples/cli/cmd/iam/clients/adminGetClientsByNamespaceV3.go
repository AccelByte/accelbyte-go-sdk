// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package clients

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetClientsByNamespaceV3Cmd represents the AdminGetClientsByNamespaceV3 command
var AdminGetClientsByNamespaceV3Cmd = &cobra.Command{
	Use:   "adminGetClientsByNamespaceV3",
	Short: "Admin get clients by namespace V3",
	Long:  `Admin get clients by namespace V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &clients.AdminGetClientsByNamespaceV3Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := clientsService.AdminGetClientsByNamespaceV3Short(input)
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
	AdminGetClientsByNamespaceV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetClientsByNamespaceV3Cmd.MarkFlagRequired("namespace")
	AdminGetClientsByNamespaceV3Cmd.Flags().Int64P("limit", "", 20, "Limit")
	AdminGetClientsByNamespaceV3Cmd.Flags().StringP("offset", "", "0", "Offset")
}
