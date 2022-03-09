// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package keyGroup

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/key_group"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryKeyGroupsCmd represents the QueryKeyGroups command
var QueryKeyGroupsCmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	QueryKeyGroupsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = QueryKeyGroupsCmd.MarkFlagRequired("namespace")
	QueryKeyGroupsCmd.Flags().Int32P("limit", "", 20, "Limit")
	QueryKeyGroupsCmd.Flags().StringP("name", "", "", "Name")
	QueryKeyGroupsCmd.Flags().Int32P("offset", "", 0, "Offset")
	QueryKeyGroupsCmd.Flags().StringP("tag", "", "", "Tag")
}
