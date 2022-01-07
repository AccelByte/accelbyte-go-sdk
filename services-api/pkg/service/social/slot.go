// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package social

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
	"io"
)

type SlotService struct {
	Client          *socialclient.JusticeSocialService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetUserNamespaceSlotsShort instead
func (s *SlotService) GetUserNamespaceSlots(input *slot.GetUserNamespaceSlotsParams) ([]*socialclientmodels.SlotInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Slot.GetUserNamespaceSlots(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetSlotDataShort instead
func (s *SlotService) GetSlotData(input *slot.GetSlotDataParams, writer io.Writer) (io.Writer, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Slot.GetSlotData(input, client.BearerToken(*accessToken.AccessToken), writer)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserNamespaceSlotsShort instead
func (s *SlotService) PublicGetUserNamespaceSlots(input *slot.PublicGetUserNamespaceSlotsParams) ([]*socialclientmodels.SlotInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Slot.PublicGetUserNamespaceSlots(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicCreateUserNamespaceSlotShort instead
func (s *SlotService) PublicCreateUserNamespaceSlot(input *slot.PublicCreateUserNamespaceSlotParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, conflict, err := s.Client.Slot.PublicCreateUserNamespaceSlot(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use PublicGetSlotDataShort instead
func (s *SlotService) PublicGetSlotData(input *slot.PublicGetSlotDataParams, writer io.Writer) (io.Writer, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Slot.PublicGetSlotData(input, client.BearerToken(*accessToken.AccessToken), writer)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicUpdateUserNamespaceSlotShort instead
func (s *SlotService) PublicUpdateUserNamespaceSlot(input *slot.PublicUpdateUserNamespaceSlotParams) (*socialclientmodels.SlotInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := s.Client.Slot.PublicUpdateUserNamespaceSlot(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicDeleteUserNamespaceSlotShort instead
func (s *SlotService) PublicDeleteUserNamespaceSlot(input *slot.PublicDeleteUserNamespaceSlotParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, err := s.Client.Slot.PublicDeleteUserNamespaceSlot(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use PublicUpdateUserNamespaceSlotMetadataShort instead
func (s *SlotService) PublicUpdateUserNamespaceSlotMetadata(input *slot.PublicUpdateUserNamespaceSlotMetadataParams) (*socialclientmodels.SlotInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Slot.PublicUpdateUserNamespaceSlotMetadata(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotService) GetUserNamespaceSlotsShort(input *slot.GetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) ([]*socialclientmodels.SlotInfo, error) {
	ok, err := s.Client.Slot.GetUserNamespaceSlotsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotService) GetSlotDataShort(input *slot.GetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (io.Writer, error) {
	ok, err := s.Client.Slot.GetSlotDataShort(input, authInfo, writer)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotService) PublicGetUserNamespaceSlotsShort(input *slot.PublicGetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) ([]*socialclientmodels.SlotInfo, error) {
	ok, err := s.Client.Slot.PublicGetUserNamespaceSlotsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotService) PublicCreateUserNamespaceSlotShort(input *slot.PublicCreateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := s.Client.Slot.PublicCreateUserNamespaceSlotShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (s *SlotService) PublicGetSlotDataShort(input *slot.PublicGetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (io.Writer, error) {
	ok, err := s.Client.Slot.PublicGetSlotDataShort(input, authInfo, writer)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotService) PublicUpdateUserNamespaceSlotShort(input *slot.PublicUpdateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*socialclientmodels.SlotInfo, error) {
	ok, err := s.Client.Slot.PublicUpdateUserNamespaceSlotShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotService) PublicDeleteUserNamespaceSlotShort(input *slot.PublicDeleteUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := s.Client.Slot.PublicDeleteUserNamespaceSlotShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (s *SlotService) PublicUpdateUserNamespaceSlotMetadataShort(input *slot.PublicUpdateUserNamespaceSlotMetadataParams, authInfo runtime.ClientAuthInfoWriter) (*socialclientmodels.SlotInfo, error) {
	ok, err := s.Client.Slot.PublicUpdateUserNamespaceSlotMetadataShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
