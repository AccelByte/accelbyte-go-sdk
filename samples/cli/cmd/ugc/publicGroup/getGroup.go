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

// GetGroupCmd represents the GetGroup command
var GetGroupCmd = &cobra.Command{
	Use:   "getGroup",
	Short: "Get group",
	Long:  `Get group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGroupService := &ugc.PublicGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_group.GetGroupParams{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicGroupService.GetGroup(input)
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
	GetGroupCmd.Flags().StringP("groupId", "", "", "Group id")
	_ = GetGroupCmd.MarkFlagRequired("groupId")
	GetGroupCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetGroupCmd.MarkFlagRequired("namespace")
	GetGroupCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetGroupCmd.MarkFlagRequired("userId")
}
