// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/key_group"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getKeyGroupCmd represents the getKeyGroup command
var getKeyGroupCmd = &cobra.Command{
	Use:   "getKeyGroup",
	Short: "Get key group",
	Long:  `Get key group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		keyGroupService := &platform.KeyGroupService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		keyGroupId, _ := cmd.Flags().GetString("keyGroupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &key_group.GetKeyGroupParams{
			KeyGroupID: keyGroupId,
			Namespace:  namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := keyGroupService.GetKeyGroup(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getKeyGroupCmd)
	getKeyGroupCmd.Flags().StringP("keyGroupId", "k", " ", "Key group id")
	_ = getKeyGroupCmd.MarkFlagRequired("keyGroupId")
	getKeyGroupCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getKeyGroupCmd.MarkFlagRequired("namespace")
}
