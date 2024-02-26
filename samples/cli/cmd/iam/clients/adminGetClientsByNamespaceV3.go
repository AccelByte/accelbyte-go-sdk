// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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
		clientId, _ := cmd.Flags().GetString("clientId")
		clientName, _ := cmd.Flags().GetString("clientName")
		clientType, _ := cmd.Flags().GetString("clientType")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		skipLoginQueue, _ := cmd.Flags().GetBool("skipLoginQueue")
		input := &clients.AdminGetClientsByNamespaceV3Params{
			Namespace:      namespace,
			ClientID:       &clientId,
			ClientName:     &clientName,
			ClientType:     &clientType,
			Limit:          &limit,
			Offset:         &offset,
			SkipLoginQueue: &skipLoginQueue,
		}
		ok, errOK := clientsService.AdminGetClientsByNamespaceV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetClientsByNamespaceV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetClientsByNamespaceV3Cmd.MarkFlagRequired("namespace")
	AdminGetClientsByNamespaceV3Cmd.Flags().String("clientId", "", "Client id")
	AdminGetClientsByNamespaceV3Cmd.Flags().String("clientName", "", "Client name")
	AdminGetClientsByNamespaceV3Cmd.Flags().String("clientType", "", "Client type")
	AdminGetClientsByNamespaceV3Cmd.Flags().Int64("limit", 20, "Limit")
	AdminGetClientsByNamespaceV3Cmd.Flags().Int64("offset", 0, "Offset")
	AdminGetClientsByNamespaceV3Cmd.Flags().Bool("skipLoginQueue", false, "Skip login queue")
}
