// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateUserFromInvitationV4Cmd represents the CreateUserFromInvitationV4 command
var CreateUserFromInvitationV4Cmd = &cobra.Command{
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
		created, errCreated := usersV4Service.CreateUserFromInvitationV4Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreateUserFromInvitationV4Cmd.Flags().String("body", "", "Body")
	_ = CreateUserFromInvitationV4Cmd.MarkFlagRequired("body")
	CreateUserFromInvitationV4Cmd.Flags().String("invitationId", "", "Invitation id")
	_ = CreateUserFromInvitationV4Cmd.MarkFlagRequired("invitationId")
	CreateUserFromInvitationV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = CreateUserFromInvitationV4Cmd.MarkFlagRequired("namespace")
}
