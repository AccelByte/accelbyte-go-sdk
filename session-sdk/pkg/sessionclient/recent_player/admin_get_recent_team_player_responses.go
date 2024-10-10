// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package recent_player

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// AdminGetRecentTeamPlayerReader is a Reader for the AdminGetRecentTeamPlayer structure.
type AdminGetRecentTeamPlayerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetRecentTeamPlayerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetRecentTeamPlayerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetRecentTeamPlayerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetRecentTeamPlayerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetRecentTeamPlayerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetRecentTeamPlayerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/namespaces/{namespace}/recent-team-player returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetRecentTeamPlayerOK creates a AdminGetRecentTeamPlayerOK with default headers values
func NewAdminGetRecentTeamPlayerOK() *AdminGetRecentTeamPlayerOK {
	return &AdminGetRecentTeamPlayerOK{}
}

/*AdminGetRecentTeamPlayerOK handles this case with default header values.

  OK
*/
type AdminGetRecentTeamPlayerOK struct {
	Payload *sessionclientmodels.ModelsRecentPlayerQueryResponse
}

func (o *AdminGetRecentTeamPlayerOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/recent-team-player][%d] adminGetRecentTeamPlayerOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetRecentTeamPlayerOK) ToJSONString() string {
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

func (o *AdminGetRecentTeamPlayerOK) GetPayload() *sessionclientmodels.ModelsRecentPlayerQueryResponse {
	return o.Payload
}

func (o *AdminGetRecentTeamPlayerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ModelsRecentPlayerQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetRecentTeamPlayerBadRequest creates a AdminGetRecentTeamPlayerBadRequest with default headers values
func NewAdminGetRecentTeamPlayerBadRequest() *AdminGetRecentTeamPlayerBadRequest {
	return &AdminGetRecentTeamPlayerBadRequest{}
}

/*AdminGetRecentTeamPlayerBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetRecentTeamPlayerBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetRecentTeamPlayerBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/recent-team-player][%d] adminGetRecentTeamPlayerBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetRecentTeamPlayerBadRequest) ToJSONString() string {
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

func (o *AdminGetRecentTeamPlayerBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetRecentTeamPlayerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetRecentTeamPlayerUnauthorized creates a AdminGetRecentTeamPlayerUnauthorized with default headers values
func NewAdminGetRecentTeamPlayerUnauthorized() *AdminGetRecentTeamPlayerUnauthorized {
	return &AdminGetRecentTeamPlayerUnauthorized{}
}

/*AdminGetRecentTeamPlayerUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetRecentTeamPlayerUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetRecentTeamPlayerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/recent-team-player][%d] adminGetRecentTeamPlayerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetRecentTeamPlayerUnauthorized) ToJSONString() string {
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

func (o *AdminGetRecentTeamPlayerUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetRecentTeamPlayerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetRecentTeamPlayerNotFound creates a AdminGetRecentTeamPlayerNotFound with default headers values
func NewAdminGetRecentTeamPlayerNotFound() *AdminGetRecentTeamPlayerNotFound {
	return &AdminGetRecentTeamPlayerNotFound{}
}

/*AdminGetRecentTeamPlayerNotFound handles this case with default header values.

  Not Found
*/
type AdminGetRecentTeamPlayerNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetRecentTeamPlayerNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/recent-team-player][%d] adminGetRecentTeamPlayerNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetRecentTeamPlayerNotFound) ToJSONString() string {
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

func (o *AdminGetRecentTeamPlayerNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetRecentTeamPlayerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetRecentTeamPlayerInternalServerError creates a AdminGetRecentTeamPlayerInternalServerError with default headers values
func NewAdminGetRecentTeamPlayerInternalServerError() *AdminGetRecentTeamPlayerInternalServerError {
	return &AdminGetRecentTeamPlayerInternalServerError{}
}

/*AdminGetRecentTeamPlayerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetRecentTeamPlayerInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetRecentTeamPlayerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/recent-team-player][%d] adminGetRecentTeamPlayerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetRecentTeamPlayerInternalServerError) ToJSONString() string {
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

func (o *AdminGetRecentTeamPlayerInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetRecentTeamPlayerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
