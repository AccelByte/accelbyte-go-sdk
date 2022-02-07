// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicGroup

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_group"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateGroupCmd represents the UpdateGroup command
var UpdateGroupCmd = &cobra.Command{
	Use:   "updateGroup",
	Short: "Update group",
	Long:  `Update group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGroupService := &ugc.PublicGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsCreateGroupRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_group.UpdateGroupParams{
			Body:      body,
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicGroupService.UpdateGroup(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	UpdateGroupCmd.Flags().StringP("body", "", "", "Body")
	_ = UpdateGroupCmd.MarkFlagRequired("body")
	UpdateGroupCmd.Flags().StringP("groupId", "", "", "Group id")
	_ = UpdateGroupCmd.MarkFlagRequired("groupId")
	UpdateGroupCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateGroupCmd.MarkFlagRequired("namespace")
	UpdateGroupCmd.Flags().StringP("userId", "", "", "User id")
	_ = UpdateGroupCmd.MarkFlagRequired("userId")
}
