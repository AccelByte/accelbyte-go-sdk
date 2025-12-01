// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sessionStorage

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/session_storage"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicUpdateInsertPartySessionStorageCmd represents the PublicUpdateInsertPartySessionStorage command
var PublicUpdateInsertPartySessionStorageCmd = &cobra.Command{
	Use:   "publicUpdateInsertPartySessionStorage",
	Short: "Public update insert party session storage",
	Long:  `Public update insert party session storage`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionStorageService := &session.SessionStorageService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body map[string]interface{}
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &session_storage.PublicUpdateInsertPartySessionStorageParams{
			Body:      body,
			Namespace: namespace,
			PartyID:   partyId,
			UserID:    userId,
		}
		ok, errOK := sessionStorageService.PublicUpdateInsertPartySessionStorageShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicUpdateInsertPartySessionStorageCmd.Flags().String("body", "", "Body")
	_ = PublicUpdateInsertPartySessionStorageCmd.MarkFlagRequired("body")
	PublicUpdateInsertPartySessionStorageCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpdateInsertPartySessionStorageCmd.MarkFlagRequired("namespace")
	PublicUpdateInsertPartySessionStorageCmd.Flags().String("partyId", "", "Party id")
	_ = PublicUpdateInsertPartySessionStorageCmd.MarkFlagRequired("partyId")
	PublicUpdateInsertPartySessionStorageCmd.Flags().String("userId", "", "User id")
	_ = PublicUpdateInsertPartySessionStorageCmd.MarkFlagRequired("userId")
}
