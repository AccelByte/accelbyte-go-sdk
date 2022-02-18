// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicGroup

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetGroupsCmd represents the GetGroups command
var GetGroupsCmd = &cobra.Command{
	Use:   "getGroups",
	Short: "Get groups",
	Long:  `Get groups`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGroupService := &ugc.PublicGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetString("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &public_group.GetGroupsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicGroupService.GetGroups(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	GetGroupsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetGroupsCmd.MarkFlagRequired("namespace")
	GetGroupsCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetGroupsCmd.MarkFlagRequired("userId")
	GetGroupsCmd.Flags().StringP("limit", "", "20", "Limit")
	GetGroupsCmd.Flags().StringP("offset", "", "0", "Offset")
}
