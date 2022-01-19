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

// queryKeyGroupsCmd represents the queryKeyGroups command
var queryKeyGroupsCmd = &cobra.Command{
	Use:   "queryKeyGroups",
	Short: "Query key groups",
	Long:  `Query key groups`,
	RunE: func(cmd *cobra.Command, args []string) error {
		keyGroupService := &platform.KeyGroupService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt32("offset")
		tag, _ := cmd.Flags().GetString("tag")
		input := &key_group.QueryKeyGroupsParams{
			Namespace: namespace,
			Limit:     &limit,
			Name:      &name,
			Offset:    &offset,
			Tag:       &tag,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := keyGroupService.QueryKeyGroups(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryKeyGroupsCmd)
	queryKeyGroupsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = queryKeyGroupsCmd.MarkFlagRequired("namespace")
	queryKeyGroupsCmd.Flags().Int32P("limit", "l", 20, "Limit")
	queryKeyGroupsCmd.Flags().StringP("name", "n", " ", "Name")
	queryKeyGroupsCmd.Flags().Int32P("offset", "o", 0, "Offset")
	queryKeyGroupsCmd.Flags().StringP("tag", "t", " ", "Tag")
}
