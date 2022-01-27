// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package keyGroup

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/key_group"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// listKeysCmd represents the listKeys command
var listKeysCmd = &cobra.Command{
	Use:   "listKeys",
	Short: "List keys",
	Long:  `List keys`,
	RunE: func(cmd *cobra.Command, args []string) error {
		keyGroupService := &platform.KeyGroupService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		keyGroupId, _ := cmd.Flags().GetString("keyGroupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		status, _ := cmd.Flags().GetString("status")
		input := &key_group.ListKeysParams{
			KeyGroupID: keyGroupId,
			Namespace:  namespace,
			Limit:      &limit,
			Offset:     &offset,
			Status:     &status,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := keyGroupService.ListKeys(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(listKeysCmd)
	listKeysCmd.Flags().StringP("keyGroupId", "kd", " ", "Key group id")
	_ = listKeysCmd.MarkFlagRequired("keyGroupId")
	listKeysCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = listKeysCmd.MarkFlagRequired("namespace")
	listKeysCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	listKeysCmd.Flags().Int32P("offset", "ot", 0, "Offset")
	listKeysCmd.Flags().StringP("status", "ss", " ", "Status")
}
