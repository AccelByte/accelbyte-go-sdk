// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package usersV4

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// createUserFromInvitationV4Cmd represents the createUserFromInvitationV4 command
var createUserFromInvitationV4Cmd = &cobra.Command{
	Use:   "createUserFromInvitationV4",
	Short: "Create user from invitation V4",
	Long:  `Create user from invitation V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUserCreateFromInvitationRequestV4
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		invitationId, _ := cmd.Flags().GetString("invitationId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.CreateUserFromInvitationV4Params{
			Body:         body,
			InvitationID: invitationId,
			Namespace:    namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersV4Service.CreateUserFromInvitationV4(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(createUserFromInvitationV4Cmd)
	createUserFromInvitationV4Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = createUserFromInvitationV4Cmd.MarkFlagRequired("body")
	createUserFromInvitationV4Cmd.Flags().StringP("invitationId", "id", " ", "Invitation id")
	_ = createUserFromInvitationV4Cmd.MarkFlagRequired("invitationId")
	createUserFromInvitationV4Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = createUserFromInvitationV4Cmd.MarkFlagRequired("namespace")
}
