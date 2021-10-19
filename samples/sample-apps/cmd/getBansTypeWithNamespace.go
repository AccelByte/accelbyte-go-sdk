// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/bans"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getBansTypeWithNamespace represents the getBansTypeWithNamespace command
var getBansTypeWithNamespace = &cobra.Command{
	Use:   "getBansTypeWithNamespace",
	Short: "Admin Get bans type with namespace",
	Long:  `Admin Get bans type with namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		bansService := &iam.BansService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		input := &bans.AdminGetBansTypeWithNamespaceV3Params{
			Namespace: namespace,
		}
		ok, err := bansService.AdminGetBansTypeWithNamespaceV3(input)
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
	rootCmd.AddCommand(getBansTypeWithNamespace)
	getBansTypeWithNamespace.Flags().StringP("namespace", "n", "", "namespace")
	_ = getBansTypeWithNamespace.MarkFlagRequired("namespace")
}
