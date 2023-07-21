// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// AdminExportConfigV1Reader is a Reader for the AdminExportConfigV1 structure.
type AdminExportConfigV1Reader struct {
	formats strfmt.Registry
	writer  io.Writer
}

// ReadResponse reads a server response into the received o.
func (o *AdminExportConfigV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminExportConfigV1OK(o.writer)
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminExportConfigV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminExportConfigV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminExportConfigV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/config/namespaces/{namespace}/export returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminExportConfigV1OK creates a AdminExportConfigV1OK with default headers values
func NewAdminExportConfigV1OK(writer io.Writer) *AdminExportConfigV1OK {
	return &AdminExportConfigV1OK{
		Payload: writer,
	}
}

/*AdminExportConfigV1OK handles this case with default header values.

    OK
JSON Schema of the exported file:
{"required":["namespace","entitlementItemID","chatRateLimitDuration","unregisterDelay","generalRateLimitDuration","autoKickOnDisconnectDelay","chatRateLimitBurst","generalRateLimitBurst","maxPartyMember","autoKickOnDisconnect","profanityFilter","enableChat","entitlementCheck","cancelTicketOnDisconnect","concurrentUsersLimit","readyConsentTimeout","disableInvitationOnJoinParty","allowJoinPartyDuringMatchmaking","allowInviteNonConnectedUser","keepPresenceActivityOnDisconnect","maxDSWaitTime","maxFriendsLimit"],"properties":{"allowInviteNonConnectedUser":{"type":"boolean"},"allowJoinPartyDuringMatchmaking":{"type":"boolean"},"autoKickOnDisconnect":{"type":"boolean"},"autoKickOnDisconnectDelay":{"type":"integer","format":"integer"},"cancelTicketOnDisconnect":{"type":"boolean"},"chatRateLimitBurst":{"type":"integer","format":"int32"},"chatRateLimitDuration":{"type":"integer","format":"integer"},"concurrentUsersLimit":{"type":"integer","format":"int32"},"disableInvitationOnJoinParty":{"type":"boolean"},"enableChat":{"type":"boolean"},"entitlementCheck":{"type":"boolean"},"entitlementItemID":{"type":"string"},"generalRateLimitBurst":{"type":"integer","format":"int32"},"generalRateLimitDuration":{"type":"integer","format":"integer"},"keepPresenceActivityOnDisconnect":{"type":"boolean"},"maxDSWaitTime":{"type":"integer","format":"integer"},"maxFriendsLimit":{"type":"integer","format":"int32"},"maxPartyMember":{"type":"integer","format":"int32"},"namespace":{"type":"string"},"profanityFilter":{"type":"boolean"},"readyConsentTimeout":{"type":"integer","format":"integer"},"unregisterDelay":{"type":"integer","format":"integer"}}}
*/
type AdminExportConfigV1OK struct {
	Payload io.Writer
}

func (o *AdminExportConfigV1OK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/config/namespaces/{namespace}/export][%d] adminExportConfigV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminExportConfigV1OK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminExportConfigV1OK) GetPayload() io.Writer {
	return o.Payload
}

func (o *AdminExportConfigV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminExportConfigV1Unauthorized creates a AdminExportConfigV1Unauthorized with default headers values
func NewAdminExportConfigV1Unauthorized() *AdminExportConfigV1Unauthorized {
	return &AdminExportConfigV1Unauthorized{}
}

/*AdminExportConfigV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminExportConfigV1Unauthorized struct {
	Payload *lobbyclientmodels.ResponseError
}

func (o *AdminExportConfigV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/config/namespaces/{namespace}/export][%d] adminExportConfigV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminExportConfigV1Unauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminExportConfigV1Unauthorized) GetPayload() *lobbyclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminExportConfigV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminExportConfigV1Forbidden creates a AdminExportConfigV1Forbidden with default headers values
func NewAdminExportConfigV1Forbidden() *AdminExportConfigV1Forbidden {
	return &AdminExportConfigV1Forbidden{}
}

/*AdminExportConfigV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminExportConfigV1Forbidden struct {
	Payload *lobbyclientmodels.ResponseError
}

func (o *AdminExportConfigV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/config/namespaces/{namespace}/export][%d] adminExportConfigV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminExportConfigV1Forbidden) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminExportConfigV1Forbidden) GetPayload() *lobbyclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminExportConfigV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminExportConfigV1InternalServerError creates a AdminExportConfigV1InternalServerError with default headers values
func NewAdminExportConfigV1InternalServerError() *AdminExportConfigV1InternalServerError {
	return &AdminExportConfigV1InternalServerError{}
}

/*AdminExportConfigV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminExportConfigV1InternalServerError struct {
	Payload *lobbyclientmodels.ResponseError
}

func (o *AdminExportConfigV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/config/namespaces/{namespace}/export][%d] adminExportConfigV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminExportConfigV1InternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminExportConfigV1InternalServerError) GetPayload() *lobbyclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminExportConfigV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
