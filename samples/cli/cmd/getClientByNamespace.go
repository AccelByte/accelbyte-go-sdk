// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"strconv"
)

// getClientByNamespace represents the getClientByNamespace command
var getClientBynamespace = &cobra.Command{
	Use:   "getClientByNamespace",
	Short: "Admin Get client by namespace",
	Long:  `Admin Get client by namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		limit := cmd.Flag("limit").Value.String()
		limitInt, _ := strconv.ParseInt(limit, 10, 64)
		input := &clients.AdminGetClientsByNamespaceV3Params{
			Limit:     &limitInt,
			Namespace: namespace,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := clientService.AdminGetClientsByNamespaceV3(input)
		if err != nil {
			logrus.Error(err)
		} else {
			response, err := json.Marshal(ok)
			if err != nil {
				logrus.Error(err)
			} else {
				logrus.Infof("Response %s", response)
			}
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getClientBynamespace)
	getClientBynamespace.Flags().StringP("namespace", "n", "", "User namespace")
	_ = getClientBynamespace.MarkFlagRequired("namespace")
	getClientBynamespace.Flags().Int64P("limit", "l", -1, "limit")
	_ = getClientBynamespace.MarkFlagRequired("limit")
}
