// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// createUserFromInvitationV3Cmd represents the createUserFromInvitationV3 command
var createUserFromInvitationV3Cmd = &cobra.Command{
	Use:   "createUserFromInvitationV3",
	Short: "Create user from invitation V3",
	Long:  `Create user from invitation V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUserCreateFromInvitationRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		invitationId, _ := cmd.Flags().GetString("invitationId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.CreateUserFromInvitationV3Params{
			Body:         body,
			InvitationID: invitationId,
			Namespace:    namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.CreateUserFromInvitationV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(createUserFromInvitationV3Cmd)
	createUserFromInvitationV3Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = createUserFromInvitationV3Cmd.MarkFlagRequired("body")
	createUserFromInvitationV3Cmd.Flags().StringP("invitationId", "i", " ", "Invitation id")
	_ = createUserFromInvitationV3Cmd.MarkFlagRequired("invitationId")
	createUserFromInvitationV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = createUserFromInvitationV3Cmd.MarkFlagRequired("namespace")
}
